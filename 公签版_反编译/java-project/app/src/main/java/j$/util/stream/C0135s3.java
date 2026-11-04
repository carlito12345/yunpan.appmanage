package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.s3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0135s3 extends AbstractC0081h3 implements j$.util.I {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.h(this, consumer);
    }

    C0135s3(AbstractC0047b abstractC0047b, Supplier supplier, boolean z) {
        super(abstractC0047b, supplier, z);
    }

    C0135s3(AbstractC0047b abstractC0047b, Spliterator spliterator, boolean z) {
        super(abstractC0047b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC0081h3
    final AbstractC0081h3 e(Spliterator spliterator) {
        return new C0135s3(this.f9460b, spliterator, this.f9459a);
    }

    @Override // j$.util.stream.AbstractC0081h3
    final void d() {
        V2 v22 = new V2();
        this.f9466h = v22;
        Objects.requireNonNull(v22);
        this.f9463e = this.f9460b.I0(new C0130r3(v22, 0));
        this.f9464f = new C0042a(this, 3);
    }

    @Override // j$.util.stream.AbstractC0081h3, j$.util.Spliterator
    public final j$.util.I trySplit() {
        return (j$.util.I) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0081h3, j$.util.Spliterator
    public final j$.util.O trySplit() {
        return (j$.util.I) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC0081h3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.I) super.trySplit();
    }

    @Override // j$.util.O
    public final boolean tryAdvance(IntConsumer intConsumer) {
        int i10;
        Objects.requireNonNull(intConsumer);
        boolean zA = a();
        if (zA) {
            V2 v22 = (V2) this.f9466h;
            long j10 = this.f9465g;
            int iU = v22.u(j10);
            if (v22.f9411c == 0 && iU == 0) {
                i10 = ((int[]) v22.f9386e)[(int) j10];
            } else {
                i10 = ((int[][]) v22.f9387f)[iU][(int) (j10 - v22.f9412d[iU])];
            }
            intConsumer.accept(i10);
        }
        return zA;
    }

    @Override // j$.util.O
    public final void forEachRemaining(IntConsumer intConsumer) {
        if (this.f9466h == null && !this.f9467i) {
            Objects.requireNonNull(intConsumer);
            c();
            Objects.requireNonNull(intConsumer);
            C0130r3 c0130r3 = new C0130r3(intConsumer, 1);
            this.f9460b.H0(this.f9462d, c0130r3);
            this.f9467i = true;
            return;
        }
        while (tryAdvance(intConsumer)) {
        }
    }
}
