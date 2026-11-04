package ha;

import android.hardware.display.VirtualDisplay;
import android.media.projection.MediaProjection;
import android.view.Surface;
import android.view.SurfaceHolder;

/* loaded from: classes.dex */
public final class f5 implements SurfaceHolder.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7019a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7020b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7021c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f7022d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j5 f7023e;

    public /* synthetic */ f5(j5 j5Var, int i10, int i11, int i12, int i13) {
        this.f7019a = i13;
        this.f7023e = j5Var;
        this.f7020b = i10;
        this.f7021c = i11;
        this.f7022d = i12;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        int i13 = this.f7019a;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        switch (this.f7019a) {
            case 0:
                j5 j5Var = this.f7023e;
                MediaProjection mediaProjection = j5Var.f7258h;
                Surface surface = surfaceHolder.getSurface();
                j5Var.f7260j = mediaProjection.createVirtualDisplay("SecondaryScreenMirror", this.f7020b, this.f7021c, this.f7022d, 1, surface, null, null);
                break;
            case 1:
                j5 j5Var2 = this.f7023e;
                MediaProjection mediaProjection2 = j5Var2.f7258h;
                Surface surface2 = surfaceHolder.getSurface();
                j5Var2.f7260j = mediaProjection2.createVirtualDisplay("SecondaryScreenMirror", this.f7020b, this.f7021c, this.f7022d, 1, surface2, null, null);
                break;
            default:
                j5 j5Var3 = this.f7023e;
                MediaProjection mediaProjection3 = j5Var3.f7258h;
                Surface surface3 = surfaceHolder.getSurface();
                j5Var3.f7260j = mediaProjection3.createVirtualDisplay("SecondaryScreenMirror", this.f7020b, this.f7021c, this.f7022d, 1, surface3, null, null);
                break;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        switch (this.f7019a) {
            case 0:
                VirtualDisplay virtualDisplay = this.f7023e.f7260j;
                if (virtualDisplay != null) {
                    virtualDisplay.release();
                    break;
                }
                break;
            case 1:
                VirtualDisplay virtualDisplay2 = this.f7023e.f7260j;
                if (virtualDisplay2 != null) {
                    virtualDisplay2.release();
                    break;
                }
                break;
            default:
                VirtualDisplay virtualDisplay3 = this.f7023e.f7260j;
                if (virtualDisplay3 != null) {
                    virtualDisplay3.release();
                    break;
                }
                break;
        }
    }

    private final void a(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
    }

    private final void b(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
    }

    private final void c(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
    }
}
