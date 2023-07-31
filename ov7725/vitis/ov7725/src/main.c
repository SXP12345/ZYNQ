#include "stdio.h"
#include "xparameters.h"
#include "xgpiops.h"
#include "sleep.h"
#include "ov7725.h"
//#include "vdma_api.h"
//#include "xaxivdma.h"
#include "xil_cache.h"

#define GPIO_DEVICE_ID XPAR_XGPIOPS_0_DEVICE_ID

#define EMIO_LED1 	54
#define EMIO_LED2 	55
#define EMIO_LED3 	56
#define EMIO_LED4 	57

XGpioPs_Config *ConfigPtr;
XGpioPs Gpio;

//XAxiVdma     vdma;
//#define VDMA_ID            XPAR_AXIVDMA_0_DEVICE_ID   //VDMA器件ID
unsigned int const frame_buffer_addr = (XPAR_PS7_DDR_0_S_AXI_BASEADDR + 0x1000000);

int main()
{
	u8 flag;
	printf("GPIO MIO LED TEST!\n");
	/* 初始化GPIO的驱动 */
	// This function looks for the device configuration based on the unique device ID.
	ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	// This function initializes a XGpioPs instance/driver.
	XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);

	/* 设置GPIO的方向*/
	XGpioPs_SetDirectionPin(&Gpio, EMIO_LED1, 1);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_LED2, 1);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_LED3, 1);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_LED4, 1);

	/* 设置输出使能 */
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_LED1, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_LED2, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_LED3, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_LED4, 1);

	/* 写数据到GPIO的输出引脚 */
	XGpioPs_WritePin(&Gpio, EMIO_LED1, 0);
	XGpioPs_WritePin(&Gpio, EMIO_LED2, 0);
	XGpioPs_WritePin(&Gpio, EMIO_LED3, 0);
	XGpioPs_WritePin(&Gpio, EMIO_LED4, 0);

	flag = ov7725_init();
	if(flag == 1)
	{
		printf("Falied!\n");
	}
	else
	{
		printf("Success!\n");
		XGpioPs_WritePin(&Gpio, EMIO_LED1, 1);
		XGpioPs_WritePin(&Gpio, EMIO_LED2, 1);
		XGpioPs_WritePin(&Gpio, EMIO_LED3, 1);
		XGpioPs_WritePin(&Gpio, EMIO_LED4, 1);
	}
	sleep(5);
//	run_vdma_frame_buffer(&vdma, VDMA_ID, 640, 480, frame_buffer_addr, 0, 0, ONLY_WRITE);
	while(1)
	{
		XGpioPs_WritePin(&Gpio, EMIO_LED1, 1);
		XGpioPs_WritePin(&Gpio, EMIO_LED2, 1);
		XGpioPs_WritePin(&Gpio, EMIO_LED3, 1);
		XGpioPs_WritePin(&Gpio, EMIO_LED4, 1);
		usleep(500);
		Xil_DCacheFlush();
		usleep(500);
//		run_vdma_frame_buffer(&vdma, VDMA_ID,  640, 480, frame_buffer_addr,0, 0,ONLY_WRITE);
	}
	return 0;
}
