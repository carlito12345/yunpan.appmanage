package q;

/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: d, reason: collision with root package name */
    public static i0 f12842d;

    /* renamed from: a, reason: collision with root package name */
    public long f12843a;

    /* renamed from: b, reason: collision with root package name */
    public long f12844b;

    /* renamed from: c, reason: collision with root package name */
    public int f12845c;

    public final void a(long j10, double d10, double d11) {
        float f10 = (j10 - 946728000000L) / 8.64E7f;
        double d12 = (0.01720197f * f10) + 6.24006f;
        double dSin = Math.sin(d12) * 0.03341960161924362d;
        Double.isNaN(d12);
        double dSin2 = (Math.sin(r4 * 3.0f) * 5.236000106378924E-6d) + (Math.sin(2.0f * r4) * 3.4906598739326E-4d) + dSin + d12 + 1.796593063d + 3.141592653589793d;
        Double.isNaN(f10 - 9.0E-4f);
        double dRound = Math.round(r11 - r7) + 9.0E-4f;
        Double.isNaN(dRound);
        double dSin3 = (Math.sin(2.0d * dSin2) * (-0.0069d)) + (Math.sin(d12) * 0.0053d) + dRound + ((-d11) / 360.0d);
        double dAsin = Math.asin(Math.sin(0.4092797040939331d) * Math.sin(dSin2));
        double d13 = 0.01745329238474369d * d10;
        double dSin4 = (Math.sin(-0.10471975803375244d) - (Math.sin(dAsin) * Math.sin(d13))) / (Math.cos(dAsin) * Math.cos(d13));
        if (dSin4 >= 1.0d) {
            this.f12845c = 1;
            this.f12843a = -1L;
            this.f12844b = -1L;
            return;
        }
        if (dSin4 <= -1.0d) {
            this.f12845c = 0;
            this.f12843a = -1L;
            this.f12844b = -1L;
            return;
        }
        double dAcos = (float) (Math.acos(dSin4) / 6.283185307179586d);
        Double.isNaN(dAcos);
        this.f12843a = Math.round((dSin3 + dAcos) * 8.64E7d) + 946728000000L;
        Double.isNaN(dAcos);
        long jRound = Math.round((dSin3 - dAcos) * 8.64E7d) + 946728000000L;
        this.f12844b = jRound;
        if (jRound >= j10 || this.f12843a <= j10) {
            this.f12845c = 1;
        } else {
            this.f12845c = 0;
        }
    }
}
