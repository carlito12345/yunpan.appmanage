package com.autolink.app.vehiclemanager.data;

/* loaded from: classes.dex */
public enum JieTKeymapType {
    MAP_TYPE_KEY(1, "按键"),
    MAP_TYPE_GEAR(2, "档位"),
    MAP_TYPE_DOOR(3, "车门"),
    MAP_TYPE_LAMP(4, "车灯"),
    ACTION_HARDKEY_SHORT(100, "短按"),
    ACTION_HARDKEY_LONG_START(101, "长按开始"),
    ACTION_HARDKEY_LONG_END(102, "长按结束"),
    KEYCODE_L_UP(1000, "左侧-滑轮上滑"),
    KEYCODE_L_DOWN(1001, "左侧-滑轮下滑"),
    KEYCODE_L_LEFT(1002, "左侧-返回键"),
    KEYCODE_L_RIGHT(1003, "左侧-OK键"),
    KEYCODE_R_MODE(1009, "右侧-MODE键"),
    KEYCODE_R_VOICE(1010, "右侧-语音键"),
    KEYCODE_R_PREVIOUS(1011, "右侧-上一曲键"),
    KEYCODE_R_NEXT(1012, "右侧-下一曲键"),
    KEYCODE_R_UP(1014, "右侧-滑轮上滑"),
    KEYCODE_R_DOWN(1015, "右侧-滑轮下滑"),
    KEYCODE_R_MUTE(1013, "右侧-静音键"),
    KEYCODE_R_STAR(1016, "右侧- * 键"),
    GEAR_P(1, "切到 P 档时"),
    GEAR_R(2, "切到 R 档时"),
    GEAR_N(3, "切到 N 档时"),
    GEAR_D(4, "切到 D 档时"),
    DOOR_FL(3000, "主驾门"),
    DOOR_FR(3001, "副驾门"),
    DOOR_RL(3002, "左后门"),
    DOOR_RR(3003, "右后门"),
    DOOR_HATCH(2174, "后备箱"),
    DOOR_OPEN(1, "开门时"),
    DOOR_CLOSE(0, "关门时"),
    LAMP_TYPE_DA(3009, "大灯"),
    LAMP_TYPE_TURN_LEFT(3006, "左转向灯"),
    LAMP_TYPE_TURN_RIGHT(3007, "右转向灯"),
    LAMP_ON(1, "开灯时"),
    LAMP_OFF(0, "关灯时"),
    YU_LIU(999999, "预留");

    private final String desc;
    private final int value;

    JieTKeymapType(int i10, String str) {
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
