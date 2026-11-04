package com.yunpan.appmanage.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import androidx.core.graphics.drawable.IconCompat;
import b8.a;
import com.yunpan.appmanage.R;
import fc.b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import m0.i0;
import m0.m0;
import m0.n;
import m0.n0;
import m0.q;
import m0.q0;
import mc.c;
import rc.f;

/* loaded from: classes.dex */
public class AdbPairService extends Service {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f3951b = 0;

    /* renamed from: a, reason: collision with root package name */
    public Notification f3952a;

    public final void a(String str, boolean z) {
        q0 q0Var = new q0(new Bundle(), new HashSet());
        Intent intent = new Intent(this, (Class<?>) AdbPairService.class);
        intent.setAction("com.yunpan.appmanage.ACTION_REPLY");
        PendingIntent service = PendingIntent.getService(this, 0, intent, 167772160);
        IconCompat iconCompatB = IconCompat.b(R.drawable.tp_open2);
        Bundle bundle = new Bundle();
        CharSequence charSequenceB = q.b("点击输入配对码");
        ArrayList arrayList = new ArrayList();
        arrayList.add(q0Var);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            q0 q0Var2 = (q0) it.next();
            q0Var2.getClass();
            arrayList3.add(q0Var2);
        }
        n nVar = new n(iconCompatB, charSequenceB, service, bundle, arrayList3.isEmpty() ? null : (q0[]) arrayList3.toArray(new q0[arrayList3.size()]), arrayList2.isEmpty() ? null : (q0[]) arrayList2.toArray(new q0[arrayList2.size()]));
        q qVar = new q(this, "adb_pair_service_channel");
        qVar.f10788m.icon = R.drawable.tp_open2;
        qVar.f10781e = q.b("ADB无线配对");
        qVar.f10782f = q.b(str);
        qVar.f10783g = 2;
        qVar.f10785i = "service";
        qVar.f10778b.add(nVar);
        qVar.c();
        Notification notificationA = qVar.a();
        this.f3952a = notificationA;
        if (z) {
            startForeground(4, notificationA);
        } else if (Build.VERSION.SDK_INT >= 23) {
            ((NotificationManager) getSystemService(NotificationManager.class)).notify(4, this.f3952a);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("adb_pair_service_channel", "ADB配对服务", 4);
            notificationChannel.setDescription("用于ADB无线配对");
            notificationChannel.enableLights(true);
            notificationChannel.setLightColor(-16776961);
            notificationChannel.enableVibration(true);
            ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
        }
        a("请输入配对码", true);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        try {
            new i0(this).a(4);
        } catch (Exception unused) {
        }
        super.onDestroy();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int onStartCommand(Intent intent, int i10, int i11) {
        Intent intent2;
        Bundle bundleC;
        if (intent == null || !"com.yunpan.appmanage.ACTION_REPLY".equals(intent.getAction())) {
            return 1;
        }
        if (Build.VERSION.SDK_INT >= 20) {
            bundleC = n0.c(intent);
        } else {
            ClipData clipDataA = m0.a(intent);
            if (clipDataA == null) {
                intent2 = null;
                bundleC = intent2 != null ? null : (Bundle) intent2.getExtras().getParcelable("android.remoteinput.resultsData");
            } else {
                ClipDescription description = clipDataA.getDescription();
                if (description.hasMimeType("text/vnd.android.intent") && description.getLabel().toString().contentEquals("android.remoteinput.results")) {
                    intent2 = clipDataA.getItemAt(0).getIntent();
                }
                if (intent2 != null) {
                }
            }
        }
        if (bundleC == null) {
            return 1;
        }
        String string = bundleC.getString("key_text_reply");
        if (string == null || string.length() != 6) {
            a("配对码错误，请重新尝试", false);
            return 1;
        }
        new c(0, new a(string, 9)).d(f.f13757b).a(b.a()).b(new ka.c(3, this));
        return 1;
    }
}
