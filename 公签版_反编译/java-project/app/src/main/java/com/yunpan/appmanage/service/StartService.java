package com.yunpan.appmanage.service;

import a2.k;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.media.session.MediaSessionManager;
import android.os.Build;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.service.StartService;
import com.yunpan.appmanage.util.MyLog;
import ha.db;
import hi.d;
import java.util.List;
import m0.i0;
import m0.o;
import m0.q;
import t0.e;
import ta.m;
import ta.r;
import wa.s;
import wa.t;
import wa.w;

/* loaded from: classes.dex */
public class StartService extends NotificationListenerService {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f3958i = 0;

    /* renamed from: a, reason: collision with root package name */
    public MediaSessionManager f3959a;

    /* renamed from: b, reason: collision with root package name */
    public r f3960b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3961c = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3962d = false;

    /* renamed from: e, reason: collision with root package name */
    public SharedPreferences f3963e = null;

    /* renamed from: f, reason: collision with root package name */
    public final u f3964f = new u(15, this);

    /* renamed from: g, reason: collision with root package name */
    public final k f3965g = new k(6, this);

    /* renamed from: h, reason: collision with root package name */
    public d f3966h = null;

    public final void a() {
        MediaSessionManager mediaSessionManager;
        t.f17728a.d(System.currentTimeMillis());
        this.f3964f.removeCallbacksAndMessages(null);
        SharedPreferences sharedPreferences = this.f3963e;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putLong("StartServiceTime", System.currentTimeMillis()).apply();
        }
        if (Build.VERSION.SDK_INT >= 21 && (mediaSessionManager = this.f3959a) != null) {
            mediaSessionManager.removeOnActiveSessionsChangedListener(this.f3960b);
            this.f3959a = null;
        }
        try {
            unregisterReceiver(this.f3965g);
        } catch (Exception unused) {
        }
        d dVar = this.f3966h;
        if (dVar != null) {
            unregisterReceiver(dVar);
        }
        try {
            new i0(this).a(1);
        } catch (Exception unused2) {
        }
        try {
            stopForeground(true);
        } catch (Exception unused3) {
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [ta.r] */
    public final void b() {
        if (this.f3961c) {
            return;
        }
        this.f3961c = true;
        MyLog.d("通知权", "初始化");
        if (t.f17728a.C) {
            d();
        }
        s.c().f17710f = this;
        this.f3966h = new d(1);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        registerReceiver(this.f3966h, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction(m.a(getPackageName()));
        registerReceiver(this.f3965g, intentFilter2);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            try {
                if (i10 >= 23) {
                    this.f3959a = e.f(getSystemService(o.h()));
                } else {
                    this.f3959a = e.f(getSystemService("media_session"));
                }
                this.f3960b = new MediaSessionManager.OnActiveSessionsChangedListener() { // from class: ta.r
                    @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
                    public final void onActiveSessionsChanged(List list) {
                        int i11 = StartService.f3958i;
                        s.c().f17706b = list;
                        s.c().f17706b.size();
                    }
                };
                ComponentName componentName = new ComponentName(this, (Class<?>) StartService.class);
                s.c().f17706b = this.f3959a.getActiveSessions(componentName);
                this.f3959a.addOnActiveSessionsChangedListener(this.f3960b, componentName);
            } catch (Exception unused) {
            }
        }
        wa.u uVar = t.f17728a;
        if (uVar.f17743h) {
            if (uVar.f17753t) {
                w.c("放弃任务：您勾选了手动点击启动");
                return;
            }
            return;
        }
        this.f3963e = getSharedPreferences("StartServiceTime", 0);
        this.f3964f.sendEmptyMessage(0);
        if (!uVar.f17736d0 || this.f3963e == null || System.currentTimeMillis() - this.f3963e.getLong("StartServiceTime", 0L) >= 7000) {
            new Thread(new db(19, this)).start();
        } else if (uVar.f17753t) {
            w.c("放弃任务：疑是重复拉起");
        }
    }

    public final void c() {
        if (this.f3959a == null) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 23) {
                this.f3959a = e.f(getSystemService(o.h()));
            } else {
                if (i10 < 21) {
                    throw new Exception("媒体会话管理器为空");
                }
                this.f3959a = e.f(getSystemService("media_session"));
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            s.c().f17706b = this.f3959a.getActiveSessions(new ComponentName(this, (Class<?>) StartService.class));
        }
    }

    public final void d() {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("GJStartServiceChannel", getString(R.string.str_gj) + "守护", 2);
                NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
                if (notificationManager != null) {
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
            q qVar = new q(this, "GJStartServiceChannel");
            qVar.f10781e = q.b("音乐控制");
            qVar.f10782f = q.b("");
            qVar.f10788m.icon = R.drawable.apk;
            qVar.d();
            qVar.f10788m.vibrate = null;
            qVar.f10783g = -1;
            qVar.f10785i = "service";
            qVar.c();
            startForeground(1, qVar.a());
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        MyLog.d("通知权", "创建");
        if (!this.f3962d) {
            this.f3962d = true;
            AppStart.f3772h.d();
        }
        if (t.f17728a.f17753t) {
            w.c("通知服务：创建");
        }
        b();
    }

    @Override // android.service.notification.NotificationListenerService, android.app.Service
    public final void onDestroy() {
        MyLog.d("通知权", "销毁");
        if (t.f17728a.f17753t) {
            w.c("通知服务：销毁");
        }
        a();
        super.onDestroy();
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onListenerConnected() {
        super.onListenerConnected();
        MyLog.d("通知权", "连接");
        if (!this.f3962d) {
            this.f3962d = true;
            AppStart.f3772h.d();
        }
        if (t.f17728a.f17753t) {
            w.c("通知服务：连接");
        }
        b();
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onListenerDisconnected() {
        super.onListenerDisconnected();
        MyLog.d("通知权", "断开");
        if (t.f17728a.f17753t) {
            w.c("通知服务：断开");
        }
        this.f3961c = false;
        a();
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onNotificationPosted(StatusBarNotification statusBarNotification) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        statusBarNotification.getPackageName();
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onNotificationRemoved(StatusBarNotification statusBarNotification) {
    }
}
