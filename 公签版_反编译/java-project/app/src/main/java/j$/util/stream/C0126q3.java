package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.q3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0126q3 extends AbstractC0081h3 implements j$.util.F {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.a(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.g(this, consumer);
    }

    C0126q3(AbstractC0047b abstractC0047b, Supplier supplier, boolean z) {
        super(abstractC0047b, supplier, z);
    }

    C0126q3(AbstractC0047b abstractC0047b, Spliterator spliterator, boolean z) {
        super(abstractC0047b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC0081h3
    final AbstractC0081h3 e(Spliterator spliterator) {
        return new C0126q3(this.f9460b, spliterator, this.f9459a);
    }

    @Override // j$.util.stream.AbstractC0081h3
    final void d() {
        T2 t22 = new T2();
        this.f9466h = t22;
        Objects.requireNonNull(t22);
        this.f9463e = this.f9460b.I0(new C0121p3(t22, 0));
        this.f9464f = new C0042a(this, 2);
    }

    @Override // j$.util.stream.AbstractC0081h3, j$.util.Spliterator
    public final j$.util.F trySplit() {
        return (j$.util.F) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0081h3, j$.util.Spliterator
    public final j$.util.O trySplit() {
        return (j$.util.F) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0081h3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.F) super.trySplit();
    }

    @Override // j$.util.O
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        double d10;
        Objects.requireNonNull(doubleConsumer);
        boolean zA = a();
        if (zA) {
            T2 t22 = (T2) this.f9466h;
            long j10 = this.f9465g;
            int iU = t22.u(j10);
            if (t22.f9411c == 0 && iU == 0) {
                d10 = ((double[]) t22.f9386e)[(int) j10];
            } else {
                d10 = ((double[][]) t22.f9387f)[iU][(int) (j10 - t22.f9412d[iU])];
            }
            doubleConsumer.accept(d10);
        }
        return zA;
    }

    @Override // j$.util.O
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        if (this.f9466h == null && !this.f9467i) {
            Objects.requireNonNull(doubleConsumer);
            c();
            Objects.requireNonNull(doubleConsumer);
            C0121p3 c0121p3 = new C0121p3(doubleConsumer, 1);
            this.f9460b.H0(this.f9462d, c0121p3);
            this.f9467i = true;
            return;
        }
        while (tryAdvance(doubleConsumer)) {
        }
    }
}
