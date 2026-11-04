package ei;

/* loaded from: classes3.dex */
public final class f extends b {

    /* renamed from: m, reason: collision with root package name */
    public final di.c f5018m;

    /* renamed from: n, reason: collision with root package name */
    public final fi.a f5019n;

    /* renamed from: o, reason: collision with root package name */
    public final e f5020o;

    /* renamed from: p, reason: collision with root package name */
    public final c f5021p;

    /* renamed from: q, reason: collision with root package name */
    public final c f5022q;

    public f(di.c cVar, fi.a aVar, int i10, int i11, int i12) {
        super(i12);
        this.f5021p = new c(this);
        this.f5022q = new c(this);
        this.f5018m = cVar;
        this.f5019n = aVar;
        this.f5020o = new e(this, i10, i11);
        a();
    }

    @Override // ei.b
    public final void a() {
        super.a();
        int i10 = 0;
        while (true) {
            d[] dVarArr = (d[]) this.f5020o.f5016c;
            if (i10 >= dVarArr.length) {
                this.f5021p.a();
                this.f5022q.a();
                return;
            } else {
                com.bumptech.glide.c.H((short[]) dVarArr[i10].f1a);
                i10++;
            }
        }
    }

    public final void b() throws yh.h {
        int i10;
        int iB;
        di.c cVar = this.f5018m;
        int i11 = cVar.f4705g;
        if (i11 > 0) {
            cVar.a(cVar.f4706h, i11);
        }
        while (true) {
            int i12 = cVar.f4702d;
            int iO0 = 1;
            boolean z = i12 < cVar.f4704f;
            fi.a aVar = this.f5019n;
            if (!z) {
                aVar.q0();
                return;
            }
            int i13 = i12 & this.f5001a;
            androidx.leanback.widget.i iVar = this.f5003c;
            if (aVar.o0(this.f5004d[iVar.f1647b], i13) == 0) {
                e eVar = this.f5020o;
                di.c cVar2 = ((f) eVar.f5017d).f5018m;
                int i14 = cVar2.f4702d;
                int i15 = i14 - 1;
                if (i14 <= 0) {
                    i15 += cVar2.f4700b;
                }
                d dVar = ((d[]) eVar.f5016c)[eVar.b(cVar2.f4699a[i15] & 255, i14)];
                f fVar = (f) dVar.f5013b.f5017d;
                boolean z4 = fVar.f5003c.f1647b < 7;
                short[] sArr = (short[]) dVar.f1a;
                if (z4) {
                    do {
                        iO0 = (iO0 << 1) | fVar.f5019n.o0(sArr, iO0);
                    } while (iO0 < 256);
                } else {
                    di.c cVar3 = fVar.f5018m;
                    int i16 = fVar.f5002b[0];
                    int i17 = cVar3.f4702d;
                    int i18 = (i17 - i16) - 1;
                    if (i16 >= i17) {
                        i18 += cVar3.f4700b;
                    }
                    int i19 = cVar3.f4699a[i18] & 255;
                    int i20 = 256;
                    int i21 = 1;
                    do {
                        i19 <<= 1;
                        int i22 = i19 & i20;
                        int iO02 = fVar.f5019n.o0(sArr, i20 + i22 + i21);
                        i21 = (i21 << 1) | iO02;
                        i20 &= (i22 ^ (-1)) ^ (0 - iO02);
                    } while (i21 < 256);
                    iO0 = i21;
                }
                di.c cVar4 = fVar.f5018m;
                byte b10 = (byte) iO0;
                int i23 = cVar4.f4702d;
                int i24 = i23 + 1;
                cVar4.f4702d = i24;
                cVar4.f4699a[i23] = b10;
                if (cVar4.f4703e < i24) {
                    cVar4.f4703e = i24;
                }
                fVar.f5003c.k();
            } else {
                int iO03 = aVar.o0(this.f5005e, iVar.f1647b);
                int[] iArr = this.f5002b;
                if (iO03 == 0) {
                    iVar.m();
                    iArr[3] = iArr[2];
                    iArr[2] = iArr[1];
                    iArr[1] = iArr[0];
                    iB = this.f5021p.b(i13);
                    int iP0 = aVar.p0(this.f5010j[iB < 6 ? iB - 2 : 3]);
                    if (iP0 < 4) {
                        iArr[0] = iP0;
                    } else {
                        int i25 = iP0 >> 1;
                        int i26 = (2 | (iP0 & 1)) << (i25 - 1);
                        iArr[0] = i26;
                        if (iP0 < 14) {
                            short[] sArr2 = this.f5011k[iP0 - 4];
                            int i27 = 1;
                            int i28 = 0;
                            int i29 = 0;
                            while (true) {
                                int iO04 = aVar.o0(sArr2, i27);
                                i27 = (i27 << 1) | iO04;
                                int i30 = i29 + 1;
                                i28 |= iO04 << i29;
                                if (i27 >= sArr2.length) {
                                    break;
                                } else {
                                    i29 = i30;
                                }
                            }
                            iArr[0] = i26 | i28;
                        } else {
                            int i31 = i25 - 5;
                            int i32 = 0;
                            do {
                                aVar.q0();
                                int i33 = aVar.l >>> 1;
                                aVar.l = i33;
                                int i34 = aVar.f5895m;
                                int i35 = (i34 - i33) >>> 31;
                                aVar.f5895m = i34 - (i33 & (i35 - 1));
                                i32 = (i32 << 1) | (1 - i35);
                                i31--;
                            } while (i31 != 0);
                            int i36 = i26 | (i32 << 4);
                            iArr[0] = i36;
                            int i37 = 1;
                            int i38 = 0;
                            int i39 = 0;
                            while (true) {
                                short[] sArr3 = this.l;
                                int iO05 = aVar.o0(sArr3, i37);
                                i37 = (i37 << 1) | iO05;
                                int i40 = i39 + 1;
                                i38 |= iO05 << i39;
                                if (i37 >= sArr3.length) {
                                    break;
                                } else {
                                    i39 = i40;
                                }
                            }
                            iArr[0] = i36 | i38;
                        }
                    }
                } else {
                    if (aVar.o0(this.f5006f, iVar.f1647b) == 0) {
                        if (aVar.o0(this.f5009i[iVar.f1647b], i13) == 0) {
                            iVar.f1647b = iVar.f1647b < 7 ? 9 : 11;
                        }
                        iB = iO0;
                    } else {
                        if (aVar.o0(this.f5007g, iVar.f1647b) == 0) {
                            i10 = iArr[1];
                        } else {
                            if (aVar.o0(this.f5008h, iVar.f1647b) == 0) {
                                i10 = iArr[2];
                            } else {
                                i10 = iArr[3];
                                iArr[3] = iArr[2];
                            }
                            iArr[2] = iArr[1];
                        }
                        iArr[1] = iArr[0];
                        iArr[0] = i10;
                    }
                    iVar.l();
                    iO0 = this.f5022q.b(i13);
                    iB = iO0;
                }
                cVar.a(iArr[0], iB);
            }
        }
    }
}
