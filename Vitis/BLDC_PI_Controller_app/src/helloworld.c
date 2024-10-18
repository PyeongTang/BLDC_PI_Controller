
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xparameters.h"
#include "xintc.h"
#include "xil_exception.h"

#include "myBLDC_Controller.h"

#define BLDC_CTRL_IRQ_VEC_ID 	XPAR_INTC_0_MYBLDC_CONTROLLER_0_VEC_ID
#define BLDC_CTRL_BASE_ADDR 	XPAR_MYBLDC_CONTROLLER_0_S00_AXI_BASEADDR

XIntc intc_instance;

volatile unsigned int time_count;
volatile unsigned int RPM;
volatile int interruptFlag;

unsigned int RPM_window_valid = 0;
unsigned int RPM_window_count = 0;
unsigned int RPM_window_sum = 0;
unsigned int RPM_moving_average = 0;
unsigned int RPM_window[10] = {0,};

int reference = 0;
int error = 0;
int p_term = 0;
int i_term = 0;
int c_input = 0;

void calculateRPM(void* CallBackRef){
	time_count = MYBLDC_CONTROLLER_mReadReg(BLDC_CTRL_BASE_ADDR, 4);
	RPM = 10*100000000 / time_count;
	MYBLDC_CONTROLLER_mWriteReg(BLDC_CTRL_BASE_ADDR, 0, 0x80000000 | RPM_moving_average);
	MYBLDC_CONTROLLER_mWriteReg(BLDC_CTRL_BASE_ADDR, 0, 0);
	interruptFlag = 1;
}

int getReference(){
	return MYBLDC_CONTROLLER_mReadReg(BLDC_CTRL_BASE_ADDR, 8);
}

int getPTerm(){
	return MYBLDC_CONTROLLER_mReadReg(BLDC_CTRL_BASE_ADDR, 12);
}

int getITerm(){
	return MYBLDC_CONTROLLER_mReadReg(BLDC_CTRL_BASE_ADDR, 16);
}

int getControlInput(){
	return MYBLDC_CONTROLLER_mReadReg(BLDC_CTRL_BASE_ADDR, 20);
}

int getError(){
	return MYBLDC_CONTROLLER_mReadReg(BLDC_CTRL_BASE_ADDR, 24);
}

int main()
{
    init_platform();

//    Interrupt
	XIntc_Initialize(&intc_instance, BLDC_CTRL_IRQ_VEC_ID);
    XIntc_Connect(&intc_instance, BLDC_CTRL_IRQ_VEC_ID, (XInterruptHandler) calculateRPM, (void *) NULL);
    XIntc_Enable(&intc_instance, BLDC_CTRL_IRQ_VEC_ID);
    XIntc_Start(&intc_instance, XIN_REAL_MODE);
//    -----------------------------------------------

//    Exception
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XIntc_InterruptHandler, (void *) &intc_instance);
    Xil_ExceptionEnable();
//    -----------------------------------------------

//    PL
    time_count = 0;
    RPM = 0;
    interruptFlag = 0;
//    -----------------------------------------------

//    Moving Average
    RPM_window_valid = 0;
    RPM_window_count = 0;
    RPM_window_sum = 0;
    RPM_moving_average = 0;
//    -----------------------------------------------

//    Loop
    while (1){
		reference = getReference();
		error = getError();
		p_term = getPTerm();
		i_term = getITerm();
		c_input = getControlInput();


    	if (interruptFlag) {
    		interruptFlag = 0;
    		if (RPM_window_count < 10) {
    			RPM_window[RPM_window_count] = RPM;
    			RPM_window_count++;
    			RPM_window_valid = 0;
    		}
    		else {
    			RPM_window_sum = 0;
    			for (int i = 0; i < 9; i++){
        			RPM_window[i] = RPM_window[i+1];
        			RPM_window_sum += RPM_window[i];
    			}
    			RPM_window[9] = RPM;
    			RPM_window_sum += RPM_window[9];
    			RPM_window_valid = 1;
    			RPM_moving_average = RPM_window_sum / 10;
    		}
    		if (RPM_window_valid) {
//            	xil_printf("TimeCounter = %d\tRPM = %d\tRPM (MA) = %d\r\n", time_count, RPM, RPM_moving_average);
            	xil_printf("R : %4d\tO : %4d\tE : %4d\tP : %4d\tI : %4d\tC : %4d\r\n", reference, RPM_moving_average, error, p_term, i_term, c_input);
    		}
    		else {
            	xil_printf("Waiting For Stable Moving Average\r\n");
    		}
    	}
    }
//    -----------------------------------------------

    cleanup_platform();
    return 0;
}
