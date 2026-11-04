package o0;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: k, reason: collision with root package name */
    public static final p f11475k;

    /* renamed from: a, reason: collision with root package name */
    public final float f11476a;

    /* renamed from: b, reason: collision with root package name */
    public final float f11477b;

    /* renamed from: c, reason: collision with root package name */
    public final float f11478c;

    /* renamed from: d, reason: collision with root package name */
    public final float f11479d;

    /* renamed from: e, reason: collision with root package name */
    public final float f11480e;

    /* renamed from: f, reason: collision with root package name */
    public final float f11481f;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f11482g;

    /* renamed from: h, reason: collision with root package name */
    public final float f11483h;

    /* renamed from: i, reason: collision with root package name */
    public final float f11484i;

    /* renamed from: j, reason: collision with root package name */
    public final float f11485j;

    static {
        float[] fArr = b.f11450c;
        double dN = b.n();
        Double.isNaN(dN);
        float f10 = (float) ((dN * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = b.f11448a;
        float f11 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f12 = fArr3[0] * f11;
        float f13 = fArr[1];
        float f14 = (fArr3[1] * f13) + f12;
        float f15 = fArr[2];
        float f16 = (fArr3[2] * f15) + f14;
        float[] fArr4 = fArr2[1];
        float f17 = (fArr4[2] * f15) + (fArr4[1] * f13) + (fArr4[0] * f11);
        float[] fArr5 = fArr2[2];
        float f18 = (f15 * fArr5[2]) + (f13 * fArr5[1]) + (f11 * fArr5[0]);
        float f19 = ((double) 1.0f) >= 0.9d ? 0.69f : 0.655f;
        float fExp = (1.0f - (((float) Math.exp(((-f10) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d10 = fExp;
        if (d10 > 1.0d) {
            fExp = 1.0f;
        } else if (d10 < 0.0d) {
            fExp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f16) * fExp) + 1.0f) - fExp, (((100.0f / f17) * fExp) + 1.0f) - fExp, (((100.0f / f18) * fExp) + 1.0f) - fExp};
        float f20 = 1.0f / ((5.0f * f10) + 1.0f);
        float f21 = f20 * f20 * f20 * f20;
        float f22 = 1.0f - f21;
        double d11 = f10;
        Double.isNaN(d11);
        float fCbrt = (0.1f * f22 * f22 * ((float) Math.cbrt(d11 * 5.0d))) + (f21 * f10);
        float fN = b.n() / fArr[1];
        double d12 = fN;
        float fSqrt = ((float) Math.sqrt(d12)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d12, 0.2d));
        double d13 = fArr6[0] * fCbrt * f16;
        Double.isNaN(d13);
        float fPow2 = (float) Math.pow(d13 / 100.0d, 0.42d);
        double d14 = fArr6[1] * fCbrt * f17;
        Double.isNaN(d14);
        float fPow3 = (float) Math.pow(d14 / 100.0d, 0.42d);
        double d15 = fArr6[2] * fCbrt * f18;
        Double.isNaN(d15);
        float[] fArr7 = {fPow2, fPow3, (float) Math.pow(d15 / 100.0d, 0.42d)};
        float f23 = fArr7[0];
        float f24 = (f23 * 400.0f) / (f23 + 27.13f);
        float f25 = fArr7[1];
        float f26 = (f25 * 400.0f) / (f25 + 27.13f);
        float f27 = fArr7[2];
        float[] fArr8 = {f24, f26, (400.0f * f27) / (f27 + 27.13f)};
        f11475k = new p(fN, ((fArr8[2] * 0.05f) + (fArr8[0] * 2.0f) + fArr8[1]) * fPow, fPow, fPow, f19, 1.0f, fArr6, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    public p(float f10, float f11, float f12, float f13, float f14, float f15, float[] fArr, float f16, float f17, float f18) {
        this.f11481f = f10;
        this.f11476a = f11;
        this.f11477b = f12;
        this.f11478c = f13;
        this.f11479d = f14;
        this.f11480e = f15;
        this.f11482g = fArr;
        this.f11483h = f16;
        this.f11484i = f17;
        this.f11485j = f18;
    }
}
