package a9;

import j$.nio.charset.StandardCharsets;
import java.math.BigInteger;

/* loaded from: classes.dex */
public final class x extends r {

    /* renamed from: p, reason: collision with root package name */
    public static final byte[] f552p;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f553h;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f554i;

    /* renamed from: j, reason: collision with root package name */
    public byte[] f555j;

    /* renamed from: k, reason: collision with root package name */
    public byte[] f556k;
    public byte[] l;

    /* renamed from: m, reason: collision with root package name */
    public byte[] f557m;

    /* renamed from: n, reason: collision with root package name */
    public byte[] f558n;

    /* renamed from: o, reason: collision with root package name */
    public byte[] f559o;

    static {
        h0.j("-----BEGIN RSA PRIVATE KEY-----");
        h0.j("-----END RSA PRIVATE KEY-----");
        f552p = "ssh-rsa".getBytes(StandardCharsets.UTF_8);
    }

    public x(m7.e eVar) {
        this(eVar, null, null, null);
    }

    public static x s(m7.e eVar, a aVar) throws n {
        byte[][] bArrF = aVar.f(8, "invalid key format");
        x xVar = new x(eVar, bArrF[1], bArrF[2], bArrF[3]);
        xVar.f559o = bArrF[4];
        xVar.f556k = bArrF[5];
        xVar.l = bArrF[6];
        xVar.f518b = h0.c(bArrF[7]);
        xVar.f517a = 0;
        return xVar;
    }

    @Override // a9.r
    public final void d() {
        byte[] bArr = h0.f503a;
        h0.d(this.f555j);
    }

    @Override // a9.r
    public final byte[] e() throws n {
        if (this.f520d) {
            throw new n("key is encrypted.");
        }
        a aVar = new a(0, (char) 0);
        byte[] bArr = f552p;
        aVar.p(bArr.length, bArr);
        byte[] bArr2 = this.f553h;
        aVar.p(bArr2.length, bArr2);
        byte[] bArr3 = this.f554i;
        aVar.p(bArr3.length, bArr3);
        byte[] bArr4 = this.f555j;
        aVar.p(bArr4.length, bArr4);
        byte[] bArrT = t();
        aVar.p(bArrT.length, bArrT);
        byte[] bArr5 = this.f556k;
        aVar.p(bArr5.length, bArr5);
        byte[] bArr6 = this.l;
        aVar.p(bArr6.length, bArr6);
        byte[] bArrK = h0.k(this.f518b, StandardCharsets.UTF_8);
        aVar.p(bArrK.length, bArrK);
        int iH = aVar.h();
        byte[] bArr7 = new byte[iH];
        aVar.e(iH, bArr7);
        return bArr7;
    }

    @Override // a9.r
    public final byte[] h() {
        byte[] bArr = this.f522f;
        if (bArr != null) {
            return bArr;
        }
        byte[] bArr2 = this.f554i;
        if (bArr2 == null) {
            return null;
        }
        return (byte[]) a.b(new byte[][]{f552p, bArr2, this.f553h}).f474e;
    }

    @Override // a9.r
    public final boolean m(byte[] bArr) throws n {
        int i10;
        m7.e eVar = this.f519c;
        try {
            int i11 = this.f517a;
            if (i11 != 2 && i11 != 5) {
                if (i11 == 1) {
                    if (bArr[0] == 48) {
                        eVar.getClass();
                        l.f508f.getClass();
                        return false;
                    }
                    a aVar = new a(bArr);
                    this.f554i = aVar.j();
                    this.f555j = aVar.j();
                    this.f553h = aVar.j();
                    aVar.j();
                    this.f556k = aVar.j();
                    this.l = aVar.j();
                    if (this.f553h != null) {
                        new BigInteger(this.f553h).bitLength();
                    }
                    u();
                    v();
                    t();
                    return true;
                }
                if (i11 == 4) {
                    a aVar2 = new a(bArr);
                    if (aVar2.g() != aVar2.g()) {
                        throw new n("check failed");
                    }
                    h0.c(aVar2.l());
                    this.f553h = aVar2.i();
                    this.f554i = aVar2.i();
                    this.f555j = aVar2.i();
                    this.f559o = aVar2.i();
                    this.f556k = aVar2.i();
                    this.l = aVar2.i();
                    if (this.f553h != null) {
                        new BigInteger(this.f553h).bitLength();
                    }
                    byte[] bArrL = aVar2.l();
                    this.f518b = new String(bArrL, 0, bArrL.length, StandardCharsets.UTF_8);
                    u();
                    v();
                    return true;
                }
                byte b10 = bArr[1];
                if ((b10 & 128) != 0) {
                    int i12 = b10 & Byte.MAX_VALUE;
                    i10 = 2;
                    while (true) {
                        int i13 = i12 - 1;
                        if (i12 <= 0) {
                            break;
                        }
                        int i14 = i10 + 1;
                        byte b11 = bArr[i10];
                        i10 = i14;
                        i12 = i13;
                    }
                } else {
                    i10 = 2;
                }
                if (bArr[i10] != 2) {
                    return false;
                }
                int i15 = i10 + 1;
                int i16 = i10 + 2;
                int i17 = bArr[i15];
                int i18 = i17 & 255;
                if ((i17 & 128) != 0) {
                    int i19 = i17 & 127;
                    i18 = 0;
                    while (true) {
                        int i20 = i19 - 1;
                        if (i19 <= 0) {
                            break;
                        }
                        int i21 = (i18 << 8) + (bArr[i16] & 255);
                        i16++;
                        i18 = i21;
                        i19 = i20;
                    }
                }
                int i22 = i16 + i18;
                int i23 = i22 + 1;
                int i24 = i22 + 2;
                int i25 = bArr[i23];
                int i26 = i25 & 255;
                if ((i25 & 128) != 0) {
                    int i27 = i25 & 127;
                    i26 = 0;
                    while (true) {
                        int i28 = i27 - 1;
                        if (i27 <= 0) {
                            break;
                        }
                        int i29 = (i26 << 8) + (bArr[i24] & 255);
                        i24++;
                        i26 = i29;
                        i27 = i28;
                    }
                }
                byte[] bArr2 = new byte[i26];
                this.f553h = bArr2;
                System.arraycopy(bArr, i24, bArr2, 0, i26);
                int i30 = i24 + i26;
                int i31 = i30 + 1;
                int i32 = i30 + 2;
                int i33 = bArr[i31];
                int i34 = i33 & 255;
                if ((i33 & 128) != 0) {
                    int i35 = i33 & 127;
                    i34 = 0;
                    while (true) {
                        int i36 = i35 - 1;
                        if (i35 <= 0) {
                            break;
                        }
                        int i37 = (i34 << 8) + (bArr[i32] & 255);
                        i32++;
                        i34 = i37;
                        i35 = i36;
                    }
                }
                byte[] bArr3 = new byte[i34];
                this.f554i = bArr3;
                System.arraycopy(bArr, i32, bArr3, 0, i34);
                int i38 = i32 + i34;
                int i39 = i38 + 1;
                int i40 = i38 + 2;
                int i41 = bArr[i39];
                int i42 = i41 & 255;
                if ((i41 & 128) != 0) {
                    int i43 = i41 & 127;
                    i42 = 0;
                    while (true) {
                        int i44 = i43 - 1;
                        if (i43 <= 0) {
                            break;
                        }
                        int i45 = (i42 << 8) + (bArr[i40] & 255);
                        i40++;
                        i42 = i45;
                        i43 = i44;
                    }
                }
                byte[] bArr4 = new byte[i42];
                this.f555j = bArr4;
                System.arraycopy(bArr, i40, bArr4, 0, i42);
                int i46 = i40 + i42;
                int i47 = i46 + 1;
                int i48 = i46 + 2;
                int i49 = bArr[i47];
                int i50 = i49 & 255;
                if ((i49 & 128) != 0) {
                    int i51 = i49 & 127;
                    i50 = 0;
                    while (true) {
                        int i52 = i51 - 1;
                        if (i51 <= 0) {
                            break;
                        }
                        int i53 = (i50 << 8) + (bArr[i48] & 255);
                        i48++;
                        i50 = i53;
                        i51 = i52;
                    }
                }
                byte[] bArr5 = new byte[i50];
                this.f556k = bArr5;
                System.arraycopy(bArr, i48, bArr5, 0, i50);
                int i54 = i48 + i50;
                int i55 = i54 + 1;
                int i56 = i54 + 2;
                int i57 = bArr[i55];
                int i58 = i57 & 255;
                if ((i57 & 128) != 0) {
                    int i59 = i57 & 127;
                    i58 = 0;
                    while (true) {
                        int i60 = i59 - 1;
                        if (i59 <= 0) {
                            break;
                        }
                        int i61 = (i58 << 8) + (bArr[i56] & 255);
                        i56++;
                        i58 = i61;
                        i59 = i60;
                    }
                }
                byte[] bArr6 = new byte[i58];
                this.l = bArr6;
                System.arraycopy(bArr, i56, bArr6, 0, i58);
                int i62 = i56 + i58;
                int i63 = i62 + 1;
                int i64 = i62 + 2;
                int i65 = bArr[i63];
                int i66 = i65 & 255;
                if ((i65 & 128) != 0) {
                    int i67 = i65 & 127;
                    i66 = 0;
                    while (true) {
                        int i68 = i67 - 1;
                        if (i67 <= 0) {
                            break;
                        }
                        int i69 = (i66 << 8) + (bArr[i64] & 255);
                        i64++;
                        i66 = i69;
                        i67 = i68;
                    }
                }
                byte[] bArr7 = new byte[i66];
                this.f557m = bArr7;
                System.arraycopy(bArr, i64, bArr7, 0, i66);
                int i70 = i64 + i66;
                int i71 = i70 + 1;
                int i72 = i70 + 2;
                int i73 = bArr[i71];
                int i74 = i73 & 255;
                if ((i73 & 128) != 0) {
                    int i75 = i73 & 127;
                    i74 = 0;
                    while (true) {
                        int i76 = i75 - 1;
                        if (i75 <= 0) {
                            break;
                        }
                        int i77 = (i74 << 8) + (bArr[i72] & 255);
                        i72++;
                        i74 = i77;
                        i75 = i76;
                    }
                }
                byte[] bArr8 = new byte[i74];
                this.f558n = bArr8;
                System.arraycopy(bArr, i72, bArr8, 0, i74);
                int i78 = i72 + i74;
                int i79 = i78 + 1;
                int i80 = i78 + 2;
                int i81 = bArr[i79];
                int i82 = i81 & 255;
                if ((i81 & 128) != 0) {
                    int i83 = i81 & 127;
                    i82 = 0;
                    while (true) {
                        int i84 = i83 - 1;
                        if (i83 <= 0) {
                            break;
                        }
                        int i85 = (i82 << 8) + (bArr[i80] & 255);
                        i80++;
                        i82 = i85;
                        i83 = i84;
                    }
                }
                byte[] bArr9 = new byte[i82];
                this.f559o = bArr9;
                System.arraycopy(bArr, i80, bArr9, 0, i82);
                if (this.f553h != null) {
                    new BigInteger(this.f553h).bitLength();
                }
                return true;
            }
            a aVar3 = new a(bArr);
            aVar3.r(bArr.length);
            try {
                byte[][] bArrF = aVar3.f(4, "");
                this.f555j = bArrF[0];
                this.f556k = bArrF[1];
                this.l = bArrF[2];
                this.f559o = bArrF[3];
                u();
                v();
                return true;
            } catch (n unused) {
                eVar.getClass();
                l.f508f.getClass();
                return false;
            }
        } catch (Exception unused2) {
            eVar.getClass();
            l.f508f.getClass();
            return false;
        }
    }

    public final byte[] t() {
        if (this.f559o == null) {
            this.f559o = new BigInteger(this.l).modInverse(new BigInteger(this.f556k)).toByteArray();
        }
        return this.f559o;
    }

    public final void u() {
        if (this.f557m == null) {
            this.f557m = new BigInteger(this.f555j).mod(new BigInteger(this.f556k).subtract(BigInteger.ONE)).toByteArray();
        }
    }

    public final void v() {
        if (this.f558n == null) {
            this.f558n = new BigInteger(this.f555j).mod(new BigInteger(this.l).subtract(BigInteger.ONE)).toByteArray();
        }
    }

    public x(m7.e eVar, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        super(eVar);
        this.f553h = bArr;
        this.f554i = bArr2;
        this.f555j = bArr3;
        if (bArr != null) {
            new BigInteger(bArr).bitLength();
        }
    }
}
