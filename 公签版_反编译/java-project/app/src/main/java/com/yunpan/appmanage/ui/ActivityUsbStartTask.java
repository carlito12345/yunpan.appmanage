package com.yunpan.appmanage.ui;

import android.os.Bundle;
import android.os.SystemClock;
import com.yunpan.appmanage.service.BootReceiver;
import q.i;

/* loaded from: classes.dex */
public class ActivityUsbStartTask extends i {
    @Override // androidx.fragment.app.j0, androidx.activity.m, m0.k, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (SystemClock.elapsedRealtime() < 80000) {
            BootReceiver.a(this, "ActivityUsbStartTask");
        }
        finish();
    }
}
