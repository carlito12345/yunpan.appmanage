package com.hsae.autosdk.hmi;

/* loaded from: classes.dex */
public class HmiConst {
    public static final String IBINDER_HMI = "com.hsae.auto.IBINDER_HMI";

    public enum HMI {
        SEEKUP(4),
        SEEKDOWN(8),
        MUTE(9),
        VOLUME_LEFT(17),
        VOLUME_RIGHT(18),
        POWER(19),
        W_SEEK_UP(26),
        W_SEEK_DOWN(27),
        W_VOLUME_UP(30),
        W_VOLUME_DOWN(31),
        ANSWER_CALL(32),
        END_CALL(33),
        MEDIA(34),
        RETURN(43),
        START_VR(44),
        MODE(58),
        SOURCE(60),
        SOURCE_RE(63),
        HOTKEY(81),
        EV(82),
        ALLEY(83),
        HOME(84),
        NIGHT_MODE(85),
        SETTING(117),
        BACK(118),
        NAVI(119),
        PHONE(120),
        TUNE(121),
        TRACK_UP(122),
        TRACK_DOWN(123),
        OK(124);

        private int f8id;

        public enum AirPanel {
            KEYCODE_MENU(1),
            KEYCODE_BACK(2),
            KEYCODE_HOME(3),
            KEYCODE_MEDIA(4),
            KEY_PANEL_CW_1_PULSE(1),
            KEY_PANEL_CW_2_PULSE(2),
            KEY_PANEL_CW_3_PULSE(3),
            KEY_PANEL_CW_1_MINU(16),
            KEY_PANEL_CW_2_MINU(32),
            KEY_PANEL_CW_3_MINU(48),
            KEY_PANEL_POWER_DOWN(136);

            private int f9id;

            AirPanel(int i10) {
                this.f9id = i10;
            }

            public static final AirPanel findById(int i10) {
                for (AirPanel airPanel : values()) {
                    if (airPanel.f9id == i10) {
                        return airPanel;
                    }
                }
                return null;
            }

            public static final String toString(int i10) {
                for (AirPanel airPanel : values()) {
                    if (airPanel.f9id == i10) {
                        return airPanel.toString();
                    }
                }
                return String.valueOf(i10);
            }

            public int m24id() {
                return this.f9id;
            }
        }

        public enum State {
            SHORT_UP(1),
            LONG_UP(2),
            LONG_DOWN(3),
            SHORT_DOWN(4),
            UP(5);

            private int f11id;

            State(int i10) {
                this.f11id = i10;
            }

            public static final State findById(int i10) {
                for (State state : values()) {
                    if (state.f11id == i10) {
                        return state;
                    }
                }
                return null;
            }

            public static final String toString(int i10) {
                for (State state : values()) {
                    if (state.f11id == i10) {
                        return state.toString();
                    }
                }
                return String.valueOf(i10);
            }

            public int m23id() {
                return this.f11id;
            }
        }

        public enum TouchKey {
            TOUCH_KEYCODE_POWER(1),
            TOUCH_KEYCODE_BACK(2),
            TOUCH_KEYCODE_HOME(3),
            TOUCH_KEYCODE_MEDIA(4),
            TOUCH_KEYCODE_SEEK_UP(5),
            TOUCH_KEYCODE_SEEK_DOWN(6),
            TOUCH_KEYCODE_VOLUME_UP(7),
            TOUCH_KEYCODE_VOLUME_DOWN(8),
            TOUCH_KEYCODE_SETTING(9),
            TOUCH_KEYCODE_NAVI(16),
            TOUCH_KEYCODE_TUNE(17),
            TOUCH_KEYCODE_PHONE(18),
            TOUCH_KEYCODE_DAY_NIGHT_MODE(19),
            TOUCH_KEYCODE_DISPLAY_OFF(20),
            HMI_KEYCODE_VR_SHORT(21),
            HMI_KEYCODE_VR_LONG(22),
            HMI_KEYCODE_END_CALL_SHORT(23),
            HMI_KEYCODE_END_CALL_LONG(24);

            private int f12id;

            TouchKey(int i10) {
                this.f12id = i10;
            }

            public static final TouchKey findById(int i10) {
                for (TouchKey touchKey : values()) {
                    if (touchKey.f12id == i10) {
                        return touchKey;
                    }
                }
                return null;
            }

            public static final String toString(int i10) {
                for (TouchKey touchKey : values()) {
                    if (touchKey.f12id == i10) {
                        return touchKey.toString();
                    }
                }
                return String.valueOf(i10);
            }

            public int m22id() {
                return this.f12id;
            }
        }

        HMI(int i10) {
            this.f8id = i10;
        }

        public static final HMI findById(int i10) {
            for (HMI hmi : values()) {
                if (hmi.f8id == i10) {
                    return hmi;
                }
            }
            return null;
        }

        public static final String toString(int i10) {
            for (HMI hmi : values()) {
                if (hmi.f8id == i10) {
                    return hmi.toString();
                }
            }
            return String.valueOf(i10);
        }

        public int m25id() {
            return this.f8id;
        }
    }
}
