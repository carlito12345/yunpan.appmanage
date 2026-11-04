package com.hsae.autosdk.settings;

/* loaded from: classes.dex */
public class AutoSettingsConst {
    public static final String ACTION_RESET_TO_DEFAULTS = "com.hsae.auto.ACTION_RESET_TO_DEFAULTS";
    public static final String IBINDER_SETTINGS = "com.hsae.auto.IBINDER_SETTINGS";
    public static final String IBINDER_SETTINGS_MANAGER = "com.hsae.auto.IBINDER_SETTINGS_MANAGER";
    public static final String KEY_BT_CALL_VOLUME = "KEY_BT_CALL_VOLUME";
    public static final String PROPERTY_PRODUCT_TYPE = "persist.hsae.product.type";
    public static final String SETTINGS_SERVICE = "com.hsae.auto.SETTINGS_SERVICE";
    public static final String TABLE_VOLUME = "TABLE_VOLUME";

    public static class Audio {
        public static final boolean MUTE_STATE = false;

        public enum EnumC0036EQ {
            DEFAULT(0),
            POP(1),
            JAZZ(2),
            CLASSICAL(3),
            ROCK(5),
            DANCE(7),
            VOCAL(11),
            CUSTOM(13);

            private static final int[] EQ_CUSTOM;
            private static final int[] EQ_DEFAULT;
            private int f24id;
            private static final int[] EQ_POP = {0, 6, 4, 0, 0, 0, 0};
            private static final int[] EQ_JAZZ = {0, 3, 6, 0, 0, 0, 0};
            private static final int[] EQ_CLASSICAL = {0, 0, 2, 0, 0, 0, 0};
            private static final int[] EQ_ROCK = {0, 3, 3, 0, 0, 0, 0};
            private static final int[] EQ_DANCE = {2, 3, 0, 0, 0, 0, 0};
            private static final int[] EQ_VOCAL = {1, 2, 1, 0, 0, 0, 0};

            public enum CustomEntry {
                EQ1,
                EQ2,
                EQ3;

                private int value;

                public int getValue() {
                    return this.value;
                }

                public void setValue(int i10) {
                    this.value = i10;
                }
            }

            static {
                int[] iArr = {0, 0, 0, 0, 0, 0, 0};
                EQ_CUSTOM = iArr;
                EQ_DEFAULT = iArr;
            }

            EnumC0036EQ(int i10) {
                this.f24id = i10;
            }

            public static EnumC0036EQ findById(int i10) {
                for (EnumC0036EQ enumC0036EQ : values()) {
                    if (enumC0036EQ.m5id() == i10) {
                        return enumC0036EQ;
                    }
                }
                return DEFAULT;
            }

            public int[] getValues() {
                int i10 = this.f24id;
                return i10 == 0 ? EQ_DEFAULT : i10 == 1 ? EQ_POP : i10 == 2 ? EQ_JAZZ : i10 == 3 ? EQ_CLASSICAL : i10 == 5 ? EQ_ROCK : i10 == 7 ? EQ_DANCE : i10 == 11 ? EQ_VOCAL : i10 == 13 ? EQ_CUSTOM : EQ_DEFAULT;
            }

            public int m5id() {
                return this.f24id;
            }
        }
    }

    public static class AudioParam {
        public static final int ANDROID_RINGTONE_TYPE = 10;
        public static final int BALANCE_VOLUME_DEFAULT = 0;
        public static final int BALANCE_VOLUME_MAX = 5;
        public static final int BALANCE_VOLUME_MIN = -5;
        public static final int BT_PHONE_VOLUME_DEFAULT = 7;
        public static final int BT_PHONE_VOLUME_MAX = 15;
        public static final int BT_PHONE_VOLUME_MIN = 0;
        public static final int BT_PHONT_TYPE = 7;
        public static final int DSP_MODE_AUX = 7;
        public static final int DSP_MODE_BTPHONE = 6;
        public static final int DSP_MODE_CARPLAY = 5;
        public static final int DSP_MODE_DRM = 4;
        public static final int DSP_MODE_MEDIA = 2;
        public static final int DSP_MODE_RADIO = 1;
        public static final int DSP_MODE_RADIO_AM = 13;
        public static final int DSP_MODE_RADIO_FM = 12;
        public static final int DSP_MODE_TTS = 3;
        public static final int DSP_Volume_Type_MUSIC = 1;
        public static final int DSP_Volume_Type_PHONE = 2;
        public static final int DSP_Volume_Type_TTS = 3;
        public static final int MEDIA_TYPE = 3;
        public static final int MEDIA_VOLUME_DEFAULT = 12;
        public static final int MEDIA_VOLUME_MAX = 40;
        public static final int MEDIA_VOLUME_MIN = 0;
        public static final int NAIV_TYPE = 9;
        public static final int NAVI_VOLUME_DEFAULT = 5;
        public static final int NAVI_VOLUME_MAX = 11;
        public static final int NAVI_VOLUME_MIN = 0;
        public static final int SIRI_TYPE = 9;

        @Deprecated
        public static final int STREAM_TYPE_ANDROID_RINGTONE_TYPE = 10;

        @Deprecated
        public static final int STREAM_TYPE_BT_PHONT_TYPE = 7;

        @Deprecated
        public static final int STREAM_TYPE_MEDIA_TYPE = 1;

        @Deprecated
        public static final int STREAM_TYPE_NAIV_TYPE = 9;

        @Deprecated
        public static final int STREAM_TYPE_SIRI_TYPE = 130;

        @Deprecated
        public static final int STREAM_TYPE_VR_TYPE = 4;
        public static final int VR_TYPE = 4;
    }

    public class CommonStateType {
        public static final int DVR_STATUS = 1;
        public static final int SDCARD_STATUS = 2;

        public CommonStateType() {
        }
    }

    public class DayNight {
        public static final int AUTO = 2;
        public static final int DAY = 0;
        public static final int NIGHT = 1;

        public DayNight() {
        }
    }

    public class Display {
        public static final int BL_BRIGHTNESS_DEFALUT = 16;
        public static final int BL_MAX_BRIGHTNESS = 20;
        public static final int BL_MIN_BRIGHTNESS = 0;
        public static final int CONTRASTS_DEFALUT = 50;
        public static final int CONTRASTS_MAX = 100;
        public static final int CONTRASTS_MIN = 0;
        public static final int DAY_BL_BRIGHTNESS_DEFALUT = 16;
        public static final int NIGHT_BL_BRIGHTNESS_DEFALUT = 5;

        public Display() {
        }
    }

    public class FlatMode {
        public static final int ALL = 0;
        public static final int DISABLE_AV = 1;
        public static final int DISABLE_EV = 2;

        public FlatMode() {
        }
    }

    public class MapSkinMode {
        public static final int DAY = 0;
        public static final int NIGHT = 1;

        public MapSkinMode() {
        }
    }

    public class OnlineApp {
        public static final int APP_STORE = 7;
        public static final int CHANGBA = 2;
        public static final int HIMALAYA_FM = 8;
        public static final int KAOLA = 1;
        public static final int KUWO = 3;
        public static final int PERSIONAL_CENTER = 4;
        public static final int SMART_REFUEL = 6;
        public static final int USER_MANUAl = 5;

        public OnlineApp() {
        }
    }
}
