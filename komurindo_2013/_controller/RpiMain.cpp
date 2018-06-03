#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <termios.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <linux/i2c-dev.h>

#define loopGrab 10
#define Xx 320
#define Yy 240
#define Baudr B57600
#define DevV "/dev/ttyAMA0"

int fd;

using namespace std;

void OpenPort(){
    struct termios options;
    tcgetattr(fd, &options);
    cfsetispeed(&options, Baudr);
    cfsetospeed(&options, Baudr);
    tcsetattr(fd, TCSANOW, &options);
    options.c_cflag &= ~CSIZE;
    options.c_cflag |= CS8;
    options.c_cflag &= ~PARENB;
    options.c_cflag &= ~CSTOPB;
    options.c_cflag &= ~CSIZE;
    options.c_cflag |= CS8;
    fd = open(DevV, O_RDWR | O_NOCTTY | O_NDELAY);
    if (fd == -1){perror("******************Error Open Port!\n");}
    else         {fcntl(fd, F_SETFL, 0);}
}

void SendS(int data){
    int nS,S;
    char BuffS[1];
    S=data; BuffS[0]=S;
    nS = write(fd, BuffS, 1);
    if (nS < 0){fputs("******************Send Error!\n", stderr);}
}

void Tunda(int _x1000);

int main(int argc, char** argv){
    int X;
    /////////////////////////////////////////////////////////////
    OpenPort();
    int key=0;
    int arr=0;
    CvScalar temp;

    while(1){
        X=getchar();
        if(X==98){
		int l;
		printf("\n=====Test Start!=====");
		for(l=65;l<=90;l++){SendS(l); Tunda(30);}
		SendS(13); SendS(13); 
		SendS(67); SendS(65); SendS(77); Tunda(30);
		SendS(32); SendS(79); SendS(107); SendS(33); Tunda(30); 
		printf("\n===== Test  OK! =====");
	}
        if(X==97){
            printf("\n-----Mulai Cam!-----");
            IplImage *img1;
            ////////////////////////////////////////////
            CvCapture* capture = 0;
            capture = cvCaptureFromCAM(0);
            cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_WIDTH, Xx);
            cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_HEIGHT, Yy);
            if(!capture){printf("******************Error Cam!\n"); return -1;}
            for(int ii=0;ii<loopGrab;ii++){
                img1 = cvQueryFrame(capture);
                if(!img1){printf("******************Gagal Grab!\n"); break;}
            }
            for(int x=(Yy/2)-100; x<(Yy/2)+100; x++){
                arr=255; SendS(arr);
                arr=49;  SendS(arr);
                arr=50;  SendS(arr);
                arr=51;  SendS(arr);
                for(int y=(Xx/2)-100; y<(Xx/2)+100; y++){
                    temp=cvGet2D(img1,x,y);
                    arr=temp.val[2]; if(arr==255){arr=254;}
                    SendS(arr);
                    arr=temp.val[1]; if(arr==255){arr=254;}
                    SendS(arr);
                    arr=temp.val[0]; if(arr==255){arr=254;}
                    SendS(arr);
                    Tunda(26); 
	            //26=28 sec; 27=29 sec; 30=32 sec;.
		}            
	    }
            cvReleaseCapture(&capture);
            cvReleaseImage(&img1);
            printf("\n----Sukses Cam!-----");
        }
	if(X==99){
	    printf("_____Compass_____\n");
	    int fe;
	    char *fName2 = "/dev/i2c-1";
	    int  addr2 = 0x60;						
	    unsigned char buf[10];					
	    if ((fe = open(fName2, O_RDWR)) < 0) {
		printf("*****Error Open I2C\n"); exit(1);
	    }
            if (ioctl(fe, I2C_SLAVE, addr2) < 0) {				
		printf("***** Error talk Slave\n"); exit(1);
	    }
	    while(1){
         	buf[0]=0;									
		if ((write(fe, buf, 1)) != 1) {		
		     printf("***** Error writing Slave\n"); exit(1);
		}
		if (read(fe, buf, 3) != 3) {			
		     printf("***** Error read slave\n"); exit(1);
		}
		else {
			printf("\n%u",buf[1]);
			//unsigned char highByte = buf[2];
			//unsigned char lowByte = buf[3];
			//unsigned int result = (highByte <<8) + lowByte;
			//printf("%u.%u",result / 10, result %10);
	    	}
                Tunda(100);
	    }
	    printf("_____Compass End!_____\n");
  	}
	if(X==118){
	    printf("_____Accelero_____\n");
	    int ff;
	    char *fName3 = "/dev/i2c-1";
	    int  addr3 = 0x60;						
	    unsigned char buf[10];					
	    if ((ff = open(fName3, O_RDWR)) < 0) {
		printf("*****Error Open I2C\n"); exit(1);
	    }
            if (ioctl(ff, I2C_SLAVE, addr3) < 0) {				
		printf("***** Error talk Slave\n"); exit(1);
	    }
	    while(1){
         	buf[0]=0;									
		if ((write(ff, buf, 16)) != 16) {		
		     printf("***** Error writing Slave\n"); exit(1);
		}
		if (read(ff, buf, 6) != 6) {			
		     printf("***** Error read slave\n"); exit(1);
		}
		else {
			printf("\n%u %u %u",buf[1],buf[3],buf[5]);
	    	}
                Tunda(100);
	    }
	    printf("_____Accelero End!_____\n");
  	}
	system("clear");
    }
    printf("\nDone");
}

void Tunda(int _x1000){for(int i=0;i<=(1000*_x1000);i++);}