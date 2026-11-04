package t3;

import a9.o;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f14744a;

    /* renamed from: b, reason: collision with root package name */
    public int f14745b;

    /* renamed from: c, reason: collision with root package name */
    public int f14746c;

    /* renamed from: d, reason: collision with root package name */
    public int f14747d;

    /* renamed from: e, reason: collision with root package name */
    public int f14748e;

    public e(byte[] bArr, int i10, int i11) {
        this.f14744a = bArr;
        this.f14746c = i10;
        this.f14747d = i10;
        this.f14745b = i11;
        this.f14748e = 0;
        a();
    }

    public void a() {
        int i10;
        int i11 = this.f14747d;
        o.t(i11 >= 0 && (i11 < (i10 = this.f14745b) || (i11 == i10 && this.f14748e == 0)));
    }

    public void b() {
        int i10 = this.f14748e;
        if (i10 > 0) {
            l(8 - i10);
        }
    }

    public boolean c(int i10) {
        int i11 = this.f14747d;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        int i14 = (this.f14748e + i10) - (i12 * 8);
        if (i14 > 7) {
            i13++;
            i14 -= 8;
        }
        while (true) {
            i11++;
            if (i11 > i13 || i13 > this.f14745b) {
                break;
            }
            if (j(i11)) {
                i13++;
                i11 += 2;
            }
        }
        int i15 = this.f14745b;
        if (i13 >= i15) {
            return i13 == i15 && i14 == 0;
        }
        return true;
    }

    public boolean d() {
        int i10 = this.f14747d;
        int i11 = this.f14748e;
        int i12 = 0;
        while (this.f14747d < this.f14745b && !e()) {
            i12++;
        }
        boolean z = this.f14747d == this.f14745b;
        this.f14747d = i10;
        this.f14748e = i11;
        return !z && c((i12 * 2) + 1);
    }

    public boolean e() {
        boolean z = (this.f14744a[this.f14747d] & (128 >> this.f14748e)) != 0;
        k();
        return z;
    }

    public int f(int i10) {
        int i11;
        this.f14748e += i10;
        int i12 = 0;
        while (true) {
            i11 = this.f14748e;
            if (i11 <= 8) {
                break;
            }
            int i13 = i11 - 8;
            this.f14748e = i13;
            byte[] bArr = this.f14744a;
            int i14 = this.f14747d;
            i12 |= (bArr[i14] & 255) << i13;
            if (!j(i14 + 1)) {
                i = 1;
            }
            this.f14747d = i14 + i;
        }
        byte[] bArr2 = this.f14744a;
        int i15 = this.f14747d;
        int i16 = ((-1) >>> (32 - i10)) & (i12 | ((bArr2[i15] & 255) >> (8 - i11)));
        if (i11 == 8) {
            this.f14748e = 0;
            this.f14747d = i15 + (j(i15 + 1) ? 2 : 1);
        }
        a();
        return i16;
    }

    public int g() {
        int i10 = 0;
        while (!e()) {
            i10++;
        }
        return ((1 << i10) - 1) + (i10 > 0 ? f(i10) : 0);
    }

    public int h() {
        int iG = g();
        return ((iG + 1) / 2) * (iG % 2 == 0 ? -1 : 1);
    }

    public int i() {
        return g();
    }

    public boolean j(int i10) {
        int i11 = i10 - 2;
        if (this.f14746c <= i11 && i10 < this.f14745b) {
            byte[] bArr = this.f14744a;
            if (bArr[i10] == 3 && bArr[i11] == 0 && bArr[i10 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public void k() {
        int i10 = this.f14748e + 1;
        this.f14748e = i10;
        if (i10 == 8) {
            this.f14748e = 0;
            int i11 = this.f14747d;
            this.f14747d = i11 + (j(i11 + 1) ? 2 : 1);
        }
        a();
    }

    public void l(int i10) {
        int i11 = this.f14747d;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        this.f14747d = i13;
        int i14 = (i10 - (i12 * 8)) + this.f14748e;
        this.f14748e = i14;
        if (i14 > 7) {
            this.f14747d = i13 + 1;
            this.f14748e = i14 - 8;
        }
        while (true) {
            i11++;
            if (i11 > this.f14747d) {
                a();
                return;
            } else if (j(i11)) {
                this.f14747d++;
                i11 += 2;
            }
        }
    }

    public e(int i10, int i11, int i12, byte[] bArr, int i13, int i14) {
        this.f14745b = i11;
        this.f14746c = i12;
        this.f14747d = i13;
        this.f14748e = i14;
        this.f14744a = bArr;
    }
}
