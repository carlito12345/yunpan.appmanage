package id;

import ad.h;
import vd.r;

/* loaded from: classes.dex */
public abstract class b implements ad.b {

    /* renamed from: a, reason: collision with root package name */
    public int f8655a;

    /* renamed from: b, reason: collision with root package name */
    public int f8656b;

    /* renamed from: c, reason: collision with root package name */
    public int f8657c;

    /* renamed from: d, reason: collision with root package name */
    public int f8658d;

    /* renamed from: e, reason: collision with root package name */
    public int f8659e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f8660f;

    /* renamed from: g, reason: collision with root package name */
    public f f8661g;

    /* renamed from: h, reason: collision with root package name */
    public final vc.f f8662h;

    /* renamed from: i, reason: collision with root package name */
    public int f8663i;

    /* renamed from: j, reason: collision with root package name */
    public int f8664j;

    /* renamed from: k, reason: collision with root package name */
    public int f8665k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f8666m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f8667n;

    /* renamed from: p, reason: collision with root package name */
    public int f8668p;

    /* renamed from: q, reason: collision with root package name */
    public long f8669q;
    public long r;

    /* renamed from: s, reason: collision with root package name */
    public long f8670s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f8671t;

    /* renamed from: v, reason: collision with root package name */
    public byte[] f8672v;

    /* renamed from: w, reason: collision with root package name */
    public b f8673w;

    public b(vc.f fVar) {
        this.f8660f = new byte[16];
        this.f8661g = null;
        this.f8662h = fVar;
    }

    public static final int o0(int i10, int i11) {
        int i12 = (i10 % 8) - i11;
        if (i12 == 0) {
            return i10;
        }
        if (i12 < 0) {
            i12 += 8;
        }
        return (i10 + 8) - i12;
    }

    public void L(int i10) {
        n0(i10);
    }

    @Override // ad.b
    public final void S(int i10) {
        this.f8655a = i10;
    }

    public final boolean Y() {
        return this.f8667n;
    }

    @Override // ad.b, he.d
    public final void a(long j10) {
        this.f8669q = j10;
    }

    @Override // he.b
    public final void a0() {
        this.f8671t = true;
    }

    @Override // ad.b
    public int c(int i10, byte[] bArr) {
        this.f8658d = i10;
        System.arraycopy(rd.a.f13759b, 0, bArr, i10, 68);
        rd.a.e(this.f8663i, bArr, i10 + 6);
        rd.a.e(this.f8655a, bArr, i10 + 12);
        rd.a.e(this.f8665k, bArr, i10 + 14);
        rd.a.f(this.f8656b, bArr, i10 + 16);
        int i11 = i10 + 20;
        rd.a.f(this.l, bArr, i11);
        rd.a.g(this.f8669q, bArr, i10 + 24);
        if (this.f8667n) {
            rd.a.g(this.r, bArr, i10 + 32);
            rd.a.g(this.f8670s, bArr, i10 + 40);
        } else {
            rd.a.f(this.f8668p, bArr, i10 + 36);
            rd.a.g(this.f8670s, bArr, i10 + 40);
        }
        int i12 = i10 + 64;
        int iP0 = p0(i12, bArr);
        this.f8659e = iP0;
        int i13 = i12 + iP0;
        int iK0 = k0(i13) + i13;
        int i14 = iK0 - i10;
        this.f8657c = i14;
        b bVar = this.f8673w;
        if (bVar != null) {
            int iC = bVar.c(iK0, bArr) + iK0;
            rd.a.f(i14, bArr, i11);
            i14 += iC - iK0;
        }
        f fVar = this.f8661g;
        if (fVar != null) {
            int i15 = this.f8658d;
            int i16 = this.f8657c;
            synchronized (fVar) {
                try {
                    fVar.f8679a.reset();
                    int i17 = i15 + 48;
                    for (int i18 = 0; i18 < 16; i18++) {
                        bArr[i17 + i18] = 0;
                    }
                    rd.a.f(rd.a.b(r6, bArr) | 8, bArr, i15 + 16);
                    fVar.f8679a.update(bArr, i15, i16);
                    System.arraycopy(fVar.f8679a.doFinal(), 0, bArr, i17, 16);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if (this.f8671t) {
            byte[] bArr2 = new byte[i14];
            this.f8672v = bArr2;
            System.arraycopy(bArr, i10, bArr2, 0, i14);
        }
        return i14;
    }

    @Override // ad.b
    public final int decode(byte[] bArr) {
        return h0(4, bArr, false);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof b) && ((b) obj).f8669q == this.f8669q;
    }

    @Override // ad.b
    public final void f(long j10) {
        this.f8670s = j10;
        b bVar = this.f8673w;
        if (bVar != null) {
            bVar.f(j10);
        }
    }

    public boolean g0(b bVar) {
        b bVar2 = this.f8673w;
        if (bVar2 != null) {
            return bVar2.g0(bVar);
        }
        bVar.f8656b |= 4;
        this.f8673w = bVar;
        return true;
    }

    @Override // ad.b
    public final h getDigest() {
        return this.f8661g;
    }

    public final int h0(int i10, byte[] bArr, boolean z) throws ad.g {
        int i11;
        int iK0;
        int i12;
        this.f8658d = i10;
        rd.a.b(i10, bArr);
        rd.a.a(i10 + 4, bArr);
        this.f8663i = rd.a.a(i10 + 6, bArr);
        this.f8664j = rd.a.b(i10 + 8, bArr);
        this.f8655a = rd.a.a(i10 + 12, bArr);
        this.f8665k = rd.a.a(i10 + 14, bArr);
        this.f8656b = rd.a.b(i10 + 16, bArr);
        this.l = rd.a.b(i10 + 20, bArr);
        this.f8669q = rd.a.c(i10 + 24, bArr);
        int i13 = i10 + 32;
        int i14 = this.f8656b & 2;
        byte[] bArr2 = this.f8660f;
        if (i14 == 2) {
            this.f8667n = true;
            this.r = rd.a.c(i13, bArr);
            this.f8670s = rd.a.c(i10 + 40, bArr);
            System.arraycopy(bArr, i10 + 48, bArr2, 0, 16);
        } else {
            this.f8667n = false;
            this.f8668p = rd.a.b(i10 + 36, bArr);
            this.f8670s = rd.a.c(i10 + 40, bArr);
            System.arraycopy(bArr, i10 + 48, bArr2, 0, 16);
        }
        int i15 = i10 + 64;
        int iM0 = (j0() ? m0(i15, bArr) : l0(i15, bArr)) + i15;
        int i16 = iM0 - i10;
        this.f8657c = i16;
        int i17 = this.l;
        if (i17 == 0) {
            if (z && i17 == 0 && (i11 = this.f8666m) > 0) {
                iK0 = i11 - i16;
            }
            i0(i10, i16, bArr);
            i12 = this.l;
            if (i12 != 0 || this.f8673w == null || i12 % 8 == 0) {
                return i16;
            }
            throw new ad.g("Chained command is not aligned");
        }
        iK0 = k0(iM0);
        i16 += iK0;
        i0(i10, i16, bArr);
        i12 = this.l;
        if (i12 != 0) {
        }
        return i16;
    }

    public final int hashCode() {
        return (int) this.f8669q;
    }

    @Override // ad.b
    public final void i(h hVar) {
        this.f8661g = (f) hVar;
        b bVar = this.f8673w;
        if (bVar != null) {
            bVar.i(hVar);
        }
    }

    public boolean j0() {
        return this.f8664j != 0;
    }

    public final int k0(int i10) {
        int i11 = (i10 - this.f8658d) % 8;
        if (i11 == 0) {
            return 0;
        }
        return 8 - i11;
    }

    public abstract int l0(int i10, byte[] bArr);

    public final int m0(int i10, byte[] bArr) throws ad.g {
        if (rd.a.a(i10, bArr) != 9) {
            throw new ad.g("Error structureSize should be 9");
        }
        byte b10 = bArr[i10 + 2];
        int iB = rd.a.b(i10 + 4, bArr);
        int i11 = i10 + 8;
        if (iB > 0) {
            System.arraycopy(bArr, i11, new byte[iB], 0, iB);
            i11 += iB;
        }
        return i11 - i10;
    }

    public final void n0(int i10) {
        this.f8668p = i10;
        b bVar = this.f8673w;
        if (bVar != null) {
            bVar.n0(i10);
        }
    }

    public final long p() {
        return this.f8669q;
    }

    public abstract int p0(int i10, byte[] bArr);

    @Override // ad.b, he.d
    public void reset() {
        this.f8656b = 0;
        this.f8661g = null;
        this.f8670s = 0L;
        this.f8668p = 0;
    }

    public String toString() {
        String str;
        switch (this.f8655a) {
            case 0:
                str = "SMB2_NEGOTIATE";
                break;
            case 1:
                str = "SMB2_SESSION_SETUP";
                break;
            case 2:
                str = "SMB2_LOGOFF";
                break;
            case 3:
                str = "SMB2_TREE_CONNECT";
                break;
            case 4:
                str = "SMB2_TREE_DISCONNECT";
                break;
            case 5:
                str = "SMB2_CREATE";
                break;
            case 6:
                str = "SMB2_CLOSE";
                break;
            case 7:
                str = "SMB2_FLUSH";
                break;
            case 8:
                str = "SMB2_READ";
                break;
            case 9:
                str = "SMB2_WRITE";
                break;
            case 10:
                str = "SMB2_LOCK";
                break;
            case 11:
                str = "SMB2_IOCTL";
                break;
            case 12:
                str = "SMB2_CANCEL";
                break;
            case 13:
                str = "SMB2_ECHO";
                break;
            case 14:
                str = "SMB2_QUERY_DIRECTORY";
                break;
            case 15:
                str = "SMB2_CHANGE_NOTIFY";
                break;
            case 16:
                str = "SMB2_QUERY_INFO";
                break;
            case 17:
                str = "SMB2_SET_INFO";
                break;
            case 18:
                str = "SMB2_OPLOCK_BREAK";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        int i10 = this.f8664j;
        String strA = i10 == 0 ? "0" : r.a(i10);
        StringBuilder sb2 = new StringBuilder("command=");
        sb2.append(str);
        sb2.append(",status=");
        sb2.append(strA);
        sb2.append(",flags=0x");
        android.support.v4.media.session.a.E(this.f8656b, 4, ",mid=", sb2);
        sb2.append(this.f8669q);
        sb2.append(",wordCount=0,byteCount=");
        sb2.append(this.f8659e);
        return new String(sb2.toString());
    }

    @Override // ad.b
    public final int y() {
        return this.f8655a;
    }

    public b(vc.f fVar, int i10) {
        this.f8660f = new byte[16];
        this.f8661g = null;
        this.f8662h = fVar;
        this.f8655a = i10;
    }

    @Override // ad.b
    public final void B(boolean z) {
    }

    @Override // ad.b
    public final void X(int i10) {
    }

    public void i0(int i10, int i11, byte[] bArr) {
    }
}
