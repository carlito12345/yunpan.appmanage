package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class h0 implements Application.ActivityLifecycleCallbacks {
    public static final g0 Companion = new g0();

    public static final void registerIn(Activity activity) {
        Companion.getClass();
        ue.d.e(activity, "activity");
        activity.registerActivityLifecycleCallbacks(new h0());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        ue.d.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        ue.d.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        ue.d.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostCreated(Activity activity, Bundle bundle) {
        ue.d.e(activity, "activity");
        int i10 = i0.f1772b;
        l0.d(activity, m.ON_CREATE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
        ue.d.e(activity, "activity");
        int i10 = i0.f1772b;
        l0.d(activity, m.ON_RESUME);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostStarted(Activity activity) {
        ue.d.e(activity, "activity");
        int i10 = i0.f1772b;
        l0.d(activity, m.ON_START);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreDestroyed(Activity activity) {
        ue.d.e(activity, "activity");
        int i10 = i0.f1772b;
        l0.d(activity, m.ON_DESTROY);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPrePaused(Activity activity) {
        ue.d.e(activity, "activity");
        int i10 = i0.f1772b;
        l0.d(activity, m.ON_PAUSE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreStopped(Activity activity) {
        ue.d.e(activity, "activity");
        int i10 = i0.f1772b;
        l0.d(activity, m.ON_STOP);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        ue.d.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        ue.d.e(activity, "activity");
        ue.d.e(bundle, "bundle");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        ue.d.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        ue.d.e(activity, "activity");
    }
}
