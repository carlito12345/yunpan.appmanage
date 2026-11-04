package m0;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class f implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public Object f10734a;

    /* renamed from: b, reason: collision with root package name */
    public Activity f10735b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10736c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f10737d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10738e = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f10739f = false;

    public f(Activity activity) {
        this.f10735b = activity;
        this.f10736c = activity.hashCode();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (this.f10735b == activity) {
            this.f10735b = null;
            this.f10738e = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        if (!this.f10738e || this.f10739f || this.f10737d) {
            return;
        }
        Object obj = this.f10734a;
        try {
            Object obj2 = g.f10744c.get(activity);
            if (obj2 == obj && activity.hashCode() == this.f10736c) {
                g.f10748g.postAtFrontOfQueue(new y7.b(g.f10743b.get(activity), 16, obj2));
                this.f10739f = true;
                this.f10734a = null;
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (this.f10735b == activity) {
            this.f10737d = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
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
