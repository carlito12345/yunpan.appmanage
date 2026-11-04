package da;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import ce.x0;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.WpVideoStreamBean;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import java.text.DecimalFormat;
import ma.i;
import vd.x;
import wa.t;

/* loaded from: classes.dex */
public final class d implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppStart f4521a;

    public d(AppStart appStart) {
        this.f4521a = appStart;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        t.f17728a.c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        AppStart appStart = this.f4521a;
        int i10 = appStart.f3778f + 1;
        appStart.f3778f = i10;
        if (i10 == 1) {
            if (appStart.f3779g) {
                appStart.f3779g = false;
                return;
            }
            try {
                DecimalFormat decimalFormat = k.f4034u0;
                k kVar = j.f4033a;
                WpVideoStreamBean wpVideoStreamBean = kVar.I;
                if (wpVideoStreamBean != null) {
                    x0 x0Var = wpVideoStreamBean.randomFile_smb1;
                    if (x0Var != null) {
                        x0Var.f3216a.b();
                        kVar.I.randomFile_smb1 = null;
                    } else {
                        x xVar = wpVideoStreamBean.randomFile_smb2;
                        if (xVar != null) {
                            xVar.close();
                            kVar.I.file_smb2.close();
                            WpVideoStreamBean wpVideoStreamBean2 = kVar.I;
                            wpVideoStreamBean2.file_smb2 = null;
                            wpVideoStreamBean2.randomFile_smb2 = null;
                        }
                    }
                    kVar.I = null;
                }
            } catch (Exception unused) {
            }
            DecimalFormat decimalFormat2 = k.f4034u0;
            if (j.f4033a.f4040c0) {
                System.currentTimeMillis();
            }
            i iVar = ma.h.f11033a;
            if (iVar.f11039f) {
                iVar.f11041h.sendEmptyMessageDelayed(2, 1188L);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        AppStart appStart = this.f4521a;
        int i10 = appStart.f3778f - 1;
        appStart.f3778f = i10;
        if (i10 == 0) {
            DecimalFormat decimalFormat = k.f4034u0;
            j.f4033a.f4040c0 = true;
            System.currentTimeMillis();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
