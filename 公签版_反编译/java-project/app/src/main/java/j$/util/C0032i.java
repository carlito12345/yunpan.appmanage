package j$.util;

import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;

/* renamed from: j$.util.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0032i implements IntConsumer {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i10) {
        this.count++;
        this.sum += i10;
        this.min = Math.min(this.min, i10);
        this.max = Math.max(this.max, i10);
    }

    public final void b(C0032i c0032i) {
        this.count += c0032i.count;
        this.sum += c0032i.sum;
        this.min = Math.min(this.min, c0032i.min);
        this.max = Math.max(this.max, c0032i.max);
    }

    public final String toString() {
        double d10;
        String simpleName = C0032i.class.getSimpleName();
        Long lValueOf = Long.valueOf(this.count);
        Long lValueOf2 = Long.valueOf(this.sum);
        Integer numValueOf = Integer.valueOf(this.min);
        long j10 = this.count;
        if (j10 > 0) {
            double d11 = this.sum;
            double d12 = j10;
            Double.isNaN(d11);
            Double.isNaN(d12);
            d10 = d11 / d12;
        } else {
            d10 = 0.0d;
        }
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", simpleName, lValueOf, lValueOf2, numValueOf, Double.valueOf(d10), Integer.valueOf(this.max));
    }
}
