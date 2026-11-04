package com.hjq.permissions.core;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Handler;
import com.hjq.permissions.manager.ActivityOrientationManager;
import java.lang.reflect.Method;
import m0.f;
import m0.g;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3759a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Activity f3760b;

    public /* synthetic */ c(Activity activity, int i10) {
        this.f3759a = i10;
        this.f3760b = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Activity activity = this.f3760b;
        switch (this.f3759a) {
            case 0:
                ActivityOrientationManager.unlockActivityOrientation(activity);
                return;
            default:
                if (activity.isFinishing()) {
                    return;
                }
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 28) {
                    Class cls = g.f10742a;
                    activity.recreate();
                    return;
                }
                Class cls2 = g.f10742a;
                boolean z = i10 == 26 || i10 == 27;
                Method method = g.f10747f;
                if ((!z || method != null) && (g.f10746e != null || g.f10745d != null)) {
                    try {
                        Object obj2 = g.f10744c.get(activity);
                        if (obj2 != null && (obj = g.f10743b.get(activity)) != null) {
                            Application application = activity.getApplication();
                            f fVar = new f(activity);
                            application.registerActivityLifecycleCallbacks(fVar);
                            Handler handler = g.f10748g;
                            handler.post(new y7.b(fVar, 14, obj2));
                            try {
                                if (i10 == 26 || i10 == 27) {
                                    Boolean bool = Boolean.FALSE;
                                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                                } else {
                                    activity.recreate();
                                }
                                handler.post(new y7.b(application, 15, fVar));
                                return;
                            } finally {
                                handler.post(new y7.b(application, 15, fVar));
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                activity.recreate();
                return;
        }
    }
}
