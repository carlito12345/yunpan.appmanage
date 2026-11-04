package androidx.leanback.widget;

import java.io.InputStream;

/* loaded from: classes.dex */
public class i implements gi.b, w4.e, yh.n, yh.m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1646a;

    /* renamed from: b, reason: collision with root package name */
    public int f1647b;

    public /* synthetic */ i(int i10) {
        this.f1646a = i10;
    }

    @Override // w4.e
    public void a(w4.q qVar) {
        n(qVar);
    }

    @Override // yh.m
    public boolean b() {
        switch (this.f1646a) {
            case 11:
                return true;
            default:
                return false;
        }
    }

    @Override // yh.n
    public InputStream c(InputStream inputStream, yh.b bVar) {
        switch (this.f1646a) {
            case 11:
                return new yh.j(inputStream, this.f1647b);
            default:
                return new yh.s(inputStream, this.f1647b, bVar);
        }
    }

    @Override // w4.e
    public void d(w4.h hVar) {
        n(hVar);
    }

    @Override // yh.m
    public boolean e() {
        switch (this.f1646a) {
            case 11:
                return false;
            default:
                return true;
        }
    }

    @Override // yh.n
    public int f() {
        switch (this.f1646a) {
            case 11:
                return 1;
            default:
                return (yh.s.A(this.f1647b) / 1024) + 104;
        }
    }

    @Override // gi.b
    public int g(int i10, int i11, byte[] bArr) {
        int i12;
        int i13;
        switch (this.f1646a) {
            case 2:
                int i14 = (i11 + i10) - 4;
                int i15 = i10;
                while (i15 <= i14) {
                    byte b10 = bArr[i15 + 3];
                    if ((b10 & 252) == 148) {
                        q4.a.Z(i15, ((q4.a.p(i15, bArr) + (-(((this.f1647b + i15) - i10) >>> 2))) & 67108863) | (-1811939328), bArr);
                    } else if ((b10 & 159) == 144) {
                        int iP = q4.a.p(i15, bArr);
                        int i16 = ((iP >>> 29) & 3) | ((iP >>> 3) & 2097148);
                        if (((i16 + 131072) & 1835008) == 0) {
                            int i17 = i16 + (-(((this.f1647b + i15) - i10) >>> 12));
                            q4.a.Z(i15, (iP & (-1879048161)) | ((i17 & 3) << 29) | ((262140 & i17) << 3) | ((-(i17 & 131072)) & 14680064), bArr);
                        }
                    }
                    i15 += 4;
                }
                int i18 = i15 - i10;
                this.f1647b += i18;
                return i18;
            default:
                int i19 = (i11 + i10) - 8;
                int i20 = i10;
                while (i20 <= i19) {
                    byte b11 = bArr[i20];
                    int i21 = b11 & 255;
                    if (i21 == 239) {
                        int i22 = i20 + 1;
                        byte b12 = bArr[i22];
                        if ((b12 & 13) == 0) {
                            int i23 = i20 + 2;
                            int i24 = i20 + 3;
                            int i25 = ((((b12 & 240) << 13) | ((bArr[i23] & 255) << 9)) | ((bArr[i24] & 255) << 1)) - ((this.f1647b + i20) - i10);
                            bArr[i22] = (byte) ((b12 & 15) | ((i25 >>> 8) & 240));
                            bArr[i23] = (byte) (((i25 >>> 16) & 15) | ((i25 >>> 7) & 16) | ((i25 << 4) & 224));
                            bArr[i24] = (byte) (((i25 >>> 13) & 128) | ((i25 >>> 4) & 127));
                            i20 = i23;
                        }
                    } else if ((b11 & Byte.MAX_VALUE) == 23) {
                        int i26 = ((bArr[i20 + 1] & 255) << 8) | i21;
                        int i27 = i20 + 2;
                        int i28 = i26 | ((bArr[i27] & 255) << 16) | ((bArr[i20 + 3] & 255) << 24);
                        if ((i28 & 3712) != 0) {
                            i27 = i20 + 4;
                            int iP2 = q4.a.p(i27, bArr);
                            if ((((i28 << 8) ^ iP2) & 1015811) == 3) {
                                i12 = (i28 & (-4096)) + (iP2 >>> 20);
                                i13 = (iP2 << 12) | 279;
                                q4.a.Z(i20, i13, bArr);
                                q4.a.Z(i20 + 4, i12, bArr);
                                i20 += 6;
                            }
                            i20 = i27;
                        } else {
                            int i29 = i28 >>> 27;
                            if (((i28 - 12544) & 16256) < (i29 & 29)) {
                                int iO = q4.a.o(i20 + 4, bArr) - ((this.f1647b + i20) - i10);
                                i12 = (i28 >>> 12) | (iO << 20);
                                i13 = ((iO + 2048) & (-4096)) | 23 | (i29 << 7);
                                q4.a.Z(i20, i13, bArr);
                                q4.a.Z(i20 + 4, i12, bArr);
                                i20 += 6;
                            }
                            i20 = i27;
                        }
                    }
                    i20 += 2;
                }
                int i30 = i20 - i10;
                this.f1647b += i30;
                return i30;
        }
    }

    @Override // yh.m
    public boolean h() {
        switch (this.f1646a) {
            case 11:
                return false;
            default:
                return true;
        }
    }

    @Override // w4.e
    public void i(w4.r rVar) {
        n(rVar);
    }

    @Override // w4.e
    public void j(w4.i iVar) {
        n(iVar);
    }

    public void k() {
        int i10 = this.f1647b;
        if (i10 <= 3) {
            this.f1647b = 0;
        } else if (i10 <= 9) {
            this.f1647b = i10 - 3;
        } else {
            this.f1647b = i10 - 6;
        }
    }

    public void l() {
        this.f1647b = this.f1647b < 7 ? 8 : 11;
    }

    public void m() {
        this.f1647b = this.f1647b >= 7 ? 10 : 7;
    }

    public void n(w4.f fVar) {
        w4.k kVar = fVar.f17460c;
        if (kVar != null) {
            int iC = kVar.c() + kVar.f17466a;
            if (iC > this.f1647b) {
                this.f1647b = iC;
            }
        }
        w4.l lVar = fVar.f17461d;
        int length = lVar.f2559b.length;
        for (int i10 = 0; i10 < length; i10++) {
            w4.k kVar2 = (w4.k) lVar.d(i10);
            int iC2 = kVar2.c() + kVar2.f17466a;
            if (iC2 > this.f1647b) {
                this.f1647b = iC2;
            }
        }
    }

    public /* synthetic */ i(int i10, int i11) {
        this.f1646a = i11;
        this.f1647b = i10;
    }

    public /* synthetic */ i(int i10, boolean z) {
        this.f1646a = i10;
        this.f1647b = 2;
    }

    public i(byte[] bArr, int i10) throws yh.c0 {
        this.f1646a = i10;
        switch (i10) {
            case 12:
                if (bArr.length == 1) {
                    byte b10 = bArr[0];
                    if ((b10 & 255) <= 37) {
                        int i11 = (b10 & 1) | 2;
                        this.f1647b = i11;
                        this.f1647b = i11 << ((b10 >>> 1) + 11);
                        return;
                    }
                }
                throw new yh.c0("Unsupported LZMA2 properties");
            default:
                if (bArr.length == 1) {
                    this.f1647b = (bArr[0] & 255) + 1;
                    return;
                }
                throw new yh.c0("Unsupported Delta filter properties");
        }
    }

    public i() {
        this.f1646a = 9;
        this.f1647b = 0;
    }
}
