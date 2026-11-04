package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class k4 extends AbstractC0052c {

    /* renamed from: j, reason: collision with root package name */
    private final AbstractC0047b f9487j;

    /* renamed from: k, reason: collision with root package name */
    private final IntFunction f9488k;
    private final boolean l;

    /* renamed from: m, reason: collision with root package name */
    private long f9489m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f9490n;

    /* renamed from: o, reason: collision with root package name */
    private volatile boolean f9491o;

    @Override // j$.util.stream.AbstractC0052c
    protected final void h() {
        this.f9407i = true;
        if (this.l && this.f9491o) {
            f(AbstractC0167z0.k0(this.f9487j.O0()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
    @Override // j$.util.stream.AbstractC0062e, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object objG0;
        AbstractC0062e abstractC0062e = this.f9424d;
        if (abstractC0062e != null) {
            this.f9490n = ((k4) abstractC0062e).f9490n | ((k4) this.f9425e).f9490n;
            if (this.l && this.f9407i) {
                this.f9489m = 0L;
                objG0 = AbstractC0167z0.k0(this.f9487j.O0());
            } else if (this.l) {
                k4 k4Var = (k4) this.f9424d;
                if (k4Var.f9490n) {
                    this.f9489m = k4Var.f9489m;
                    objG0 = (L0) k4Var.c();
                } else {
                    k4 k4Var2 = (k4) this.f9424d;
                    long j10 = k4Var2.f9489m;
                    k4 k4Var3 = (k4) this.f9425e;
                    this.f9489m = j10 + k4Var3.f9489m;
                    if (k4Var2.f9489m == 0) {
                        objG0 = (L0) k4Var3.c();
                    } else if (k4Var3.f9489m == 0) {
                        objG0 = (L0) k4Var2.c();
                    } else {
                        objG0 = AbstractC0167z0.g0(this.f9487j.O0(), (L0) ((k4) this.f9424d).c(), (L0) ((k4) this.f9425e).c());
                    }
                }
            }
            f(objG0);
        }
        this.f9491o = true;
        super.onCompletion(countedCompleter);
    }

    k4(AbstractC0047b abstractC0047b, AbstractC0167z0 abstractC0167z0, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC0167z0, spliterator);
        this.f9487j = abstractC0047b;
        this.f9488k = intFunction;
        this.l = EnumC0071f3.ORDERED.n(abstractC0167z0.t0());
    }

    k4(k4 k4Var, Spliterator spliterator) {
        super(k4Var, spliterator);
        this.f9487j = k4Var.f9487j;
        this.f9488k = k4Var.f9488k;
        this.l = k4Var.l;
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final AbstractC0062e e(Spliterator spliterator) {
        return new k4(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0052c
    protected final Object j() {
        return AbstractC0167z0.k0(this.f9487j.O0());
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final Object a() {
        D0 D0 = this.f9421a.D0(-1L, this.f9488k);
        InterfaceC0125q2 interfaceC0125q2U0 = this.f9487j.U0(this.f9421a.t0(), D0);
        AbstractC0167z0 abstractC0167z0 = this.f9421a;
        boolean zI0 = abstractC0167z0.i0(this.f9422b, abstractC0167z0.I0(interfaceC0125q2U0));
        this.f9490n = zI0;
        if (zI0) {
            i();
        }
        L0 l0A = D0.a();
        this.f9489m = l0A.count();
        return l0A;
    }
}
