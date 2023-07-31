#include "ov7725.h"

XGpioPs OVGpio;

void emio_init(void)
{
	XGpioPs_Config *ConfigPtr;
	// This function looks for the device configuration based on the unique device ID.
	ConfigPtr = XGpioPs_LookupConfig(OV_GPIO_DEVICE_ID);
	// This function initializes a XGpioPs instance/driver.
	XGpioPs_CfgInitialize(&OVGpio, ConfigPtr, ConfigPtr->BaseAddr);

	/* ����GPIO�ķ���*/
	//XGpioPs_SetDirectionPin(&OVGpio, EMIO_SGM, 1);
	//XGpioPs_SetDirectionPin(&OVGpio, EMIO_RST, 1);
	XGpioPs_SetDirectionPin(&OVGpio, EMIO_SCL, 1);
	XGpioPs_SetDirectionPin(&OVGpio, EMIO_SDA, 1);

	/* �������ʹ�� */
	//XGpioPs_SetOutputEnablePin(&OVGpio, EMIO_SGM, 1);
	//XGpioPs_SetOutputEnablePin(&OVGpio, EMIO_RST, 1);
	XGpioPs_SetOutputEnablePin(&OVGpio, EMIO_SCL, 1);
	XGpioPs_SetOutputEnablePin(&OVGpio, EMIO_SDA, 1);

	/* д���ݵ�GPIO��������� */
	//XGpioPs_WritePin(&OVGpio, EMIO_SGM, 1);
	XGpioPs_WritePin(&OVGpio, EMIO_SCL, 1);
	XGpioPs_WritePin(&OVGpio, EMIO_SDA, 1);
	//XGpioPs_WritePin(&OVGpio, EMIO_RST, 1);
}

/* SCCB */
void sccb_start(void)
{
	XGpioPs_WritePin(&OVGpio, EMIO_SCL, 1);
	XGpioPs_WritePin(&OVGpio, EMIO_SDA, 1);
	usleep(5);
	XGpioPs_WritePin(&OVGpio, EMIO_SDA, 0);
	usleep(5);
	XGpioPs_WritePin(&OVGpio, EMIO_SCL, 0);
}


void sccb_stop(void)
{
	XGpioPs_WritePin(&OVGpio, EMIO_SCL, 0);
	XGpioPs_WritePin(&OVGpio, EMIO_SDA, 0);
	usleep(5);
	XGpioPs_WritePin(&OVGpio, EMIO_SCL, 1);
	usleep(5);
	XGpioPs_WritePin(&OVGpio, EMIO_SDA, 1);
}

void sccb_send_byte(u8 txd)
{
	int i;
	XGpioPs_WritePin(&OVGpio, EMIO_SCL, 0);
	usleep(5);
	for(i=7; i>=0; i--)
	{
		XGpioPs_WritePin(&OVGpio, EMIO_SDA, (txd&(0x01<<i))>>i);
		usleep(5);
		XGpioPs_WritePin(&OVGpio, EMIO_SCL, 1);
		usleep(5);
		XGpioPs_WritePin(&OVGpio, EMIO_SCL, 0);
		usleep(5);
	}
}

void sccb_ack(void)
{
	XGpioPs_WritePin(&OVGpio, EMIO_SCL, 0);
	XGpioPs_WritePin(&OVGpio, EMIO_SDA, 0);
	usleep(5);
	XGpioPs_WritePin(&OVGpio, EMIO_SCL, 1);
	usleep(5);
	XGpioPs_WritePin(&OVGpio, EMIO_SCL, 0);
	usleep(5);
}


u8 sccb_rece_byte(void)
{
	int i;
	u8 rxd = 0;
	XGpioPs_SetDirectionPin(&OVGpio, EMIO_SDA, 0);
	XGpioPs_SetOutputEnablePin(&OVGpio, EMIO_SDA, 0);

	XGpioPs_WritePin(&OVGpio, EMIO_SCL, 0);
	usleep(5);
	for(i=7; i>=0; i--)
	{
		XGpioPs_WritePin(&OVGpio, EMIO_SCL, 1);
		usleep(3);
        if( XGpioPs_ReadPin(&OVGpio, EMIO_SDA) ) {
        	rxd = rxd | (0x01<<i);
        }
		usleep(2);
		XGpioPs_WritePin(&OVGpio, EMIO_SCL, 0);
		usleep(5);
	}
	XGpioPs_SetDirectionPin(&OVGpio, EMIO_SDA, 1);
	XGpioPs_SetOutputEnablePin(&OVGpio, EMIO_SDA, 1);
	return rxd;
}

void sccb_write_reg8(u8 addr , u8 data)
{

	sccb_start();

	sccb_send_byte(OV7725_DEV_ID);
	sccb_ack();

	sccb_send_byte(addr);
	sccb_ack();

	sccb_send_byte(data);
	sccb_ack();

  	sccb_stop();
}

//SCCB���Ĵ���
u8 sccb_read_reg8(u8 addr )
{
	u8 rxd;

	sccb_start();

	sccb_send_byte(OV7725_DEV_ID);
	sccb_ack();

	sccb_send_byte(addr);
	sccb_ack();

  	sccb_stop();

  	sccb_start();

	sccb_send_byte(OV7725_DEV_ID | 0x01);
	sccb_ack();

	rxd = sccb_rece_byte();
	sccb_ack();

  	sccb_stop();

  	return  rxd ;
}

/* SCCB end */


//OV7725��ʼ��
u8 ov7725_init(void)
{
    u16 cam_id = 0;
    emio_init();
    //��OV7725����ͷID
    cam_id = sccb_read_reg8(0x0B);
    cam_id |= sccb_read_reg8(0x0A) << 8;

    if(cam_id != 0x7721)  //��ȡ����ȷ��OV7725 ID
        return 1;
    else{
		sccb_write_reg8(0x12,0x80);    // BIT[7]-Reset all the Reg
		usleep(1000);

		sccb_write_reg8 (0x3d, 0x03) ; //COM12 ģ�����ֱ������
		sccb_write_reg8 (0x15, 0x00) ; //COM10 href/vsync/pclk/data�źſ���
		sccb_write_reg8 (0x17, 0x23) ; //HSTART ˮƽ��ʼλ��
		sccb_write_reg8 (0x18, 0xa0) ; //HSIZE ˮƽ�ߴ�
		sccb_write_reg8 (0x19, 0x07) ; //VSTRT ��ֱ��ʼλ��
		sccb_write_reg8 (0x1a, 0xf0) ; //VSIZE ��ֱ�ߴ�
		sccb_write_reg8 (0x32, 0x00) ; //HREF ͼ��ʼ�ͳߴ���ƣ����Ƶ�λ
		sccb_write_reg8 (0x29, 0xa0) ; //HOutSize ˮƽ����ߴ�
		sccb_write_reg8 (0x2a, 0x00) ; //EXHCH ��������MSB
		sccb_write_reg8 (0x2b, 0x00) ; //EXHCL ��������LSB
		sccb_write_reg8 (0x2c, 0xf0) ; //VOutSize ��ֱ����ߴ�

//		sccb_write_reg8 (0x0d, 0x41) ; //COM4 PLL��Ƶ����(multiplier)
		sccb_write_reg8 (0x0d, 0x01);
											//	Bit[7:6]:  0:1x 1:4x 2:6x 3:8x
		sccb_write_reg8 (0x11, 0x00) ; //CLKRC �ڲ�ʱ������
											//	Freq=multiplier/[(CLKRC[5:0]+1)*2]
			//PCLK = �ڲ�ʱ�� = ����ʱ�� �� multiplier / [(CLKRC[5:0] + 1) �� 2]
			//OV7725���ⲿ������12MHz������ PCLK = 12MHz * 4 / [ (0+1) * 2 ] =24MHz

		sccb_write_reg8 (0x12, 0x06) ; //COM7 ���VGA RGB565��ʽ
//		sccb_write_reg8 (0x0c, 0x10) ; //COM3 Bit[0]: 0:ͼ������ 1:��������
		sccb_write_reg8 (0x0c, 0x11) ;
			//DSP ����
		sccb_write_reg8 (0x42, 0x7f) ; //TGT_B �ڵ�ƽУ׼��ɫͨ��Ŀ��ֵ
		sccb_write_reg8 (0x4d, 0x09) ; //FixGain ģ������Ŵ���
		sccb_write_reg8 (0x63, 0xf0) ; //AWB_Ctrl0 �Զ���ƽ������ֽ�0
		sccb_write_reg8 (0x64, 0xff) ; //DSP_Ctrl1 DSP�����ֽ�1
		sccb_write_reg8 (0x65, 0x00) ; //DSP_Ctrl2 DSP�����ֽ�2
		sccb_write_reg8 (0x66, 0x00) ; //DSP_Ctrl3 DSP�����ֽ�3
		sccb_write_reg8 (0x67, 0x00) ; //DSP_Ctrl4 DSP�����ֽ�4
			//AGC AEC AWB
			//COM8 Bit[2]:�Զ�����ʹ�� Bit[1]:�Զ���ƽ��ʹ�� Bit[0]:�Զ��ع⹦��
		sccb_write_reg8 (0x13, 0xff) ; //COM8
		sccb_write_reg8 (0x0f, 0xc5) ; //COM6
		sccb_write_reg8 (0x14, 0x11) ;
		sccb_write_reg8 (0x22, 0x98) ;
		sccb_write_reg8 (0x23, 0x03) ;
		sccb_write_reg8 (0x24, 0x40) ;
		sccb_write_reg8 (0x25, 0x30) ;
		sccb_write_reg8 (0x26, 0xa1) ;
		sccb_write_reg8 (0x6b, 0xaa) ;
		sccb_write_reg8 (0x13, 0xff) ;
			//matrix sharpness brightness contrast UV
		sccb_write_reg8 (0x90, 0x0a) ; //EDGE1 ��Ե��ǿ����1
			//DNSOff ������ֵ����,�����Զ�ģʽ����Ч
		sccb_write_reg8 (0x91, 0x01) ; //DNSOff
		sccb_write_reg8 (0x92, 0x01) ; //EDGE2 ���(��Ե��ǿ)ǿ������
		sccb_write_reg8 (0x93, 0x01) ; //EDGE3 ���(��Ե��ǿ)ǿ������
		sccb_write_reg8 (0x94, 0x5f) ; //MTX1 ����ϵ��1
		sccb_write_reg8 (0x95, 0x53) ; //MTX1 ����ϵ��2
		sccb_write_reg8 (0x96, 0x11) ; //MTX1 ����ϵ��3
		sccb_write_reg8 (0x97, 0x1a) ; //MTX1 ����ϵ��4
		sccb_write_reg8 (0x98, 0x3d) ; //MTX1 ����ϵ��5
		sccb_write_reg8 (0x99, 0x5a) ; //MTX1 ����ϵ��6
		sccb_write_reg8 (0x9a, 0x1e) ; //MTX_Ctrl �������
		sccb_write_reg8 (0x9b, 0x3f) ; //BRIGHT ����
		sccb_write_reg8 (0x9c, 0x25) ; //CNST �Աȶ�
		sccb_write_reg8 (0x9e, 0x81) ;
		sccb_write_reg8 (0xa6, 0x06) ; //SDE ��������Ч������
		sccb_write_reg8 (0xa7, 0x65) ; //USAT "U"��������
		sccb_write_reg8 (0xa8, 0x65) ; //VSAT "V"��������
		sccb_write_reg8 (0xa9, 0x80) ; //VSAT "V"��������
		sccb_write_reg8 (0xaa, 0x80) ; //VSAT "V"��������
			//٤������
		sccb_write_reg8 (0x7e, 0x0c) ;
		sccb_write_reg8 (0x7f, 0x16) ;
		sccb_write_reg8 (0x80, 0x2a) ;
		sccb_write_reg8 (0x81, 0x4e) ;
		sccb_write_reg8 (0x82, 0x61) ;
		sccb_write_reg8 (0x83, 0x6f) ;
		sccb_write_reg8 (0x84, 0x7b) ;
		sccb_write_reg8 (0x85, 0x86) ;
		sccb_write_reg8 (0x86, 0x8e) ;
		sccb_write_reg8 (0x87, 0x97) ;
		sccb_write_reg8 (0x88, 0xa4) ;
		sccb_write_reg8 (0x89, 0xaf) ;
		sccb_write_reg8 (0x8a, 0xc5) ;
		sccb_write_reg8 (0x8b, 0xd7) ;
		sccb_write_reg8 (0x8c, 0xe8) ;
		sccb_write_reg8 (0x8d, 0x20) ;

		sccb_write_reg8 (0x0e,0x65) ; //COM5
		sccb_write_reg8 (0x09,0x00) ; //COM2  Bit[1:0] ���������������
		return 0;
    }
}
