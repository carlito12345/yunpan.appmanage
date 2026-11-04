package com.hsae.autosdk.vehicle;

/* loaded from: classes.dex */
public class VehicleConst {
    public static final String IBINDER_VEHICLE = "com.hsae.auto.IBINDER_VEHICLE";

    public static class Air {

        public enum AirMode {
            REFRIGERATION,
            HEATING
        }

        public enum WindDirection {
            BELOW,
            MIDDLE_ABOVE,
            MIDDLE_BELOW,
            ALL
        }

        public enum WindSpeed {
            ONE,
            TWO,
            THREE,
            FOUR
        }
    }

    public static class Ill {
        public static final String ACTION_DAY_NIGHT_MODE = "com.hsae.auto.ACTION_DAY_NIGHT_MODE";
        public static final String EXTRA_BE_AT_NIGHT = "com.hsae.auto.EXTRA_BE_AT_NIGHT";
        public static final String EXTRA_BRIGHTNESS_VALUE = "com.hsae.auto.EXTRA_BRIGHTNESS_VALUE";

        public enum DayNight {
            DAY,
            NIGHT;

            public static DayNight find(int i10) {
                DayNight[] dayNightArrValues = values();
                return (i10 < 0 || i10 >= dayNightArrValues.length) ? DAY : dayNightArrValues[i10];
            }
        }

        public static final class Default {
            public static final int BL_BRIGHTNESS = 10;
            public static final int CONTRAST = 6;
            public static final DayNight DAY_NIGHT = DayNight.DAY;
        }
    }

    public class TurnLight {
        public static final int DOUBLE_FLASH = 3;
        public static final int LEFT = 1;
        public static final int OFF = 0;
        public static final int RIGHT = 2;

        public TurnLight() {
        }
    }

    public static class VehicleData {
        public static final boolean ACC_STATE = true;
        public static final String ACTION_ACC_STATE = "com.hsae.auto.ACTION_ACC_STATE";
        public static final String ACTION_B_PLUS_OFF = "com.hsae.auto.ACTION_B_PLUS_OFF";
        public static final String ACTION_PARKING_STATE = "com.hsae.auto.ACTION_PARKING_STATE";
        public static final String ACTION_POWER_STATE = "com.hsae.auto.ACTION_POWER_STATE";
        public static final String ACTION_SAFETY_LOCK = "com.hsae.auto.ACTION_SAFETY_LOCK";
        public static final String ACTION_VEHICLE_SPEED = "com.hsae.auto.ACTION_VEHICLE_SPEED";
        public static final int ALARM_SIZE = 42;
        public static final AutoType AUTO_TYPE = AutoType.MC531;
        public static final String EXTRA_ACC_STATE = "com.hsae.auto.EXTRA_ACC_STATE";
        public static final String EXTRA_PARKING_STATE = "com.hsae.auto.EXTRA_PARKING_STATE";
        public static final String EXTRA_POWER_STATE = "com.hsae.auto.EXTRA_POWER_STATE";
        public static final String EXTRA_VEHICLE_SPEED = "com.hsae.auto.EXTRA_VEHICLE_SPEED";
        public static final boolean PARKING_STATE = false;

        public enum AutoType {
            MC531,
            MC322;

            public static final AutoType find(int i10) {
                try {
                    return values()[i10];
                } catch (ArrayIndexOutOfBoundsException unused) {
                    return VehicleData.AUTO_TYPE;
                }
            }

            @Override // java.lang.Enum
            public String toString() {
                return MC531 == this ? "531" : super.toString();
            }
        }

        public enum Gear {
            OFF(0),
            P(1),
            R(2),
            N(3),
            D(4),
            S(5),
            L(6),
            B(7);

            private int pid;

            Gear(int i10) {
                this.pid = i10;
            }

            public int pid() {
                return this.pid;
            }
        }
    }

    public enum VehicleEquipment {
        SKYLIGHT,
        HIGH_BEAMS,
        LOW_BEAMS,
        ALARM_BEAMS
    }

    public class VehicleMalfunction {
        public static final int ABS_FAULT_04H = 4;
        public static final int DETECTION_ENGINE_01H = 1;
        public static final int EPS_DETECTION_03H = 3;
        public static final int HYDRAULIC_OIL_DETECTED_00H = 0;
        public static final int LANE_WARNING_SENSOR_INFORMATION_05H = 5;
        public static final int VDC_DETECTION_02H = 2;

        public VehicleMalfunction() {
        }
    }

    public class VehicleType {
        public static final int D322 = 8;
        public static final int D531_MC17 = 0;
        public static final String DNTC = "DNTC";
        public static final int DNTC_322 = 103;
        public static final int DNTC_531 = 104;
        public static final int EV_322 = 106;
        public static final int INVALID = -1;
        public static final int VHD322_18EVENT = 102;
        public static final int VHD322_18EVENT_6SPK = 101;
        public static final int VHD531_18EVENT = 100;
        public static final String VHD60 = "VHD60";
        public static final String VHD60E = "VHD60E";
        public static final String VHT70 = "VHT70";
        public static final String VHT90 = "VHT90";
        public static final int VH_T90 = 105;

        public VehicleType() {
        }
    }
}
