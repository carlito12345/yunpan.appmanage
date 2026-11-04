package v3;

import android.view.AttachedSurfaceControl;
import android.view.SurfaceControl;
import android.view.SurfaceView;
import android.window.SurfaceSyncGroup;
import ua.g8;

/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    public SurfaceSyncGroup f16429a;

    public static /* synthetic */ void a(d0 d0Var, SurfaceView surfaceView, g8 g8Var) throws InterruptedException {
        d0Var.getClass();
        AttachedSurfaceControl rootSurfaceControl = surfaceView.getRootSurfaceControl();
        if (rootSurfaceControl == null) {
            return;
        }
        SurfaceSyncGroup surfaceSyncGroup = new SurfaceSyncGroup("exo-sync-b-334901521");
        d0Var.f16429a = surfaceSyncGroup;
        a9.o.t(surfaceSyncGroup.add(rootSurfaceControl, new com.gj.server.a(7)));
        g8Var.run();
        rootSurfaceControl.applyTransactionOnDraw(new SurfaceControl.Transaction());
    }
}
