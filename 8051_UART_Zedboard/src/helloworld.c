#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xuartps.h"

#define NUM_OF_BYTE 1

XUartPs_Config *Config_0;
XUartPs Uart_PS_0;
XUartPs_Config *Config_1;
XUartPs Uart_PS_1;

int main()
{
    init_platform();
	int Status;
	//u8 BufferPtr_tx[10]={'1','2','3','4',5,6,7,8,9,10};
	u8 BufferPtr_rx[10]={0,0x0a,0x0d,0,0,0,0,0,0,0};
	/*************************
	 * UART 0 initialization *
	 *************************/
//	Config_0 = XUartPs_LookupConfig(XPAR_XUARTPS_0_DEVICE_ID);
//	if (NULL == Config_0) {
//		return XST_FAILURE;
//	}
//	Status = XUartPs_CfgInitialize(&Uart_PS_0, Config_0, Config_0->BaseAddress);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
	/*************************
	 * UART 1 initialization *
	 *************************/

	Config_1 = XUartPs_LookupConfig(XPAR_XUARTPS_1_DEVICE_ID);
	if (NULL == Config_1) {
		return XST_FAILURE;
	}
	Status = XUartPs_CfgInitialize(&Uart_PS_1, Config_1, Config_1->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	printf("Initialize UART 1.\n");
	while(1){
//		Status = 0;
//		while (Status < NUM_OF_BYTE) {
//			Status +=	XUartPs_Recv(&Uart_PS_0, BufferPtr_rx, (NUM_OF_BYTE - Status));
//		}
//		XUartPs_Send(&Uart_PS_0, BufferPtr_rx, NUM_OF_BYTE+2);
//		printf(":%c\n",BufferPtr_rx[0]);
	}
    cleanup_platform();
    return 0;
}
