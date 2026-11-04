package s1;

import java.nio.ByteBuffer;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class p implements o {

    /* renamed from: a, reason: collision with root package name */
    public final short[] f13927a;

    /* renamed from: b, reason: collision with root package name */
    public short[] f13928b;

    /* renamed from: c, reason: collision with root package name */
    public short[] f13929c;

    /* renamed from: d, reason: collision with root package name */
    public short[] f13930d;

    /* renamed from: e, reason: collision with root package name */
    public int f13931e;

    /* renamed from: f, reason: collision with root package name */
    public int f13932f;

    /* renamed from: g, reason: collision with root package name */
    public int f13933g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ q f13934h;

    public p(q qVar) {
        this.f13934h = qVar;
        int i10 = qVar.f13942h;
        this.f13927a = new short[i10];
        int i11 = qVar.f13936b;
        this.f13928b = new short[i10 * i11];
        this.f13929c = new short[i10 * i11];
        this.f13930d = new short[i10 * i11];
    }

    @Override // s1.o
    public final void a(int i10, long j10, long j11) {
        int i11 = 0;
        while (true) {
            q qVar = this.f13934h;
            int i12 = qVar.f13936b;
            if (i11 >= i12) {
                return;
            }
            short[] sArr = this.f13929c;
            int i13 = (qVar.f13945k * i12) + i11;
            short[] sArr2 = this.f13930d;
            int i14 = (i10 * i12) + i11;
            short s8 = sArr2[i14];
            short s10 = sArr2[i14 + i12];
            long j12 = qVar.f13947n * j10;
            long j13 = (r2 + 1) * j11;
            long j14 = j13 - j12;
            long j15 = j13 - (qVar.f13946m * j11);
            sArr[i13] = (short) ((((j15 - j14) * s10) + (s8 * j14)) / j15);
            i11++;
        }
    }

    @Override // s1.o
    public final void b(int i10, int i11) {
        for (int i12 = 0; i12 < this.f13934h.f13936b * i11; i12++) {
            this.f13928b[i10 + i12] = 0;
        }
    }

    @Override // s1.o
    public final void c(int i10, int i11) {
        short[] sArr = this.f13928b;
        q qVar = this.f13934h;
        int i12 = qVar.f13942h / i11;
        int i13 = qVar.f13936b;
        int i14 = i11 * i13;
        int i15 = i10 * i13;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = 0;
            for (int i18 = 0; i18 < i14; i18++) {
                i17 += sArr[org.bouncycastle.jcajce.provider.digest.a.b(i16, i14, i15, i18)];
            }
            this.f13927a[i16] = (short) (i17 / i14);
        }
    }

    @Override // s1.o
    public final int d(int i10, int i11, int i12) {
        return s(this.f13928b, i10, i11, i12);
    }

    @Override // s1.o
    public final void e() {
        this.f13933g = this.f13931e;
    }

    @Override // s1.o
    public final Object f() {
        return this.f13928b;
    }

    @Override // s1.o
    public final void flush() {
        this.f13933g = 0;
        this.f13931e = 0;
        this.f13932f = 0;
    }

    @Override // s1.o
    public final Object g() {
        return this.f13929c;
    }

    @Override // s1.o
    public final void h(int i10) {
        this.f13929c = r(this.f13929c, this.f13934h.f13945k, i10);
    }

    @Override // s1.o
    public final boolean i() {
        int i10 = this.f13931e;
        return i10 != 0 && this.f13934h.f13949p != 0 && this.f13932f <= i10 * 3 && i10 * 2 > this.f13933g * 3;
    }

    @Override // s1.o
    public final Object j() {
        return this.f13930d;
    }

    @Override // s1.o
    public final void k(int i10, int i11, int i12, int i13, int i14) {
        short[] sArr = this.f13929c;
        short[] sArr2 = this.f13928b;
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = (i12 * i11) + i15;
            int i17 = (i14 * i11) + i15;
            int i18 = (i13 * i11) + i15;
            for (int i19 = 0; i19 < i10; i19++) {
                sArr[i16] = (short) (((sArr2[i17] * i19) + ((i10 - i19) * sArr2[i18])) / i10);
                i16 += i11;
                i18 += i11;
                i17 += i11;
            }
        }
    }

    @Override // s1.o
    public final void l(ByteBuffer byteBuffer, int i10) {
        ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
        short[] sArr = this.f13928b;
        q qVar = this.f13934h;
        shortBufferAsShortBuffer.get(sArr, qVar.f13944j * qVar.f13936b, i10 / 2);
        byteBuffer.position(byteBuffer.position() + i10);
    }

    @Override // s1.o
    public final void m(int i10) {
        this.f13930d = r(this.f13930d, this.f13934h.l, i10);
    }

    @Override // s1.o
    public final int n() {
        return 2;
    }

    @Override // s1.o
    public final void o(int i10) {
        this.f13928b = r(this.f13928b, this.f13934h.f13944j, i10);
    }

    @Override // s1.o
    public final void p(ByteBuffer byteBuffer, int i10) {
        ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
        short[] sArr = this.f13929c;
        q qVar = this.f13934h;
        shortBufferAsShortBuffer.put(sArr, 0, qVar.f13936b * i10);
        byteBuffer.position((i10 * 2 * qVar.f13936b) + byteBuffer.position());
    }

    @Override // s1.o
    public final int q(int i10, int i11) {
        return s(this.f13927a, 0, i10, i11);
    }

    public final short[] r(short[] sArr, int i10, int i11) {
        int length = sArr.length;
        int i12 = this.f13934h.f13936b;
        int i13 = length / i12;
        return i10 + i11 <= i13 ? sArr : Arrays.copyOf(sArr, (((i13 * 3) / 2) + i11) * i12);
    }

    public final int s(short[] sArr, int i10, int i11, int i12) {
        int i13 = i10 * this.f13934h.f13936b;
        int i14 = 255;
        int i15 = 1;
        int i16 = 0;
        int i17 = 0;
        while (i11 <= i12) {
            int iAbs = 0;
            for (int i18 = 0; i18 < i11; i18++) {
                iAbs += Math.abs(sArr[i13 + i18] - sArr[(i13 + i11) + i18]);
            }
            if (iAbs * i16 < i15 * i11) {
                i16 = i11;
                i15 = iAbs;
            }
            if (iAbs * i14 > i17 * i11) {
                i14 = i11;
                i17 = iAbs;
            }
            i11++;
        }
        this.f13931e = i15 / i16;
        this.f13932f = i17 / i14;
        return i16;
    }
}
