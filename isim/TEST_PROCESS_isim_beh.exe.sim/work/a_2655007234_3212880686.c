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
static const char *ng0 = "E:/TERM 6/ARCH/LAB/sdgfszdgzdsrgzgf/Youssef_project/Youssef_project/Joe/SHIFT_LEFT_EXT_2.vhd";



static void work_a_2655007234_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3000);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 26U);
    xsi_driver_first_trans_delta(t1, 0U, 26U, 0LL);

LAB2:    t7 = (t0 + 2920);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2655007234_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(42, ng0);

LAB3:    t1 = (t0 + 4978);
    t3 = (2U != 2U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 3064);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 2U);
    xsi_driver_first_trans_delta(t4, 26U, 2U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(2U, 2U, 0);
    goto LAB6;

}


extern void work_a_2655007234_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2655007234_3212880686_p_0,(void *)work_a_2655007234_3212880686_p_1};
	xsi_register_didat("work_a_2655007234_3212880686", "isim/TEST_PROCESS_isim_beh.exe.sim/work/a_2655007234_3212880686.didat");
	xsi_register_executes(pe);
}
