package a2;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class s1 extends s1.m {

    /* renamed from: n, reason: collision with root package name */
    public int f308n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f309o;

    /* renamed from: p, reason: collision with root package name */
    public int f310p;

    /* renamed from: q, reason: collision with root package name */
    public long f311q;

    /* renamed from: s, reason: collision with root package name */
    public byte[] f312s;

    /* renamed from: v, reason: collision with root package name */
    public byte[] f315v;
    public int r = 0;

    /* renamed from: t, reason: collision with root package name */
    public int f313t = 0;

    /* renamed from: u, reason: collision with root package name */
    public int f314u = 0;
    public final long l = 100000;

    /* renamed from: i, reason: collision with root package name */
    public final float f304i = 0.2f;

    /* renamed from: m, reason: collision with root package name */
    public final long f307m = 2000000;

    /* renamed from: k, reason: collision with root package name */
    public final int f306k = 10;

    /* renamed from: j, reason: collision with root package name */
    public final short f305j = 1024;

    public s1() {
        byte[] bArr = u1.f0.f15207b;
        this.f312s = bArr;
        this.f315v = bArr;
    }

    @Override // s1.l
    public final void e(ByteBuffer byteBuffer) {
        int iLimit;
        int iPosition;
        while (byteBuffer.hasRemaining() && !this.f13917g.hasRemaining()) {
            int i10 = this.f310p;
            short s8 = this.f305j;
            if (i10 == 0) {
                int iLimit2 = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit2, byteBuffer.position() + this.f312s.length));
                int iLimit3 = byteBuffer.limit() - 1;
                while (true) {
                    if (iLimit3 < byteBuffer.position()) {
                        iPosition = byteBuffer.position();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(iLimit3) << 8) | (byteBuffer.get(iLimit3 - 1) & 255)) > s8) {
                        int i11 = this.f308n;
                        iPosition = ((iLimit3 / i11) * i11) + i11;
                        break;
                    }
                    iLimit3 -= 2;
                }
                if (iPosition == byteBuffer.position()) {
                    this.f310p = 1;
                } else {
                    byteBuffer.limit(Math.min(iPosition, byteBuffer.capacity()));
                    m(byteBuffer.remaining()).put(byteBuffer).flip();
                }
                byteBuffer.limit(iLimit2);
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException();
                }
                a9.o.t(this.f313t < this.f312s.length);
                int iLimit4 = byteBuffer.limit();
                int iPosition2 = byteBuffer.position() + 1;
                while (true) {
                    if (iPosition2 >= byteBuffer.limit()) {
                        iLimit = byteBuffer.limit();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(iPosition2) << 8) | (byteBuffer.get(iPosition2 - 1) & 255)) > s8) {
                        int i12 = this.f308n;
                        iLimit = (iPosition2 / i12) * i12;
                        break;
                    }
                    iPosition2 += 2;
                }
                int iPosition3 = iLimit - byteBuffer.position();
                int length = this.f313t;
                int i13 = this.f314u;
                int length2 = length + i13;
                byte[] bArr = this.f312s;
                if (length2 < bArr.length) {
                    length = bArr.length;
                } else {
                    length2 = i13 - (bArr.length - length);
                }
                int i14 = length - length2;
                boolean z = iLimit < iLimit4;
                int iMin = Math.min(iPosition3, i14);
                byteBuffer.limit(byteBuffer.position() + iMin);
                byteBuffer.get(this.f312s, length2, iMin);
                int i15 = this.f314u + iMin;
                this.f314u = i15;
                a9.o.t(i15 <= this.f312s.length);
                boolean z4 = z && iPosition3 < i14;
                o(z4);
                if (z4) {
                    this.f310p = 0;
                    this.r = 0;
                }
                byteBuffer.limit(iLimit4);
            }
        }
    }

    @Override // s1.m, s1.l
    public final boolean g() {
        return super.g() && this.f309o;
    }

    @Override // s1.m
    public final s1.i i(s1.i iVar) throws s1.k {
        if (iVar.f13907c == 2) {
            return iVar.f13905a == -1 ? s1.i.f13904e : iVar;
        }
        throw new s1.k(iVar);
    }

    @Override // s1.m
    public final void j() {
        if (g()) {
            int i10 = this.f13912b.f13906b * 2;
            this.f308n = i10;
            int i11 = ((((int) ((this.l * r0.f13905a) / 1000000)) / 2) / i10) * i10 * 2;
            if (this.f312s.length != i11) {
                this.f312s = new byte[i11];
                this.f315v = new byte[i11];
            }
        }
        this.f310p = 0;
        this.f311q = 0L;
        this.r = 0;
        this.f313t = 0;
        this.f314u = 0;
    }

    @Override // s1.m
    public final void k() {
        if (this.f314u > 0) {
            o(true);
            this.r = 0;
        }
    }

    @Override // s1.m
    public final void l() {
        this.f309o = false;
        byte[] bArr = u1.f0.f15207b;
        this.f312s = bArr;
        this.f315v = bArr;
    }

    public final int n(int i10) {
        int length = ((((int) ((this.f307m * this.f13912b.f13905a) / 1000000)) - this.r) * this.f308n) - (this.f312s.length / 2);
        a9.o.t(length >= 0);
        int iMin = (int) Math.min((i10 * this.f304i) + 0.5f, length);
        int i11 = this.f308n;
        return (iMin / i11) * i11;
    }

    public final void o(boolean z) {
        int length;
        int iN;
        int i10 = this.f314u;
        byte[] bArr = this.f312s;
        if (i10 == bArr.length || z) {
            if (this.r == 0) {
                if (z) {
                    p(i10, 3);
                    length = i10;
                } else {
                    a9.o.t(i10 >= bArr.length / 2);
                    length = this.f312s.length / 2;
                    p(length, 0);
                }
                iN = length;
            } else if (z) {
                int length2 = i10 - (bArr.length / 2);
                int length3 = (bArr.length / 2) + length2;
                int iN2 = n(length2) + (this.f312s.length / 2);
                p(iN2, 2);
                iN = iN2;
                length = length3;
            } else {
                length = i10 - (bArr.length / 2);
                iN = n(length);
                p(iN, 1);
            }
            if (!(length % this.f308n == 0)) {
                throw new IllegalStateException(android.support.v4.media.session.b.y("bytesConsumed is not aligned to frame size: %s", Integer.valueOf(length)));
            }
            a9.o.t(i10 >= iN);
            this.f314u -= length;
            int i11 = this.f313t + length;
            this.f313t = i11;
            this.f313t = i11 % this.f312s.length;
            this.r = (iN / this.f308n) + this.r;
            this.f311q += (length - iN) / r1;
        }
    }

    public final void p(int i10, int i11) {
        if (i10 == 0) {
            return;
        }
        a9.o.k(this.f314u >= i10);
        if (i11 == 2) {
            int i12 = this.f313t;
            int i13 = this.f314u;
            int i14 = i12 + i13;
            byte[] bArr = this.f312s;
            if (i14 <= bArr.length) {
                System.arraycopy(bArr, i14 - i10, this.f315v, 0, i10);
            } else {
                int length = i13 - (bArr.length - i12);
                if (length >= i10) {
                    System.arraycopy(bArr, length - i10, this.f315v, 0, i10);
                } else {
                    int i15 = i10 - length;
                    System.arraycopy(bArr, bArr.length - i15, this.f315v, 0, i15);
                    System.arraycopy(this.f312s, 0, this.f315v, i15, length);
                }
            }
        } else {
            int i16 = this.f313t;
            int i17 = i16 + i10;
            byte[] bArr2 = this.f312s;
            if (i17 <= bArr2.length) {
                System.arraycopy(bArr2, i16, this.f315v, 0, i10);
            } else {
                int length2 = bArr2.length - i16;
                System.arraycopy(bArr2, i16, this.f315v, 0, length2);
                System.arraycopy(this.f312s, 0, this.f315v, length2, i10 - length2);
            }
        }
        a9.o.h("sizeToOutput is not aligned to frame size: %s", i10, i10 % this.f308n == 0);
        a9.o.t(this.f313t < this.f312s.length);
        byte[] bArr3 = this.f315v;
        a9.o.h("byteOutput size is not aligned to frame size %s", i10, i10 % this.f308n == 0);
        if (i11 != 3) {
            for (int i18 = 0; i18 < i10; i18 += 2) {
                int i19 = i18 + 1;
                int i20 = (bArr3[i19] << 8) | (bArr3[i18] & 255);
                int i21 = this.f306k;
                if (i11 == 0) {
                    i21 = ((((i18 * 1000) / (i10 - 1)) * (i21 - 100)) / 1000) + 100;
                } else if (i11 == 2) {
                    i21 += (((i18 * 1000) * (100 - i21)) / (i10 - 1)) / 1000;
                }
                int i22 = (i20 * i21) / 100;
                if (i22 >= 32767) {
                    bArr3[i18] = -1;
                    bArr3[i19] = Byte.MAX_VALUE;
                } else if (i22 <= -32768) {
                    bArr3[i18] = 0;
                    bArr3[i19] = Byte.MIN_VALUE;
                } else {
                    bArr3[i18] = (byte) (i22 & 255);
                    bArr3[i19] = (byte) (i22 >> 8);
                }
            }
        }
        m(i10).put(bArr3, 0, i10).flip();
    }
}
