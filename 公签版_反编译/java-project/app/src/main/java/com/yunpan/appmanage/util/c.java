package com.yunpan.appmanage.util;

import android.app.AlarmManager;
import android.content.ContentResolver;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.provider.Settings;
import j$.util.DesugarTimeZone;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class c implements LocationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v3.f f4001a;

    public c(v3.f fVar) {
        this.f4001a = fVar;
    }

    @Override // android.location.LocationListener
    public final void onLocationChanged(Location location) {
        v3.f fVar = this.f4001a;
        if (location != null) {
            try {
                long time = location.getTime();
                fVar.getClass();
                Context context = (Context) fVar.f16474b;
                new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(time));
                fVar.P();
                ContentResolver contentResolver = context.getContentResolver();
                try {
                    Settings.Global.putString(contentResolver, "time_zone", "Asia/Hong_Kong");
                    Settings.Global.putInt(contentResolver, "auto_time", 0);
                    Settings.Global.putInt(contentResolver, "auto_time_zone", 0);
                } catch (Exception unused) {
                }
                try {
                    TimeZone.setDefault(DesugarTimeZone.getTimeZone("Asia/Hong_Kong"));
                } catch (Exception unused2) {
                }
                try {
                    AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
                    alarmManager.setTimeZone("Asia/Hong_Kong");
                    alarmManager.setTime(time);
                } catch (Exception unused3) {
                    String str = "date " + new SimpleDateFormat("MMddHHmmyyyy.ss").format(new Date(time));
                    if (!u9.d.r(str).l0().q()) {
                        fa.b bVar = fa.a.f5646a;
                        if (!bVar.f() || bVar.f5651b.exec(str, 2222L).code != 0) {
                            a0.u("无权限更改系统时间");
                            return;
                        }
                    }
                }
                u9.d.r("am broadcast -a android.intent.action.CONFIGURATION_CHANGED").l0();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
    }

    @Override // android.location.LocationListener
    public final void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onStatusChanged(String str, int i10, Bundle bundle) {
    }
}
