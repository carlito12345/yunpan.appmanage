package og;

import eb.h;

/* loaded from: classes.dex */
public final class b extends d.b {

    /* renamed from: d, reason: collision with root package name */
    public boolean f11776d;

    /* renamed from: e, reason: collision with root package name */
    public final int f11777e;

    /* renamed from: f, reason: collision with root package name */
    public final a9.a f11778f;

    /* renamed from: g, reason: collision with root package name */
    public final a9.a f11779g;

    /* renamed from: h, reason: collision with root package name */
    public int f11780h;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f11781i = rg.b.f13774a;

    /* renamed from: j, reason: collision with root package name */
    public int f11782j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ e f11783k;

    public b(e eVar, int i10, int[] iArr, int[] iArr2) {
        this.f11783k = eVar;
        this.f11777e = i10;
        this.f11778f = e.r(iArr);
        this.f11779g = e.r(iArr2);
    }

    @Override // d.b
    public final boolean M() {
        return !this.f11776d;
    }

    @Override // d.b
    public final int b() {
        return this.f11782j - this.f11780h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0118, code lost:
    
        return r5;
     */
    @Override // d.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f0(byte[] bArr, int i10, int i11) {
        int iMin;
        int iMin2;
        int i12;
        int i13 = 0;
        if (i11 != 0) {
            if (!this.f11776d) {
                int i14 = this.f11782j - this.f11780h;
                if (i14 > 0) {
                    iMin = Math.min(i11, i14);
                    System.arraycopy(this.f11781i, this.f11780h, bArr, i10, iMin);
                    this.f11780h += iMin;
                } else {
                    iMin = 0;
                }
                while (true) {
                    if (iMin >= i11) {
                        break;
                    }
                    e eVar = this.f11783k;
                    int iJ = e.J(eVar.f11794c, this.f11778f);
                    h hVar = eVar.f11796e;
                    int i15 = 65535;
                    byte[] bArr2 = (byte[]) hVar.f4847c;
                    if (iJ >= 256) {
                        if (iJ <= 256) {
                            this.f11776d = true;
                            break;
                        }
                        short s8 = e.f11787f[iJ - 257];
                        int iA = rg.b.a(s8 >>> 5, e.K(eVar.f11794c, s8 & 31));
                        int i16 = e.f11788g[e.J(eVar.f11794c, this.f11779g)];
                        int iA2 = rg.b.a(i16 >>> 4, e.K(eVar.f11794c, i16 & 15));
                        if (this.f11781i.length < iA) {
                            this.f11781i = new byte[iA];
                        }
                        this.f11782j = iA;
                        this.f11780h = i13;
                        byte[] bArr3 = this.f11781i;
                        if (iA2 > bArr2.length) {
                            throw new IllegalStateException(da.b.a(iA2, "Illegal distance parameter: "));
                        }
                        int i17 = hVar.f4845a;
                        int i18 = (i17 - iA2) & 65535;
                        if (!hVar.f4846b && i18 >= i17) {
                            throw new IllegalStateException(da.b.a(iA2, "Attempt to read beyond memory: dist="));
                        }
                        int i19 = 0;
                        while (i19 < iA) {
                            byte b10 = bArr2[i18];
                            int i20 = hVar.f4845a;
                            bArr2[i20] = b10;
                            int i21 = (i20 + 1) & i15;
                            if (!hVar.f4846b && i21 < i20) {
                                hVar.f4846b = true;
                            }
                            hVar.f4845a = i21;
                            bArr3[i19] = b10;
                            i19++;
                            i15 = 65535;
                            int i22 = (i18 + 1) & 65535;
                            if (!hVar.f4846b && i22 < i18) {
                                hVar.f4846b = true;
                            }
                            i18 = i22;
                        }
                        int i23 = i10 + iMin;
                        int i24 = i11 - iMin;
                        int i25 = this.f11782j - this.f11780h;
                        if (i25 > 0) {
                            iMin2 = Math.min(i24, i25);
                            System.arraycopy(this.f11781i, this.f11780h, bArr, i23, iMin2);
                            this.f11780h += iMin2;
                        } else {
                            iMin2 = 0;
                        }
                        i12 = iMin2 + iMin;
                    } else {
                        i12 = iMin + 1;
                        int i26 = iMin + i10;
                        byte b11 = (byte) iJ;
                        int i27 = hVar.f4845a;
                        bArr2[i27] = b11;
                        int i28 = 65535 & (i27 + 1);
                        if (!hVar.f4846b && i28 < i27) {
                            hVar.f4846b = true;
                        }
                        hVar.f4845a = i28;
                        bArr[i26] = b11;
                    }
                    iMin = i12;
                    i13 = 0;
                }
            } else {
                return -1;
            }
        } else {
            return 0;
        }
    }

    @Override // d.b
    public final int q0() {
        if (this.f11776d) {
            return 1;
        }
        return this.f11777e;
    }
}
