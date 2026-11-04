package com.yunpan.appmanage.installer;

import android.content.Intent;
import android.os.Bundle;
import ma.h;
import q.i;

/* loaded from: classes.dex */
public class InstallerConfirmActivity extends i {
    public static final /* synthetic */ int D = 0;
    public boolean A = false;
    public int B;
    public Intent C;

    @Override // androidx.fragment.app.j0, androidx.activity.m, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 322) {
            this.A = true;
            finish();
        }
    }

    @Override // androidx.fragment.app.j0, androidx.activity.m, m0.k, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.B = intent.getIntExtra("session_id", -1);
        Intent intent2 = (Intent) intent.getParcelableExtra("confirmation_intent");
        this.C = intent2;
        if (bundle == null) {
            try {
                startActivityForResult(intent2, 322);
                h.f11033a.f11039f = true;
            } catch (Exception unused) {
                int i10 = this.B;
                Intent intent3 = new Intent("com.yunpan.appmanage.action.ACTION_DELIVER_PI_EVENT");
                intent3.putExtra("android.content.pm.extra.STATUS", -322);
                intent3.putExtra("android.content.pm.extra.SESSION_ID", i10);
                sendBroadcast(intent3);
                finish();
            }
        }
    }

    @Override // q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (!isFinishing() || this.A) {
            return;
        }
        int i10 = this.B;
        Intent intent = this.C;
        Intent intent2 = new Intent(this, (Class<?>) InstallerConfirmActivity.class);
        intent2.putExtra("confirmation_intent", intent);
        intent2.putExtra("session_id", i10);
        intent2.addFlags(268435456);
        startActivity(intent2);
    }
}
