package com.desay_svautomotive.libsvcarinfo;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SvWindowMgr {
    private static final String ACTION_CLOSE_PANEL = "com.desay.automotive.systemui.CLOSE_PANEL";
    private static final String ACTION_PANEL_SHOW_STATUS = "com.desay.automotive.systemui.PANEL_SHOW_STATUS";
    private static final String ACTION_REQUEST_SHOW_PANEL = "com.desay.automotive.systemui.SHOW_PANEL";
    private static final String KEY_FROM_PACKAGE = "fromPackage";
    private static final String KEY_FROM_PANEL_ID = "fromPanelId";
    private static final String KEY_SHOW_PANEL_ID = "showPanelId";
    private static final String KEY_SHOW_STATUS = "showStatus";
    private static final int MSG_ID_CLOSE_PANEL = 0;
    private static final int MSG_ID_PANEL_SHOW_STATUS = 2;
    private static final int MSG_ID_REQUEST_CLOSE_PANEL = 1;
    private static final int MSG_ID_REQUEST_SHOW_PANEL = 3;
    public static final int SYSTEM_PANEL_ACCOUNT = 1;
    public static final int SYSTEM_PANEL_ALL_MENU = 8;
    public static final int SYSTEM_PANEL_BLUETOOTH = 4;
    public static final int SYSTEM_PANEL_DRIVE = 9;
    public static final int SYSTEM_PANEL_DROPDOWN_MENU = 12;
    public static final int SYSTEM_PANEL_GUIDANCE = 18;
    public static final int SYSTEM_PANEL_HVAC = 10;
    public static final int SYSTEM_PANEL_HVAC_BLIND_LEFT = 13;
    public static final int SYSTEM_PANEL_HVAC_BLIND_RIGHT = 14;
    public static final int SYSTEM_PANEL_HVAC_FRAGRANCE = 16;
    public static final int SYSTEM_PANEL_HVAC_SCENE = 15;
    public static final int SYSTEM_PANEL_HVAC_WIND_LEVEL = 19;
    private static final int SYSTEM_PANEL_MAXID = 32;
    public static final int SYSTEM_PANEL_MSGCENTER = 2;
    public static final int SYSTEM_PANEL_NONE = 0;
    public static final int SYSTEM_PANEL_SCREENSAVER = 17;
    public static final int SYSTEM_PANEL_SEAT_SETTING = 11;
    public static final int SYSTEM_PANEL_TBOX = 5;
    public static final int SYSTEM_PANEL_TIME_SETTING = 7;
    public static final int SYSTEM_PANEL_WIFI = 6;
    public static final int SYSTEM_PANEL_WIRELESS_CHARGING = 3;
    private static final String TAG = "SvWindowMgr";
    private static volatile SvWindowMgr mInstance;
    private Context mContext;
    private ArrayList<ISvWindowListener> mListeners = new ArrayList<>();
    private ExtReceiver mExtReceiver = new ExtReceiver(this, 0);
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.desay_svautomotive.libsvcarinfo.SvWindowMgr.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            boolean z = false;
            if (i10 == 0) {
                synchronized (SvWindowMgr.this.mListeners) {
                    try {
                        if (SvWindowMgr.this.mListeners.size() > 0) {
                            ((ISvWindowListener) SvWindowMgr.this.mListeners.get(0)).onHidePanel(message.arg1);
                        }
                    } finally {
                    }
                }
                return;
            }
            if (i10 == 1) {
                SvWindowMgr.this.hideSystemPanel(message.arg1);
                return;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                synchronized (SvWindowMgr.this.mListeners) {
                    try {
                        if (SvWindowMgr.this.mListeners.size() > 0) {
                            ((ISvWindowListener) SvWindowMgr.this.mListeners.get(0)).onRequestShowPanel(message.arg1);
                        }
                    } finally {
                    }
                }
                return;
            }
            synchronized (SvWindowMgr.this.mListeners) {
                try {
                    if (SvWindowMgr.this.mListeners.size() > 0) {
                        ISvWindowListener iSvWindowListener = (ISvWindowListener) SvWindowMgr.this.mListeners.get(0);
                        int i11 = message.arg1;
                        if (message.arg2 == 1) {
                            z = true;
                        }
                        iSvWindowListener.onPanelShowStatus(i11, z);
                    }
                } finally {
                }
            }
        }
    };

    public class ExtReceiver extends BroadcastReceiver {
        public /* synthetic */ ExtReceiver(SvWindowMgr svWindowMgr, int i10) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (SvWindowMgr.ACTION_CLOSE_PANEL.equals(action)) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 0;
                messageObtain.arg1 = intent.getIntExtra(SvWindowMgr.KEY_FROM_PANEL_ID, 0);
                SvWindowMgr.this.mHandler.sendMessage(messageObtain);
                return;
            }
            if (SvWindowMgr.ACTION_REQUEST_SHOW_PANEL.equals(action)) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 3;
                messageObtain2.arg1 = intent.getIntExtra(SvWindowMgr.KEY_SHOW_PANEL_ID, 0);
                SvWindowMgr.this.mHandler.sendMessage(messageObtain2);
                return;
            }
            if (SvWindowMgr.ACTION_PANEL_SHOW_STATUS.equals(action)) {
                boolean booleanExtra = intent.getBooleanExtra(SvWindowMgr.KEY_SHOW_STATUS, false);
                Message messageObtain3 = Message.obtain();
                messageObtain3.what = 2;
                messageObtain3.arg1 = intent.getIntExtra(SvWindowMgr.KEY_FROM_PANEL_ID, 0);
                messageObtain3.arg2 = booleanExtra ? 1 : 0;
                SvWindowMgr.this.mHandler.sendMessage(messageObtain3);
                if (booleanExtra) {
                    SvWindowMgr.this.mHandler.removeMessages(1);
                }
            }
        }

        private ExtReceiver() {
        }
    }

    public interface ISvWindowListener {
        void onHidePanel(int i10);

        void onPanelShowStatus(int i10, boolean z);

        void onRequestShowPanel(int i10);
    }

    private SvWindowMgr(Context context) {
        this.mContext = context;
    }

    public static SvWindowMgr getInstance(Context context) {
        if (mInstance == null && context != null) {
            synchronized (SvWindowMgr.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new SvWindowMgr(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    public static boolean getSystemPanelShowStatus(int i10) {
        int i11 = SystemProperties.getInt("sys.vehicle.gac.window_show_status", 0);
        if (i10 == 0) {
            if (i11 <= 0) {
                return false;
            }
        } else if (((i11 >> i10) & 1) <= 0) {
            return false;
        }
        return true;
    }

    private static void startSettingCard(Context context, String str) {
        ComponentName componentName = new ComponentName("com.desay.setting", "com.desay.setting.activity.DialogActivity");
        Intent intent = new Intent();
        intent.setAction(str);
        intent.setComponent(componentName);
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public void addListener(ISvWindowListener iSvWindowListener) {
        synchronized (this.mListeners) {
            try {
                if (this.mListeners.isEmpty()) {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction(ACTION_CLOSE_PANEL);
                    intentFilter.addAction(ACTION_REQUEST_SHOW_PANEL);
                    intentFilter.addAction(ACTION_PANEL_SHOW_STATUS);
                    this.mContext.registerReceiver(this.mExtReceiver, intentFilter);
                }
                this.mListeners.add(iSvWindowListener);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void delayHideSystemPanel(int i10, int i11) {
        if (i11 <= 0) {
            hideSystemPanel(i10);
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.arg1 = i10;
        this.mHandler.sendMessage(messageObtain);
    }

    public void hideSystemPanel(int i10) {
        hideSystemPanel(i10, false);
    }

    public void removeListener(ISvWindowListener iSvWindowListener) {
        synchronized (this.mListeners) {
            try {
                if (this.mListeners.isEmpty()) {
                    return;
                }
                this.mListeners.remove(iSvWindowListener);
                if (this.mListeners.isEmpty()) {
                    this.mContext.unregisterReceiver(this.mExtReceiver);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void requestShowSystemPanel(int i10) {
        this.mContext.getPackageName();
        if (i10 == 4) {
            startSettingCard(this.mContext, "com.desay_sv.show_window.Bluetooth");
            return;
        }
        if (i10 == 5) {
            startSettingCard(this.mContext, "com.desay_sv.show_window.Net");
            return;
        }
        if (i10 == 6) {
            startSettingCard(this.mContext, "com.desay_sv.show_window.WiFi");
            return;
        }
        Intent intent = new Intent();
        intent.setAction(ACTION_REQUEST_SHOW_PANEL);
        intent.putExtra(KEY_FROM_PACKAGE, this.mContext.getPackageName());
        intent.putExtra(KEY_SHOW_PANEL_ID, i10);
        this.mContext.sendBroadcast(intent);
    }

    public void setSystemPanelShowStatus(int i10, boolean z) {
        int i11 = SystemProperties.getInt("sys.vehicle.gac.window_show_status", 0);
        int i12 = 1 << i10;
        if (getSystemPanelShowStatus(i10) == z) {
            this.mContext.getPackageName();
            Integer.toBinaryString(i11);
            return;
        }
        if (!z) {
            i12 = (i12 ^ (-1)) & i11;
        }
        SystemProperties.set("sys.vehicle.gac.window_show_status", Integer.toString(i12));
        Intent intent = new Intent();
        intent.setAction(ACTION_PANEL_SHOW_STATUS);
        intent.putExtra(KEY_FROM_PACKAGE, this.mContext.getPackageName());
        intent.putExtra(KEY_FROM_PANEL_ID, i10);
        intent.putExtra(KEY_SHOW_STATUS, z);
        this.mContext.sendBroadcast(intent);
        this.mContext.getPackageName();
        Integer.toBinaryString(i11);
        Integer.toBinaryString(i12);
    }

    public void hideSystemPanel(int i10, boolean z) {
        this.mContext.getPackageName();
        if (getSystemPanelShowStatus(0) || z) {
            Intent intent = new Intent();
            intent.setAction(ACTION_CLOSE_PANEL);
            intent.putExtra(KEY_FROM_PACKAGE, this.mContext.getPackageName());
            intent.putExtra(KEY_FROM_PANEL_ID, i10);
            this.mContext.sendBroadcast(intent);
        }
    }
}
