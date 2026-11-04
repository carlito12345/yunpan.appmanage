package com.hsae.autosdk.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.UserHandle;
import android.system.Os;
import com.hsae.d531mc.logservice.ILogService;

/* loaded from: classes.dex */
public class LogConfigure {
    private static final String TAG = "LogConfigure";

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3767a = 0;
    private static LogConfigure mInstance = new LogConfigure();
    private Context mContext;
    private int retryCount = 0;
    private volatile ILogService service = null;
    private ServiceConnection conn = new ServiceConnection() { // from class: com.hsae.autosdk.util.LogConfigure.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            int i10 = LogConfigure.f3767a;
            LogConfigure.this.service = ILogService.Stub.asInterface(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            LogConfigure.this.service = null;
            LogConfigure.this.bindLogService();
        }
    };

    private LogConfigure() {
    }

    public static LogConfigure getInstance() {
        return mInstance;
    }

    public void bindLogService() {
        int i10 = this.retryCount;
        if (i10 > 40) {
            return;
        }
        this.retryCount = i10 + 1;
        if (this.mContext == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.hsae.d531mc.logservice", "com.hsae.d531mc.logservice.LogService"));
        if (this.mContext.bindServiceAsUser(intent, this.conn, 1, UserHandle.getUserHandleForUid(Os.getuid()))) {
            return;
        }
        bindLogService();
    }

    public synchronized ILogService getLogger() {
        if (this.service == null) {
            bindLogService();
            return null;
        }
        return this.service;
    }

    public synchronized void initConfigure(Context context) {
        if (context != null) {
            context.toString();
            context.getPackageName();
            this.mContext = context;
            bindLogService();
        } else {
            context.getPackageName();
            this.mContext = context;
            bindLogService();
        }
    }
}
