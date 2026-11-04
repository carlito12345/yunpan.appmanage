package ha;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.os.Build;
import android.view.SurfaceHolder;

/* loaded from: classes.dex */
public final class k5 implements SurfaceHolder.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l5 f7306a;

    public k5(l5 l5Var) {
        this.f7306a = l5Var;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        l5 l5Var = this.f7306a;
        m5 m5Var = l5Var.f7357b;
        VirtualDisplay virtualDisplay = m5Var.f7406n;
        if (virtualDisplay != null) {
            if (i11 == m5Var.f7407p && i12 == m5Var.f7408q) {
                return;
            }
            m5Var.f7407p = i11;
            m5Var.f7408q = i12;
            try {
                virtualDisplay.resize(i11, i12, m5Var.r);
                m5 m5Var2 = l5Var.f7357b;
                surfaceHolder.setFixedSize(m5Var2.f7407p, m5Var2.f7408q);
                m5 m5Var3 = l5Var.f7357b;
                String str = m5Var3.f7402i;
                int i13 = m5Var3.f7407p;
                int i14 = m5Var3.f7408q;
            } catch (Throwable unused) {
                String str2 = l5Var.f7357b.f7402i;
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        l5 l5Var = this.f7306a;
        m5 m5Var = l5Var.f7357b;
        surfaceHolder.setFixedSize(m5Var.f7407p, m5Var.f7408q);
        m5 m5Var2 = l5Var.f7357b;
        if (m5Var2.f7406n == null) {
            try {
                VirtualDisplay virtualDisplayCreateVirtualDisplay = ((DisplayManager) m5Var2.f6725b.getSystemService("display")).createVirtualDisplay("AppEmbeddedVD", m5Var2.f7407p, m5Var2.f7408q, m5Var2.r, surfaceHolder.getSurface(), 3);
                m5Var2.f7406n = virtualDisplayCreateVirtualDisplay;
                virtualDisplayCreateVirtualDisplay.getDisplay().getDisplayId();
            } catch (Throwable unused) {
            }
        }
        String str = m5Var2.f7403j;
        VirtualDisplay virtualDisplay = m5Var2.f7406n;
        if (virtualDisplay == null || virtualDisplay.getDisplay() == null) {
            com.yunpan.appmanage.util.a0.u("权限不足，无法创建");
            return;
        }
        int displayId = m5Var2.f7406n.getDisplay().getDisplayId();
        Context context = m5Var2.f6725b;
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            com.yunpan.appmanage.util.a0.u("未找到目标App");
            return;
        }
        launchIntentForPackage.addFlags(268435456);
        if (Build.VERSION.SDK_INT >= 26) {
            ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
            activityOptionsMakeBasic.setLaunchDisplayId(displayId);
            try {
                context.startActivity(launchIntentForPackage, activityOptionsMakeBasic.toBundle());
                return;
            } catch (Throwable unused2) {
                return;
            }
        }
        fa.b0.f5652a.g("am start -n '" + launchIntentForPackage.getComponent().flattenToShortString() + "' --display " + displayId, null);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        m5 m5Var = this.f7306a.f7357b;
        int i10 = m5.f7399w;
        VirtualDisplay virtualDisplay = m5Var.f7406n;
        if (virtualDisplay != null) {
            try {
                virtualDisplay.release();
            } catch (Throwable unused) {
            }
            m5Var.f7406n = null;
        }
    }
}
