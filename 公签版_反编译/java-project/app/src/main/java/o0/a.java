package o0;

import android.graphics.Color;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final float f11442a;

    /* renamed from: b, reason: collision with root package name */
    public final float f11443b;

    /* renamed from: c, reason: collision with root package name */
    public final float f11444c;

    /* renamed from: d, reason: collision with root package name */
    public final float f11445d;

    /* renamed from: e, reason: collision with root package name */
    public final float f11446e;

    /* renamed from: f, reason: collision with root package name */
    public final float f11447f;

    public a(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.f11442a = f10;
        this.f11443b = f11;
        this.f11444c = f12;
        this.f11445d = f13;
        this.f11446e = f14;
        this.f11447f = f15;
    }

    public static a a(int i10) {
        p pVar = p.f11475k;
        float f10 = b.f(Color.red(i10));
        float f11 = b.f(Color.green(i10));
        float f12 = b.f(Color.blue(i10));
        float[][] fArr = b.f11451d;
        float[] fArr2 = fArr[0];
        float f13 = (fArr2[2] * f12) + (fArr2[1] * f11) + (fArr2[0] * f10);
        float[] fArr3 = fArr[1];
        float f14 = (fArr3[2] * f12) + (fArr3[1] * f11) + (fArr3[0] * f10);
        float[] fArr4 = fArr[2];
        float f15 = (f12 * fArr4[2]) + (f11 * fArr4[1]) + (f10 * fArr4[0]);
        float[][] fArr5 = b.f11448a;
        float[] fArr6 = fArr5[0];
        float f16 = (fArr6[2] * f15) + (fArr6[1] * f14) + (fArr6[0] * f13);
        float[] fArr7 = fArr5[1];
        float f17 = (fArr7[2] * f15) + (fArr7[1] * f14) + (fArr7[0] * f13);
        float[] fArr8 = fArr5[2];
        float f18 = (f15 * fArr8[2]) + (f14 * fArr8[1]) + (f13 * fArr8[0]);
        float[] fArr9 = pVar.f11482g;
        float f19 = fArr9[0] * f16;
        float f20 = fArr9[1] * f17;
        float f21 = fArr9[2] * f18;
        float fAbs = Math.abs(f19);
        float f22 = pVar.f11483h;
        double d10 = fAbs * f22;
        Double.isNaN(d10);
        float fPow = (float) Math.pow(d10 / 100.0d, 0.42d);
        double dAbs = Math.abs(f20) * f22;
        Double.isNaN(dAbs);
        float fPow2 = (float) Math.pow(dAbs / 100.0d, 0.42d);
        double dAbs2 = Math.abs(f21) * f22;
        Double.isNaN(dAbs2);
        float fPow3 = (float) Math.pow(dAbs2 / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f19) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f20) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f21) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d11 = fSignum;
        Double.isNaN(d11);
        double d12 = fSignum2;
        Double.isNaN(d12);
        double d13 = fSignum3;
        Double.isNaN(d13);
        float f23 = ((float) (((d12 * (-12.0d)) + (d11 * 11.0d)) + d13)) / 11.0f;
        double d14 = fSignum + fSignum2;
        Double.isNaN(d13);
        Double.isNaN(d14);
        float f24 = ((float) (d14 - (d13 * 2.0d))) / 9.0f;
        float f25 = fSignum2 * 20.0f;
        float f26 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f25)) / 20.0f;
        float f27 = (((fSignum * 40.0f) + f25) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f24, f23)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f28 = fAtan2;
        float f29 = (3.1415927f * f28) / 180.0f;
        float f30 = f27 * pVar.f11477b;
        float f31 = pVar.f11476a;
        float f32 = pVar.f11479d;
        float fPow4 = ((float) Math.pow(f30 / f31, pVar.f11485j * f32)) * 100.0f;
        Math.sqrt(fPow4 / 100.0f);
        float f33 = f31 + 4.0f;
        Double.isNaN(((double) f28) < 20.14d ? 360.0f + f28 : f28);
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, pVar.f11481f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((r7 * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * pVar.f11480e) * pVar.f11478c) * ((float) Math.sqrt((f24 * f24) + (f23 * f23)))) / (f26 + 0.305f), 0.9d));
        double d15 = fPow4;
        Double.isNaN(d15);
        float fSqrt = fPow5 * ((float) Math.sqrt(d15 / 100.0d));
        float f34 = pVar.f11484i * fSqrt;
        Math.sqrt((fPow5 * f32) / f33);
        float f35 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((f34 * 0.0228f) + 1.0f)) * 43.85965f;
        double d16 = f29;
        return new a(f28, fSqrt, fPow4, f35, fLog * ((float) Math.cos(d16)), fLog * ((float) Math.sin(d16)));
    }

    public static a b(float f10, float f11, float f12) {
        p pVar = p.f11475k;
        float f13 = pVar.f11479d;
        double d10 = f10;
        Double.isNaN(d10);
        Math.sqrt(d10 / 100.0d);
        float f14 = pVar.f11476a + 4.0f;
        float f15 = pVar.f11484i * f11;
        Math.sqrt(((f11 / ((float) Math.sqrt(r1))) * pVar.f11479d) / f14);
        float f16 = (1.7f * f10) / ((0.007f * f10) + 1.0f);
        double d11 = f15;
        Double.isNaN(d11);
        float fLog = ((float) Math.log((d11 * 0.0228d) + 1.0d)) * 43.85965f;
        double d12 = (3.1415927f * f12) / 180.0f;
        return new a(f12, f11, f10, f16, fLog * ((float) Math.cos(d12)), fLog * ((float) Math.sin(d12)));
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int c(p pVar) {
        float fSqrt;
        float f10 = this.f11443b;
        double d10 = f10;
        float f11 = this.f11444c;
        if (d10 != 0.0d) {
            double d11 = f11;
            if (d11 == 0.0d) {
                fSqrt = 0.0f;
            } else {
                Double.isNaN(d11);
                fSqrt = f10 / ((float) Math.sqrt(d11 / 100.0d));
            }
        }
        double d12 = fSqrt;
        double dPow = Math.pow(1.64d - Math.pow(0.29d, pVar.f11481f), 0.73d);
        Double.isNaN(d12);
        float fPow = (float) Math.pow(d12 / dPow, 1.1111111111111112d);
        double d13 = (this.f11442a * 3.1415927f) / 180.0f;
        Double.isNaN(d13);
        float fCos = ((float) (Math.cos(2.0d + d13) + 3.8d)) * 0.25f;
        double d14 = f11;
        Double.isNaN(d14);
        double d15 = pVar.f11479d;
        Double.isNaN(d15);
        double d16 = 1.0d / d15;
        double d17 = pVar.f11485j;
        Double.isNaN(d17);
        float fPow2 = pVar.f11476a * ((float) Math.pow(d14 / 100.0d, d16 / d17));
        float f12 = fCos * 3846.1538f * pVar.f11480e * pVar.f11478c;
        float f13 = fPow2 / pVar.f11477b;
        float fSin = (float) Math.sin(d13);
        float fCos2 = (float) Math.cos(d13);
        float f14 = (((0.305f + f13) * 23.0f) * fPow) / (((fPow * 108.0f) * fSin) + (((11.0f * fPow) * fCos2) + (f12 * 23.0f)));
        float f15 = fCos2 * f14;
        float f16 = f14 * fSin;
        float f17 = f13 * 460.0f;
        float f18 = ((288.0f * f16) + ((451.0f * f15) + f17)) / 1403.0f;
        float f19 = ((f17 - (891.0f * f15)) - (261.0f * f16)) / 1403.0f;
        float f20 = ((f17 - (f15 * 220.0f)) - (f16 * 6300.0f)) / 1403.0f;
        double dAbs = Math.abs(f18);
        Double.isNaN(dAbs);
        double dAbs2 = Math.abs(f18);
        Double.isNaN(dAbs2);
        float fMax = (float) Math.max(0.0d, (dAbs * 27.13d) / (400.0d - dAbs2));
        float fSignum = Math.signum(f18);
        float f21 = 100.0f / pVar.f11483h;
        float fPow3 = fSignum * f21 * ((float) Math.pow(fMax, 2.380952380952381d));
        Double.isNaN(Math.abs(f19));
        Double.isNaN(Math.abs(f19));
        float fSignum2 = Math.signum(f19) * f21 * ((float) Math.pow((float) Math.max(0.0d, (r12 * 27.13d) / (400.0d - r10)), 2.380952380952381d));
        Double.isNaN(Math.abs(f20));
        Double.isNaN(Math.abs(f20));
        float fSignum3 = Math.signum(f20) * f21 * ((float) Math.pow((float) Math.max(0.0d, (r10 * 27.13d) / (400.0d - r12)), 2.380952380952381d));
        float[] fArr = pVar.f11482g;
        float f22 = fPow3 / fArr[0];
        float f23 = fSignum2 / fArr[1];
        float f24 = fSignum3 / fArr[2];
        float[][] fArr2 = b.f11449b;
        float[] fArr3 = fArr2[0];
        float f25 = (fArr3[2] * f24) + (fArr3[1] * f23) + (fArr3[0] * f22);
        float[] fArr4 = fArr2[1];
        float f26 = (fArr4[2] * f24) + (fArr4[1] * f23) + (fArr4[0] * f22);
        float[] fArr5 = fArr2[2];
        return p0.a.a(f25, f26, (f24 * fArr5[2]) + (f23 * fArr5[1]) + (f22 * fArr5[0]));
    }
}
