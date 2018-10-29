/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/VHDL/project_3/project_3.srcs/sources_1/imports/new/kadai3.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2842628470_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    unsigned char t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1608U);
    t5 = *((char **)t4);
    t4 = (t0 + 4968U);
    t6 = (t0 + 1728U);
    t7 = *((char **)t6);
    t6 = (t0 + 4984U);
    t8 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t3, t5, t4, t7, t6);
    t9 = (t0 + 1608U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    t11 = (t3 + 12U);
    t12 = *((unsigned int *)t11);
    t13 = (1U * t12);
    memcpy(t9, t8, t13);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1608U);
    t4 = *((char **)t1);
    t1 = (t0 + 5018);
    t2 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t2 = 0;

LAB10:    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t8 = xsi_get_transient_memory(4U);
    memset(t8, 0, 4U);
    t9 = t8;
    memset(t9, (unsigned char)2, 4U);
    t10 = (t0 + 1608U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    memcpy(t10, t8, 4U);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1488U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t1 = (t0 + 3112);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1488U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t14 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t2);
    t1 = (t0 + 1488U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = t14;
    goto LAB6;

LAB8:    t12 = 0;

LAB11:    if (t12 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t6 = (t4 + t12);
    t7 = (t1 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB9;

LAB13:    t12 = (t12 + 1);
    goto LAB11;

}


extern void work_a_2842628470_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2842628470_3212880686_p_0};
	xsi_register_didat("work_a_2842628470_3212880686", "isim/kadai56.exe.sim/work/a_2842628470_3212880686.didat");
	xsi_register_executes(pe);
}
