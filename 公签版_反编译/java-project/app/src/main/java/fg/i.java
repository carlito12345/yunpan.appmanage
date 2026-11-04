package fg;

import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class i implements k, j, Cloneable, ByteChannel {

    /* renamed from: a, reason: collision with root package name */
    public u f5852a;

    /* renamed from: b, reason: collision with root package name */
    public long f5853b;

    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public final i clone() {
        i iVar = new i();
        if (this.f5853b != 0) {
            u uVar = this.f5852a;
            ue.d.b(uVar);
            u uVarC = uVar.c();
            iVar.f5852a = uVarC;
            uVarC.f5881g = uVarC;
            uVarC.f5880f = uVarC;
            for (u uVar2 = uVar.f5880f; uVar2 != uVar; uVar2 = uVar2.f5880f) {
                u uVar3 = uVarC.f5881g;
                ue.d.b(uVar3);
                ue.d.b(uVar2);
                uVar3.b(uVar2.c());
            }
            iVar.f5853b = this.f5853b;
        }
        return iVar;
    }

    @Override // fg.k
    public final byte[] B(long j10) throws EOFException {
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(ta.q.j(j10, "byteCount: ").toString());
        }
        if (this.f5853b < j10) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j10];
        readFully(bArr);
        return bArr;
    }

    @Override // fg.k
    public final void D(i iVar, long j10) throws EOFException {
        ue.d.e(iVar, "sink");
        long j11 = this.f5853b;
        if (j11 >= j10) {
            iVar.write(this, j10);
        } else {
            iVar.write(this, j11);
            throw new EOFException();
        }
    }

    @Override // fg.k
    public final void F(long j10) throws EOFException {
        if (this.f5853b < j10) {
            throw new EOFException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a4 A[EDGE_INSN: B:44:0x00a4->B:37:0x00a4 BREAK  A[LOOP:0: B:5:0x0012->B:46:?], SYNTHETIC] */
    @Override // fg.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long H() throws EOFException {
        int i10;
        if (this.f5853b == 0) {
            throw new EOFException();
        }
        long j10 = 0;
        int i11 = 0;
        boolean z = false;
        do {
            u uVar = this.f5852a;
            ue.d.b(uVar);
            int i12 = uVar.f5876b;
            int i13 = uVar.f5877c;
            while (i12 < i13) {
                byte b10 = uVar.f5875a[i12];
                if (b10 >= 48 && b10 <= 57) {
                    i10 = b10 - 48;
                } else if (b10 >= 97 && b10 <= 102) {
                    i10 = b10 - 87;
                } else if (b10 >= 65 && b10 <= 70) {
                    i10 = b10 - 55;
                } else {
                    if (i11 == 0) {
                        char[] cArr = gg.b.f6164a;
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(new String(new char[]{cArr[(b10 >> 4) & 15], cArr[b10 & 15]})));
                    }
                    z = true;
                    if (i12 != i13) {
                        this.f5852a = uVar.a();
                        v.a(uVar);
                    } else {
                        uVar.f5876b = i12;
                    }
                    if (!z) {
                        break;
                    }
                }
                if ((j10 & (-1152921504606846976L)) != 0) {
                    i iVar = new i();
                    iVar.Y(j10);
                    iVar.W(b10);
                    throw new NumberFormatException("Number too large: ".concat(iVar.Q()));
                }
                j10 = (j10 << 4) | i10;
                i12++;
                i11++;
            }
            if (i12 != i13) {
            }
            if (!z) {
            }
        } while (this.f5852a != null);
        this.f5853b -= i11;
        return j10;
    }

    @Override // fg.k
    public final InputStream I() {
        return new h(this, 0);
    }

    public final long J() {
        long j10 = this.f5853b;
        if (j10 == 0) {
            return 0L;
        }
        u uVar = this.f5852a;
        ue.d.b(uVar);
        u uVar2 = uVar.f5881g;
        ue.d.b(uVar2);
        if (uVar2.f5877c < 8192 && uVar2.f5879e) {
            j10 -= r3 - uVar2.f5876b;
        }
        return j10;
    }

    public final void K(long j10, i iVar, long j11) {
        ue.d.e(iVar, "out");
        e0.d(this.f5853b, j10, j11);
        if (j11 == 0) {
            return;
        }
        iVar.f5853b += j11;
        u uVar = this.f5852a;
        while (true) {
            ue.d.b(uVar);
            long j12 = uVar.f5877c - uVar.f5876b;
            if (j10 < j12) {
                break;
            }
            j10 -= j12;
            uVar = uVar.f5880f;
        }
        while (j11 > 0) {
            ue.d.b(uVar);
            u uVarC = uVar.c();
            int i10 = uVarC.f5876b + ((int) j10);
            uVarC.f5876b = i10;
            uVarC.f5877c = Math.min(i10 + ((int) j11), uVarC.f5877c);
            u uVar2 = iVar.f5852a;
            if (uVar2 == null) {
                uVarC.f5881g = uVarC;
                uVarC.f5880f = uVarC;
                iVar.f5852a = uVarC;
            } else {
                u uVar3 = uVar2.f5881g;
                ue.d.b(uVar3);
                uVar3.b(uVarC);
            }
            j11 -= uVarC.f5877c - uVarC.f5876b;
            uVar = uVar.f5880f;
            j10 = 0;
        }
    }

    public final byte L(long j10) {
        e0.d(this.f5853b, j10, 1L);
        u uVar = this.f5852a;
        if (uVar == null) {
            ue.d.b(null);
            throw null;
        }
        long j11 = this.f5853b;
        if (j11 - j10 < j10) {
            while (j11 > j10) {
                uVar = uVar.f5881g;
                ue.d.b(uVar);
                j11 -= uVar.f5877c - uVar.f5876b;
            }
            return uVar.f5875a[(int) ((uVar.f5876b + j10) - j11)];
        }
        long j12 = 0;
        while (true) {
            int i10 = uVar.f5877c;
            int i11 = uVar.f5876b;
            long j13 = (i10 - i11) + j12;
            if (j13 > j10) {
                return uVar.f5875a[(int) ((i11 + j10) - j12)];
            }
            uVar = uVar.f5880f;
            ue.d.b(uVar);
            j12 = j13;
        }
    }

    public final long M(byte b10, long j10, long j11) {
        u uVar;
        long j12 = 0;
        if (0 > j10 || j10 > j11) {
            throw new IllegalArgumentException(("size=" + this.f5853b + " fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        long j13 = this.f5853b;
        if (j11 > j13) {
            j11 = j13;
        }
        if (j10 == j11 || (uVar = this.f5852a) == null) {
            return -1L;
        }
        if (j13 - j10 < j10) {
            while (j13 > j10) {
                uVar = uVar.f5881g;
                ue.d.b(uVar);
                j13 -= uVar.f5877c - uVar.f5876b;
            }
            while (j13 < j11) {
                int iMin = (int) Math.min(uVar.f5877c, (uVar.f5876b + j11) - j13);
                for (int i10 = (int) ((uVar.f5876b + j10) - j13); i10 < iMin; i10++) {
                    if (uVar.f5875a[i10] == b10) {
                        return (i10 - uVar.f5876b) + j13;
                    }
                }
                j13 += uVar.f5877c - uVar.f5876b;
                uVar = uVar.f5880f;
                ue.d.b(uVar);
                j10 = j13;
            }
            return -1L;
        }
        while (true) {
            long j14 = (uVar.f5877c - uVar.f5876b) + j12;
            if (j14 > j10) {
                break;
            }
            uVar = uVar.f5880f;
            ue.d.b(uVar);
            j12 = j14;
        }
        while (j12 < j11) {
            int iMin2 = (int) Math.min(uVar.f5877c, (uVar.f5876b + j11) - j12);
            for (int i11 = (int) ((uVar.f5876b + j10) - j12); i11 < iMin2; i11++) {
                if (uVar.f5875a[i11] == b10) {
                    return (i11 - uVar.f5876b) + j12;
                }
            }
            j12 += uVar.f5877c - uVar.f5876b;
            uVar = uVar.f5880f;
            ue.d.b(uVar);
            j10 = j12;
        }
        return -1L;
    }

    public final long N(l lVar) {
        int i10;
        int i11;
        ue.d.e(lVar, "targetBytes");
        u uVar = this.f5852a;
        if (uVar == null) {
            return -1L;
        }
        long j10 = this.f5853b;
        long j11 = 0;
        if (j10 < 0) {
            while (j10 > 0) {
                uVar = uVar.f5881g;
                ue.d.b(uVar);
                j10 -= uVar.f5877c - uVar.f5876b;
            }
            if (lVar.g() == 2) {
                byte bJ = lVar.j(0);
                byte bJ2 = lVar.j(1);
                while (j10 < this.f5853b) {
                    i10 = (int) ((uVar.f5876b + j11) - j10);
                    int i12 = uVar.f5877c;
                    while (i10 < i12) {
                        byte b10 = uVar.f5875a[i10];
                        if (b10 == bJ || b10 == bJ2) {
                            i11 = uVar.f5876b;
                        } else {
                            i10++;
                        }
                    }
                    j10 += uVar.f5877c - uVar.f5876b;
                    uVar = uVar.f5880f;
                    ue.d.b(uVar);
                    j11 = j10;
                }
                return -1L;
            }
            byte[] bArrI = lVar.i();
            while (j10 < this.f5853b) {
                i10 = (int) ((uVar.f5876b + j11) - j10);
                int i13 = uVar.f5877c;
                while (i10 < i13) {
                    byte b11 = uVar.f5875a[i10];
                    for (byte b12 : bArrI) {
                        if (b11 == b12) {
                            i11 = uVar.f5876b;
                        }
                    }
                    i10++;
                }
                j10 += uVar.f5877c - uVar.f5876b;
                uVar = uVar.f5880f;
                ue.d.b(uVar);
                j11 = j10;
            }
            return -1L;
        }
        j10 = 0;
        while (true) {
            long j12 = (uVar.f5877c - uVar.f5876b) + j10;
            if (j12 > 0) {
                break;
            }
            uVar = uVar.f5880f;
            ue.d.b(uVar);
            j10 = j12;
        }
        if (lVar.g() == 2) {
            byte bJ3 = lVar.j(0);
            byte bJ4 = lVar.j(1);
            while (j10 < this.f5853b) {
                i10 = (int) ((uVar.f5876b + j11) - j10);
                int i14 = uVar.f5877c;
                while (i10 < i14) {
                    byte b13 = uVar.f5875a[i10];
                    if (b13 == bJ3 || b13 == bJ4) {
                        i11 = uVar.f5876b;
                    } else {
                        i10++;
                    }
                }
                j10 += uVar.f5877c - uVar.f5876b;
                uVar = uVar.f5880f;
                ue.d.b(uVar);
                j11 = j10;
            }
            return -1L;
        }
        byte[] bArrI2 = lVar.i();
        while (j10 < this.f5853b) {
            i10 = (int) ((uVar.f5876b + j11) - j10);
            int i15 = uVar.f5877c;
            while (i10 < i15) {
                byte b14 = uVar.f5875a[i10];
                for (byte b15 : bArrI2) {
                    if (b14 == b15) {
                        i11 = uVar.f5876b;
                    }
                }
                i10++;
            }
            j10 += uVar.f5877c - uVar.f5876b;
            uVar = uVar.f5880f;
            ue.d.b(uVar);
            j11 = j10;
        }
        return -1L;
        return (i10 - i11) + j10;
    }

    public final void O(g gVar) {
        ue.d.e(gVar, "unsafeCursor");
        byte[] bArr = gg.a.f6163a;
        if (gVar == e0.f5842a) {
            gVar = new g();
        }
        if (gVar.f5843a != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        gVar.f5843a = this;
        gVar.f5844b = true;
    }

    public final String P(long j10, Charset charset) throws EOFException {
        ue.d.e(charset, "charset");
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(ta.q.j(j10, "byteCount: ").toString());
        }
        if (this.f5853b < j10) {
            throw new EOFException();
        }
        if (j10 == 0) {
            return "";
        }
        u uVar = this.f5852a;
        ue.d.b(uVar);
        int i10 = uVar.f5876b;
        if (i10 + j10 > uVar.f5877c) {
            return new String(B(j10), charset);
        }
        int i11 = (int) j10;
        String str = new String(uVar.f5875a, i10, i11, charset);
        int i12 = uVar.f5876b + i11;
        uVar.f5876b = i12;
        this.f5853b -= j10;
        if (i12 == uVar.f5877c) {
            this.f5852a = uVar.a();
            v.a(uVar);
        }
        return str;
    }

    public final String Q() {
        return P(this.f5853b, bf.a.f2815a);
    }

    public final l R(int i10) {
        if (i10 == 0) {
            return l.f5854d;
        }
        e0.d(this.f5853b, 0L, i10);
        u uVar = this.f5852a;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            ue.d.b(uVar);
            int i14 = uVar.f5877c;
            int i15 = uVar.f5876b;
            if (i14 == i15) {
                throw new AssertionError("s.limit == s.pos");
            }
            i12 += i14 - i15;
            i13++;
            uVar = uVar.f5880f;
        }
        byte[][] bArr = new byte[i13][];
        int[] iArr = new int[i13 * 2];
        u uVar2 = this.f5852a;
        int i16 = 0;
        while (i11 < i10) {
            ue.d.b(uVar2);
            bArr[i16] = uVar2.f5875a;
            i11 += uVar2.f5877c - uVar2.f5876b;
            iArr[i16] = Math.min(i11, i10);
            iArr[i16 + i13] = uVar2.f5876b;
            uVar2.f5878d = true;
            i16++;
            uVar2 = uVar2.f5880f;
        }
        return new w(bArr, iArr);
    }

    public final u S(int i10) {
        if (i10 < 1 || i10 > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        u uVar = this.f5852a;
        if (uVar == null) {
            u uVarB = v.b();
            this.f5852a = uVarB;
            uVarB.f5881g = uVarB;
            uVarB.f5880f = uVarB;
            return uVarB;
        }
        u uVar2 = uVar.f5881g;
        ue.d.b(uVar2);
        if (uVar2.f5877c + i10 <= 8192 && uVar2.f5879e) {
            return uVar2;
        }
        u uVarB2 = v.b();
        uVar2.b(uVarB2);
        return uVarB2;
    }

    public final void T(l lVar) {
        ue.d.e(lVar, "byteString");
        lVar.r(this, lVar.g());
    }

    public final void U(byte[] bArr) {
        ue.d.e(bArr, "source");
        V(bArr, 0, bArr.length);
    }

    public final void V(byte[] bArr, int i10, int i11) {
        ue.d.e(bArr, "source");
        long j10 = i11;
        e0.d(bArr.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            u uVarS = S(1);
            int iMin = Math.min(i12 - i10, 8192 - uVarS.f5877c);
            int i13 = i10 + iMin;
            je.i.f0(uVarS.f5877c, bArr, i10, uVarS.f5875a, i13);
            uVarS.f5877c += iMin;
            i10 = i13;
        }
        this.f5853b += j10;
    }

    public final void W(int i10) {
        u uVarS = S(1);
        int i11 = uVarS.f5877c;
        uVarS.f5877c = i11 + 1;
        uVarS.f5875a[i11] = (byte) i10;
        this.f5853b++;
    }

    public final void X(long j10) {
        boolean z;
        byte[] bArr;
        if (j10 == 0) {
            W(48);
            return;
        }
        int i10 = 1;
        if (j10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                e0("-9223372036854775808");
                return;
            }
            z = true;
        } else {
            z = false;
        }
        if (j10 >= 100000000) {
            i10 = j10 < 1000000000000L ? j10 < 10000000000L ? j10 < 1000000000 ? 9 : 10 : j10 < 100000000000L ? 11 : 12 : j10 < 1000000000000000L ? j10 < 10000000000000L ? 13 : j10 < 100000000000000L ? 14 : 15 : j10 < 100000000000000000L ? j10 < 10000000000000000L ? 16 : 17 : j10 < 1000000000000000000L ? 18 : 19;
        } else if (j10 >= 10000) {
            i10 = j10 < 1000000 ? j10 < 100000 ? 5 : 6 : j10 < 10000000 ? 7 : 8;
        } else if (j10 >= 100) {
            i10 = j10 < 1000 ? 3 : 4;
        } else if (j10 >= 10) {
            i10 = 2;
        }
        if (z) {
            i10++;
        }
        u uVarS = S(i10);
        int i11 = uVarS.f5877c + i10;
        while (true) {
            bArr = uVarS.f5875a;
            if (j10 == 0) {
                break;
            }
            long j11 = 10;
            i11--;
            bArr[i11] = gg.a.f6163a[(int) (j10 % j11)];
            j10 /= j11;
        }
        if (z) {
            bArr[i11 - 1] = 45;
        }
        uVarS.f5877c += i10;
        this.f5853b += i10;
    }

    public final void Y(long j10) {
        if (j10 == 0) {
            W(48);
            return;
        }
        long j11 = (j10 >>> 1) | j10;
        long j12 = j11 | (j11 >>> 2);
        long j13 = j12 | (j12 >>> 4);
        long j14 = j13 | (j13 >>> 8);
        long j15 = j14 | (j14 >>> 16);
        long j16 = j15 | (j15 >>> 32);
        long j17 = j16 - ((j16 >>> 1) & 6148914691236517205L);
        long j18 = ((j17 >>> 2) & 3689348814741910323L) + (j17 & 3689348814741910323L);
        long j19 = ((j18 >>> 4) + j18) & 1085102592571150095L;
        long j20 = j19 + (j19 >>> 8);
        long j21 = j20 + (j20 >>> 16);
        int i10 = (int) ((((j21 & 63) + ((j21 >>> 32) & 63)) + 3) / 4);
        u uVarS = S(i10);
        int i11 = uVarS.f5877c;
        for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
            uVarS.f5875a[i12] = gg.a.f6163a[(int) (15 & j10)];
            j10 >>>= 4;
        }
        uVarS.f5877c += i10;
        this.f5853b += i10;
    }

    public final void Z(int i10) {
        u uVarS = S(4);
        int i11 = uVarS.f5877c;
        byte[] bArr = uVarS.f5875a;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        uVarS.f5877c = i11 + 4;
        this.f5853b += 4;
    }

    public final void a0(long j10) {
        u uVarS = S(8);
        int i10 = uVarS.f5877c;
        byte[] bArr = uVarS.f5875a;
        bArr[i10] = (byte) ((j10 >>> 56) & 255);
        bArr[i10 + 1] = (byte) ((j10 >>> 48) & 255);
        bArr[i10 + 2] = (byte) ((j10 >>> 40) & 255);
        bArr[i10 + 3] = (byte) ((j10 >>> 32) & 255);
        bArr[i10 + 4] = (byte) ((j10 >>> 24) & 255);
        bArr[i10 + 5] = (byte) ((j10 >>> 16) & 255);
        bArr[i10 + 6] = (byte) ((j10 >>> 8) & 255);
        bArr[i10 + 7] = (byte) (j10 & 255);
        uVarS.f5877c = i10 + 8;
        this.f5853b += 8;
    }

    public final void b0(int i10) {
        u uVarS = S(2);
        int i11 = uVarS.f5877c;
        byte[] bArr = uVarS.f5875a;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        uVarS.f5877c = i11 + 2;
        this.f5853b += 2;
    }

    @Override // fg.k
    public final l c(long j10) throws EOFException {
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(ta.q.j(j10, "byteCount: ").toString());
        }
        if (this.f5853b < j10) {
            throw new EOFException();
        }
        if (j10 < 4096) {
            return new l(B(j10));
        }
        l lVarR = R((int) j10);
        skip(j10);
        return lVarR;
    }

    public final void c0(String str, int i10, int i11, Charset charset) {
        ue.d.e(str, "string");
        ue.d.e(charset, "charset");
        if (i10 < 0) {
            throw new IllegalArgumentException(da.b.a(i10, "beginIndex < 0: ").toString());
        }
        if (i11 < i10) {
            throw new IllegalArgumentException(android.support.v4.media.session.a.o("endIndex < beginIndex: ", i11, i10, " < ").toString());
        }
        if (i11 > str.length()) {
            StringBuilder sbN = g.b.n("endIndex > string.length: ", i11, " > ");
            sbN.append(str.length());
            throw new IllegalArgumentException(sbN.toString().toString());
        }
        if (charset.equals(bf.a.f2815a)) {
            d0(i10, i11, str);
            return;
        }
        String strSubstring = str.substring(i10, i11);
        ue.d.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        byte[] bytes = strSubstring.getBytes(charset);
        ue.d.d(bytes, "this as java.lang.String).getBytes(charset)");
        V(bytes, 0, bytes.length);
    }

    public final void d0(int i10, int i11, String str) {
        char cCharAt;
        ue.d.e(str, "string");
        if (i10 < 0) {
            throw new IllegalArgumentException(da.b.a(i10, "beginIndex < 0: ").toString());
        }
        if (i11 < i10) {
            throw new IllegalArgumentException(android.support.v4.media.session.a.o("endIndex < beginIndex: ", i11, i10, " < ").toString());
        }
        if (i11 > str.length()) {
            StringBuilder sbN = g.b.n("endIndex > string.length: ", i11, " > ");
            sbN.append(str.length());
            throw new IllegalArgumentException(sbN.toString().toString());
        }
        while (i10 < i11) {
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 < 128) {
                u uVarS = S(1);
                int i12 = uVarS.f5877c - i10;
                int iMin = Math.min(i11, 8192 - i12);
                int i13 = i10 + 1;
                byte[] bArr = uVarS.f5875a;
                bArr[i10 + i12] = (byte) cCharAt2;
                while (true) {
                    i10 = i13;
                    if (i10 >= iMin || (cCharAt = str.charAt(i10)) >= 128) {
                        break;
                    }
                    i13 = i10 + 1;
                    bArr[i10 + i12] = (byte) cCharAt;
                }
                int i14 = uVarS.f5877c;
                int i15 = (i12 + i10) - i14;
                uVarS.f5877c = i14 + i15;
                this.f5853b += i15;
            } else {
                if (cCharAt2 < 2048) {
                    u uVarS2 = S(2);
                    int i16 = uVarS2.f5877c;
                    byte[] bArr2 = uVarS2.f5875a;
                    bArr2[i16] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i16 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    uVarS2.f5877c = i16 + 2;
                    this.f5853b += 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    u uVarS3 = S(3);
                    int i17 = uVarS3.f5877c;
                    byte[] bArr3 = uVarS3.f5875a;
                    bArr3[i17] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i17 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i17 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    uVarS3.f5877c = i17 + 3;
                    this.f5853b += 3;
                } else {
                    int i18 = i10 + 1;
                    char cCharAt3 = i18 < i11 ? str.charAt(i18) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        W(63);
                        i10 = i18;
                    } else {
                        int i19 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        u uVarS4 = S(4);
                        int i20 = uVarS4.f5877c;
                        byte[] bArr4 = uVarS4.f5875a;
                        bArr4[i20] = (byte) ((i19 >> 18) | 240);
                        bArr4[i20 + 1] = (byte) (((i19 >> 12) & 63) | 128);
                        bArr4[i20 + 2] = (byte) (((i19 >> 6) & 63) | 128);
                        bArr4[i20 + 3] = (byte) ((i19 & 63) | 128);
                        uVarS4.f5877c = i20 + 4;
                        this.f5853b += 4;
                        i10 += 2;
                    }
                }
                i10++;
            }
        }
    }

    public final void e0(String str) {
        ue.d.e(str, "string");
        d0(0, str.length(), str);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof i) {
                long j10 = this.f5853b;
                i iVar = (i) obj;
                if (j10 == iVar.f5853b) {
                    if (j10 != 0) {
                        u uVar = this.f5852a;
                        ue.d.b(uVar);
                        u uVar2 = iVar.f5852a;
                        ue.d.b(uVar2);
                        int i10 = uVar.f5876b;
                        int i11 = uVar2.f5876b;
                        long j11 = 0;
                        while (j11 < this.f5853b) {
                            long jMin = Math.min(uVar.f5877c - i10, uVar2.f5877c - i11);
                            long j12 = 0;
                            while (j12 < jMin) {
                                int i12 = i10 + 1;
                                byte b10 = uVar.f5875a[i10];
                                int i13 = i11 + 1;
                                if (b10 == uVar2.f5875a[i11]) {
                                    j12++;
                                    i11 = i13;
                                    i10 = i12;
                                }
                            }
                            if (i10 == uVar.f5877c) {
                                u uVar3 = uVar.f5880f;
                                ue.d.b(uVar3);
                                i10 = uVar3.f5876b;
                                uVar = uVar3;
                            }
                            if (i11 == uVar2.f5877c) {
                                uVar2 = uVar2.f5880f;
                                ue.d.b(uVar2);
                                i11 = uVar2.f5876b;
                            }
                            j11 += jMin;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final void f0(int i10) {
        String str;
        int i11 = 0;
        if (i10 < 128) {
            W(i10);
            return;
        }
        if (i10 < 2048) {
            u uVarS = S(2);
            int i12 = uVarS.f5877c;
            byte[] bArr = uVarS.f5875a;
            bArr[i12] = (byte) ((i10 >> 6) | 192);
            bArr[1 + i12] = (byte) ((i10 & 63) | 128);
            uVarS.f5877c = i12 + 2;
            this.f5853b += 2;
            return;
        }
        if (55296 <= i10 && i10 < 57344) {
            W(63);
            return;
        }
        if (i10 < 65536) {
            u uVarS2 = S(3);
            int i13 = uVarS2.f5877c;
            byte[] bArr2 = uVarS2.f5875a;
            bArr2[i13] = (byte) ((i10 >> 12) | 224);
            bArr2[1 + i13] = (byte) (((i10 >> 6) & 63) | 128);
            bArr2[2 + i13] = (byte) ((i10 & 63) | 128);
            uVarS2.f5877c = i13 + 3;
            this.f5853b += 3;
            return;
        }
        if (i10 <= 1114111) {
            u uVarS3 = S(4);
            int i14 = uVarS3.f5877c;
            byte[] bArr3 = uVarS3.f5875a;
            bArr3[i14] = (byte) ((i10 >> 18) | 240);
            bArr3[1 + i14] = (byte) (((i10 >> 12) & 63) | 128);
            bArr3[2 + i14] = (byte) (((i10 >> 6) & 63) | 128);
            bArr3[3 + i14] = (byte) ((i10 & 63) | 128);
            uVarS3.f5877c = i14 + 4;
            this.f5853b += 4;
            return;
        }
        StringBuilder sb2 = new StringBuilder("Unexpected code point: 0x");
        if (i10 != 0) {
            char[] cArr = gg.b.f6164a;
            char[] cArr2 = {cArr[(i10 >> 28) & 15], cArr[(i10 >> 24) & 15], cArr[(i10 >> 20) & 15], cArr[(i10 >> 16) & 15], cArr[(i10 >> 12) & 15], cArr[(i10 >> 8) & 15], cArr[(i10 >> 4) & 15], cArr[i10 & 15]};
            while (i11 < 8 && cArr2[i11] == '0') {
                i11++;
            }
            if (i11 < 0) {
                throw new IndexOutOfBoundsException(g.b.i("startIndex: ", i11, ", endIndex: 8, size: 8"));
            }
            if (i11 > 8) {
                throw new IllegalArgumentException(g.b.i("startIndex: ", i11, " > endIndex: 8"));
            }
            str = new String(cArr2, i11, 8 - i11);
        } else {
            str = "0";
        }
        sb2.append(str);
        throw new IllegalArgumentException(sb2.toString());
    }

    public final int hashCode() {
        u uVar = this.f5852a;
        if (uVar == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = uVar.f5877c;
            for (int i12 = uVar.f5876b; i12 < i11; i12++) {
                i10 = (i10 * 31) + uVar.f5875a[i12];
            }
            uVar = uVar.f5880f;
            ue.d.b(uVar);
        } while (uVar != this.f5852a);
        return i10;
    }

    @Override // fg.k
    public final byte[] i() {
        return B(this.f5853b);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // fg.k
    public final boolean j() {
        return this.f5853b == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        r2 = new fg.i();
        r2.X(r9);
        r2.W(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
    
        if (r12 != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0053, code lost:
    
        r2.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0065, code lost:
    
        throw new java.lang.NumberFormatException("Number too large: ".concat(r2.Q()));
     */
    @Override // fg.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long k() throws EOFException {
        int i10;
        int i11;
        byte b10 = 48;
        if (this.f5853b == 0) {
            throw new EOFException();
        }
        long j10 = -7;
        long j11 = 0;
        int i12 = 0;
        boolean z = false;
        boolean z4 = false;
        loop0: while (true) {
            u uVar = this.f5852a;
            ue.d.b(uVar);
            int i13 = uVar.f5876b;
            int i14 = uVar.f5877c;
            while (i13 < i14) {
                byte b11 = uVar.f5875a[i13];
                if (b11 >= b10 && b11 <= 57) {
                    int i15 = 48 - b11;
                    if (j11 < -922337203685477580L) {
                        break loop0;
                    }
                    i11 = i14;
                    if (j11 == -922337203685477580L && i15 < j10) {
                        break loop0;
                    }
                    j11 = (j11 * 10) + i15;
                } else {
                    i11 = i14;
                    if (b11 != 45 || i12 != 0) {
                        i10 = i11;
                        z4 = true;
                        break;
                    }
                    j10--;
                    z = true;
                }
                i13++;
                i12++;
                i14 = i11;
                b10 = 48;
            }
            i10 = i14;
            if (i13 == i10) {
                this.f5852a = uVar.a();
                v.a(uVar);
            } else {
                uVar.f5876b = i13;
            }
            if (z4 || this.f5852a == null) {
                break;
            }
            b10 = 48;
        }
        long j12 = this.f5853b - i12;
        this.f5853b = j12;
        if (i12 >= (z ? 2 : 1)) {
            return z ? j11 : -j11;
        }
        if (j12 == 0) {
            throw new EOFException();
        }
        StringBuilder sbB = d0.f.b(z ? "Expected a digit" : "Expected a digit or '-'", " but was 0x");
        byte bL = L(0L);
        char[] cArr = gg.b.f6164a;
        sbB.append(new String(new char[]{cArr[(bL >> 4) & 15], cArr[bL & 15]}));
        throw new NumberFormatException(sbB.toString());
    }

    @Override // fg.k
    public final String l(long j10) throws EOFException {
        if (j10 < 0) {
            throw new IllegalArgumentException(ta.q.j(j10, "limit < 0: ").toString());
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        long jM = M((byte) 10, 0L, j11);
        if (jM != -1) {
            return gg.a.a(this, jM);
        }
        if (j11 < this.f5853b && L(j11 - 1) == 13 && L(j11) == 10) {
            return gg.a.a(this, j11);
        }
        i iVar = new i();
        K(0L, iVar, Math.min(32, this.f5853b));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f5853b, j10) + " content=" + iVar.c(iVar.f5853b).h() + (char) 8230);
    }

    @Override // fg.k
    public final boolean p(l lVar) {
        ue.d.e(lVar, "bytes");
        int iG = lVar.g();
        if (iG < 0 || this.f5853b < iG || lVar.g() < iG) {
            return false;
        }
        for (int i10 = 0; i10 < iG; i10++) {
            if (L(i10) != lVar.j(i10)) {
                return false;
            }
        }
        return true;
    }

    public final void r() throws EOFException {
        skip(this.f5853b);
    }

    @Override // fg.z
    public final long read(i iVar, long j10) {
        ue.d.e(iVar, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException(ta.q.j(j10, "byteCount < 0: ").toString());
        }
        long j11 = this.f5853b;
        if (j11 == 0) {
            return -1L;
        }
        if (j10 > j11) {
            j10 = j11;
        }
        iVar.write(this, j10);
        return j10;
    }

    @Override // fg.k
    public final byte readByte() throws EOFException {
        if (this.f5853b == 0) {
            throw new EOFException();
        }
        u uVar = this.f5852a;
        ue.d.b(uVar);
        int i10 = uVar.f5876b;
        int i11 = uVar.f5877c;
        int i12 = i10 + 1;
        byte b10 = uVar.f5875a[i10];
        this.f5853b--;
        if (i12 == i11) {
            this.f5852a = uVar.a();
            v.a(uVar);
        } else {
            uVar.f5876b = i12;
        }
        return b10;
    }

    @Override // fg.k
    public final void readFully(byte[] bArr) throws EOFException {
        ue.d.e(bArr, "sink");
        int i10 = 0;
        while (i10 < bArr.length) {
            int i11 = read(bArr, i10, bArr.length - i10);
            if (i11 == -1) {
                throw new EOFException();
            }
            i10 += i11;
        }
    }

    @Override // fg.k
    public final int readInt() throws EOFException {
        if (this.f5853b < 4) {
            throw new EOFException();
        }
        u uVar = this.f5852a;
        ue.d.b(uVar);
        int i10 = uVar.f5876b;
        int i11 = uVar.f5877c;
        if (i11 - i10 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = uVar.f5875a;
        int i12 = i10 + 3;
        int i13 = ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 2] & 255) << 8);
        int i14 = i10 + 4;
        int i15 = i13 | (bArr[i12] & 255);
        this.f5853b -= 4;
        if (i14 == i11) {
            this.f5852a = uVar.a();
            v.a(uVar);
        } else {
            uVar.f5876b = i14;
        }
        return i15;
    }

    @Override // fg.k
    public final long readLong() throws EOFException {
        if (this.f5853b < 8) {
            throw new EOFException();
        }
        u uVar = this.f5852a;
        ue.d.b(uVar);
        int i10 = uVar.f5876b;
        int i11 = uVar.f5877c;
        if (i11 - i10 < 8) {
            return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
        }
        byte[] bArr = uVar.f5875a;
        int i12 = i10 + 7;
        long j10 = ((bArr[i10] & 255) << 56) | ((bArr[i10 + 1] & 255) << 48) | ((bArr[i10 + 2] & 255) << 40) | ((bArr[i10 + 3] & 255) << 32) | ((bArr[i10 + 4] & 255) << 24) | ((bArr[i10 + 5] & 255) << 16) | ((bArr[i10 + 6] & 255) << 8);
        int i13 = i10 + 8;
        long j11 = (bArr[i12] & 255) | j10;
        this.f5853b -= 8;
        if (i13 == i11) {
            this.f5852a = uVar.a();
            v.a(uVar);
        } else {
            uVar.f5876b = i13;
        }
        return j11;
    }

    @Override // fg.k
    public final short readShort() throws EOFException {
        if (this.f5853b < 2) {
            throw new EOFException();
        }
        u uVar = this.f5852a;
        ue.d.b(uVar);
        int i10 = uVar.f5876b;
        int i11 = uVar.f5877c;
        if (i11 - i10 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        int i12 = i10 + 1;
        byte[] bArr = uVar.f5875a;
        int i13 = (bArr[i10] & 255) << 8;
        int i14 = i10 + 2;
        int i15 = (bArr[i12] & 255) | i13;
        this.f5853b -= 2;
        if (i14 == i11) {
            this.f5852a = uVar.a();
            v.a(uVar);
        } else {
            uVar.f5876b = i14;
        }
        return (short) i15;
    }

    @Override // fg.k
    public final void skip(long j10) throws EOFException {
        while (j10 > 0) {
            u uVar = this.f5852a;
            if (uVar == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j10, uVar.f5877c - uVar.f5876b);
            long j11 = iMin;
            this.f5853b -= j11;
            j10 -= j11;
            int i10 = uVar.f5876b + iMin;
            uVar.f5876b = i10;
            if (i10 == uVar.f5877c) {
                this.f5852a = uVar.a();
                v.a(uVar);
            }
        }
    }

    @Override // fg.k
    public final String t(Charset charset) {
        ue.d.e(charset, "charset");
        return P(this.f5853b, charset);
    }

    @Override // fg.z
    public final c0 timeout() {
        return c0.NONE;
    }

    public final String toString() {
        long j10 = this.f5853b;
        if (j10 <= 2147483647L) {
            return R((int) j10).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.f5853b).toString());
    }

    @Override // fg.k
    public final l v() {
        return c(this.f5853b);
    }

    @Override // fg.k
    public final boolean w(long j10) {
        return this.f5853b >= j10;
    }

    @Override // fg.j
    public final /* bridge */ /* synthetic */ j write(l lVar) {
        T(lVar);
        return this;
    }

    @Override // fg.j
    public final long writeAll(z zVar) {
        ue.d.e(zVar, "source");
        long j10 = 0;
        while (true) {
            long j11 = zVar.read(this, 8192L);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
        }
    }

    @Override // fg.j
    public final /* bridge */ /* synthetic */ j writeByte(int i10) {
        W(i10);
        return this;
    }

    @Override // fg.j
    public final /* bridge */ /* synthetic */ j writeDecimalLong(long j10) {
        X(j10);
        return this;
    }

    @Override // fg.j
    public final /* bridge */ /* synthetic */ j writeHexadecimalUnsignedLong(long j10) {
        Y(j10);
        return this;
    }

    @Override // fg.j
    public final /* bridge */ /* synthetic */ j writeInt(int i10) {
        Z(i10);
        return this;
    }

    @Override // fg.j
    public final /* bridge */ /* synthetic */ j writeShort(int i10) {
        b0(i10);
        return this;
    }

    @Override // fg.j
    public final /* bridge */ /* synthetic */ j writeUtf8(String str) {
        e0(str);
        return this;
    }

    @Override // fg.k
    public final String z() {
        return l(Long.MAX_VALUE);
    }

    @Override // fg.j
    public final /* bridge */ /* synthetic */ j write(byte[] bArr) {
        U(bArr);
        return this;
    }

    @Override // fg.j
    public final /* bridge */ /* synthetic */ j write(byte[] bArr, int i10, int i11) {
        V(bArr, i10, i11);
        return this;
    }

    @Override // fg.x
    public final void write(i iVar, long j10) {
        u uVarB;
        ue.d.e(iVar, "source");
        if (iVar != this) {
            e0.d(iVar.f5853b, 0L, j10);
            while (j10 > 0) {
                u uVar = iVar.f5852a;
                ue.d.b(uVar);
                int i10 = uVar.f5877c;
                ue.d.b(iVar.f5852a);
                int i11 = 0;
                if (j10 < i10 - r1.f5876b) {
                    u uVar2 = this.f5852a;
                    u uVar3 = uVar2 != null ? uVar2.f5881g : null;
                    if (uVar3 != null && uVar3.f5879e) {
                        if ((uVar3.f5877c + j10) - (uVar3.f5878d ? 0 : uVar3.f5876b) <= 8192) {
                            u uVar4 = iVar.f5852a;
                            ue.d.b(uVar4);
                            uVar4.d(uVar3, (int) j10);
                            iVar.f5853b -= j10;
                            this.f5853b += j10;
                            return;
                        }
                    }
                    u uVar5 = iVar.f5852a;
                    ue.d.b(uVar5);
                    int i12 = (int) j10;
                    if (i12 > 0 && i12 <= uVar5.f5877c - uVar5.f5876b) {
                        if (i12 >= 1024) {
                            uVarB = uVar5.c();
                        } else {
                            uVarB = v.b();
                            int i13 = uVar5.f5876b;
                            je.i.f0(0, uVar5.f5875a, i13, uVarB.f5875a, i13 + i12);
                        }
                        uVarB.f5877c = uVarB.f5876b + i12;
                        uVar5.f5876b += i12;
                        u uVar6 = uVar5.f5881g;
                        ue.d.b(uVar6);
                        uVar6.b(uVarB);
                        iVar.f5852a = uVarB;
                    } else {
                        throw new IllegalArgumentException("byteCount out of range");
                    }
                }
                u uVar7 = iVar.f5852a;
                ue.d.b(uVar7);
                long j11 = uVar7.f5877c - uVar7.f5876b;
                iVar.f5852a = uVar7.a();
                u uVar8 = this.f5852a;
                if (uVar8 == null) {
                    this.f5852a = uVar7;
                    uVar7.f5881g = uVar7;
                    uVar7.f5880f = uVar7;
                } else {
                    u uVar9 = uVar8.f5881g;
                    ue.d.b(uVar9);
                    uVar9.b(uVar7);
                    u uVar10 = uVar7.f5881g;
                    if (uVar10 != uVar7) {
                        ue.d.b(uVar10);
                        if (uVar10.f5879e) {
                            int i14 = uVar7.f5877c - uVar7.f5876b;
                            u uVar11 = uVar7.f5881g;
                            ue.d.b(uVar11);
                            int i15 = 8192 - uVar11.f5877c;
                            u uVar12 = uVar7.f5881g;
                            ue.d.b(uVar12);
                            if (!uVar12.f5878d) {
                                u uVar13 = uVar7.f5881g;
                                ue.d.b(uVar13);
                                i11 = uVar13.f5876b;
                            }
                            if (i14 <= i15 + i11) {
                                u uVar14 = uVar7.f5881g;
                                ue.d.b(uVar14);
                                uVar7.d(uVar14, i14);
                                uVar7.a();
                                v.a(uVar7);
                            }
                        }
                    } else {
                        throw new IllegalStateException("cannot compact");
                    }
                }
                iVar.f5853b -= j11;
                this.f5853b += j11;
                j10 -= j11;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        ue.d.e(byteBuffer, "sink");
        u uVar = this.f5852a;
        if (uVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), uVar.f5877c - uVar.f5876b);
        byteBuffer.put(uVar.f5875a, uVar.f5876b, iMin);
        int i10 = uVar.f5876b + iMin;
        uVar.f5876b = i10;
        this.f5853b -= iMin;
        if (i10 == uVar.f5877c) {
            this.f5852a = uVar.a();
            v.a(uVar);
        }
        return iMin;
    }

    public final int read(byte[] bArr, int i10, int i11) {
        ue.d.e(bArr, "sink");
        e0.d(bArr.length, i10, i11);
        u uVar = this.f5852a;
        if (uVar == null) {
            return -1;
        }
        int iMin = Math.min(i11, uVar.f5877c - uVar.f5876b);
        int i12 = uVar.f5876b;
        je.i.f0(i10, uVar.f5875a, i12, bArr, i12 + iMin);
        int i13 = uVar.f5876b + iMin;
        uVar.f5876b = i13;
        this.f5853b -= iMin;
        if (i13 == uVar.f5877c) {
            this.f5852a = uVar.a();
            v.a(uVar);
        }
        return iMin;
    }

    @Override // fg.k, fg.j
    public final i buffer() {
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, fg.x
    public final void close() {
    }

    @Override // fg.j
    public final j emit() {
        return this;
    }

    @Override // fg.j
    public final j emitCompleteSegments() {
        return this;
    }

    @Override // fg.j, fg.x, java.io.Flushable
    public final void flush() {
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        ue.d.e(byteBuffer, "source");
        int iRemaining = byteBuffer.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            u uVarS = S(1);
            int iMin = Math.min(i10, 8192 - uVarS.f5877c);
            byteBuffer.get(uVarS.f5875a, uVarS.f5877c, iMin);
            i10 -= iMin;
            uVarS.f5877c += iMin;
        }
        this.f5853b += iRemaining;
        return iRemaining;
    }
}
