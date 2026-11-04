package com.yunpan.appmanage.utilacc;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import com.yunpan.appmanage.R;
import p000if.a;
import q.i;
import ua.g8;
import wa.t;

/* loaded from: classes.dex */
public class GroundStartAppActivity extends i {
    public static final /* synthetic */ int A = 0;

    @Override // androidx.fragment.app.j0, androidx.activity.m, m0.k, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Intent launchIntentForPackage;
        super.onCreate(bundle);
        setContentView(R.layout.activity_start_app_ground);
        String stringExtra = getIntent().getStringExtra("packageName");
        String stringExtra2 = getIntent().getStringExtra("className");
        String stringExtra3 = getIntent().getStringExtra("componentName");
        if (stringExtra3 == null || stringExtra3.isEmpty()) {
            launchIntentForPackage = null;
        } else {
            launchIntentForPackage = new Intent();
            launchIntentForPackage.setComponent(ComponentName.unflattenFromString(stringExtra3));
        }
        if (launchIntentForPackage == null) {
            if (stringExtra2 == null || stringExtra2.isEmpty()) {
                if (Build.VERSION.SDK_INT >= 21) {
                    launchIntentForPackage = getPackageManager().getLeanbackLaunchIntentForPackage(stringExtra);
                }
                if (launchIntentForPackage == null) {
                    launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(stringExtra);
                }
            } else {
                if (stringExtra2.contains("/")) {
                    stringExtra = stringExtra2.substring(0, stringExtra2.lastIndexOf("/"));
                    stringExtra2 = stringExtra2.startsWith("/.") ? stringExtra2.replace("/", "") : stringExtra2.substring(stringExtra2.lastIndexOf("/") + 1);
                }
                if (stringExtra == null) {
                    finish();
                    return;
                } else {
                    launchIntentForPackage = new Intent();
                    launchIntentForPackage.setClassName(stringExtra, stringExtra2);
                }
            }
        }
        if (launchIntentForPackage != null) {
            try {
                launchIntentForPackage.setPackage(null);
                launchIntentForPackage.setFlags(270532608);
                a.x0(1, t.f17728a.f17735d, launchIntentForPackage);
                new Handler().postDelayed(new g8(10, this), 2222L);
            } catch (Exception unused) {
                finish();
            }
        }
    }
}
