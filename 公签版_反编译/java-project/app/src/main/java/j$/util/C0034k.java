package j$.util;

import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0034k implements LongConsumer, IntConsumer {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i10) {
        accept(i10);
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j10) {
        this.count++;
        this.sum += j10;
        this.min = Math.min(this.min, j10);
        this.max = Math.max(this.max, j10);
    }

    public final void b(C0034k c0034k) {
        this.count += c0034k.count;
        this.sum += c0034k.sum;
        this.min = Math.min(this.min, c0034k.min);
        this.max = Math.max(this.max, c0034k.max);
    }

    public final String toString() {
        double d10;
        String simpleName = C0034k.class.getSimpleName();
        Long lValueOf = Long.valueOf(this.count);
        Long lValueOf2 = Long.valueOf(this.sum);
        Long lValueOf3 = Long.valueOf(this.min);
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
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", simpleName, lValueOf, lValueOf2, lValueOf3, Double.valueOf(d10), Long.valueOf(this.max));
    }
}
