package androidx.lifecycle;

import android.app.Activity;

/* loaded from: classes.dex */
public final class d0 extends g {
    final /* synthetic */ f0 this$0;

    public d0(f0 f0Var) {
        this.this$0 = f0Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
        ue.d.e(activity, "activity");
        this.this$0.b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostStarted(Activity activity) {
        ue.d.e(activity, "activity");
        f0 f0Var = this.this$0;
        int i10 = f0Var.f1764a + 1;
        f0Var.f1764a = i10;
        if (i10 == 1 && f0Var.f1767d) {
            f0Var.f1769f.e(m.ON_START);
            f0Var.f1767d = false;
        }
    }
}
