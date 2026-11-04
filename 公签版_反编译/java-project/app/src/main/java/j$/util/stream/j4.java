package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class j4 extends AbstractC0062e {

    /* renamed from: h, reason: collision with root package name */
    private final AbstractC0047b f9476h;

    /* renamed from: i, reason: collision with root package name */
    private final IntFunction f9477i;

    /* renamed from: j, reason: collision with root package name */
    private final boolean f9478j;

    /* renamed from: k, reason: collision with root package name */
    private long f9479k;
    private long l;

    @Override // j$.util.stream.AbstractC0062e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        L0 l0G0;
        AbstractC0062e abstractC0062e = this.f9424d;
        if (abstractC0062e != null) {
            if (this.f9478j) {
                j4 j4Var = (j4) abstractC0062e;
                long j10 = j4Var.l;
                this.l = j10;
                if (j10 == j4Var.f9479k) {
                    this.l = j10 + ((j4) this.f9425e).l;
                }
            }
            j4 j4Var2 = (j4) abstractC0062e;
            long j11 = j4Var2.f9479k;
            j4 j4Var3 = (j4) this.f9425e;
            this.f9479k = j11 + j4Var3.f9479k;
            if (j4Var2.f9479k == 0) {
                l0G0 = (L0) j4Var3.c();
            } else if (j4Var3.f9479k == 0) {
                l0G0 = (L0) j4Var2.c();
            } else {
                l0G0 = AbstractC0167z0.g0(this.f9476h.O0(), (L0) ((j4) this.f9424d).c(), (L0) ((j4) this.f9425e).c());
            }
            L0 l0I = l0G0;
            if (d() && this.f9478j) {
                l0I = l0I.i(this.l, l0I.count(), this.f9477i);
            }
            f(l0I);
        }
        super.onCompletion(countedCompleter);
    }

    j4(AbstractC0047b abstractC0047b, AbstractC0167z0 abstractC0167z0, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC0167z0, spliterator);
        this.f9476h = abstractC0047b;
        this.f9477i = intFunction;
        this.f9478j = EnumC0071f3.ORDERED.n(abstractC0167z0.t0());
    }

    j4(j4 j4Var, Spliterator spliterator) {
        super(j4Var, spliterator);
        this.f9476h = j4Var.f9476h;
        this.f9477i = j4Var.f9477i;
        this.f9478j = j4Var.f9478j;
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final AbstractC0062e e(Spliterator spliterator) {
        return new j4(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final Object a() {
        boolean zD = d();
        D0 D0 = this.f9421a.D0((!zD && this.f9478j && EnumC0071f3.SIZED.s(this.f9476h.f9396j)) ? this.f9476h.m0(this.f9422b) : -1L, this.f9477i);
        i4 i4VarK = ((h4) this.f9476h).k(D0, this.f9478j && !zD);
        this.f9421a.H0(this.f9422b, i4VarK);
        L0 l0A = D0.a();
        this.f9479k = l0A.count();
        this.l = i4VarK.g();
        return l0A;
    }
}
