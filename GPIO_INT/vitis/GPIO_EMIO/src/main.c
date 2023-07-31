#include "stdio.h"
#include "xparameters.h"
#include "xgpiops.h"
#include "sleep.h"
#include "xil_exception.h"

/* GPIO */
// DEVICE ID
#define GPIO_DEVICE_ID 		XPAR_XGPIOPS_0_DEVICE_ID
// GPIO����
XGpioPs_Config *ConfigPtr;
XGpioPs Gpio;
// GPIO����
#define MIO_PS_KEY1  0
#define EMIO_PL_KEY1 54
#define EMIO_PL_KEY2 55
#define EMIO_PL_LED1 56
#define EMIO_PL_LED2 57
#define EMIO_PL_LED3 58
#define EMIO_PL_LED4 59

/* INT */
// DEVICE ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define GPIO_INTERRUPT_ID	XPAR_XGPIOPS_0_INTR
// INT����
XScuGic_Config *IntcConfig; /* Instance of the interrupt controller */
XScuGic Intc; /* The Instance of the Interrupt Controller Driver */


int main()
{
	printf("GPIO MIO LED TEST!\n");
	/* ��ʼ��GPIO������ */
	ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);
	/* ����GPIO�ķ���*/
	XGpioPs_SetDirectionPin(&Gpio, MIO_PS_KEY1, 0);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_PL_KEY1, 0);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_PL_KEY2, 0);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_PL_LED1, 1);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_PL_LED2, 1);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_PL_LED3, 1);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_PL_LED4, 1);
	/* �������ʹ�� */
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_PL_LED1, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_PL_LED2, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_PL_LED3, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_PL_LED4, 1);
	/* д���ݵ�GPIO��������� */
	XGpioPs_WritePin(&Gpio, EMIO_PL_LED1, 1);
	XGpioPs_WritePin(&Gpio, EMIO_PL_LED2, 1);
	XGpioPs_WritePin(&Gpio, EMIO_PL_LED3, 1);
	XGpioPs_WritePin(&Gpio, EMIO_PL_LED4, 1);


	/* INT */
	Xil_ExceptionInit();
	/* Initialize the interrupt controller driver so that it is ready to use. */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	XScuGic_CfgInitialize(&Intc, IntcConfig, IntcConfig->CpuBaseAddress);
	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &Intc);
	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	XScuGic_Connect(&Intc, GPIO_INTERRUPT_ID, (Xil_ExceptionHandler)XGpioPs_IntrHandler, (void *)(&Gpio));
	/* ����MIO�����жϴ������� */
	XGpioPs_SetIntrTypePin(&Gpio, MIO_PS_KEY1, XGPIOPS_IRQ_TYPE_EDGE_FALLING);

	XGpioPs_SetCallbackHandler(&Gpio, (void *)(&Gpio), IntrHandler);



	return 0;
}
