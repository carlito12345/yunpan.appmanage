package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class A2 extends AbstractC0052c {

    /* renamed from: j, reason: collision with root package name */
    private final AbstractC0047b f9183j;

    /* renamed from: k, reason: collision with root package name */
    private final IntFunction f9184k;
    private final long l;

    /* renamed from: m, reason: collision with root package name */
    private final long f9185m;

    /* renamed from: n, reason: collision with root package name */
    private long f9186n;

    /* renamed from: o, reason: collision with root package name */
    private volatile boolean f9187o;

    @Override // j$.util.stream.AbstractC0052c
    protected final void h() {
        this.f9407i = true;
        if (this.f9187o) {
            f(AbstractC0167z0.k0(this.f9183j.O0()));
        }
    }

    @Override // j$.util.stream.AbstractC0062e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        A2 a22;
        L0 l0K0;
        AbstractC0062e abstractC0062e = this.f9424d;
        if (!(abstractC0062e == null)) {
            this.f9186n = ((A2) abstractC0062e).f9186n + ((A2) this.f9425e).f9186n;
            if (this.f9407i) {
                this.f9186n = 0L;
                l0K0 = AbstractC0167z0.k0(this.f9183j.O0());
            } else {
                l0K0 = this.f9186n == 0 ? AbstractC0167z0.k0(this.f9183j.O0()) : ((A2) this.f9424d).f9186n == 0 ? (L0) ((A2) this.f9425e).c() : AbstractC0167z0.g0(this.f9183j.O0(), (L0) ((A2) this.f9424d).c(), (L0) ((A2) this.f9425e).c());
            }
            L0 l0I = l0K0;
            if (d()) {
                l0I = l0I.i(this.l, this.f9185m >= 0 ? Math.min(l0I.count(), this.l + this.f9185m) : this.f9186n, this.f9184k);
            }
            f(l0I);
            this.f9187o = true;
        }
        if (this.f9185m >= 0 && !d()) {
            long j10 = this.l + this.f9185m;
            long jK = this.f9187o ? this.f9186n : k(j10);
            if (jK >= j10) {
                i();
            } else {
                A2 a23 = (A2) ((AbstractC0062e) getCompleter());
                A2 a24 = this;
                while (true) {
                    if (a23 == null) {
                        if (jK >= j10) {
                            break;
                        }
                    } else {
                        if (a24 == a23.f9425e && (a22 = (A2) a23.f9424d) != null) {
                            jK += a22.k(j10);
                            if (jK >= j10) {
                                break;
                            }
                        }
                        a24 = a23;
                        a23 = (A2) ((AbstractC0062e) a23.getCompleter());
                    }
                }
                i();
            }
        }
        super.onCompletion(countedCompleter);
    }

    A2(AbstractC0047b abstractC0047b, AbstractC0167z0 abstractC0167z0, Spliterator spliterator, IntFunction intFunction, long j10, long j11) {
        super(abstractC0167z0, spliterator);
        this.f9183j = abstractC0047b;
        this.f9184k = intFunction;
        this.l = j10;
        this.f9185m = j11;
    }

    A2(A2 a22, Spliterator spliterator) {
        super(a22, spliterator);
        this.f9183j = a22.f9183j;
        this.f9184k = a22.f9184k;
        this.l = a22.l;
        this.f9185m = a22.f9185m;
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final AbstractC0062e e(Spliterator spliterator) {
        return new A2(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0052c
    protected final Object j() {
        return AbstractC0167z0.k0(this.f9183j.O0());
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final Object a() {
        if (d()) {
            D0 D0 = this.f9183j.D0(EnumC0071f3.SIZED.s(this.f9183j.f9396j) ? this.f9183j.m0(this.f9422b) : -1L, this.f9184k);
            InterfaceC0125q2 interfaceC0125q2U0 = this.f9183j.U0(this.f9421a.t0(), D0);
            AbstractC0167z0 abstractC0167z0 = this.f9421a;
            abstractC0167z0.i0(this.f9422b, abstractC0167z0.I0(interfaceC0125q2U0));
            return D0.a();
        }
        D0 D02 = this.f9183j.D0(-1L, this.f9184k);
        if (this.l == 0) {
            InterfaceC0125q2 interfaceC0125q2U02 = this.f9183j.U0(this.f9421a.t0(), D02);
            AbstractC0167z0 abstractC0167z02 = this.f9421a;
            abstractC0167z02.i0(this.f9422b, abstractC0167z02.I0(interfaceC0125q2U02));
        } else {
            this.f9421a.H0(this.f9422b, D02);
        }
        L0 l0A = D02.a();
        this.f9186n = l0A.count();
        this.f9187o = true;
        this.f9422b = null;
        return l0A;
    }

    private long k(long j10) {
        if (this.f9187o) {
            return this.f9186n;
        }
        A2 a22 = (A2) this.f9424d;
        A2 a23 = (A2) this.f9425e;
        if (a22 == null || a23 == null) {
            return this.f9186n;
        }
        long jK = a22.k(j10);
        return jK >= j10 ? jK : jK + a23.k(j10);
    }
}
