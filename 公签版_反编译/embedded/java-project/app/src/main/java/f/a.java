package f;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Process;
import com.gj.openfile.AppStart;

/* loaded from: classes.dex */
public final class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppStart f89a;

    public a(AppStart appStart) {
        this.f89a = appStart;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        AppStart appStart = this.f89a;
        int i = appStart.f56a + 1;
        appStart.f56a = i;
        if (i == 1) {
            if (appStart.f57b) {
                appStart.f57b = false;
                return;
            }
            appStart.f57b = true;
            activity.finishAffinity();
            Process.killProcess(Process.myPid());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        AppStart appStart = this.f89a;
        appStart.f56a--;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }
}
