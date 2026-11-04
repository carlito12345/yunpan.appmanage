package com.hsae.autosdk.diagnose;

/* loaded from: classes.dex */
public class DiagnoseConst {
    public static final String ACTION_START_DIAGNOSE = "com.hsae.auto.ACTION_START_DIAGNOSE";
    public static final int CONNECTED = 1;
    public static final String DIAGNOSE_SERVICE = "com.hsae.auto.DIAGNOSE_SERVICE";
    public static final int DISCONNECTED = 0;
    public static final String EXTRA_START_DIAGNOSE = "com.hsae.auto.EXTRA_START_DIAGNOSE";
    public static final String IBINDER_DIAGNOSE = "com.hsae.auto.IBINDER_DIAGNOSE";
    public static final String IBINDER_DIAGNOSE_MANAGER = "com.hsae.auto.IBINDER_DIAGNOSE_MANAGER";
    public static final int NO_THE_NOTE = 2;

    public enum AirHAVC {
        PANEL_LIGHTS,
        EVAPORATOR_SENSOR,
        FAN_MOTOR,
        CIRCULATE_MOTOR,
        MODE_MOTOR,
        MAIN_TEM_MOTOR,
        COPILOT_TEM_MOTORR
    }

    public enum Loudspeaker {
        FL,
        FR,
        RL,
        RR
    }

    public enum NCM_DIAGNOSE {
        SERVER_TCP,
        SERVER_UDP,
        CLIENT_MODE,
        CLIENT_50M,
        CLIENT_100M
    }

    public enum Panel {
        AC,
        MEDIA,
        HOME,
        BACK,
        MENU,
        DUAL,
        FAN_ADD,
        FAN_MINUS,
        INTERBAL_LOOP,
        OUTSIDE_LOOP,
        MAX_AC,
        MODE,
        ON_OFF,
        FAN_FORNT_WINDSHIELD,
        FAN_REAR_WINDSHIELD
    }

    public enum RADIO_DIAGNOSE {
        FM_LEVEL,
        FM_FOF,
        FM_USN,
        FM_WAM,
        AM_LEVEL,
        AM_FOF,
        AM_USN,
        RADIO_DIAGNOSE_FLAG
    }

    public enum Result {
        NORMAL,
        SHORT_CIRCUIT,
        OPEN_CIRCUIT,
        STALL,
        EXCEPTION
    }

    public enum STSW {
        TEL_ON,
        TEL_OOF,
        VOL_UP,
        VOL_DOWN,
        SEEK_UP,
        SEEK_DOWN,
        SOURCE
    }

    public enum USB_DIAGNOSE {
        USB_MODE,
        TEST_J,
        TEST_K,
        TEST_SEONAK,
        TEST_PACKET
    }
}
