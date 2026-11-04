package com.hsae.autosdk.source;

import com.hsae.autosdk.air.AirConst;
import com.hsae.autosdk.car.CarConst;
import com.hsae.autosdk.carlife.CarLifeConst;
import com.hsae.autosdk.carplay.CarPlayConst;
import com.hsae.autosdk.core.AutoConst;
import com.hsae.autosdk.dvr.DvrConst;
import com.hsae.autosdk.ipod.IPodConst;
import com.hsae.autosdk.online.OnlineConst;
import com.hsae.autosdk.p000bt.BTConst;
import com.hsae.autosdk.p001os.SocConst;
import com.hsae.autosdk.radio.RadioConst;
import com.hsae.autosdk.reverse.ReverseConst;
import com.hsae.autosdk.settings.AutoSettingsConst;
import com.hsae.autosdk.usb.UsbConst;
import com.hsae.autosdk.userbehavior.UserBehaviorConst;
import com.hsae.autosdk.voice.VoiceConst;

/* loaded from: classes.dex */
public class SourceConst {
    public static boolean ACTIVITY_HIDE = false;
    public static boolean ACTIVITY_SHOW = true;
    public static final int AUDIO_CONNECTION_STATE = 1;
    public static final int AUDIO_DISCONNECTION_STATE = 0;
    public static final int AUDIO_LEVLE_1 = 1;
    public static final int AUDIO_LEVLE_2 = 2;
    public static final App DEFAULT_APP = App.LAUNCHER;
    public static final int FUNCTION_NBAND = 0;
    public static final int FUNCTION_NULL = -1;
    public static final int FUNCTION_WBAND = 1;
    public static final String IBINDER_SOURCE = "com.hsae.auto.IBINDER_SOURCE";
    public static final int IOCTL_AM_VOLUME = 273;
    public static final int IOCTL_ANDROID_PHONE_VOLUME = 306;
    public static final int IOCTL_AUDIO_LOUDNESS_DISABLE = 296;
    public static final int IOCTL_AUDIO_LOUDNESS_ENABLE = 295;
    public static final int IOCTL_BT_MODE = 0;
    public static final int IOCTL_FM_VOLUME = 272;
    public static final int IOCTL_FUNCTION_AUDIO1 = 259;
    public static final int IOCTL_FUNCTION_BTPHONE = 261;
    public static final int IOCTL_FUNCTION_CARPLAY_NBAND = 263;
    public static final int IOCTL_FUNCTION_CARPLAY_WBAND = 262;
    public static final int IOCTL_FUNCTION_MAINVOL_DOWN = 294;
    public static final int IOCTL_FUNCTION_MAINVOL_UP = 293;
    public static final int IOCTL_FUNCTION_MIC1 = 260;
    public static final int IOCTL_FUNCTION_NBAND_8k = 292;
    public static final int IOCTL_FUNCTION_WBAND_16K = 291;
    public static final int IOCTL_MEDIA_MODE = 1;
    public static final int IOCTL_MEDIA_VOLUME = 265;
    public static final int IOCTL_TEST_CHECKDEVICE_DISABLE = 304;
    public static final int IOCTL_TEST_CHECKDEVICE_ENABLE = 297;
    private static final String TAG = "SourceConst";

    public enum App {
        EMPTY(3, "", ""),
        RADIO(3, RadioConst.RADIO_SERVICE, RadioConst.IBINDER_RADIO_MANAGER),
        USB_MUSIC(3, UsbConst.USB_MUSIC_SERVICE, UsbConst.IBINDER_USB_MUSIC_MANAGER),
        USB_VIDEO(3, UsbConst.USB_VIDEO_SERVICE, UsbConst.IBINDER_USB_VIDEO_MANAGER),
        BT_MUSIC(3, BTConst.BT_MUSIC_SERVICE, BTConst.IBINDER_BT_MUSIC_MANAGER),
        BT_PHONE(3, BTConst.BT_PHONE_SERVICE, BTConst.IBINDER_BT_PHONE_MANAGER),
        IPOD_MUSIC(3, IPodConst.IPOD_SERVICE, IPodConst.IBINDER_IPOD_MANAGER),
        SETTING(3, AutoSettingsConst.SETTINGS_SERVICE, AutoSettingsConst.IBINDER_SETTINGS_MANAGER),
        CARLIFE_MUSIC(3, CarLifeConst.CARLIFE_SERVICE, CarLifeConst.IBINDER_CARLIFE_MANAGER),
        CARPLAY_MUSIC(3, CarPlayConst.CARPLAY_SERVICE, CarPlayConst.IBINDER_CARPLAY_MANAGER),
        AIR(3, AirConst.AIR_SERVICE, AirConst.IBINDER_AIR_MANAGER),
        VOICE(3, VoiceConst.VOICE_SERVICE, VoiceConst.IBINDER_VOICE_MANAGER),
        USER_BEHAVIOR(3, UserBehaviorConst.USER_BEHAVIOR_SERVICE, UserBehaviorConst.IBINDER_USER_BEHAVIOR_MANAGER),
        REVERSE(3, ReverseConst.REVERSING_SERVICE, ReverseConst.IBINDER_REVERSING_MANAGER),
        VOICE_REMINDER(3, AutoConst.VOICE_REMINDER_SERVICE, ""),
        KUWO_MUSIC(3, OnlineConst.KUWO_MUSIC_SERVICE, OnlineConst.IBINDER_KUWO_MANAGER),
        HIMALAYA_FM(3, OnlineConst.HIMALAYA_FM_SERVICE, OnlineConst.IBINDER_HIMALAYA_FM_MANAGER),
        ONLINE_MUSIC(3, "", ""),
        V_CAN(3, "", ""),
        CARLIFE_VR(3, "", ""),
        CARLIFE_PHONE(3, "", ""),
        CARPLAY_SIRI(3, "", ""),
        CARPLAY_PHONE(3, "", ""),
        RADIO_DIAGNOSE(3, "", ""),
        AUDIO_DIAGNOSE(3, "", ""),
        ANDROID_BT(3, "", ""),
        NAVI(3, "", ""),
        LAUNCHER(3, "", ""),
        AUTO_CORE(3, SocConst.AUTO_CORE_SERVICE, ""),
        DVR(3, DvrConst.DVR_SERVICE, DvrConst.IBINDER_DVR_MANAGER),
        XIAOCHEN_FM(3, OnlineConst.XIAOCHEN_FM_SERVICE, OnlineConst.IBINDER_XIAOCHEN_FM_MANAGER),
        ONLINE_VIDEO(3, OnlineConst.ONLINE_VIDEO_SERVICE, OnlineConst.IBINDER_ONLINE_VIDEO),
        KUWO_MV(3, OnlineConst.KUWO_MV_SERVICE, OnlineConst.IBINDER_KUWO_MV_MANAGER),
        CB_KTV(3, OnlineConst.CB_KTV_SERVICE, OnlineConst.IBINDER_KTV_MANAGER),
        PERSIONAL_CENTER(3, "", ""),
        USER_MANUAl(3, "", ""),
        SMART_REFUEL(3, "", ""),
        APP_STORE(3, "", ""),
        CARADAPTER(3, CarConst.CARADAPTER_SERVICE, CarConst.IBINDER_CARADAPTER_MANAGER),
        CARTYPECONFIGURATION(3, CarConst.CARTYPECONFIGURATION_SERVICE, CarConst.IBINDER_CARTYPECONFIGURATION_MANAGER),
        JIDOU(3, OnlineConst.JIDOU_SERVICE, OnlineConst.IBINDER_JIDOU_MANAGER),
        HICAR_VR(3, "", ""),
        HICAR_NAVI(3, "", ""),
        HICAR_PHONE(3, "", ""),
        HICAR_MUSIC(3, "", "");

        private static final int SOURCE_CORE_BOARD = 3;
        private static final int SOURCE_RADIO = 0;
        private String iBinderName;
        private App last;
        private int pid;
        private String serviceName;

        App(int i10, String str, String str2) {
            this.pid = i10;
            this.serviceName = str;
            this.iBinderName = str2;
        }

        public static App findById(int i10) {
            try {
                return values()[i10];
            } catch (Exception unused) {
                return null;
            }
        }

        public static App getNonNullAppByIndex(int i10) {
            App appFindById = findById(i10);
            return appFindById == null ? LAUNCHER : appFindById;
        }

        public static boolean isPhoneType(App app) {
            if (app == null) {
                return false;
            }
            app.ordinal();
            return false;
        }

        public static boolean isUsbAudio(App app) {
            if (app == null) {
                return false;
            }
            app.ordinal();
            return false;
        }

        public static boolean isVoiceType(App app) {
            if (app == null) {
                return false;
            }
            app.ordinal();
            return false;
        }

        public boolean addLast(App app) {
            if (app == this) {
                return false;
            }
            this.last = app;
            return true;
        }

        public App getLast() {
            App app = this.last;
            return app != null ? app : EMPTY;
        }

        public String getServiceName() {
            return this.serviceName;
        }

        public String getiBinderName() {
            return this.iBinderName;
        }

        public int pid() {
            return this.pid;
        }

        public void setServiceName(String str) {
            this.serviceName = str;
        }

        public void setiBinderName(String str) {
            this.iBinderName = str;
        }
    }

    public static final class AudioWarningState {
        public static final int AUDIO_OFF = 1;
        public static final int AUTO_PRESETTING = 16;
        public static final int CHECK_ANTENNA = 18;
        public static final int CHECK_DEVICE = 45;
        public static final int CHECK_DEVICE_FOR_PANDORA = 53;
        public static final int CH_UNAUTHORIZED = 20;
        public static final int CH_UNAVAILABLE = 49;
        public static final int DISC_READ_ERROR = 39;
        public static final int EJECTING_DISC = 34;
        public static final int EXTERNAL_SOUND = 2;
        public static final int EXTERNAL_TEXT = 255;
        public static final int IPOD_IS_NOT_CONNECTED = 43;
        public static final int LOADING = 22;
        public static final int LOADING_DISC = 33;
        public static final int NONDISPLAY = 0;
        public static final int NO_AUDIO_FILE = 41;
        public static final int NO_DISC = 32;
        public static final int NO_MORE_SKIPS = 52;
        public static final int NO_SERVICE = 50;
        public static final int NO_SIGNAL = 19;
        public static final int NO_STATION = 51;
        public static final int NO_USB = 44;
        public static final int OFF_AIR = 21;
        public static final int OTHER_ERROR = 46;
        public static final int PLEASE_EJECT_DISC = 48;
        public static final int PLEASE_WAIT = 47;
        public static final int READING_DISC = 35;
        public static final int READING_IPOD = 37;
        public static final int READING_USB_MEMORY = 36;
        public static final int RECEIVABLE_LIST_UPDATING = 17;
        public static final int REGION_INVALID = 40;
        public static final int SERVICE_UNAVAILABLE = 54;
        public static final int THERE_IS_NO_SONG = 42;
        public static final int UNPLAYABLE_FILE = 38;
    }
}
