package com.hsae.autosdk.p001os;

/* loaded from: classes.dex */
public class SocConst {
    public static final String ACTION_AUTO_CORE = "com.hsae.auto.ACTION_AUTO_CORE";
    public static final String ACTION_SHUTDOWN_CPU = "com.hsae.auto.ACTION_SHUTDOWN_CPU";
    public static final String ACTION_UPGRADE_STATE = "com.hsae.auto.ACTION_UPGRADE_STATE";
    public static final String AUTO_CORE_SERVICE = "com.hsae.auto.AUTO_CORE_SERVICE";
    public static final int CONNECT_MODE_ADB = 1;
    public static final int CONNECT_MODE_AOA = 2;
    public static final int CONNECT_MODE_EAP = 3;
    public static final int CONNECT_MODE_NULL = 0;
    public static final int CONNECT_MODE_WIFI = 4;
    public static final String EXTRA_UPGRADE_STATE = "com.hsae.auto.EXTRA_UPGRADE_STATE";
    public static final String IBINDER_SOC = "com.hsae.auto.IBINDER_SOC";
    public static final String MSG_NULL_FEATURE = "feature should NOT be null";
    public static final String USB_MOUNT_PATH = "/storage/udisk";
    public static final String USB_NO_RESPONSE = "com.hsae.auto.USB_NO_RESPONSE";
    public static final String USB_UNSUPPORT = "com.hsae.auto.USB_UNSUPPORT";
    public static final String USB_UNSUPPORT_HUB = "com.hsae.auto.USB_UNSUPPORT_HUB";

    public static final class Upgrade {
        public static final byte CPU_CMD = 33;
        public static final byte CUPID_CMD = 49;
        public static final byte CUPID_DATA = 50;
        public static final byte FLASH_CMD = 17;
        public static final byte FLASH_DATA = 18;
        public static final byte MCU_CMD = 1;
        public static final byte MCU_DATA = 2;

        public static final class CPU {
            public static final int BEGIN = 1;
            public static final int CMD_LENGTH = 5;
            public static final int DATA_LENGTH = 134;
            public static final int REBOOT = 2;
        }

        public static final class MCU {
            public static final int CMD_LENGTH = 5;
            public static final int DATA_LENGTH = 6;
            public static final int DONE = 130;
            public static final int FAILED = 132;
            public static final int REDO = 131;
            public static final int SENDING_START = 0;
            public static final int UPGRADING = 129;
        }

        public enum Type {
            CUPID,
            MCU,
            FLASH;

            public static final Type findByIndex(int i10) {
                try {
                    return values()[i10];
                } catch (ArrayIndexOutOfBoundsException unused) {
                    return null;
                }
            }
        }
    }

    public enum UsbDevices {
        UDISK,
        CARPLAY,
        IPOD,
        CARLIFE,
        UNKNOW;

        public static UsbDevices findByIndex(int i10) {
            try {
                return values()[i10];
            } catch (ArrayIndexOutOfBoundsException unused) {
                return null;
            }
        }
    }

    public enum VersionName {
        DEFAULT(0),
        MCU(1),
        CPU_HW(2),
        CPU_SW(5),
        CAN(11),
        CPLD(12),
        PRODUCT_SEQUENCE(13),
        VR(14),
        BT(15),
        EV_HW(16),
        HMI_HW(17),
        HMI_SW(18),
        FLASH(19),
        EV_SW(20),
        AMP_HW(21),
        AMP_SW(22),
        TPMS_HW(23),
        TPMS_SW(24),
        BCM_HW(25),
        BCM_SW(26),
        FRD_HW(27),
        FRD_SW(28),
        DVBT_HW(29),
        DVBT_SW(30),
        MCU_LOG(32),
        AVM_HW(33),
        AVM_SW(34),
        AVM_VIN(35),
        INSTRUMENT_SW(37),
        INSTRUMENT_HW(38),
        MCAN(39);

        private int f19id;

        VersionName(int i10) {
            this.f19id = i10;
        }

        public static VersionName findById(int i10) {
            for (VersionName versionName : values()) {
                if (versionName.m4id() == i10) {
                    return versionName;
                }
            }
            return DEFAULT;
        }

        public int m4id() {
            return this.f19id;
        }
    }
}
