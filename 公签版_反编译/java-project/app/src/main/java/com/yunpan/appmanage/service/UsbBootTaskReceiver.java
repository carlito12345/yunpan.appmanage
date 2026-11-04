package com.yunpan.appmanage.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.yunpan.appmanage.base.AppStart;
import wa.t;
import wa.u;
import wa.w;

/* loaded from: classes.dex */
public class UsbBootTaskReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        System.out.getClass();
        if (context != null) {
            AppStart.f3772h.d();
            if (SystemClock.elapsedRealtime() > 80000) {
                return;
            }
            u uVar = t.f17728a;
            if (!uVar.f17743h) {
                BootReceiver.a(context, "USB广播");
            } else if (uVar.f17753t) {
                w.c("USB广播启动：已勾选手动点击启动");
            }
        }
    }
}
