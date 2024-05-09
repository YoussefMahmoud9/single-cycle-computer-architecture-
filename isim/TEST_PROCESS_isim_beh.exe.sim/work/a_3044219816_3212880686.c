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
static const char *ng0 = "E:/TERM 6/ARCH/LAB/sdgfszdgzdsrgzgf/Youssef_project/Youssef_project/Joe/ALU_CONTROL.vhd";



static void work_a_3044219816_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned char t29;
    unsigned int t30;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4804);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4810);
    t4 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t4 = 0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4816);
    t15 = 1;
    if (2U == 2U)
        goto LAB24;

LAB25:    t15 = 0;

LAB26:    if (t15 == 1)
        goto LAB21;

LAB22:    t4 = (unsigned char)0;

LAB23:    if (t4 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t27 = (1 - 1);
    t5 = (t27 * -1);
    t16 = (1U * t5);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t15 = *((unsigned char *)t1);
    t19 = (t15 == (unsigned char)3);
    if (t19 == 1)
        goto LAB38;

LAB39:    t4 = (unsigned char)0;

LAB40:    if (t4 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4834);
    t15 = 1;
    if (2U == 2U)
        goto LAB52;

LAB53:    t15 = 0;

LAB54:    if (t15 == 1)
        goto LAB49;

LAB50:    t4 = (unsigned char)0;

LAB51:    if (t4 != 0)
        goto LAB47;

LAB48:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4844);
    t15 = 1;
    if (2U == 2U)
        goto LAB69;

LAB70:    t15 = 0;

LAB71:    if (t15 == 1)
        goto LAB66;

LAB67:    t4 = (unsigned char)0;

LAB68:    if (t4 != 0)
        goto LAB64;

LAB65:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t27 = (1 - 1);
    t5 = (t27 * -1);
    t16 = (1U * t5);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t15 = *((unsigned char *)t1);
    t19 = (t15 == (unsigned char)3);
    if (t19 == 1)
        goto LAB83;

LAB84:    t4 = (unsigned char)0;

LAB85:    if (t4 != 0)
        goto LAB81;

LAB82:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t8 = (t0 + 4806);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(47, ng0);
    t8 = (t0 + 4812);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB13:    t5 = 0;

LAB16:    if (t5 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB14;

LAB18:    t5 = (t5 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(50, ng0);
    t14 = (t0 + 4822);
    t22 = (t0 + 2912);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB3;

LAB21:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t16 = (5 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t8 = (t9 + t18);
    t10 = (t0 + 4818);
    t19 = 1;
    if (4U == 4U)
        goto LAB30;

LAB31:    t19 = 0;

LAB32:    t4 = t19;
    goto LAB23;

LAB24:    t5 = 0;

LAB27:    if (t5 < 2U)
        goto LAB28;
    else
        goto LAB26;

LAB28:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB25;

LAB29:    t5 = (t5 + 1);
    goto LAB27;

LAB30:    t20 = 0;

LAB33:    if (t20 < 4U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t12 = (t8 + t20);
    t13 = (t10 + t20);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB31;

LAB35:    t20 = (t20 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(53, ng0);
    t11 = (t0 + 4830);
    t13 = (t0 + 2912);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB3;

LAB38:    t3 = (t0 + 1192U);
    t6 = *((char **)t3);
    t18 = (5 - 3);
    t20 = (t18 * 1U);
    t28 = (0 + t20);
    t3 = (t6 + t28);
    t7 = (t0 + 4826);
    t29 = 1;
    if (4U == 4U)
        goto LAB41;

LAB42:    t29 = 0;

LAB43:    t4 = t29;
    goto LAB40;

LAB41:    t30 = 0;

LAB44:    if (t30 < 4U)
        goto LAB45;
    else
        goto LAB43;

LAB45:    t9 = (t3 + t30);
    t10 = (t7 + t30);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB42;

LAB46:    t30 = (t30 + 1);
    goto LAB44;

LAB47:    xsi_set_current_line(56, ng0);
    t14 = (t0 + 4840);
    t22 = (t0 + 2912);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB3;

LAB49:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t16 = (5 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t8 = (t9 + t18);
    t10 = (t0 + 4836);
    t19 = 1;
    if (4U == 4U)
        goto LAB58;

LAB59:    t19 = 0;

LAB60:    t4 = t19;
    goto LAB51;

LAB52:    t5 = 0;

LAB55:    if (t5 < 2U)
        goto LAB56;
    else
        goto LAB54;

LAB56:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB53;

LAB57:    t5 = (t5 + 1);
    goto LAB55;

LAB58:    t20 = 0;

LAB61:    if (t20 < 4U)
        goto LAB62;
    else
        goto LAB60;

LAB62:    t12 = (t8 + t20);
    t13 = (t10 + t20);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB59;

LAB63:    t20 = (t20 + 1);
    goto LAB61;

LAB64:    xsi_set_current_line(59, ng0);
    t14 = (t0 + 4850);
    t22 = (t0 + 2912);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB3;

LAB66:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t16 = (5 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t8 = (t9 + t18);
    t10 = (t0 + 4846);
    t19 = 1;
    if (4U == 4U)
        goto LAB75;

LAB76:    t19 = 0;

LAB77:    t4 = t19;
    goto LAB68;

LAB69:    t5 = 0;

LAB72:    if (t5 < 2U)
        goto LAB73;
    else
        goto LAB71;

LAB73:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB70;

LAB74:    t5 = (t5 + 1);
    goto LAB72;

LAB75:    t20 = 0;

LAB78:    if (t20 < 4U)
        goto LAB79;
    else
        goto LAB77;

LAB79:    t12 = (t8 + t20);
    t13 = (t10 + t20);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB76;

LAB80:    t20 = (t20 + 1);
    goto LAB78;

LAB81:    xsi_set_current_line(62, ng0);
    t11 = (t0 + 4858);
    t13 = (t0 + 2912);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB3;

LAB83:    t3 = (t0 + 1192U);
    t6 = *((char **)t3);
    t18 = (5 - 3);
    t20 = (t18 * 1U);
    t28 = (0 + t20);
    t3 = (t6 + t28);
    t7 = (t0 + 4854);
    t29 = 1;
    if (4U == 4U)
        goto LAB86;

LAB87:    t29 = 0;

LAB88:    t4 = t29;
    goto LAB85;

LAB86:    t30 = 0;

LAB89:    if (t30 < 4U)
        goto LAB90;
    else
        goto LAB88;

LAB90:    t9 = (t3 + t30);
    t10 = (t7 + t30);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB87;

LAB91:    t30 = (t30 + 1);
    goto LAB89;

}


extern void work_a_3044219816_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3044219816_3212880686_p_0};
	xsi_register_didat("work_a_3044219816_3212880686", "isim/TEST_PROCESS_isim_beh.exe.sim/work/a_3044219816_3212880686.didat");
	xsi_register_executes(pe);
}
