package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class J3 extends AbstractC0081h3 {
    J3(AbstractC0047b abstractC0047b, Supplier supplier, boolean z) {
        super(abstractC0047b, supplier, z);
    }

    J3(AbstractC0047b abstractC0047b, Spliterator spliterator, boolean z) {
        super(abstractC0047b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC0081h3
    final AbstractC0081h3 e(Spliterator spliterator) {
        return new J3(this.f9460b, spliterator, this.f9459a);
    }

    @Override // j$.util.stream.AbstractC0081h3
    final void d() {
        C0046a3 c0046a3 = new C0046a3();
        this.f9466h = c0046a3;
        Objects.requireNonNull(c0046a3);
        this.f9463e = this.f9460b.I0(new I3(c0046a3, 0));
        this.f9464f = new C0042a(this, 5);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean zA = a();
        if (zA) {
            C0046a3 c0046a3 = (C0046a3) this.f9466h;
            long j10 = this.f9465g;
            if (c0046a3.f9411c != 0) {
                if (j10 >= c0046a3.count()) {
                    throw new IndexOutOfBoundsException(Long.toString(j10));
                }
                for (int i10 = 0; i10 <= c0046a3.f9411c; i10++) {
                    long j11 = c0046a3.f9412d[i10];
                    Object[] objArr = c0046a3.f9393f[i10];
                    if (j10 < objArr.length + j11) {
                        obj = objArr[(int) (j10 - j11)];
                    }
                }
                throw new IndexOutOfBoundsException(Long.toString(j10));
            }
            if (j10 < c0046a3.f9410b) {
                obj = c0046a3.f9392e[(int) j10];
            } else {
                throw new IndexOutOfBoundsException(Long.toString(j10));
            }
            consumer.q(obj);
        }
        return zA;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f9466h == null && !this.f9467i) {
            Objects.requireNonNull(consumer);
            c();
            Objects.requireNonNull(consumer);
            I3 i32 = new I3(consumer, 1);
            this.f9460b.H0(this.f9462d, i32);
            this.f9467i = true;
            return;
        }
        while (tryAdvance(consumer)) {
        }
    }
}
