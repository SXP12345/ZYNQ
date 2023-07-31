#include "stdio.h"
#include "xparameters.h"
#include "xgpiops.h"
#include "sleep.h"

#define GPIO_DEVICE_ID XPAR_XGPIOPS_0_DEVICE_ID

#define MIO0_LED 0

XGpioPs_Config *ConfigPtr;
XGpioPs Gpio;

int main()
{
	printf("GPIO MIO LED TEST!\n");
	/* ��ʼ��GPIO������ */
	// This function looks for the device configuration based on the unique device ID.
	ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	// This function initializes a XGpioPs instance/driver.
	XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);

	/* ����GPIO�ķ�������Ϊ��� */
	XGpioPs_SetDirectionPin(&Gpio, MIO0_LED, 1);

	/* �������ʹ�� */
	XGpioPs_SetOutputEnablePin(&Gpio, MIO0_LED, 1);

	/* д���ݵ�GPIO��������� */
	XGpioPs_WritePin(&Gpio, MIO0_LED, 1);

	/* led��˸ */
	while(1)
	{
		/* ���� */
		XGpioPs_WritePin(&Gpio, MIO0_LED, 1);
		sleep(1);
		/* Ϩ�� */
		XGpioPs_WritePin(&Gpio, MIO0_LED, 0);
		sleep(1);
	}
	return 0;
}