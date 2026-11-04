package u1;

import android.content.ContextWrapper;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15233a;

    /* renamed from: b, reason: collision with root package name */
    public final b0 f15234b;

    /* renamed from: c, reason: collision with root package name */
    public final b0 f15235c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f15236d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15237e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f15238f;

    public i0(ContextWrapper contextWrapper, Looper looper, z zVar, int i10) {
        this.f15233a = i10;
        switch (i10) {
            case 1:
                this.f15238f = new kf.d(contextWrapper.getApplicationContext(), 23);
                this.f15234b = zVar.a(looper, null);
                this.f15235c = zVar.a(Looper.getMainLooper(), null);
                break;
            default:
                this.f15238f = new kf.d(contextWrapper.getApplicationContext(), 22);
                this.f15234b = zVar.a(looper, null);
                this.f15235c = zVar.a(Looper.getMainLooper(), null);
                break;
        }
    }

    public void a(boolean z, boolean z4) {
        boolean z10 = z && z4;
        b0 b0Var = this.f15234b;
        if (z10) {
            b0Var.d(new g0(this, z, z4, 0));
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        this.f15235c.f15188a.postDelayed(new s1.f(this, 6, atomicBoolean), 1000L);
        b0Var.d(new h0(this, atomicBoolean, z, z4, 0));
    }

    public void b(boolean z, boolean z4) {
        boolean z10 = z && z4;
        b0 b0Var = this.f15234b;
        if (z10) {
            b0Var.d(new g0(this, z, z4, 1));
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        this.f15235c.f15188a.postDelayed(new s1.f(this, 8, atomicBoolean), 1000L);
        b0Var.d(new h0(this, atomicBoolean, z, z4, 1));
    }

    public final void c(boolean z) {
        switch (this.f15233a) {
            case 0:
                if (this.f15237e != z) {
                    this.f15237e = z;
                    if (this.f15236d) {
                        a(true, z);
                        break;
                    }
                }
                break;
            default:
                if (this.f15237e != z) {
                    this.f15237e = z;
                    if (this.f15236d) {
                        b(true, z);
                        break;
                    }
                }
                break;
        }
    }
}
