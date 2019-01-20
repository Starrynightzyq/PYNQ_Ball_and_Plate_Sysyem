/*
 * interrupt_priority.h
 *
 *  Created on: 2019年1月20日
 *      Author: admin
 */

#ifndef SRC_INTERRUPT_PRIORITY_H_
#define SRC_INTERRUPT_PRIORITY_H_
/*

Priority is the new priority for the IRQ source. 0 is highest
* 			priority, 0xF8 (248) is lowest. There are 32 priority levels
*			supported with a step of 8. Hence the supported priorities are
*			0, 8, 16, 32, 40 ..., 248.
*/


#define PRI_TIMER0		0
#define PRI_IIC0		8	//mpu6500
#define PRI_UART_CAM	16	//uart2cam
#define PRI_UART_PC		24	//uart2pc

#endif /* SRC_INTERRUPT_PRIORITY_H_ */
