package a9;

import j$.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class t extends r {
    public static final byte[][] l = {new byte[]{6, 8, 42, -122, 72, -50, 61, 3, 1, 7}, new byte[]{6, 5, 43, -127, 4, 0, 34}, new byte[]{6, 5, 43, -127, 4, 0, 35}};

    /* renamed from: m, reason: collision with root package name */
    public static final String[] f528m = {"nistp256", "nistp384", "nistp521"};

    /* renamed from: h, reason: collision with root package name */
    public byte[] f529h;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f530i;

    /* renamed from: j, reason: collision with root package name */
    public byte[] f531j;

    /* renamed from: k, reason: collision with root package name */
    public byte[] f532k;

    static {
        h0.j("-----BEGIN EC PRIVATE KEY-----");
        h0.j("-----END EC PRIVATE KEY-----");
    }

    public t(m7.e eVar) {
        this(eVar, null, null, null, null);
    }

    public static byte[][] s(byte[] bArr) {
        int i10 = 0;
        while (bArr[i10] != 4) {
            i10++;
        }
        int i11 = i10 + 1;
        int length = (bArr.length - i11) / 2;
        byte[] bArr2 = new byte[length];
        int length2 = (bArr.length - i11) / 2;
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr, i11, bArr2, 0, length);
        System.arraycopy(bArr, i11 + length, bArr3, 0, length2);
        return new byte[][]{bArr2, bArr3};
    }

    public static t t(m7.e eVar, a aVar) throws n {
        byte[][] bArrF = aVar.f(5, "invalid key format");
        byte[] bArr = bArrF[1];
        byte[][] bArrS = s(bArrF[2]);
        t tVar = new t(eVar, bArr, bArrS[0], bArrS[1], bArrF[3]);
        tVar.f518b = h0.c(bArrF[4]);
        tVar.f517a = 0;
        return tVar;
    }

    @Override // a9.r
    public final void d() {
        byte[] bArr = h0.f503a;
        h0.d(this.f532k);
    }

    @Override // a9.r
    public final byte[] e() throws n {
        if (this.f520d) {
            throw new n("key is encrypted.");
        }
        a aVar = new a(0, (char) 0);
        String strConcat = "ecdsa-sha2-".concat(h0.c(this.f529h));
        Charset charset = StandardCharsets.UTF_8;
        byte[] bArrK = h0.k(strConcat, charset);
        aVar.p(bArrK.length, bArrK);
        byte[] bArr = this.f529h;
        aVar.p(bArr.length, bArr);
        byte[] bArr2 = this.f530i;
        byte[] bArr3 = this.f531j;
        int length = bArr2.length + 1 + bArr3.length;
        byte[] bArr4 = new byte[length];
        bArr4[0] = 4;
        System.arraycopy(bArr2, 0, bArr4, 1, bArr2.length);
        System.arraycopy(bArr3, 0, bArr4, bArr2.length + 1, bArr3.length);
        aVar.p(length, bArr4);
        byte[] bArr5 = this.f532k;
        aVar.p(bArr5.length, bArr5);
        byte[] bArrK2 = h0.k(this.f518b, charset);
        aVar.p(bArrK2.length, bArrK2);
        int iH = aVar.h();
        byte[] bArr6 = new byte[iH];
        aVar.e(iH, bArr6);
        return bArr6;
    }

    @Override // a9.r
    public final byte[] h() {
        byte[] bArr = this.f522f;
        if (bArr != null) {
            return bArr;
        }
        if (this.f530i == null) {
            return null;
        }
        byte[] bArrK = h0.k("ecdsa-sha2-".concat(h0.c(this.f529h)), StandardCharsets.UTF_8);
        byte[] bArr2 = this.f529h;
        byte[] bArr3 = this.f530i;
        byte[][] bArr4 = {bArrK, bArr2, new byte[bArr3.length + 1 + this.f531j.length]};
        byte[] bArr5 = bArr4[2];
        bArr5[0] = 4;
        System.arraycopy(bArr3, 0, bArr5, 1, bArr3.length);
        byte[] bArr6 = this.f531j;
        System.arraycopy(bArr6, 0, bArr4[2], this.f530i.length + 1, bArr6.length);
        return (byte[]) a.b(bArr4).f474e;
    }

    @Override // a9.r
    public final boolean m(byte[] bArr) throws n {
        int i10;
        m7.e eVar = this.f519c;
        try {
            int i11 = this.f517a;
            if (i11 == 1) {
                return false;
            }
            if (i11 == 2 || i11 == 5) {
                a aVar = new a(bArr);
                aVar.r(bArr.length);
                try {
                    byte[] bArr2 = aVar.f(1, "")[0];
                    this.f532k = bArr2;
                    int length = bArr2.length;
                    return true;
                } catch (n unused) {
                    eVar.getClass();
                    l.f508f.getClass();
                    return false;
                }
            }
            String[] strArr = f528m;
            if (i11 == 4) {
                a aVar2 = new a(bArr);
                if (aVar2.g() != aVar2.g()) {
                    throw new n("check failed");
                }
                h0.c(aVar2.l());
                this.f529h = aVar2.l();
                if (!Arrays.asList(strArr).contains(h0.c(this.f529h))) {
                    throw new IllegalArgumentException("unknown curve name ".concat(h0.c(this.f529h)));
                }
                int iG = aVar2.g();
                aVar2.d();
                int i12 = iG - 1;
                int i13 = i12 / 2;
                byte[] bArr3 = new byte[i13];
                int i14 = i12 / 2;
                byte[] bArr4 = new byte[i14];
                aVar2.e(i13, bArr3);
                aVar2.e(i14, bArr4);
                this.f532k = aVar2.l();
                byte[] bArrL = aVar2.l();
                this.f518b = new String(bArrL, 0, bArrL.length, StandardCharsets.UTF_8);
                this.f530i = bArr3;
                this.f531j = bArr4;
                return true;
            }
            if (bArr[0] != 48) {
                return false;
            }
            byte b10 = bArr[1];
            if ((b10 & 128) != 0) {
                int i15 = b10 & Byte.MAX_VALUE;
                i10 = 2;
                while (true) {
                    int i16 = i15 - 1;
                    if (i15 <= 0) {
                        break;
                    }
                    int i17 = i10 + 1;
                    byte b11 = bArr[i10];
                    i10 = i17;
                    i15 = i16;
                }
            } else {
                i10 = 2;
            }
            if (bArr[i10] != 2) {
                return false;
            }
            int i18 = i10 + 1;
            int i19 = i10 + 2;
            int i20 = bArr[i18];
            int i21 = i20 & 255;
            if ((i20 & 128) != 0) {
                int i22 = i20 & 127;
                i21 = 0;
                while (true) {
                    int i23 = i22 - 1;
                    if (i22 <= 0) {
                        break;
                    }
                    int i24 = (i21 << 8) + (bArr[i19] & 255);
                    i19++;
                    i21 = i24;
                    i22 = i23;
                }
            }
            int i25 = i19 + i21;
            int i26 = i25 + 1;
            int i27 = i25 + 2;
            int i28 = bArr[i26];
            int i29 = i28 & 255;
            if ((i28 & 128) != 0) {
                int i30 = i28 & 127;
                i29 = 0;
                while (true) {
                    int i31 = i30 - 1;
                    if (i30 <= 0) {
                        break;
                    }
                    int i32 = (i29 << 8) + (bArr[i27] & 255);
                    i27++;
                    i29 = i32;
                    i30 = i31;
                }
            }
            byte[] bArr5 = new byte[i29];
            this.f532k = bArr5;
            System.arraycopy(bArr, i27, bArr5, 0, i29);
            int i33 = i27 + i29;
            int i34 = i33 + 1;
            int i35 = i33 + 2;
            int i36 = bArr[i34];
            int i37 = i36 & 255;
            if ((i36 & 128) != 0) {
                int i38 = i36 & 127;
                i37 = 0;
                while (true) {
                    int i39 = i38 - 1;
                    if (i38 <= 0) {
                        break;
                    }
                    int i40 = (i37 << 8) + (bArr[i35] & 255);
                    i35++;
                    i37 = i40;
                    i38 = i39;
                }
            }
            byte[] bArr6 = new byte[i37];
            System.arraycopy(bArr, i35, bArr6, 0, i37);
            int i41 = i35 + i37;
            int i42 = 0;
            while (true) {
                byte[][] bArr7 = l;
                if (i42 >= 3) {
                    break;
                }
                if (h0.a(bArr7[i42], bArr6)) {
                    this.f529h = h0.k(strArr[i42], StandardCharsets.UTF_8);
                    break;
                }
                i42++;
            }
            int i43 = i41 + 1;
            int i44 = i41 + 2;
            int i45 = bArr[i43];
            int i46 = i45 & 255;
            if ((i45 & 128) != 0) {
                int i47 = i45 & 127;
                i46 = 0;
                while (true) {
                    int i48 = i47 - 1;
                    if (i47 <= 0) {
                        break;
                    }
                    int i49 = (i46 << 8) + (bArr[i44] & 255);
                    i44++;
                    i46 = i49;
                    i47 = i48;
                }
            }
            byte[] bArr8 = new byte[i46];
            System.arraycopy(bArr, i44, bArr8, 0, i46);
            byte[][] bArrS = s(bArr8);
            this.f530i = bArrS[0];
            this.f531j = bArrS[1];
            return true;
        } catch (Exception unused2) {
            eVar.getClass();
            l.f508f.getClass();
            return false;
        }
    }

    public final byte[] u() {
        byte[] bArr = {1};
        byte[][] bArr2 = l;
        byte[] bArr3 = this.f530i;
        byte[] bArr4 = bArr2[bArr3.length >= 64 ? (char) 2 : bArr3.length >= 48 ? (char) 1 : (char) 0];
        byte[] bArr5 = this.f531j;
        int length = bArr3.length + 1 + bArr5.length;
        byte[] bArr6 = new byte[length];
        bArr6[0] = 4;
        System.arraycopy(bArr3, 0, bArr6, 1, bArr3.length);
        System.arraycopy(bArr5, 0, bArr6, bArr3.length + 1, bArr5.length);
        int i10 = length + 1;
        int i11 = (i10 & 128) == 0 ? 3 : 4;
        int i12 = length + i11;
        byte[] bArr7 = new byte[i12];
        System.arraycopy(bArr6, 0, bArr7, i11, length);
        bArr7[0] = 3;
        if (i11 == 3) {
            bArr7[1] = (byte) i10;
        } else {
            bArr7[1] = -127;
            bArr7[2] = (byte) i10;
        }
        int iB = r.b(i12) + r.b(bArr4.length) + r.b(this.f532k.length) + r.b(1) + 3 + this.f532k.length + 1 + bArr4.length + 1 + i12;
        byte[] bArr8 = new byte[r.b(iB) + 1 + iB];
        bArr8[0] = 48;
        int iQ = r.q(r.r(1, iB, bArr8), bArr8, bArr);
        byte[] bArr9 = this.f532k;
        bArr8[iQ] = 4;
        int iR = r.r(iQ + 1, bArr9.length, bArr8);
        System.arraycopy(bArr9, 0, bArr8, iR, bArr9.length);
        int length2 = iR + bArr9.length;
        bArr8[length2] = -96;
        int iR2 = r.r(length2 + 1, bArr4.length, bArr8);
        System.arraycopy(bArr4, 0, bArr8, iR2, bArr4.length);
        int length3 = iR2 + bArr4.length;
        bArr8[length3] = -95;
        System.arraycopy(bArr7, 0, bArr8, r.r(1 + length3, i12, bArr8), i12);
        return bArr8;
    }

    public t(m7.e eVar, byte[] bArr) {
        this(eVar, null, null, null, null);
        if (bArr != null) {
            byte[] bArr2 = new byte[8];
            System.arraycopy(bArr, 11, bArr2, 0, 8);
            Charset charset = StandardCharsets.UTF_8;
            if (h0.a(bArr2, h0.k("nistp384", charset))) {
                this.f529h = bArr2;
            }
            if (h0.a(bArr2, h0.k("nistp521", charset))) {
                this.f529h = bArr2;
            }
        }
    }

    public t(m7.e eVar, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(eVar);
        this.f529h = h0.k(f528m[0], StandardCharsets.UTF_8);
        if (bArr != null) {
            this.f529h = bArr;
        }
        this.f530i = bArr2;
        this.f531j = bArr3;
        this.f532k = bArr4;
    }
}
