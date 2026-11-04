package com.hsae.autosdk.popup.constant;

/* loaded from: classes.dex */
public class PopupConst {
    public static final int CANNOT_SHOW = 0;
    public static final int CAN_SHOW = 1;
    public static final long DURATION_POPUP = 5000;
    public static final long DURATION_POPUP_ALWAYS = 0;
    public static final long DURATION_POPUP_RADIO = 6000;
    public static final long DURATION_POPUP_SHORT = 3000;
    public static final String IBINDER_POPUP = "com.hsae.auto.IBINDER_POPUP";
    public static final String IBINDER_POPUPMANAGER = "com.hsae.auto.IBINDER_POPUPMANAGER";
    public static final long PREVENT_DISPLAY_LEAK = 1000;

    public enum Popup {
        WARN(0, PopupConst.DURATION_POPUP_SHORT),
        CALL(1, 0),
        PAIR_REQUEST(2, 0),
        NOTIFICATION_SHORT(2, PopupConst.DURATION_POPUP_SHORT),
        NOTIFICATION_ALWAYS(2, 0),
        USB_ATTACHED(2, PopupConst.DURATION_POPUP_SHORT),
        AIR_CONDITION(2, PopupConst.DURATION_POPUP_SHORT),
        USB_MUSIC(2, PopupConst.DURATION_POPUP_SHORT),
        IPOD_MUSIC(2, PopupConst.DURATION_POPUP_SHORT),
        IPOD_CONNECT_STATE(2, PopupConst.DURATION_POPUP_SHORT),
        IPOD_MUSIC_LIST(2, PopupConst.DURATION_POPUP_SHORT),
        BT_MUSIC(2, PopupConst.DURATION_POPUP_SHORT),
        RADIO(2, PopupConst.DURATION_POPUP_SHORT),
        SETTING_WIFI(2, PopupConst.DURATION_POPUP_SHORT),
        SETTING_TCU(2, PopupConst.DURATION_POPUP_SHORT),
        SETTING_WIFI_OPERATE(2, 0),
        SETTING_DRIVE_SAFETY(2, 0),
        SETTING_RECOVER(2, 0),
        SETTING_ERROR_LOG(2, 0),
        SETTING_SOUND_EFFECT(2, PopupConst.DURATION_POPUP_SHORT),
        AUTOCORE_VOLUME(2, PopupConst.DURATION_POPUP_SHORT),
        USB_SUPPORT(2, PopupConst.DURATION_POPUP_SHORT),
        POWER_OFF(1, 0),
        SMART_REFUELING(2, 0),
        OTA(2, 0),
        USER_CENTER(2, 0),
        APP_STORE(2, 0),
        KUWO(2, 0),
        ROADBOOK_SHORT(2, PopupConst.DURATION_POPUP_SHORT),
        ROADBOOK_ALWAYS(2, 0),
        AI_RECOMMENDED(2, 0);

        private long duration;
        private int rank;

        Popup(int i10, long j10) {
            this.rank = i10;
            this.duration = j10;
        }

        public static final Popup findByIndex(int i10) {
            try {
                return values()[i10];
            } catch (ArrayIndexOutOfBoundsException unused) {
                return null;
            }
        }

        public long getDuration() {
            return this.duration;
        }

        public int getRank() {
            return this.rank;
        }
    }
}
