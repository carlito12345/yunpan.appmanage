package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;

/* loaded from: classes.dex */
public final class e0 extends g {
    final /* synthetic */ f0 this$0;

    public e0(f0 f0Var) {
        this.this$0 = f0Var;
    }

    @Override // androidx.lifecycle.g, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        ue.d.e(activity, "activity");
        if (Build.VERSION.SDK_INT < 29) {
            int i10 = i0.f1772b;
            Fragment fragmentFindFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
            ue.d.c(fragmentFindFragmentByTag, "null cannot be cast to non-null type androidx.lifecycle.ReportFragment");
            ((i0) fragmentFindFragmentByTag).f1773a = this.this$0.f1771h;
        }
    }

    @Override // androidx.lifecycle.g, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        ue.d.e(activity, "activity");
        f0 f0Var = this.this$0;
        int i10 = f0Var.f1765b - 1;
        f0Var.f1765b = i10;
        if (i10 == 0) {
            Handler handler = f0Var.f1768e;
            ue.d.b(handler);
            handler.postDelayed(f0Var.f1770g, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        ue.d.e(activity, "activity");
        c0.a(activity, new d0(this.this$0));
    }

    @Override // androidx.lifecycle.g, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        ue.d.e(activity, "activity");
        f0 f0Var = this.this$0;
        int i10 = f0Var.f1764a - 1;
        f0Var.f1764a = i10;
        if (i10 == 0 && f0Var.f1766c) {
            f0Var.f1769f.e(m.ON_STOP);
            f0Var.f1767d = true;
        }
    }
}
