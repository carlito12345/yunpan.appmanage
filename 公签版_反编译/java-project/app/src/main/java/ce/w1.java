package ce;

import java.io.IOException;

/* loaded from: classes.dex */
public final class w1 extends u0 {

    /* renamed from: g, reason: collision with root package name */
    public byte[] f3211g;

    /* renamed from: h, reason: collision with root package name */
    public int f3212h;

    /* renamed from: i, reason: collision with root package name */
    public int f3213i;

    /* renamed from: j, reason: collision with root package name */
    public int f3214j;

    /* renamed from: k, reason: collision with root package name */
    public final Object f3215k;

    public w1(w0 w0Var) {
        super(w0Var, (w0Var.D & (-65281)) | 32);
        this.f3211g = new byte[4096];
        this.f3215k = new Object();
    }

    public final void J(int i10, int i11, byte[] bArr) {
        byte[] bArr2 = this.f3211g;
        int length = bArr2.length;
        int i12 = this.f3214j;
        if (i11 > length - i12) {
            int length2 = bArr2.length * 2;
            if (i11 > length2 - i12) {
                length2 = i11 + i12;
            }
            byte[] bArr3 = new byte[length2];
            this.f3211g = bArr3;
            int length3 = bArr2.length;
            int i13 = this.f3212h;
            int i14 = length3 - i13;
            if (i12 > i14) {
                System.arraycopy(bArr2, i13, bArr3, 0, i14);
                System.arraycopy(bArr2, 0, this.f3211g, i14, this.f3214j - i14);
            } else {
                System.arraycopy(bArr2, i13, bArr3, 0, i12);
            }
            this.f3212h = 0;
            this.f3213i = this.f3214j;
        }
        byte[] bArr4 = this.f3211g;
        int length4 = bArr4.length;
        int i15 = this.f3213i;
        int i16 = length4 - i15;
        if (i11 > i16) {
            System.arraycopy(bArr, i10, bArr4, i15, i16);
            System.arraycopy(bArr, i10 + i16, this.f3211g, 0, i11 - i16);
        } else {
            System.arraycopy(bArr, i10, bArr4, i15, i11);
        }
        this.f3213i = (this.f3213i + i11) % this.f3211g.length;
        this.f3214j += i11;
    }

    @Override // ce.u0, java.io.InputStream
    public final int available() {
        de.d dVar = t0.f3173x;
        if (de.d.f4630b < 3) {
            return 0;
        }
        t0.f3173x.getClass();
        return 0;
    }

    @Override // ce.u0, java.io.InputStream
    public final int read() {
        int i10;
        synchronized (this.f3215k) {
            while (this.f3214j == 0) {
                try {
                    this.f3215k.wait();
                } catch (InterruptedException e7) {
                    throw new IOException(e7.getMessage());
                }
            }
            byte[] bArr = this.f3211g;
            int i11 = this.f3212h;
            i10 = bArr[i11] & 255;
            this.f3212h = (i11 + 1) % bArr.length;
        }
        return i10;
    }

    @Override // ce.u0, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // ce.u0, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) {
        int i12;
        if (i11 <= 0) {
            return 0;
        }
        synchronized (this.f3215k) {
            while (true) {
                try {
                    i12 = this.f3214j;
                    if (i12 != 0) {
                        break;
                    }
                    this.f3215k.wait();
                } catch (InterruptedException e7) {
                    throw new IOException(e7.getMessage());
                }
            }
            byte[] bArr2 = this.f3211g;
            int length = bArr2.length;
            int i13 = this.f3212h;
            int i14 = length - i13;
            if (i11 > i12) {
                i11 = i12;
            }
            if (i12 > i14 && i11 > i14) {
                System.arraycopy(bArr2, i13, bArr, i10, i14);
                System.arraycopy(this.f3211g, 0, bArr, i10 + i14, i11 - i14);
            } else {
                System.arraycopy(bArr2, i13, bArr, i10, i11);
            }
            this.f3214j -= i11;
            this.f3212h = (this.f3212h + i11) % this.f3211g.length;
        }
        return i11;
    }
}
