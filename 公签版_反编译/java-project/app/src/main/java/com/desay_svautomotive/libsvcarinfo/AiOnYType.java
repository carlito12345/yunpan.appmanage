package com.desay_svautomotive.libsvcarinfo;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.core.NoConst;
import com.hsae.autosdk.source.SourceConst;
import okhttp3.internal.http.StatusLine;

/* loaded from: classes.dex */
public enum AiOnYType {
    GEAR_P(1, "切到 P 档时"),
    GEAR_R(2, "切到 R 档时"),
    GEAR_N(3, "切到 N 档时"),
    GEAR_D(4, "切到 D 档时"),
    SPEED_START(100, "车辆-起步时"),
    SPEED_STOP(101, "车辆-停止时"),
    LAMP_OPEN(200, "大灯-打开时"),
    LAMP_CLOSE(CarSettingID.Recv.IGM_INPUT_OVER_VOLT, "大灯-关闭时"),
    DOOR_OPEN(NoConst.RECORDING_TIME_INTERVAL, "第一个打开门时"),
    DOOR_FL_OPEN(301, "主驾门-打开时"),
    DOOR_FL_CLOSE(302, "主驾门-关闭时"),
    DOOR_FR_OPEN(303, "副驾门-打开时"),
    DOOR_FR_CLOSE(SourceConst.IOCTL_TEST_CHECKDEVICE_DISABLE, "副驾门-关闭时"),
    DOOR_RL_OPEN(305, "左后门-打开时"),
    DOOR_RL_CLOSE(SourceConst.IOCTL_ANDROID_PHONE_VOLUME, "左后门-关闭时"),
    DOOR_RR_OPEN(StatusLine.HTTP_TEMP_REDIRECT, "右后门-打开时"),
    DOOR_RR_CLOSE(StatusLine.HTTP_PERM_REDIRECT, "右后门-关闭时"),
    DOOR_HATCH_OPEN(309, "后备箱-打开时"),
    DOOR_HATCH_CLOSE(310, "后备箱-关闭时"),
    MODE_ECO(400, "切换到 ECO 模式时"),
    MODE_NORMAL(401, "切换到 NORMAL 模式时"),
    MODE_SPORT(402, "切换到 SPORT 模式时"),
    MODE_I_PEDAL(403, "切换到 I-PEDAL 模式时"),
    YU_LIU(999999, "预留");

    private final String desc;
    private final int value;

    AiOnYType(int i10, String str) {
        this.value = i10;
        this.desc = str;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final int getValue() {
        return this.value;
    }
}
