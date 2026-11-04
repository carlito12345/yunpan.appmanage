package com.yunpan.appmanage.service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.service.BootTaskService;
import com.yunpan.appmanage.util.b0;
import fc.b;
import java.io.IOException;
import m0.i0;
import m0.q;
import mc.c;
import ph.j;
import q4.a;
import rc.f;
import wa.t;
import wa.u;
import wa.v;
import wa.w;

/* loaded from: classes.dex */
public class BootTaskService extends Service {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f3953c = 0;

    /* renamed from: a, reason: collision with root package name */
    public boolean f3954a = true;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3955b = true;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        try {
            new i0(this).a(3);
        } catch (Exception unused) {
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        u uVar = t.f17728a;
        if (uVar.f17753t) {
            w.c("启动：开机任务前台服务");
        }
        boolean zE = a.E(this);
        b0 b0Var = v.f17759a;
        if (zE || !((String) b0Var.f4000c).isEmpty()) {
            if (Build.VERSION.SDK_INT >= 26) {
                ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel("BootTaskServiceChannel666", "开机任务", 2));
            }
            q qVar = new q(this, "BootTaskServiceChannel666");
            qVar.f10781e = q.b("开机任务");
            qVar.f10782f = q.b("任务守护");
            qVar.f10788m.icon = R.drawable.apk;
            qVar.f10783g = -1;
            qVar.f10785i = "service";
            qVar.c();
            startForeground(3, qVar.a());
        }
        if (com.yunpan.appmanage.util.v.f4106a.R && !((String) b0Var.f4000c).isEmpty()) {
            if (uVar.f17753t) {
                w.c("执行：无障碍开机保持");
            }
            this.f3954a = false;
            final int i12 = 0;
            new Thread(new Runnable(this) { // from class: ta.h

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ BootTaskService f14870b;

                {
                    this.f14870b = this;
                }

                @Override // java.lang.Runnable
                public final void run() throws InterruptedException, IOException {
                    BootTaskService bootTaskService = this.f14870b;
                    switch (i12) {
                        case 0:
                            int i13 = BootTaskService.f3953c;
                            bootTaskService.getClass();
                            i.a();
                            bootTaskService.f3954a = true;
                            break;
                        default:
                            int i14 = BootTaskService.f3953c;
                            bootTaskService.getClass();
                            if (!fa.d.f5659a.f5665d) {
                                u uVar2 = t.f17728a;
                                try {
                                    if (uVar2.f17740f0) {
                                        if (uVar2.f17753t) {
                                            w.c("等待系统开机加载完成");
                                        }
                                        do {
                                            Thread.sleep(500L);
                                        } while (!fa.d.f5659a.f5665d);
                                    } else if (uVar2.f17747m > 0) {
                                        if (uVar2.f17753t) {
                                            w.c("延时：" + uVar2.f17747m + "秒再执行开机任务");
                                        }
                                        Thread.sleep(uVar2.f17747m * 1000);
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            i.d();
                            bootTaskService.f3955b = true;
                            break;
                    }
                }
            }).start();
        }
        if (a.E(this)) {
            this.f3955b = false;
            final int i13 = 1;
            new Thread(new Runnable(this) { // from class: ta.h

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ BootTaskService f14870b;

                {
                    this.f14870b = this;
                }

                @Override // java.lang.Runnable
                public final void run() throws InterruptedException, IOException {
                    BootTaskService bootTaskService = this.f14870b;
                    switch (i13) {
                        case 0:
                            int i132 = BootTaskService.f3953c;
                            bootTaskService.getClass();
                            i.a();
                            bootTaskService.f3954a = true;
                            break;
                        default:
                            int i14 = BootTaskService.f3953c;
                            bootTaskService.getClass();
                            if (!fa.d.f5659a.f5665d) {
                                u uVar2 = t.f17728a;
                                try {
                                    if (uVar2.f17740f0) {
                                        if (uVar2.f17753t) {
                                            w.c("等待系统开机加载完成");
                                        }
                                        do {
                                            Thread.sleep(500L);
                                        } while (!fa.d.f5659a.f5665d);
                                    } else if (uVar2.f17747m > 0) {
                                        if (uVar2.f17753t) {
                                            w.c("延时：" + uVar2.f17747m + "秒再执行开机任务");
                                        }
                                        Thread.sleep(uVar2.f17747m * 1000);
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            i.d();
                            bootTaskService.f3955b = true;
                            break;
                    }
                }
            }).start();
        }
        new c(0, new j(9, this)).d(f.f13757b).a(b.a()).b(new ka.c(4, this));
        return 2;
    }
}
