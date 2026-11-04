package v8;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class g implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public Activity f16675a;

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f16676b;

    public g(WeakReference weakReference, Activity activity) {
        this.f16675a = activity;
        this.f16676b = weakReference;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a aVar;
        if (this.f16675a != activity) {
            return;
        }
        this.f16675a = null;
        WeakReference weakReference = this.f16676b;
        if (weakReference == null || (aVar = (a) weakReference.get()) == null) {
            return;
        }
        aVar.g();
        this.f16676b = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        WeakReference weakReference;
        a aVar;
        Activity activity2 = this.f16675a;
        if (activity2 == activity && activity2.isFinishing() && (weakReference = this.f16676b) != null && (aVar = (a) weakReference.get()) != null && aVar.f16659f) {
            aVar.b();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
