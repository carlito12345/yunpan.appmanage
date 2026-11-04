package androidx.media3.exoplayer.video;

import android.util.Range;

/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public long f1851a;

    /* renamed from: b, reason: collision with root package name */
    public long f1852b;

    /* renamed from: c, reason: collision with root package name */
    public double f1853c;

    /* renamed from: d, reason: collision with root package name */
    public Range f1854d;

    public a0() {
        Double dValueOf = Double.valueOf(0.0d);
        double d10 = 1.0f;
        Double.isNaN(d10);
        Range range = new Range(dValueOf, Double.valueOf(1.0d / d10));
        this.f1854d = range;
        this.f1853c = ((Double) range.getUpper()).doubleValue();
        this.f1851a = -9223372036854775807L;
        this.f1852b = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(long j10, long j11) {
        double dDoubleValue;
        a9.o.k(j10 != -9223372036854775807L);
        a9.o.k(j11 != -9223372036854775807L);
        long j12 = this.f1851a;
        if (j12 != -9223372036854775807L) {
            long j13 = this.f1852b;
            if (j13 == -9223372036854775807L || j10 == j12) {
                dDoubleValue = ((Double) this.f1854d.getUpper()).doubleValue();
            } else {
                double d10 = j11 - j13;
                double d11 = j10 - j12;
                Double.isNaN(d10);
                Double.isNaN(d11);
                dDoubleValue = d10 / d11;
            }
        }
        this.f1853c = (((Double) this.f1854d.clamp(Double.valueOf(dDoubleValue))).doubleValue() * 0.20000000298023224d) + (this.f1853c * 0.800000011920929d);
        this.f1851a = j10;
        this.f1852b = j11;
    }

    public final void b() {
        this.f1853c = ((Double) this.f1854d.getUpper()).doubleValue();
        this.f1851a = -9223372036854775807L;
        this.f1852b = -9223372036854775807L;
    }

    public final void c(float f10) {
        a9.o.k(f10 > 0.0f);
        Double dValueOf = Double.valueOf(0.0d);
        double d10 = f10;
        Double.isNaN(d10);
        this.f1854d = new Range(dValueOf, Double.valueOf(1.0d / d10));
        b();
    }
}
