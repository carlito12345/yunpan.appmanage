package com.yunpan.appmanage.service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.httpserver.RemoteServer;
import fg.b;
import ha.db;
import ja.d;
import kh.e;
import kh.j;
import m0.i0;
import m0.q;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public class HttpService extends Service {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f3956b = 0;

    /* renamed from: a, reason: collision with root package name */
    public RemoteServer f3957a = null;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        e.b().l(this);
        this.f3957a.stop();
        this.f3957a = null;
        try {
            new i0(this).a(5);
        } catch (Exception unused) {
        }
        try {
            stopForeground(true);
        } catch (Exception unused2) {
        }
        super.onDestroy();
    }

    @j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(d dVar) {
        throw null;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        if (!e.b().e(this)) {
            e.b().j(this);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) getSystemService("notification")).createNotificationChannel(new NotificationChannel(getPackageName(), "HTTP服务", 3));
        }
        q qVar = new q(this, getPackageName());
        qVar.f10781e = q.b("HTTP服务");
        qVar.f10782f = q.b("在线播放流媒体服务");
        qVar.f10788m.icon = R.drawable.apk;
        qVar.f10783g = -1;
        qVar.f10785i = "service";
        qVar.c();
        qVar.d();
        startForeground(5, qVar.a());
        new b(new db(17, this), 1).start();
        return 1;
    }
}
