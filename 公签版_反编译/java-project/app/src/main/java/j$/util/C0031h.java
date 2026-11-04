package j$.util;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0031h implements DoubleConsumer {

    /* renamed from: a, reason: collision with root package name */
    private double f9164a;

    /* renamed from: b, reason: collision with root package name */
    private double f9165b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d10) {
        this.count++;
        this.f9165b += d10;
        c(d10);
        this.min = Math.min(this.min, d10);
        this.max = Math.max(this.max, d10);
    }

    public final void b(C0031h c0031h) {
        this.count += c0031h.count;
        this.f9165b += c0031h.f9165b;
        c(c0031h.sum);
        c(c0031h.f9164a);
        this.min = Math.min(this.min, c0031h.min);
        this.max = Math.max(this.max, c0031h.max);
    }

    private void c(double d10) {
        double d11 = d10 - this.f9164a;
        double d12 = this.sum;
        double d13 = d12 + d11;
        this.f9164a = (d13 - d12) - d11;
        this.sum = d13;
    }

    public final String toString() {
        double d10;
        String simpleName = C0031h.class.getSimpleName();
        Long lValueOf = Long.valueOf(this.count);
        double d11 = this.sum + this.f9164a;
        if (Double.isNaN(d11) && Double.isInfinite(this.f9165b)) {
            d11 = this.f9165b;
        }
        Double dValueOf = Double.valueOf(d11);
        Double dValueOf2 = Double.valueOf(this.min);
        if (this.count > 0) {
            double d12 = this.sum + this.f9164a;
            if (Double.isNaN(d12) && Double.isInfinite(this.f9165b)) {
                d12 = this.f9165b;
            }
            double d13 = this.count;
            Double.isNaN(d13);
            d10 = d12 / d13;
        } else {
            d10 = 0.0d;
        }
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", simpleName, lValueOf, dValueOf, dValueOf2, Double.valueOf(d10), Double.valueOf(this.max));
    }
}
