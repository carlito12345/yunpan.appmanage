package com.yunpan.appmanage.service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import fc.b;
import ha.db;
import m0.i0;
import m0.q;
import mc.c;
import ph.j;
import rc.f;

/* loaded from: classes.dex */
public class AccRestartService extends Service {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f3925c = 0;

    /* renamed from: a, reason: collision with root package name */
    public boolean f3926a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3927b = false;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        try {
            new i0(this).a(7);
        } catch (Exception unused) {
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        if (this.f3927b) {
            return 2;
        }
        this.f3927b = true;
        AppStart.f3772h.d();
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("AccRestartService1", "自动化持久", 3);
            notificationChannel.setSound(null, null);
            notificationChannel.setVibrationPattern(null);
            notificationChannel.enableVibration(false);
            ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
        }
        q qVar = new q(this, "AccRestartService1");
        qVar.f10781e = q.b("自动化持久");
        qVar.f10782f = q.b("自动化重启任务");
        qVar.f10788m.icon = R.drawable.apk;
        qVar.f10783g = 0;
        qVar.f10785i = "service";
        qVar.f10789n = true;
        startForeground(7, qVar.a());
        new Thread(new db(15, this)).start();
        new c(0, new j(8, this)).d(f.f13757b).a(b.a()).b(new ka.c(1, this));
        return 2;
    }
}
