package com.yunpan.appmanage.ui;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import com.yunpan.appmanage.R;
import ha.db;
import p000if.a;
import q.i;

/* loaded from: classes.dex */
public class ActivityTrans extends i {
    public static final /* synthetic */ int A = 0;

    @Override // androidx.fragment.app.j0, androidx.activity.m, m0.k, android.app.Activity
    public final void onCreate(Bundle bundle) {
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getWindow().setDimAmount(0.0f);
        getWindow().setFlags(512, 512);
        getWindow().setWindowAnimations(0);
        super.onCreate(bundle);
        setTheme(R.style.TransparentActivityTheme);
        try {
            if (getIntent().getParcelableExtra("intent") != null) {
                startActivity((Intent) getIntent().getParcelableExtra("intent"));
            } else {
                String stringExtra = getIntent().getStringExtra("packageName");
                if (stringExtra != null) {
                    startActivity(a.M(stringExtra));
                }
            }
        } catch (Exception unused) {
        }
        new Handler().postDelayed(new db(28, this), 1500L);
    }
}
