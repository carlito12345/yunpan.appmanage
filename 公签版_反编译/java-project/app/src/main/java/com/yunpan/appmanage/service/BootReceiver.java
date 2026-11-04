package com.yunpan.appmanage.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.util.v;
import d0.f;
import fa.d;
import java.util.Date;
import q4.a;
import wa.t;
import wa.u;
import wa.w;

/* loaded from: classes.dex */
public class BootReceiver extends BroadcastReceiver {
    public static void a(Context context, String str) {
        if (v.f4106a.R && !((String) wa.v.f17759a.f4000c).isEmpty()) {
            b(context, str);
        } else if (a.E(context)) {
            b(context, str);
        } else if (t.f17728a.f17738e0) {
            b(context, str);
        }
    }

    public static void b(Context context, String str) {
        try {
            if (p000if.a.h0(context, BootTaskService.class)) {
                u uVar = t.f17728a;
                if (uVar.f17753t) {
                    w.c(str + "：放弃任务，开机服务运行中，上次执行时间：" + uVar.f17733c.format(new Date(uVar.f17741g)));
                    return;
                }
                return;
            }
            u uVar2 = t.f17728a;
            uVar2.g(System.currentTimeMillis());
            if (uVar2.f17753t) {
                w.c(str.concat("：开始执行任务"));
            }
            d.f5659a.h();
            Intent intent = new Intent(context, (Class<?>) BootTaskService.class);
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent);
            } else {
                context.startService(intent);
            }
        } catch (Exception e7) {
            if (t.f17728a.f17753t) {
                StringBuilder sbB = f.b(str, "：启动服务失败，");
                sbB.append(e7.getMessage());
                w.c(sbB.toString());
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (context != null) {
            AppStart.f3772h.d();
            u uVar = t.f17728a;
            if (uVar.f17753t) {
                w.c("收到广播：" + intent.getAction());
            }
            if (uVar.f17743h) {
                if (uVar.f17753t) {
                    w.c("开机广播：您勾选了手动点击启动");
                }
            } else if (intent.getAction().equals("android.intent.action.USER_PRESENT")) {
                if (uVar.f17745j) {
                    a(context, "屏幕解锁");
                }
            } else if (uVar.f17746k) {
                a(context, "开机广播");
            }
        }
    }
}
