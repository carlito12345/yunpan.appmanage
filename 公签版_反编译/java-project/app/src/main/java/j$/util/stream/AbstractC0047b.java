package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0047b extends AbstractC0167z0 implements BaseStream {

    /* renamed from: h, reason: collision with root package name */
    private final AbstractC0047b f9394h;

    /* renamed from: i, reason: collision with root package name */
    private final AbstractC0047b f9395i;

    /* renamed from: j, reason: collision with root package name */
    protected final int f9396j;

    /* renamed from: k, reason: collision with root package name */
    private AbstractC0047b f9397k;
    private int l;

    /* renamed from: m, reason: collision with root package name */
    private int f9398m;

    /* renamed from: n, reason: collision with root package name */
    private Spliterator f9399n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f9400o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f9401p;

    /* renamed from: q, reason: collision with root package name */
    private Runnable f9402q;
    private boolean r;

    abstract L0 M0(AbstractC0047b abstractC0047b, Spliterator spliterator, boolean z, IntFunction intFunction);

    abstract boolean N0(Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2);

    abstract EnumC0076g3 O0();

    abstract boolean T0();

    abstract InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2);

    abstract Spliterator X0(AbstractC0047b abstractC0047b, Supplier supplier, boolean z);

    AbstractC0047b(Spliterator spliterator, int i10, boolean z) {
        this.f9395i = null;
        this.f9399n = spliterator;
        this.f9394h = this;
        int i11 = EnumC0071f3.f9432g & i10;
        this.f9396j = i11;
        this.f9398m = ((i11 << 1) ^ (-1)) & EnumC0071f3.l;
        this.l = 0;
        this.r = z;
    }

    AbstractC0047b(AbstractC0047b abstractC0047b, int i10) {
        if (abstractC0047b.f9400o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC0047b.f9400o = true;
        abstractC0047b.f9397k = this;
        this.f9395i = abstractC0047b;
        this.f9396j = EnumC0071f3.f9433h & i10;
        this.f9398m = EnumC0071f3.j(i10, abstractC0047b.f9398m);
        AbstractC0047b abstractC0047b2 = abstractC0047b.f9394h;
        this.f9394h = abstractC0047b2;
        if (T0()) {
            abstractC0047b2.f9401p = true;
        }
        this.l = abstractC0047b.l + 1;
    }

    final Object K0(O3 o32) {
        if (this.f9400o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f9400o = true;
        if (this.f9394h.r) {
            return o32.y(this, V0(o32.l()));
        }
        return o32.f(this, V0(o32.l()));
    }

    final L0 L0(IntFunction intFunction) {
        if (this.f9400o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f9400o = true;
        if (this.f9394h.r && this.f9395i != null && T0()) {
            this.l = 0;
            AbstractC0047b abstractC0047b = this.f9395i;
            return R0(abstractC0047b.V0(0), abstractC0047b, intFunction);
        }
        return l0(V0(0), true, intFunction);
    }

    final Spliterator W0() {
        AbstractC0047b abstractC0047b = this.f9394h;
        if (this != abstractC0047b) {
            throw new IllegalStateException();
        }
        if (this.f9400o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f9400o = true;
        Spliterator spliterator = abstractC0047b.f9399n;
        if (spliterator != null) {
            abstractC0047b.f9399n = null;
            return spliterator;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    public final BaseStream sequential() {
        this.f9394h.r = false;
        return this;
    }

    public final BaseStream parallel() {
        this.f9394h.r = true;
        return this;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f9400o = true;
        this.f9399n = null;
        AbstractC0047b abstractC0047b = this.f9394h;
        Runnable runnable = abstractC0047b.f9402q;
        if (runnable != null) {
            abstractC0047b.f9402q = null;
            runnable.run();
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream onClose(Runnable runnable) {
        if (this.f9400o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        Objects.requireNonNull(runnable);
        AbstractC0047b abstractC0047b = this.f9394h;
        Runnable runnable2 = abstractC0047b.f9402q;
        if (runnable2 != null) {
            runnable = new K3(0, runnable2, runnable);
        }
        abstractC0047b.f9402q = runnable;
        return this;
    }

    public Spliterator spliterator() {
        if (this.f9400o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f9400o = true;
        AbstractC0047b abstractC0047b = this.f9394h;
        if (this == abstractC0047b) {
            Spliterator spliterator = abstractC0047b.f9399n;
            if (spliterator != null) {
                abstractC0047b.f9399n = null;
                return spliterator;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return X0(this, new C0042a(this, 0), abstractC0047b.r);
    }

    final /* synthetic */ Spliterator Q0() {
        return V0(0);
    }

    @Override // j$.util.stream.BaseStream
    public final boolean isParallel() {
        return this.f9394h.r;
    }

    @Override // j$.util.stream.AbstractC0167z0
    final L0 l0(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.f9394h.r) {
            return M0(this, spliterator, z, intFunction);
        }
        D0 D0 = D0(m0(spliterator), intFunction);
        H0(spliterator, D0);
        return D0.a();
    }

    private Spliterator V0(int i10) {
        int i11;
        int i12;
        AbstractC0047b abstractC0047b = this.f9394h;
        Spliterator spliteratorS0 = abstractC0047b.f9399n;
        if (spliteratorS0 != null) {
            abstractC0047b.f9399n = null;
            if (abstractC0047b.r && abstractC0047b.f9401p) {
                AbstractC0047b abstractC0047b2 = abstractC0047b.f9397k;
                int i13 = 1;
                while (abstractC0047b != this) {
                    int i14 = abstractC0047b2.f9396j;
                    if (abstractC0047b2.T0()) {
                        if (EnumC0071f3.SHORT_CIRCUIT.n(i14)) {
                            i14 &= EnumC0071f3.f9444u ^ (-1);
                        }
                        spliteratorS0 = abstractC0047b2.S0(abstractC0047b, spliteratorS0);
                        if (spliteratorS0.hasCharacteristics(64)) {
                            i11 = (EnumC0071f3.f9443t ^ (-1)) & i14;
                            i12 = EnumC0071f3.f9442s;
                        } else {
                            i11 = (EnumC0071f3.f9442s ^ (-1)) & i14;
                            i12 = EnumC0071f3.f9443t;
                        }
                        i14 = i11 | i12;
                        i13 = 0;
                    }
                    abstractC0047b2.l = i13;
                    abstractC0047b2.f9398m = EnumC0071f3.j(i14, abstractC0047b.f9398m);
                    i13++;
                    AbstractC0047b abstractC0047b3 = abstractC0047b2;
                    abstractC0047b2 = abstractC0047b2.f9397k;
                    abstractC0047b = abstractC0047b3;
                }
            }
            if (i10 != 0) {
                this.f9398m = EnumC0071f3.j(i10, this.f9398m);
            }
            return spliteratorS0;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    @Override // j$.util.stream.AbstractC0167z0
    final EnumC0076g3 s0() {
        AbstractC0047b abstractC0047b = this;
        while (abstractC0047b.l > 0) {
            abstractC0047b = abstractC0047b.f9395i;
        }
        return abstractC0047b.O0();
    }

    @Override // j$.util.stream.AbstractC0167z0
    final long m0(Spliterator spliterator) {
        if (EnumC0071f3.SIZED.n(this.f9398m)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.stream.AbstractC0167z0
    final InterfaceC0125q2 H0(Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2) {
        h0(spliterator, I0((InterfaceC0125q2) Objects.requireNonNull(interfaceC0125q2)));
        return interfaceC0125q2;
    }

    @Override // j$.util.stream.AbstractC0167z0
    final void h0(Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2) {
        Objects.requireNonNull(interfaceC0125q2);
        if (!EnumC0071f3.SHORT_CIRCUIT.n(this.f9398m)) {
            interfaceC0125q2.n(spliterator.getExactSizeIfKnown());
            spliterator.forEachRemaining(interfaceC0125q2);
            interfaceC0125q2.m();
            return;
        }
        i0(spliterator, interfaceC0125q2);
    }

    @Override // j$.util.stream.AbstractC0167z0
    final boolean i0(Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2) {
        AbstractC0047b abstractC0047b = this;
        while (abstractC0047b.l > 0) {
            abstractC0047b = abstractC0047b.f9395i;
        }
        interfaceC0125q2.n(spliterator.getExactSizeIfKnown());
        boolean zN0 = abstractC0047b.N0(spliterator, interfaceC0125q2);
        interfaceC0125q2.m();
        return zN0;
    }

    @Override // j$.util.stream.AbstractC0167z0
    final int t0() {
        return this.f9398m;
    }

    final boolean P0() {
        return EnumC0071f3.ORDERED.n(this.f9398m);
    }

    @Override // j$.util.stream.AbstractC0167z0
    final InterfaceC0125q2 I0(InterfaceC0125q2 interfaceC0125q2) {
        Objects.requireNonNull(interfaceC0125q2);
        for (AbstractC0047b abstractC0047b = this; abstractC0047b.l > 0; abstractC0047b = abstractC0047b.f9395i) {
            interfaceC0125q2 = abstractC0047b.U0(abstractC0047b.f9395i.f9398m, interfaceC0125q2);
        }
        return interfaceC0125q2;
    }

    @Override // j$.util.stream.AbstractC0167z0
    final Spliterator J0(Spliterator spliterator) {
        return this.l == 0 ? spliterator : X0(this, new C0042a(spliterator, 6), this.f9394h.r);
    }

    L0 R0(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    Spliterator S0(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        return R0(spliterator, abstractC0047b, new C0087j(18)).spliterator();
    }
}
