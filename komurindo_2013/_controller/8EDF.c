#include <stdlib.h>
#include <mega8.h>
#include <delay.h>
#include <stdio.h>
#include <math.h>
#define step 10
#define del1 7

bit sttS;
unsigned char Command, _val3[4], _val4[5], i;
int s1, val;

#define BMP085_addr 0xEE
const unsigned char oss = 0; //oversampling
unsigned char Buff1[5], Buff2[5], Buff3[20];

float temperature, pressure, atm, altitude;
int ac1, ac2, ac3, b1, b2, mb, mc, md;
unsigned int ac4, ac5, ac6;
long int b5;

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
void putchar(char c);
void Convert3(int X, char str[]);
void Convert4(int X, char str[]);
void ConvertN(long X, char str[]);
void ConvertF(float X, char str[]);
void TestCom();
char CMPS(unsigned char addr);

#asm
   .equ __i2c_port=0x15 ;PORTC
   .equ __sda_bit=0
   .equ __scl_bit=1
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

#define RX_BUFFER_SIZE 8
char rx_buffer[RX_BUFFER_SIZE];

#if RX_BUFFER_SIZE<256
unsigned char rx_wr_index,rx_rd_index,rx_counter;
#else
unsigned int rx_wr_index,rx_rd_index,rx_counter;
#endif

bit rx_buffer_overflow;

interrupt [USART_RXC] void usart_rx_isr(void){
    char status,data;
    status=UCSRA;
    data=UDR;
    Command=data; //putchar(data+1);
    if(Command=='a'){val=700;}
    if(Command=='w'){val+=step;}
    if(Command=='s'){val-=step;}
    if(Command=='q'){val=800;}
    if(Command=='e'){val=1100;}
    if(Command=='z'){sttS=1; BMP085Calib();}
    if(Command=='d'){sttS=0;}
    if(Command=='x'){TestCom();}
    if(Command=='r'){OCR1B=1520;}
    if(Command=='f'){OCR1B=550;}
    //if(Command=='r'){s1++; Convert4(s1,_val4); for(i=0;i<4;i++) {putchar(_val4[i]); OCR1B=s1; }}
    //if(Command=='f'){s1--; Convert4(s1,_val4); for(i=0;i<4;i++) {putchar(_val4[i]); OCR1B=s1;}}
    //Convert4(val,_val4); for(i=0;i<4;i++) {putchar(_val4[i]);}
    OCR1A=val;
}

#ifndef _DEBUG_TERMINAL_IO_
#define _ALTERNATE_GETCHAR_
#pragma used+
char getchar(void){
char data;
while (rx_counter==0);
data=rx_buffer[rx_rd_index];
if (++rx_rd_index == RX_BUFFER_SIZE) rx_rd_index=0;
#asm("cli")
--rx_counter;
#asm("sei")
return data;
}
#pragma used-
#endif

void Convert3(int X, char str[]){
  char tmp[3];
  if(X>0 && X<10){itoa(X,tmp); str[0]='0'; str[1]='0'; str[2]=tmp[0];}
  if(X>=10 && X<100){itoa(X,tmp); str[0]='0'; str[1]=tmp[0]; str[2]=tmp[1];}
  if(X>=100){itoa(X,str);}
}

void Convert4(int X, char str[]){
  char tmp[4];
  if(X>0 && X<10){itoa(X,tmp); str[0]='0'; str[1]='0'; str[2]='0'; str[3]=tmp[0];}
  if(X>=10 && X<100){itoa(X,tmp); str[0]='0'; str[1]='0'; str[2]=tmp[0]; str[3]=tmp[1];}
  if(X>=100 && X<1000){itoa(X,tmp); str[0]='0'; str[1]=tmp[0]; str[2]=tmp[1]; str[3]=tmp[2];}
  if(X>=1000){itoa(X,str);}
}

void ConvertN(long X, char str[]){
  char tmp[10];
  if(X>0 && X<10){
     ltoa(X,tmp);
     str[0]=' ';
     str[1]=' ';
     str[2]=' ';
     str[3]=' ';
     str[4]=' ';
     str[5]=tmp[0];
  }
  else if(X>=10 && X<100){
     ltoa(X,tmp);
     str[0]=' ';
     str[1]=' ';
     str[2]=' ';
     str[3]=' ';
     str[4]=tmp[0];
     str[5]=tmp[1];
  }
  else if(X>=100 && X<1000){
     ltoa(X,tmp);
     str[0]=' ';
     str[1]=' ';
     str[2]=' ';
     str[3]=tmp[0];
     str[4]=tmp[1];
     str[5]=tmp[2];
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
    ac1 = _ReadInt(0xAA);
    ac2 = _ReadInt(0xAC);
    ac3 = _ReadInt(0xAE);
    ac4 = _ReadInt(0xB0);
    ac5 = _ReadInt(0xB2);
    ac6 = _ReadInt(0xB4);
    b1 = _ReadInt(0xB6);
    b2 = _ReadInt(0xB8);
    mb = _ReadInt(0xBA);
    mc = _ReadInt(0xBC);
    md = _ReadInt(0xBE);
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

void TestCom(){
    for(i=65; i<=90; i++){putchar(i); delay_ms(20);} putchar(13); putchar(13);
    putchar('O'); putchar('k'); putchar(13);
}

char CMPS(unsigned char addr){
    i2c_start();
    i2c_write(0xC0);
    i2c_write(addr);
    i2c_start();
    i2c_write(0xC1);
    return i2c_read(0);
    i2c_stop();
}

void main(void){
{
PORTB=0x00;
DDRB=0x06;

PORTC=0x00;
DDRC=0x00;

PORTD=0x00;
DDRD=0x00;

TCCR0=0x00;
TCNT0=0x00;

// Timer/Counter 1 initialization
// Clock source: System Clock
// Clock value: 1382,400 kHz
// Mode: Ph. correct PWM top=ICR1
// OC1A output: Non-Inv.
// OC1B output: Non-Inv.
// Noise Canceler: Off
// Input Capture on Falling Edge
// Timer 1 Overflow Interrupt: Off
// Input Capture Interrupt: Off
// Compare A Match Interrupt: Off
// Compare B Match Interrupt: Off
TCCR1A=0xA2;
TCCR1B=0x12;
TCNT1H=0x00;
TCNT1L=0x00;
ICR1H=0x72;
ICR1L=0x00;
OCR1AH=0x00;
OCR1AL=0x00;
OCR1BH=0x00;
OCR1BL=0x00;

ASSR=0x00;
TCCR2=0x00;
TCNT2=0x00;
OCR2=0x00;

MCUCR=0x00;

TIMSK=0x00;

UCSRA=0x00;
UCSRB=0x98;
UCSRC=0x86;
UBRRH=0x00;
UBRRL=0x47;
//UBRRL=0x0B;

ACSR=0x80;
SFIOR=0x00;

i2c_init();

#asm("sei")
}

DDRB.2=1; s1=0;
OCR1B=550;
OCR1A=1100; delay_ms(3000); OCR1A=700; delay_ms(3000);
//OCR1B=1100; delay_ms(3000); OCR1B=500; delay_ms(3000);

while (1){
    while(sttS){
        temperature = GetTemperature(ReadUT());
        pressure = GetPressure(ReadUP());
        //Compass
        //Convert3(CMPS(0x01), Buff1); for(i=0; i<3; i++){putchar(Buff1[i]); delay_ms(del1);}
        putchar(CMPS(0x01)); delay_ms(del1);
        //putchar(32); delay_ms(del1);
        //Accelero X Y Z
        //Convert3(CMPS(0x10), Buff1); for(i=0; i<3; i++){putchar(Buff1[i]); delay_ms(del1);}
        putchar(CMPS(0x10)); delay_ms(del1);
        //putchar(32); delay_ms(del1);
        //Convert3(CMPS(0x12), Buff1); for(i=0; i<3; i++){putchar(Buff1[i]); delay_ms(del1);}
        putchar(CMPS(0x12)); delay_ms(del1);
        //putchar(32); delay_ms(del1);
        //Convert3(CMPS(0x14), Buff1); for(i=0; i<3; i++){putchar(Buff1[i]); delay_ms(del1);}
        putchar(CMPS(0x14)); delay_ms(del1);
        //putchar(32); delay_ms(del1);
        //Pressure
        ConvertN(pressure, Buff3); for(i=0; i<6; i++){putchar(Buff3[i]); delay_ms(del1);}
        //putchar(32); delay_ms(del1);
        //Temperature
        //ConvertF(temperature, Buff1); for(i=0; i<2; i++){putchar(Buff1[i]); delay_ms(del1);}
        putchar((unsigned char)temperature);
        putchar(13); delay_ms(del1);
    }
};
}
