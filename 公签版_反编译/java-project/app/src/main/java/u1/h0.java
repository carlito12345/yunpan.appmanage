package u1;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final /* synthetic */ class h0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15226a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f15227b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f15228c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f15229d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f15230e;

    public /* synthetic */ h0(Object obj, AtomicBoolean atomicBoolean, boolean z, boolean z4, int i10) {
        this.f15226a = i10;
        this.f15230e = obj;
        this.f15227b = atomicBoolean;
        this.f15228c = z;
        this.f15229d = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15226a) {
            case 0:
                i0 i0Var = (i0) this.f15230e;
                i0Var.getClass();
                this.f15227b.set(false);
                kf.d.j((kf.d) i0Var.f15238f, this.f15228c, this.f15229d);
                break;
            default:
                i0 i0Var2 = (i0) this.f15230e;
                i0Var2.getClass();
                this.f15227b.set(false);
                ((kf.d) i0Var2.f15238f).Q(this.f15228c, this.f15229d);
                break;
        }
    }
}
