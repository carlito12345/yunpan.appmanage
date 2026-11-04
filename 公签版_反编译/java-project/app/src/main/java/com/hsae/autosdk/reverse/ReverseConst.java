package com.hsae.autosdk.reverse;

/* loaded from: classes.dex */
public class ReverseConst {
    public static final String ACTION_REVERSING = "com.hsae.auto.ACTION_REVERSING";
    public static final String EXTRA_REVERSING = "com.hsae.auto.EXTRA_REVERSING";
    public static final String IBINDER_REVERSE = "com.hsae.auto.IBINDER_REVERSE";
    public static final String IBINDER_REVERSING_MANAGER = "com.hsae.auto.IBINDER_REVERSING_MANAGER";
    public static final String REVERSING_SERVICE = "com.hsae.auto.REVERSING_SERVICE";

    public class AVMBeepSound {
        public static final int CORRECT_CUE_TONE = 0;
        public static final int INCORRECT_CUE_TONE_1 = 2;
        public static final int INCORRECT_CUE_TONE_2 = 3;
        public static final int WARNING_CUT_TONE = 1;

        public AVMBeepSound() {
        }
    }

    public class AVMBootAnimation {
        public static final int OFF = 0;
        public static final int f20ON = 1;

        public AVMBootAnimation() {
        }
    }

    public class AVMDisplay {
        public static final int AVM = 1;
        public static final int AVM_ANIMATION = 3;
        public static final int AVM_MENU = 2;
        public static final int f21DA = 0;

        public AVMDisplay() {
        }
    }

    public class AVMFrame {
        public static final int ANIMATION_ROTATION = 1;
        public static final int DA_FRAME_OR_UNUSED = 0;
        public static final int FRONT_180_WIDE_ANGLE = 10;
        public static final int FRONT_LOOK_PLUS_PANORAMIC_VIEW = 7;
        public static final int FRONT_LOOK_PLUS_STEREO_FRONT = 2;
        public static final int FRONT_LOOK_PLUS_STEREO_LEFT_VIEW = 9;
        public static final int FRONT_LOOK_PLUS_STEREO_RIGHT_VIEW = 8;
        public static final int LEFT_VIEW = 11;
        public static final int REAR_180_WIDE_ANGLE = 6;
        public static final int REAR_LOOK_PLUS_PANORAMIC_VIEW = 3;
        public static final int REAR_LOOK_PLUS_STEREO_LEFT_VIEW = 5;
        public static final int REAR_LOOK_PLUS_STEREO_RIGHT_VIEW = 4;
        public static final int RIGHT_VIEW = 12;

        public AVMFrame() {
        }
    }

    public class CarColor {
        public static final int BLUE = 5;
        public static final int GOLDEN = 4;
        public static final int GRAY = 1;
        public static final int RED = 0;
        public static final int SILVERY = 3;
        public static final int WHITE = 2;

        public CarColor() {
        }
    }

    public class CarType {
        public static final int CVT = 1;
        public static final int f22MT = 2;

        public CarType() {
        }
    }

    public class Distance {
        public static final int D_100CM_40IN = 9;
        public static final int D_130CM_50IN = 10;
        public static final int D_150CM_60IN = 11;
        public static final int D_180CM_70IN = 12;
        public static final int D_30CM_12IN = 2;
        public static final int D_40CM_16IN = 3;
        public static final int D_50CM_20IN = 4;
        public static final int D_60CM_24IN = 5;
        public static final int D_70CM_28IN = 6;
        public static final int D_80CM_32IN = 7;
        public static final int D_90CM_36IN = 8;
        public static final int ERRPR = 13;
        public static final int NO_DETECTION = 0;
        public static final int STOP = 1;

        public Distance() {
        }
    }

    public class IconEnable {
        public static final int ALL_BUTTON_DISABLE = 0;
        public static final int ALL_BUTTON_ENABLE = 15;
        public static final int FRONT_VIEW_LARGE_IMAGE_ENABLE = 4;
        public static final int PANORAMA_BUTTON_ENABLE = 1;
        public static final int REAR_VIEW_LARGE_IMAGE_ENABLE = 8;
        public static final int RIGHT_BTTON_ENABLE = 2;

        public IconEnable() {
        }
    }

    public class InputAVMMode {
        public static final int AVM_KEY = 1;
        public static final int FRONT_REAR_WIDE_ANGLE = 5;
        public static final int LEFT_VIEW_KEY = 4;
        public static final int PANORAMA_KEY = 2;
        public static final int RIGHT_VIEW_KEY = 3;

        public InputAVMMode() {
        }
    }

    public class IntelligentEntry {
        public static final int CORNERING_LAMP_TRIGGER = 1;
        public static final int FORARD_BLOCK_TRIGGER = 4;
        public static final int OFF = 0;
        public static final int STEERING_WHEELL_TRIGGER = 2;

        public IntelligentEntry() {
        }
    }

    public class Language {
        public static final int Chiness = 0;
        public static final int English = 1;

        public Language() {
        }
    }

    public class ReverseState {
        public static final int BACK_BLOCK = 1;
        public static final int FORWARD_BLOCK = 0;

        public ReverseState() {
        }
    }

    public class ReverserType {
        public static final int AVM = 0;
        public static final int INVALID = -1;
        public static final int RVM = 1;

        public ReverserType() {
        }
    }

    public class SonarDetection {
        public static final int ERROR = 5;
        public static final int LEVEL_1_30_CM = 4;
        public static final int LEVEL_2_30_50_CM = 3;
        public static final int LEVEL_3_50_70_CM = 2;
        public static final int LEVEL_4_70_180_CM = 1;
        public static final int NO_DETECTION = 0;

        public SonarDetection() {
        }
    }

    public class TrackLine {
        public static final int OFF = 0;
        public static final int f23ON = 1;

        public TrackLine() {
        }
    }

    public class TurnLightState {
        public static final int LEFT_RIGHT_OFF = 0;
        public static final int LEFT_TURN_ON = 1;
        public static final int RIGHT_TURN_ON = 2;

        public TurnLightState() {
        }
    }
}
