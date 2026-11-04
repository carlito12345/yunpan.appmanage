package j3;

import a9.o;
import u1.f0;
import u1.q;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9719a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f9720b;

    /* renamed from: c, reason: collision with root package name */
    public int f9721c;

    /* renamed from: d, reason: collision with root package name */
    public int f9722d;

    /* renamed from: e, reason: collision with root package name */
    public int f9723e;

    public f() {
        this.f9719a = 2;
        this.f9720b = f0.f15207b;
    }

    public void a() {
        int i10;
        int i11 = this.f9721c;
        o.t(i11 >= 0 && (i11 < (i10 = this.f9723e) || (i11 == i10 && this.f9722d == 0)));
    }

    public int b() {
        return ((this.f9723e - this.f9721c) * 8) - this.f9722d;
    }

    public void c() {
        if (this.f9722d == 0) {
            return;
        }
        this.f9722d = 0;
        this.f9721c++;
        a();
    }

    public int d() {
        o.t(this.f9722d == 0);
        return this.f9721c;
    }

    public int e() {
        return (this.f9721c * 8) + this.f9722d;
    }

    public boolean f() {
        switch (this.f9719a) {
            case 1:
                boolean z = (((this.f9720b[this.f9722d] & 255) >> this.f9723e) & 1) == 1;
                o(1);
                return z;
            default:
                boolean z4 = (this.f9720b[this.f9721c] & (128 >> this.f9722d)) != 0;
                n();
                return z4;
        }
    }

    public int g(int i10) {
        switch (this.f9719a) {
            case 1:
                int i11 = this.f9722d;
                int iMin = Math.min(i10, 8 - this.f9723e);
                int i12 = i11 + 1;
                byte[] bArr = this.f9720b;
                int i13 = ((bArr[i11] & 255) >> this.f9723e) & (255 >> (8 - iMin));
                while (iMin < i10) {
                    i13 |= (bArr[i12] & 255) << iMin;
                    iMin += 8;
                    i12++;
                }
                int i14 = i13 & ((-1) >>> (32 - i10));
                o(i10);
                return i14;
            default:
                if (i10 == 0) {
                    return 0;
                }
                this.f9722d += i10;
                int i15 = 0;
                while (true) {
                    int i16 = this.f9722d;
                    if (i16 <= 8) {
                        byte[] bArr2 = this.f9720b;
                        int i17 = this.f9721c;
                        int i18 = ((-1) >>> (32 - i10)) & (i15 | ((bArr2[i17] & 255) >> (8 - i16)));
                        if (i16 == 8) {
                            this.f9722d = 0;
                            this.f9721c = i17 + 1;
                        }
                        a();
                        return i18;
                    }
                    int i19 = i16 - 8;
                    this.f9722d = i19;
                    byte[] bArr3 = this.f9720b;
                    int i20 = this.f9721c;
                    this.f9721c = i20 + 1;
                    i15 |= (bArr3[i20] & 255) << i19;
                }
        }
    }

    public void h(int i10, byte[] bArr) {
        int i11 = i10 >> 3;
        for (int i12 = 0; i12 < i11; i12++) {
            byte[] bArr2 = this.f9720b;
            int i13 = this.f9721c;
            int i14 = i13 + 1;
            this.f9721c = i14;
            byte b10 = bArr2[i13];
            int i15 = this.f9722d;
            byte b11 = (byte) (b10 << i15);
            bArr[i12] = b11;
            bArr[i12] = (byte) (((255 & bArr2[i14]) >> (8 - i15)) | b11);
        }
        int i16 = i10 & 7;
        if (i16 == 0) {
            return;
        }
        byte b12 = (byte) (bArr[i11] & (255 >> i16));
        bArr[i11] = b12;
        int i17 = this.f9722d;
        if (i17 + i16 > 8) {
            byte[] bArr3 = this.f9720b;
            int i18 = this.f9721c;
            this.f9721c = i18 + 1;
            bArr[i11] = (byte) (b12 | ((bArr3[i18] & 255) << i17));
            this.f9722d = i17 - 8;
        }
        int i19 = this.f9722d + i16;
        this.f9722d = i19;
        byte[] bArr4 = this.f9720b;
        int i20 = this.f9721c;
        bArr[i11] = (byte) (((byte) (((255 & bArr4[i20]) >> (8 - i19)) << (8 - i16))) | bArr[i11]);
        if (i19 == 8) {
            this.f9722d = 0;
            this.f9721c = i20 + 1;
        }
        a();
    }

    public long i(int i10) {
        if (i10 <= 32) {
            int iG = g(i10);
            String str = f0.f15206a;
            return 4294967295L & iG;
        }
        int iG2 = g(i10 - 32);
        int iG3 = g(32);
        String str2 = f0.f15206a;
        return (4294967295L & iG3) | ((iG2 & 4294967295L) << 32);
    }

    public void j(byte[] bArr, int i10) {
        o.t(this.f9722d == 0);
        System.arraycopy(this.f9720b, this.f9721c, bArr, 0, i10);
        this.f9721c += i10;
        a();
    }

    public void k(int i10, byte[] bArr) {
        this.f9720b = bArr;
        this.f9721c = 0;
        this.f9722d = 0;
        this.f9723e = i10;
    }

    public void l(q qVar) {
        k(qVar.f15268c, qVar.f15266a);
        m(qVar.f15267b * 8);
    }

    public void m(int i10) {
        int i11 = i10 / 8;
        this.f9721c = i11;
        this.f9722d = i10 - (i11 * 8);
        a();
    }

    public void n() {
        int i10 = this.f9722d + 1;
        this.f9722d = i10;
        if (i10 == 8) {
            this.f9722d = 0;
            this.f9721c++;
        }
        a();
    }

    public void o(int i10) {
        int i11;
        switch (this.f9719a) {
            case 1:
                int i12 = i10 / 8;
                int i13 = this.f9722d + i12;
                this.f9722d = i13;
                int i14 = (i10 - (i12 * 8)) + this.f9723e;
                this.f9723e = i14;
                boolean z = true;
                if (i14 > 7) {
                    this.f9722d = i13 + 1;
                    this.f9723e = i14 - 8;
                }
                int i15 = this.f9722d;
                if (i15 < 0 || (i15 >= (i11 = this.f9721c) && (i15 != i11 || this.f9723e != 0))) {
                    z = false;
                }
                o.t(z);
                break;
            default:
                int i16 = i10 / 8;
                int i17 = this.f9721c + i16;
                this.f9721c = i17;
                int i18 = (i10 - (i16 * 8)) + this.f9722d;
                this.f9722d = i18;
                if (i18 > 7) {
                    this.f9721c = i17 + 1;
                    this.f9722d = i18 - 8;
                }
                a();
                break;
        }
    }

    public void p(int i10) {
        o.t(this.f9722d == 0);
        this.f9721c += i10;
        a();
    }

    public f(byte[] bArr) {
        this.f9719a = 1;
        this.f9720b = bArr;
        this.f9721c = bArr.length;
    }

    public f(byte[] bArr, int i10) {
        this.f9719a = 2;
        this.f9720b = bArr;
        this.f9723e = i10;
    }

    public f(int i10, int i11) {
        this.f9719a = 0;
        this.f9721c = i10;
        this.f9722d = i11;
        this.f9720b = new byte[(i11 * 2) - 1];
        this.f9723e = 0;
    }
}
