package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.u3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0145u3 extends AbstractC0081h3 implements j$.util.L {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.i(this, consumer);
    }

    C0145u3(AbstractC0047b abstractC0047b, Supplier supplier, boolean z) {
        super(abstractC0047b, supplier, z);
    }

    C0145u3(AbstractC0047b abstractC0047b, Spliterator spliterator, boolean z) {
        super(abstractC0047b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC0081h3
    final AbstractC0081h3 e(Spliterator spliterator) {
        return new C0145u3(this.f9460b, spliterator, this.f9459a);
    }

    @Override // j$.util.stream.AbstractC0081h3
    final void d() {
        X2 x22 = new X2();
        this.f9466h = x22;
        Objects.requireNonNull(x22);
        this.f9463e = this.f9460b.I0(new C0140t3(x22, 0));
        this.f9464f = new C0042a(this, 4);
    }

    @Override // j$.util.stream.AbstractC0081h3, j$.util.Spliterator
    public final j$.util.L trySplit() {
        return (j$.util.L) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0081h3, j$.util.Spliterator
    public final j$.util.O trySplit() {
        return (j$.util.L) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0081h3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.L) super.trySplit();
    }

    @Override // j$.util.O
    public final boolean tryAdvance(LongConsumer longConsumer) {
        long j10;
        Objects.requireNonNull(longConsumer);
        boolean zA = a();
        if (zA) {
            X2 x22 = (X2) this.f9466h;
            long j11 = this.f9465g;
            int iU = x22.u(j11);
            if (x22.f9411c == 0 && iU == 0) {
                j10 = ((long[]) x22.f9386e)[(int) j11];
            } else {
                j10 = ((long[][]) x22.f9387f)[iU][(int) (j11 - x22.f9412d[iU])];
            }
            longConsumer.accept(j10);
        }
        return zA;
    }

    @Override // j$.util.O
    public final void forEachRemaining(LongConsumer longConsumer) {
        if (this.f9466h == null && !this.f9467i) {
            Objects.requireNonNull(longConsumer);
            c();
            Objects.requireNonNull(longConsumer);
            C0140t3 c0140t3 = new C0140t3(longConsumer, 1);
            this.f9460b.H0(this.f9462d, c0140t3);
            this.f9467i = true;
            return;
        }
        while (tryAdvance(longConsumer)) {
        }
    }
}
