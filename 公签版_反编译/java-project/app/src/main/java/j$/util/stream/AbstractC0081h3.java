package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.BooleanSupplier;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.h3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0081h3 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    final boolean f9459a;

    /* renamed from: b, reason: collision with root package name */
    final AbstractC0047b f9460b;

    /* renamed from: c, reason: collision with root package name */
    private Supplier f9461c;

    /* renamed from: d, reason: collision with root package name */
    Spliterator f9462d;

    /* renamed from: e, reason: collision with root package name */
    InterfaceC0125q2 f9463e;

    /* renamed from: f, reason: collision with root package name */
    BooleanSupplier f9464f;

    /* renamed from: g, reason: collision with root package name */
    long f9465g;

    /* renamed from: h, reason: collision with root package name */
    AbstractC0057d f9466h;

    /* renamed from: i, reason: collision with root package name */
    boolean f9467i;

    abstract void d();

    abstract AbstractC0081h3 e(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return j$.util.B.e(this, i10);
    }

    AbstractC0081h3(AbstractC0047b abstractC0047b, Supplier supplier, boolean z) {
        this.f9460b = abstractC0047b;
        this.f9461c = supplier;
        this.f9462d = null;
        this.f9459a = z;
    }

    AbstractC0081h3(AbstractC0047b abstractC0047b, Spliterator spliterator, boolean z) {
        this.f9460b = abstractC0047b;
        this.f9461c = null;
        this.f9462d = spliterator;
        this.f9459a = z;
    }

    final void c() {
        if (this.f9462d == null) {
            this.f9462d = (Spliterator) this.f9461c.get();
            this.f9461c = null;
        }
    }

    final boolean a() {
        AbstractC0057d abstractC0057d = this.f9466h;
        if (abstractC0057d == null) {
            if (this.f9467i) {
                return false;
            }
            c();
            d();
            this.f9465g = 0L;
            this.f9463e.n(this.f9462d.getExactSizeIfKnown());
            return b();
        }
        long j10 = this.f9465g + 1;
        this.f9465g = j10;
        boolean z = j10 < abstractC0057d.count();
        if (z) {
            return z;
        }
        this.f9465g = 0L;
        this.f9466h.clear();
        return b();
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        if (!this.f9459a || this.f9466h != null || this.f9467i) {
            return null;
        }
        c();
        Spliterator spliteratorTrySplit = this.f9462d.trySplit();
        if (spliteratorTrySplit == null) {
            return null;
        }
        return e(spliteratorTrySplit);
    }

    private boolean b() {
        while (this.f9466h.count() == 0) {
            if (this.f9463e.p() || !this.f9464f.getAsBoolean()) {
                if (this.f9467i) {
                    return false;
                }
                this.f9463e.m();
                this.f9467i = true;
            }
        }
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        c();
        return this.f9462d.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        c();
        if (EnumC0071f3.SIZED.n(this.f9460b.t0())) {
            return this.f9462d.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        c();
        int iW = EnumC0071f3.w(this.f9460b.t0()) & EnumC0071f3.f9431f;
        return (iW & 64) != 0 ? (iW & (-16449)) | (this.f9462d.characteristics() & 16448) : iW;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (j$.util.B.e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f9462d);
    }
}
