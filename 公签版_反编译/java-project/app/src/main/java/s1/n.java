package s1;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class n implements o {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f13919a;

    /* renamed from: b, reason: collision with root package name */
    public float[] f13920b;

    /* renamed from: c, reason: collision with root package name */
    public float[] f13921c;

    /* renamed from: d, reason: collision with root package name */
    public float[] f13922d;

    /* renamed from: e, reason: collision with root package name */
    public double f13923e;

    /* renamed from: f, reason: collision with root package name */
    public double f13924f;

    /* renamed from: g, reason: collision with root package name */
    public double f13925g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ q f13926h;

    public n(q qVar) {
        this.f13926h = qVar;
        int i10 = qVar.f13942h;
        this.f13919a = new float[i10];
        int i11 = qVar.f13936b;
        this.f13920b = new float[i10 * i11];
        this.f13921c = new float[i10 * i11];
        this.f13922d = new float[i10 * i11];
    }

    @Override // s1.o
    public final void a(int i10, long j10, long j11) {
        int i11 = 0;
        while (true) {
            q qVar = this.f13926h;
            int i12 = qVar.f13936b;
            if (i11 >= i12) {
                return;
            }
            float[] fArr = this.f13921c;
            int i13 = (qVar.f13945k * i12) + i11;
            float[] fArr2 = this.f13922d;
            int i14 = (i10 * i12) + i11;
            float f10 = fArr2[i14];
            float f11 = fArr2[i14 + i12];
            long j12 = qVar.f13947n * j10;
            long j13 = (r2 + 1) * j11;
            long j14 = j13 - j12;
            fArr[i13] = (((r11 - j14) * f11) + (j14 * f10)) / (j13 - (qVar.f13946m * j11));
            i11++;
        }
    }

    @Override // s1.o
    public final void b(int i10, int i11) {
        for (int i12 = 0; i12 < this.f13926h.f13936b * i11; i12++) {
            this.f13920b[i10 + i12] = 0.0f;
        }
    }

    @Override // s1.o
    public final void c(int i10, int i11) {
        q qVar = this.f13926h;
        int i12 = qVar.f13942h / i11;
        int i13 = qVar.f13936b;
        int i14 = i11 * i13;
        int i15 = i10 * i13;
        for (int i16 = 0; i16 < i12; i16++) {
            double d10 = 0.0d;
            for (int i17 = 0; i17 < i14; i17++) {
                double d11 = this.f13920b[org.bouncycastle.jcajce.provider.digest.a.b(i16, i14, i15, i17)];
                Double.isNaN(d11);
                d10 += d11;
            }
            double d12 = i14;
            Double.isNaN(d12);
            this.f13919a[i16] = (float) (d10 / d12);
        }
    }

    @Override // s1.o
    public final int d(int i10, int i11, int i12) {
        return s(this.f13920b, i10, i11, i12);
    }

    @Override // s1.o
    public final void e() {
        this.f13925g = this.f13923e;
    }

    @Override // s1.o
    public final Object f() {
        return this.f13920b;
    }

    @Override // s1.o
    public final void flush() {
        this.f13925g = 0.0d;
        this.f13923e = 0.0d;
        this.f13924f = 0.0d;
    }

    @Override // s1.o
    public final Object g() {
        return this.f13921c;
    }

    @Override // s1.o
    public final void h(int i10) {
        this.f13921c = r(this.f13926h.f13945k, i10, this.f13921c);
    }

    @Override // s1.o
    public final boolean i() {
        double d10 = this.f13923e;
        return d10 != 0.0d && this.f13926h.f13949p != 0 && this.f13924f <= d10 * 3.0d && d10 * 2.0d > this.f13925g * 3.0d;
    }

    @Override // s1.o
    public final Object j() {
        return this.f13922d;
    }

    @Override // s1.o
    public final void k(int i10, int i11, int i12, int i13, int i14) {
        float[] fArr = this.f13921c;
        float[] fArr2 = this.f13920b;
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = (i12 * i11) + i15;
            int i17 = (i14 * i11) + i15;
            int i18 = (i13 * i11) + i15;
            for (int i19 = 0; i19 < i10; i19++) {
                fArr[i16] = ((fArr2[i17] * i19) + (fArr2[i18] * (i10 - i19))) / i10;
                i16 += i11;
                i18 += i11;
                i17 += i11;
            }
        }
    }

    @Override // s1.o
    public final void l(ByteBuffer byteBuffer, int i10) {
        FloatBuffer floatBufferAsFloatBuffer = byteBuffer.asFloatBuffer();
        float[] fArr = this.f13920b;
        q qVar = this.f13926h;
        floatBufferAsFloatBuffer.get(fArr, qVar.f13944j * qVar.f13936b, i10 / 4);
        byteBuffer.position(byteBuffer.position() + i10);
    }

    @Override // s1.o
    public final void m(int i10) {
        this.f13922d = r(this.f13926h.l, i10, this.f13922d);
    }

    @Override // s1.o
    public final int n() {
        return 4;
    }

    @Override // s1.o
    public final void o(int i10) {
        this.f13920b = r(this.f13926h.f13944j, i10, this.f13920b);
    }

    @Override // s1.o
    public final void p(ByteBuffer byteBuffer, int i10) {
        FloatBuffer floatBufferAsFloatBuffer = byteBuffer.asFloatBuffer();
        float[] fArr = this.f13921c;
        q qVar = this.f13926h;
        floatBufferAsFloatBuffer.put(fArr, 0, qVar.f13936b * i10);
        byteBuffer.position((i10 * 4 * qVar.f13936b) + byteBuffer.position());
    }

    @Override // s1.o
    public final int q(int i10, int i11) {
        return s(this.f13919a, 0, i10, i11);
    }

    public final float[] r(int i10, int i11, float[] fArr) {
        int length = fArr.length;
        int i12 = this.f13926h.f13936b;
        int i13 = length / i12;
        return i10 + i11 <= i13 ? fArr : Arrays.copyOf(fArr, (((i13 * 3) / 2) + i11) * i12);
    }

    public final int s(float[] fArr, int i10, int i11, int i12) {
        int i13 = this.f13926h.f13936b * i10;
        int i14 = i11;
        double d10 = 1.0d;
        int i15 = 255;
        int i16 = 0;
        double d11 = 0.0d;
        while (i14 <= i12) {
            double d12 = 0.0d;
            for (int i17 = 0; i17 < i14; i17++) {
                double dAbs = Math.abs(fArr[i13 + i17] - fArr[(i13 + i14) + i17]);
                Double.isNaN(dAbs);
                d12 += dAbs;
            }
            double d13 = i16;
            Double.isNaN(d13);
            double d14 = d13 * d12;
            int i18 = i13;
            double d15 = i14;
            Double.isNaN(d15);
            if (d14 < d10 * d15) {
                i16 = i14;
                d10 = d12;
            }
            double d16 = i15;
            Double.isNaN(d16);
            double d17 = d16 * d12;
            Double.isNaN(d15);
            if (d17 > d15 * d11) {
                i15 = i14;
                d11 = d12;
            }
            i14++;
            i13 = i18;
        }
        double d18 = i16;
        Double.isNaN(d18);
        this.f13923e = d10 / d18;
        double d19 = i15;
        Double.isNaN(d19);
        this.f13924f = d11 / d19;
        return i16;
    }
}
