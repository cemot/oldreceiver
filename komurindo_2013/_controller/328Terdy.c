#include <mega328p.h>
#include <stdlib.h>
#include <delay.h>
#include <stdio.h>
#include <math.h>

#define del1 7 //delay pengiriman data

unsigned char myTeam[]={'M','a','t','a',' ','D','e','w','a'}; //Untuk test aja
unsigned char Numb[]={'3','0','5',' '}; //Nomor peluncuran
bit sttS; //Flag status Sens
unsigned char Command, Buff1[4], Buff2[5], i; //var Command n Buff UART

//Variable - variable BMP085
#define BMP085_addr 0xEE
const unsigned char oss = 0; //oversampling
unsigned char Buff3[5], Buff4[5], Buff5[20];
float temperature, pressure, atm, altitude;
int ac1, ac2, ac3, b1, b2, mb, mc, md;
unsigned int ac4, ac5, ac6;
long int b5;

//Prototype - prototype
void putchar(char c);
char CMPS(unsigned char addr);
void Convert3(int X, char str[]);
void ConvertN(long X, char str[]);
void ConvertF(float X, char str[]);
void TestCom();
//Prototype fungsi BMP085
void BMP085Calib();
float GetTemperature(unsigned int ut);
long GetPressure(unsigned long up);
char _Read(unsigned char addr);
int _ReadInt(unsigned char addr);
unsigned int ReadUT();
unsigned long ReadUP();
void _WriteReg(int devAddr, unsigned char addr, unsigned char val);
int _ReadReg(int devAddr, unsigned char addr);
float CalcAlti(float pressure);

//Fungsi ADC
#define ADC_VREF_TYPE 0x20
unsigned char read_adc(unsigned char adc_input){
    ADMUX=adc_input | (ADC_VREF_TYPE & 0xff);
    delay_us(10);
    ADCSRA|=0x40;
    while ((ADCSRA & 0x10)==0);
    ADCSRA|=0x10;
    return ADCH;
}

//Assembly I2C...
#asm
   .equ __i2c_port=0x08 ;PORTC
   .equ __sda_bit=4
   .equ __scl_bit=5
#endasm
#include <i2c.h>

#define RXB8 1
#define TXB8 0
#define UPE 2
#define OVR 3
#define FE 4
#define UDRE 5
#define RXC 7

#define FRAMING_ERROR (1<<FE)
#define PARITY_ERROR (1<<UPE)
#define DATA_OVERRUN (1<<OVR)
#define DATA_REGISTER_EMPTY (1<<UDRE)
#define RX_COMPLETE (1<<RXC)

#define RX_BUFFER_SIZE0 8
char rx_buffer0[RX_BUFFER_SIZE0];

#if RX_BUFFER_SIZE0<256
unsigned char rx_wr_index0,rx_rd_index0,rx_counter0;
#else
unsigned int rx_wr_index0,rx_rd_index0,rx_counter0;
#endif

bit rx_buffer_overflow0;

//UART nya di interrupt Bro....lebih enak mrogramnya!
interrupt [USART_RXC] void usart_rx_isr(void){
    char status,data;
    status=UCSR0A;
    data=UDR0;
    Command=data; //Set data yang diterima --> Command
    if(Command=='a') { PORTB.0=0; } //Micro
    if(Command=='s') { PORTB.0=1; } //Rasp
    if(Command=='z') { sttS=1; BMP085Calib(); } //Flag Sensor ON + Calibrating BMP085
    if(Command=='x') { sttS=0; } //Flag Sensor OFF
    if(Command=='c') { PORTD.3=1; PORTD.4=1; /**/ PORTD.3=0; PORTD.4=0; }       //Cam
    if(Command=='d') { TestCom(); } //Test Comm
}

#ifndef _DEBUG_TERMINAL_IO_
#define _ALTERNATE_GETCHAR_
#pragma used+
char getchar(void){
char data;
while (rx_counter0==0);
data=rx_buffer0[rx_rd_index0];
if (++rx_rd_index0 == RX_BUFFER_SIZE0) rx_rd_index0=0;
#asm("cli")
--rx_counter0;
#asm("sei")
return data;
}
#pragma used-
#endif

//Fungsi I2C akses CMPS10...reg 0x01 = Bearing Compass
//                                                        0x10 = Acc X High
//                                                        0x12 = Acc Y High
//                                                        0x14 = Acc Z high
char CMPS(unsigned char addr){
    i2c_start(); i2c_write(0xC0); i2c_write(addr);
    i2c_start(); i2c_write(0xC1);
    return i2c_read(0); i2c_stop();
}

//Fungsi Format Nilai Sensor ke 3 Digit
void Convert3(int X, char str[]){
  char tmp[3];
  if(X>0 && X<10){itoa(X,tmp); str[0]='0'; str[1]='0'; str[2]=tmp[0];}
  if(X>=10 && X<100){itoa(X,tmp); str[0]='0'; str[1]=tmp[0]; str[2]=tmp[1];}
  if(X>=100){itoa(X,str);}
}

//Fungsi Test Comm aja...
void TestCom(){
    for(i=0; i<sizeof(myTeam); i++){putchar(myTeam[i]); delay_ms(10);}
    putchar(13); putchar(13); delay_ms(10); putchar('O'); delay_ms(10); putchar('k');
}

//Fungsi Format Nilai Sensor ke 6 Digit
void ConvertN(long X, char str[]){
  char tmp[10];
  if(X>0 && X<10){
     ltoa(X,tmp); str[0]=' '; str[1]=' '; str[2]=' '; str[3]=' '; str[4]=' '; str[5]=tmp[0];
  }
  else if(X>=10 && X<100){
     ltoa(X,tmp); str[0]=' '; str[1]=' '; str[2]=' '; str[3]=' '; str[4]=tmp[0]; str[5]=tmp[1];
  }
  else if(X>=100 && X<1000){
     ltoa(X,tmp); str[0]=' '; str[1]=' '; str[2]=' '; str[3]=tmp[0]; str[4]=tmp[1]; str[5]=tmp[2];
  }
  else if(X>=1000 && X<10000){
     ltoa(X,tmp);
     str[0]=' ';
     str[1]=' ';
     str[2]=tmp[0];
     str[3]=tmp[1];
     str[4]=tmp[2];
     str[5]=tmp[3];
  }
  else if(X>=10000 && X<100000){
     ltoa(X,tmp);
     str[0]=' ';
     str[1]=tmp[0];
     str[2]=tmp[1];
     str[3]=tmp[2];
     str[4]=tmp[3];
     str[5]=tmp[4];
  }
  else if(X>=100000){
    ltoa(X,tmp);
    str[0]=tmp[0];
    str[1]=tmp[1];
    str[2]=tmp[2];
    str[3]=tmp[3];
    str[4]=tmp[4];
    str[5]=tmp[5];
  }
  ////////////////////
  else if(X<=0 && X>-10){
     ltoa(X,tmp);
     str[0]=' ';
     str[1]=' ';
     str[2]=' ';
     str[3]=' ';
     str[4]=tmp[0];
     str[5]=tmp[1];
  }
  else if(X<=-10 && X>-100){
     ltoa(X,tmp);
     str[0]=' ';
     str[1]=' ';
     str[2]=' ';
     str[3]=tmp[0];
     str[4]=tmp[1];
     str[5]=tmp[2];
  }
  else if(X<=-100 && X>-1000){
     ltoa(X,tmp);
     str[0]=' ';
     str[1]=' ';
     str[2]=tmp[0];
     str[3]=tmp[1];
     str[4]=tmp[2];
     str[5]=tmp[3];
  }
  else if(X<=-1000 && X>-10000){
     ltoa(X,tmp);
     str[0]=' ';
     str[1]=tmp[0];
     str[2]=tmp[1];
     str[3]=tmp[2];
     str[4]=tmp[3];
     str[5]=tmp[4];
  }
  else if(X<=-10000 && X>-100000){
     ltoa(X,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]=tmp[2];
     str[3]=tmp[3];
     str[4]=tmp[4];
     str[5]=tmp[5];
  }
  else if(X<=-100000){
    ltoa(X,tmp);
    str[0]=tmp[0];
    str[1]=tmp[1];
    str[2]=tmp[2];
    str[3]=tmp[3];
    str[4]=tmp[4];
    str[5]=tmp[5];
    str[6]=tmp[6];
  }
}

void ConvertF(float X, char str[]){
  long val;
  char tmp[20];
   if(X>=0 && X<1){
     X=X*1000000; val=(long)X; ltoa(val,tmp);
     str[0]='0';
     str[1]='.';
     str[2]=tmp[0];
     str[3]=tmp[1];
     str[4]=tmp[2];
     str[5]=tmp[3];
     str[6]=tmp[4];
  }
  else if(X>=1 && X<10){
     X=X*100000; val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]='.';
     str[2]=tmp[1];
     str[3]=tmp[2];
     str[4]=tmp[3];
     str[5]=tmp[4];
     str[6]=tmp[5];
  }
  else if(X>=10 && X<100){
     X=X*10000; val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]='.';
     str[3]=tmp[2];
     str[4]=tmp[3];
     str[5]=tmp[4];
     str[6]=tmp[5];
  }
  else if(X>=100 && X<1000){
     X=X*1000; val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]=tmp[2];
     str[3]='.';
     str[4]=tmp[3];
     str[5]=tmp[4];
     str[6]=tmp[5];
  }
  else if(X>=1000 && X<10000){
     X=X*100; val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]=tmp[2];
     str[3]=tmp[3];
     str[4]='.';
     str[5]=tmp[4];
     str[6]=tmp[5];
  }
  else if(X>=10000 && X<100000){
     X=X*10; val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]=tmp[2];
     str[3]=tmp[3];
     str[4]=tmp[4];
     str[5]='.';
     str[6]=tmp[5];
  }
  else if(X>=100000){
     val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]=tmp[2];
     str[3]=tmp[3];
     str[4]=tmp[4];
     str[5]=tmp[5];
     str[6]='.';
  }
  ///////////////////////
  else if(X>-1 && X<0){
     X=X*1000000; val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]='0';
     str[2]='.';
     str[3]=tmp[1];
     str[4]=tmp[2];
     str[5]=tmp[3];
     str[6]=tmp[4];
  }
  else if(X<=-1 && X>-10){
     X=X*100000; val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]='.';
     str[3]=tmp[2];
     str[4]=tmp[3];
     str[5]=tmp[4];
     str[6]=tmp[5];
  }
  else if(X<=-10 && X>-100){
     X=X*10000; val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]=tmp[2];
     str[3]='.';
     str[4]=tmp[3];
     str[5]=tmp[4];
     str[6]=tmp[5];
  }
  else if(X<=-100 && X>-1000){
     X=X*1000; val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]=tmp[2];
     str[3]=tmp[3];
     str[4]='.';
     str[5]=tmp[4];
     str[6]=tmp[5];
  }
  else if(X<=-1000 && X>-10000){
     X=X*100; val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]=tmp[2];
     str[3]=tmp[3];
     str[4]=tmp[4];
     str[5]='.';
     str[6]=tmp[5];
  }
  else if(X<=-10000 && X>-100000){
     X=X*10; val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]=tmp[2];
     str[3]=tmp[3];
     str[4]=tmp[4];
     str[5]=tmp[5];
     str[6]='.';
  }
  else if(X<=-100000){
     val=(long)X; ltoa(val,tmp);
     str[0]=tmp[0];
     str[1]=tmp[1];
     str[2]=tmp[2];
     str[3]=tmp[3];
     str[4]=tmp[4];
     str[5]=tmp[5];
     str[6]=tmp[6];
  }
}

void BMP085Calib(){
    ac1 = _ReadInt(0xAA); ConvertN(ac1, Buff2); for(i=0; i<6; i++){putchar(Buff2[i]); delay_ms(del1);} putchar(32); delay_ms(del1);
    ac2 = _ReadInt(0xAC); ConvertN(ac2, Buff2); for(i=0; i<6; i++){putchar(Buff2[i]); delay_ms(del1);} putchar(32); delay_ms(del1);
    ac3 = _ReadInt(0xAE); ConvertN(ac3, Buff2); for(i=0; i<6; i++){putchar(Buff2[i]); delay_ms(del1);} putchar(32); delay_ms(del1);
    ac4 = _ReadInt(0xB0); ConvertN(ac4, Buff2); for(i=0; i<6; i++){putchar(Buff2[i]); delay_ms(del1);} putchar(32); delay_ms(del1);
    ac5 = _ReadInt(0xB2); ConvertN(ac5, Buff2); for(i=0; i<6; i++){putchar(Buff2[i]); delay_ms(del1);} putchar(32); delay_ms(del1);
    ac6 = _ReadInt(0xB4); ConvertN(ac6, Buff2); for(i=0; i<6; i++){putchar(Buff2[i]); delay_ms(del1);} putchar(32); delay_ms(del1);
    b1 = _ReadInt(0xB6); ConvertN(b1, Buff2); for(i=0; i<6; i++){putchar(Buff2[i]); delay_ms(del1);} putchar(32); delay_ms(del1);
    b2 = _ReadInt(0xB8); ConvertN(b2, Buff2); for(i=0; i<6; i++){putchar(Buff2[i]); delay_ms(del1);} putchar(32); delay_ms(del1);
    mb = _ReadInt(0xBA); ConvertN(mb, Buff2); for(i=0; i<6; i++){putchar(Buff2[i]); delay_ms(del1);} putchar(32); delay_ms(del1);
    mc = _ReadInt(0xBC); ConvertN(mc, Buff2); for(i=0; i<6; i++){putchar(Buff2[i]); delay_ms(del1);} putchar(32); delay_ms(del1);
    md = _ReadInt(0xBE); ConvertN(md, Buff2); for(i=0; i<6; i++){putchar(Buff2[i]); delay_ms(del1);} putchar(32); delay_ms(del1);
}

int _ReadInt(unsigned char addr){
    unsigned char msb, lsb;
    //I2C....reading
    i2c_start(); i2c_write(BMP085_addr); i2c_write(addr);
    i2c_start(); i2c_write(BMP085_addr+1);
    msb = i2c_read(0);
    i2c_stop();
     //I2C....reading
    i2c_start(); i2c_write(BMP085_addr); i2c_write(addr+1);
    i2c_start(); i2c_write(BMP085_addr+1);
    lsb = i2c_read(0);
    i2c_stop();
    //...Done
    return (int) msb<<8 | lsb;
}

float CalcAlti(float pressure){
    float A = pressure/101325;
    float B = 1/5.25588;
    float C = pow(A,B);
    C = 1 - C;
    C = C /0.0000225577;
    return C;
}

int _ReadReg(int devAddr, unsigned char addr){
    i2c_start(); i2c_write(devAddr); i2c_write(addr);
    i2c_start(); i2c_write(devAddr+1);
    return i2c_read(0);
    i2c_stop();
}

void _WriteReg(int devAddr, unsigned char addr, unsigned char val){
    i2c_start(); i2c_write(devAddr); i2c_write(addr);
    i2c_start(); i2c_write(devAddr+1);
    i2c_stop();
}

char _Read(unsigned char addr){
    i2c_start(); i2c_write(BMP085_addr); i2c_write(addr);
    i2c_start(); i2c_write(BMP085_addr+1);
    return i2c_read(0);
    i2c_stop();
}

unsigned long ReadUP(){
    unsigned char msb, lsb, xlsb;
    unsigned long up = 0;
    // Write 0x34+(OSS<<6) into register 0xF4
    // Request a pressure reading w/ oversampling setting
    i2c_start(); i2c_write(BMP085_addr); i2c_write(0xF4);
    i2c_write(0x34 + (oss<<6));
    i2c_stop();
    // Wait for conversion, delay time dependent on OSS
    delay_ms(2 + (3<<oss));
    // Read register 0xF6 (MSB), 0xF7 (LSB), and 0xF8 (XLSB)
    msb = _Read(0xF6);
    lsb = _Read(0xF7);
    xlsb = _Read(0xF8);
    //....
    up = (((unsigned long) msb << 16) | ((unsigned long) lsb << 8) | (unsigned long) xlsb) >> (8-oss);
    return up;
}

unsigned int ReadUT(){
    unsigned int ut;
    // Write 0x2E into Register 0xF4
    // This requests a temperature reading
    i2c_start(); i2c_write(BMP085_addr); i2c_write(0xF4);
    i2c_write(0x2E);
    i2c_stop();
    // Wait at least 4.5ms
    delay_ms(5);
    // Read two bytes from registers 0xF6 and 0xF7
    ut = _ReadInt(0xF6);
    return ut;
}

long GetPressure(unsigned long up){
    long x1, x2, x3, b3, b6, p;
    unsigned long b4, b7;
    //..........
    b6 = b5 - 4000;
    // Calculate B3
    x1 = (b2 * (b6 * b6)>>12)>>11;
    x2 = (ac2 * b6)>>11;
    x3 = x1 + x2;
    b3 = (((((long)ac1)*4 + x3)<<oss) + 2)>>2;
    // Calculate B4
    x1 = (ac3 * b6)>>13;
    x2 = (b1 * ((b6 * b6)>>12))>>16;
    x3 = ((x1 + x2) + 2)>>2;
    b4 = (ac4 * (unsigned long)(x3 + 32768))>>15;
    //..........
    b7 = ((unsigned long)(up - b3) * (50000>>oss));
    if (b7 < 0x80000000)    p = (b7<<1)/b4;
    else                                  p = (b7/b4)<<1;
    //..........
    x1 = (p>>8) * (p>>8);
    x1 = (x1 * 3038)>>16;
    x2 = (-7357 * p)>>16;
    p += (x1 + x2 + 3791)>>4;
    //..........
    return p;
}

float GetTemperature(unsigned int ut){
    long x1, x2;
    float temp;
    x1 = (((long)ut - (long)ac6)*(long)ac5) >> 15;
    x2 = ((long)mc << 11)/(x1 + md);
    b5 = x1 + x2;
    temp = ((b5 + 8)>>4);
    return (temp /10);
}


void main(void){
{
#pragma optsize-
CLKPR=0x80;
CLKPR=0x00;
#ifdef _OPTIMIZE_SIZE_
#pragma optsize+
#endif

PORTB=0x00; DDRB=0x00;
PORTC=0x00; DDRC=0x00;
PORTD=0x00; DDRD=0x00;

TCCR0A=0x00; TCCR0B=0x00; TCNT0=0x00; OCR0A=0x00; OCR0B=0x00;

TCCR1A=0x00; TCCR1B=0x00; TCNT1H=0x00; TCNT1L=0x00; ICR1H=0x00;
ICR1L=0x00; OCR1AH=0x00; OCR1AL=0x00; OCR1BH=0x00; OCR1BL=0x00;

ASSR=0x00; TCCR2A=0x00; TCCR2B=0x00; TCNT2=0x00; OCR2A=0x00; OCR2B=0x00;

EICRA=0x00; EIMSK=0x00; PCICR=0x00;

TIMSK0=0x00; TIMSK1=0x00; TIMSK2=0x00;

//UCSR0A=0x00; UCSR0B=0x98; UCSR0C=0x06; UBRR0H=0x00; UBRR0L=0x0B; //UART 57600 1x speed
UCSR0A=0x02; UCSR0B=0x98; UCSR0C=0x06; UBRR0H=0x00; UBRR0L=0x17; //UART 57600 double speed

ACSR=0x80; ADCSRB=0x00;

DIDR0=0x00; ADMUX=ADC_VREF_TYPE & 0xff; ADCSRA=0x84; //ADC Init

i2c_init();

#asm("sei")
}

DDRB=0x01; PORTB.0=1; delay_ms(300); PORTB.0=0; //Relay sett
DDRD.3=1; DDRD.4=1; PORTD.3=0; PORTD.4=0; //Comm IO - Raspberry

while (1){
    while(sttS){
        /*
        //
        for(i=0;i<sizeof(Numb);i++){putchar(Numb[i]); delay_ms(del1);} //Nomor peluncuran
        //
        Convert3(CMPS(0x10), Buff1); for(i=0; i<3; i++){putchar(Buff1[i]); delay_ms(del1);} putchar(32); delay_ms(del1); // Acc X
        Convert3(CMPS(0x12), Buff1); for(i=0; i<3; i++){putchar(Buff1[i]); delay_ms(del1);} putchar(32); delay_ms(del1); // Acc y
        Convert3(CMPS(0x14), Buff1); for(i=0; i<3; i++){putchar(Buff1[i]); delay_ms(del1);} putchar(32); delay_ms(del1); // Acc z
        Convert3(CMPS(0x01), Buff1); for(i=0; i<3; i++){putchar(Buff1[i]); delay_ms(del1);} putchar(32); delay_ms(del1); // Bearing Compass
        //
        Convert3(read_adc(1), Buff1); for(i=0; i<3; i++){putchar(Buff1[i]); delay_ms(del1);} putchar(32); delay_ms(del1); //Gyro X
        Convert3(read_adc(2), Buff1); for(i=0; i<3; i++){putchar(Buff1[i]); delay_ms(del1);} putchar(32); delay_ms(del1); //Gyro Y
        Convert3(read_adc(0), Buff1); for(i=0; i<3; i++){putchar(Buff1[i]); delay_ms(del1);} putchar(32); delay_ms(del1); //Gyro Fake Z
        //
        */
        temperature = GetTemperature(ReadUT()); //Get temperature BMP085
        pressure = GetPressure(ReadUP()); //Get pressure BMP085
        ConvertN(pressure, Buff5); for(i=0; i<6; i++){putchar(Buff5[i]); delay_ms(del1);} putchar(32); delay_ms(del1); //Pressure Pa
        ConvertF(temperature, Buff1); for(i=0; i<2; i++){putchar(Buff1[i]); delay_ms(del1);} putchar(32); delay_ms(del1); //Temperature deg C
        putchar(13); delay_ms(del1);
    }
};
}