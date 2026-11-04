package f3;

import a2.u0;
import j$.nio.charset.StandardCharsets;
import j$.util.Objects;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import l2.a0;
import l2.j0;
import l2.k0;
import r1.c0;
import r1.d0;
import r1.f0;
import u7.e0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class n implements l2.o {
    public long A;
    public l2.q B;
    public m[] C;
    public long[][] D;
    public int E;
    public u2.b F;

    /* renamed from: a, reason: collision with root package name */
    public final i3.h f5528a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5529b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f5530c;

    /* renamed from: d, reason: collision with root package name */
    public final u1.q f5531d;

    /* renamed from: e, reason: collision with root package name */
    public final u1.q f5532e;

    /* renamed from: f, reason: collision with root package name */
    public final u1.q f5533f;

    /* renamed from: g, reason: collision with root package name */
    public final u1.q f5534g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayDeque f5535h;

    /* renamed from: i, reason: collision with root package name */
    public final q f5536i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f5537j;

    /* renamed from: k, reason: collision with root package name */
    public y0 f5538k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f5539m;

    /* renamed from: n, reason: collision with root package name */
    public long f5540n;

    /* renamed from: o, reason: collision with root package name */
    public int f5541o;

    /* renamed from: p, reason: collision with root package name */
    public u1.q f5542p;

    /* renamed from: q, reason: collision with root package name */
    public int f5543q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public int f5544s;

    /* renamed from: t, reason: collision with root package name */
    public int f5545t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f5546u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f5547v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f5548w;

    /* renamed from: x, reason: collision with root package name */
    public long f5549x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f5550y;
    public boolean z;

    public n(i3.h hVar, int i10) {
        this.f5528a = hVar;
        this.f5529b = i10;
        this.f5530c = (i10 & 256) != 0;
        e0 e0Var = g0.f15471b;
        this.f5538k = y0.f15549e;
        this.l = (i10 & 4) != 0 ? 3 : 0;
        this.f5536i = new q();
        this.f5537j = new ArrayList();
        this.f5534g = new u1.q(16);
        this.f5535h = new ArrayDeque();
        this.f5531d = new u1.q(v1.o.f16386a);
        this.f5532e = new u1.q(6);
        this.f5533f = new u1.q();
        this.f5543q = -1;
        this.B = l2.q.C0;
        this.C = new m[0];
    }

    @Override // l2.o
    public final l2.o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        if ((this.f5529b & 16) == 0) {
            qVar = new androidx.room.i(qVar, this.f5528a);
        }
        this.B = qVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0655, code lost:
    
        throw r1.f0.b("Atom size less than header length (unsupported).");
     */
    /* JADX WARN: Removed duplicated region for block: B:192:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0563  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0577  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x057c  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0791  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x057a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:410:0x078f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:428:0x03c5 A[SYNTHETIC] */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(l2.p pVar, dd.c cVar) throws f0 {
        v1.c cVar2;
        boolean z;
        char c7;
        int i10;
        int[] iArr;
        int i11;
        int iG;
        int iO;
        int i12;
        ArrayList arrayList;
        char c10;
        boolean z4;
        int i13 = 3;
        int i14 = 0;
        int i15 = 4;
        int i16 = 8;
        int i17 = 2;
        int i18 = 1;
        if (this.f5530c && this.z) {
            return -1;
        }
        while (true) {
            int i19 = this.l;
            ArrayDeque arrayDeque = this.f5535h;
            u1.q qVar = this.f5533f;
            int i20 = this.f5529b;
            if (i19 == 0) {
                int i21 = this.f5541o;
                u1.q qVar2 = this.f5534g;
                if (i21 == 0) {
                    if (pVar.b(qVar2.f15266a, 0, i16, true)) {
                        this.f5541o = i16;
                        qVar2.O(0);
                        this.f5540n = qVar2.D();
                        this.f5539m = qVar2.o();
                    } else {
                        if (this.E == 2 && (i20 & 2) != 0) {
                            j0 j0VarZ = this.B.z(0, 4);
                            u2.b bVar = this.F;
                            d0 d0Var = bVar == null ? null : new d0(bVar);
                            r1.o oVar = new r1.o();
                            oVar.f13490k = d0Var;
                            j0VarZ.g(new r1.p(oVar));
                            this.B.q();
                            this.B.s(new l2.s(-9223372036854775807L));
                        }
                        z = false;
                        if (z) {
                            return -1;
                        }
                        i13 = 3;
                        i14 = 0;
                        i15 = 4;
                        i16 = 8;
                    }
                }
                long j10 = this.f5540n;
                if (j10 == 1) {
                    pVar.readFully(qVar2.f15266a, i16, i16);
                    this.f5541o += i16;
                    this.f5540n = qVar2.H();
                } else if (j10 == 0) {
                    long length = pVar.getLength();
                    if (length == -1 && (cVar2 = (v1.c) arrayDeque.peek()) != null) {
                        length = cVar2.f16328c;
                    }
                    if (length != -1) {
                        this.f5540n = (length - pVar.getPosition()) + this.f5541o;
                    }
                }
                long j11 = this.f5540n;
                int i22 = this.f5541o;
                long j12 = i22;
                if (j11 < j12) {
                    if (this.f5539m != 1718773093 || i22 != i16) {
                        break;
                    }
                    this.f5540n = j12;
                }
                int i23 = this.f5539m;
                if (i23 == 1836019574 || i23 == 1953653099 || i23 == 1835297121 || i23 == 1835626086 || i23 == 1937007212 || i23 == 1701082227 || i23 == 1835365473 || i23 == 1635284069) {
                    long position = pVar.getPosition();
                    long j13 = this.f5540n;
                    long j14 = this.f5541o;
                    long j15 = (position + j13) - j14;
                    if (j13 != j14 && this.f5539m == 1835365473) {
                        qVar.L(8);
                        pVar.a(0, 8, qVar.f15266a);
                        e.a(qVar);
                        pVar.i(qVar.f15267b);
                        pVar.h();
                    }
                    arrayDeque.push(new v1.c(this.f5539m, j15));
                    if (this.f5540n == this.f5541o) {
                        h(j15);
                    } else {
                        this.l = 0;
                        this.f5541o = 0;
                    }
                } else if (i23 == 1835296868 || i23 == 1836476516 || i23 == 1751411826 || i23 == 1937011556 || i23 == 1937011827 || i23 == 1937011571 || i23 == 1668576371 || i23 == 1701606260 || i23 == 1937011555 || i23 == 1937011578 || i23 == 1937013298 || i23 == 1937007471 || i23 == 1668232756 || i23 == 1953196132 || i23 == 1718909296 || i23 == 1969517665 || i23 == 1801812339 || i23 == 1768715124) {
                    a9.o.t(i22 == i16);
                    a9.o.t(this.f5540n <= 2147483647L);
                    u1.q qVar3 = new u1.q((int) this.f5540n);
                    System.arraycopy(qVar2.f15266a, 0, qVar3.f15266a, 0, i16);
                    this.f5542p = qVar3;
                    this.l = 1;
                } else {
                    long position2 = pVar.getPosition();
                    long j16 = this.f5541o;
                    long j17 = position2 - j16;
                    if (this.f5539m == 1836086884) {
                        this.F = new u2.b(0L, j17, -9223372036854775807L, j17 + j16, this.f5540n - j16);
                    }
                    this.f5542p = null;
                    this.l = 1;
                }
                z = true;
                if (z) {
                }
            } else {
                if (i19 != i18) {
                    if (i19 != i17) {
                        if (i19 != i13) {
                            throw new IllegalStateException();
                        }
                        ArrayList arrayList2 = this.f5537j;
                        q qVar4 = this.f5536i;
                        int i24 = qVar4.f5557b;
                        if (i24 != 0) {
                            if (i24 != i18) {
                                ArrayList arrayList3 = qVar4.f5556a;
                                short s8 = 2817;
                                short s10 = 2192;
                                if (i24 == i17) {
                                    ArrayList arrayList4 = arrayList3;
                                    long length2 = pVar.getLength();
                                    int i25 = qVar4.f5558c - 20;
                                    u1.q qVar5 = new u1.q(i25);
                                    pVar.readFully(qVar5.f15266a, i14, i25);
                                    int i26 = 0;
                                    while (i26 < i25 / 12) {
                                        qVar5.P(2);
                                        qVar5.g(2);
                                        byte[] bArr = qVar5.f15266a;
                                        int i27 = qVar5.f15267b;
                                        int i28 = i27 + 1;
                                        qVar5.f15267b = i28;
                                        int i29 = bArr[i27] & 255;
                                        qVar5.f15267b = i27 + 2;
                                        short s11 = (short) (i29 | ((bArr[i28] & 255) << i16));
                                        if (s11 != s10 && s11 != 2816 && s11 != s8) {
                                            if (s11 != 2819 && s11 != 2820) {
                                                qVar5.P(i16);
                                                arrayList = arrayList4;
                                            }
                                            i26++;
                                            arrayList4 = arrayList;
                                            s8 = 2817;
                                            s10 = 2192;
                                        }
                                        arrayList = arrayList4;
                                        arrayList.add(new p((length2 - qVar4.f5558c) - qVar5.q(), qVar5.q()));
                                        i26++;
                                        arrayList4 = arrayList;
                                        s8 = 2817;
                                        s10 = 2192;
                                    }
                                    ArrayList arrayList5 = arrayList4;
                                    if (arrayList5.isEmpty()) {
                                        cVar.f4591b = 0L;
                                    } else {
                                        qVar4.f5557b = 3;
                                        cVar.f4591b = ((p) arrayList5.get(0)).f5552a;
                                    }
                                } else {
                                    if (i24 != i13) {
                                        throw new IllegalStateException();
                                    }
                                    long position3 = pVar.getPosition();
                                    int length3 = (int) ((pVar.getLength() - pVar.getPosition()) - qVar4.f5558c);
                                    u1.q qVar6 = new u1.q(length3);
                                    pVar.readFully(qVar6.f15266a, i14, length3);
                                    int i30 = 0;
                                    while (i30 < arrayList3.size()) {
                                        p pVar2 = (p) arrayList3.get(i30);
                                        ArrayList arrayList6 = arrayList3;
                                        qVar6.O((int) (pVar2.f5552a - position3));
                                        qVar6.P(i15);
                                        int iQ = qVar6.q();
                                        Charset charset = StandardCharsets.UTF_8;
                                        switch (qVar6.z(charset, iQ)) {
                                            case "SlowMotion_Data":
                                                c10 = 2192;
                                                break;
                                            case "Super_SlowMotion_Edit_Data":
                                                c10 = 2819;
                                                break;
                                            case "Super_SlowMotion_Data":
                                                c10 = 2816;
                                                break;
                                            case "Super_SlowMotion_Deflickering_On":
                                                c10 = 2820;
                                                break;
                                            case "Super_SlowMotion_BGM":
                                                c10 = 2817;
                                                break;
                                            default:
                                                throw f0.a(null, "Invalid SEF name");
                                        }
                                        int i31 = pVar2.f5553b - (iQ + i16);
                                        if (c10 == 2192) {
                                            ArrayList arrayList7 = new ArrayList();
                                            List listE = q.f5555e.E(qVar6.z(charset, i31));
                                            for (int i32 = 0; i32 < listE.size(); i32++) {
                                                List listE2 = q.f5554d.E((CharSequence) listE.get(i32));
                                                if (listE2.size() != i13) {
                                                    throw f0.a(null, null);
                                                }
                                                try {
                                                    arrayList7.add(new a3.a(Long.parseLong((String) listE2.get(i14)), Long.parseLong((String) listE2.get(1)), 1 << (Integer.parseInt((String) listE2.get(2)) - 1)));
                                                } catch (NumberFormatException e7) {
                                                    throw f0.a(e7, null);
                                                }
                                            }
                                            arrayList2.add(new a3.b(arrayList7));
                                        } else if (c10 != 2816 && c10 != 2817 && c10 != 2819 && c10 != 2820) {
                                            throw new IllegalStateException();
                                        }
                                        i30++;
                                        arrayList3 = arrayList6;
                                        i15 = 4;
                                    }
                                    cVar.f4591b = 0L;
                                }
                            } else {
                                u1.q qVar7 = new u1.q(i16);
                                pVar.readFully(qVar7.f15266a, 0, i16);
                                qVar4.f5558c = qVar7.q() + i16;
                                if (qVar7.o() != 1397048916) {
                                    cVar.f4591b = 0L;
                                } else {
                                    cVar.f4591b = pVar.getPosition() - (qVar4.f5558c - 12);
                                    qVar4.f5557b = 2;
                                }
                            }
                            i12 = 1;
                        } else {
                            long length4 = pVar.getLength();
                            cVar.f4591b = (length4 == -1 || length4 < 8) ? 0L : length4 - 8;
                            i12 = 1;
                            qVar4.f5557b = 1;
                        }
                        if (cVar.f4591b == 0) {
                            this.l = 0;
                            this.f5541o = 0;
                        }
                        return i12;
                    }
                    long position4 = pVar.getPosition();
                    if (this.f5543q == -1) {
                        int i33 = -1;
                        int i34 = -1;
                        boolean z10 = true;
                        boolean z11 = true;
                        int i35 = 0;
                        long j18 = Long.MAX_VALUE;
                        long j19 = Long.MAX_VALUE;
                        long j20 = Long.MAX_VALUE;
                        while (true) {
                            m[] mVarArr = this.C;
                            if (i35 >= mVarArr.length) {
                                break;
                            }
                            m mVar = mVarArr[i35];
                            int i36 = mVar.f5526e;
                            v vVar = mVar.f5523b;
                            if (i36 != vVar.f5593b) {
                                long j21 = vVar.f5594c[i36];
                                long[][] jArr = this.D;
                                jArr.getClass();
                                long j22 = jArr[i35][i36];
                                long j23 = j21 - position4;
                                boolean z12 = j23 < 0 || j23 >= 262144;
                                if ((!z12 && z11) || (z12 == z11 && j23 < j20)) {
                                    z11 = z12;
                                    j20 = j23;
                                    i34 = i35;
                                    j19 = j22;
                                }
                                if (j22 < j18) {
                                    z10 = z12;
                                    i33 = i35;
                                    j18 = j22;
                                }
                            }
                            i35++;
                        }
                        if (j18 == Long.MAX_VALUE || !z10 || j19 < j18 + 10485760) {
                            i33 = i34;
                        }
                        this.f5543q = i33;
                        if (i33 == -1) {
                            return -1;
                        }
                    }
                    m mVar2 = this.C[this.f5543q];
                    j0 j0Var = mVar2.f5524c;
                    int i37 = mVar2.f5526e;
                    v vVar2 = mVar2.f5523b;
                    long j24 = vVar2.f5594c[i37] + this.A;
                    int[] iArr2 = vVar2.f5595d;
                    int i38 = iArr2[i37];
                    long j25 = (j24 - position4) + this.r;
                    if (j25 < 0 || j25 >= 262144) {
                        cVar.f4591b = j24;
                        return 1;
                    }
                    s sVar = mVar2.f5522a;
                    if (sVar.f5567h == 1) {
                        j25 += 8;
                        i38 -= 8;
                    }
                    pVar.i((int) j25);
                    r1.p pVar3 = sVar.f5566g;
                    boolean zEquals = Objects.equals(pVar3.f13523o, "video/avc");
                    String str = pVar3.f13523o;
                    if (!zEquals ? !Objects.equals(str, "video/hevc") || (i20 & 128) == 0 : (i20 & 32) == 0) {
                        c7 = 1;
                        this.f5546u = true;
                    } else {
                        c7 = 1;
                    }
                    int i39 = sVar.f5570k;
                    k0 k0Var = mVar2.f5525d;
                    if (i39 == 0) {
                        if ("audio/ac4".equals(str)) {
                            if (this.f5544s == 0) {
                                l2.b.f(i38, qVar);
                                i10 = 7;
                                j0Var.a(7, qVar);
                                this.f5544s += 7;
                            } else {
                                i10 = 7;
                            }
                            i38 += i10;
                        } else if (mVar2.f5527f != null && Objects.equals(str, "audio/mpeg")) {
                            r1.p pVar4 = mVar2.f5527f;
                            qVar.L(4);
                            pVar.a(0, 4, qVar.f15266a);
                            pVar.h();
                            a0 a0Var = new a0();
                            if (a0Var.a(qVar.o()) && !Objects.equals(pVar4.f13523o, (String) a0Var.f10397g)) {
                                r1.o oVar2 = new r1.o(pVar4);
                                String str2 = (String) a0Var.f10397g;
                                str2.getClass();
                                oVar2.f13492n = r1.e0.l(str2);
                                pVar4 = new r1.p(oVar2);
                            }
                            mVar2.f5524c.g(pVar4);
                            mVar2.f5527f = null;
                        } else if (k0Var != null) {
                            k0Var.c(pVar);
                        }
                        while (true) {
                            int i40 = this.f5544s;
                            if (i40 >= i38) {
                                break;
                            }
                            int iE = j0Var.e(pVar, i38 - i40, false);
                            this.r += iE;
                            this.f5544s += iE;
                            this.f5545t -= iE;
                        }
                    } else {
                        u1.q qVar8 = this.f5532e;
                        byte[] bArr2 = qVar8.f15266a;
                        bArr2[0] = 0;
                        bArr2[c7] = 0;
                        bArr2[2] = 0;
                        int i41 = 4 - i39;
                        i38 += i41;
                        while (this.f5544s < i38) {
                            int i42 = this.f5545t;
                            if (i42 == 0) {
                                if (this.f5546u) {
                                    iArr = iArr2;
                                } else {
                                    iArr = iArr2;
                                    if (v1.o.g(pVar3) + i39 <= iArr2[i37] - this.r) {
                                        iG = v1.o.g(pVar3);
                                        i11 = i39 + iG;
                                    }
                                    pVar.readFully(bArr2, i41, i11);
                                    this.r += i11;
                                    qVar8.O(0);
                                    iO = qVar8.o();
                                    if (iO >= 0) {
                                        throw f0.a(null, "Invalid NAL length");
                                    }
                                    this.f5545t = iO - iG;
                                    u1.q qVar9 = this.f5531d;
                                    qVar9.O(0);
                                    j0Var.a(4, qVar9);
                                    this.f5544s += 4;
                                    if (iG > 0) {
                                        j0Var.a(iG, qVar8);
                                        this.f5544s += iG;
                                        if (v1.o.f(bArr2, iG, pVar3)) {
                                            this.f5546u = true;
                                        }
                                    }
                                }
                                i11 = i39;
                                iG = 0;
                                pVar.readFully(bArr2, i41, i11);
                                this.r += i11;
                                qVar8.O(0);
                                iO = qVar8.o();
                                if (iO >= 0) {
                                }
                            } else {
                                iArr = iArr2;
                                int iE2 = j0Var.e(pVar, i42, false);
                                this.r += iE2;
                                this.f5544s += iE2;
                                this.f5545t -= iE2;
                            }
                            iArr2 = iArr;
                        }
                    }
                    int i43 = i38;
                    long j26 = vVar2.f5597f[i37];
                    int i44 = vVar2.f5598g[i37];
                    if (!this.f5546u) {
                        i44 |= 67108864;
                    }
                    if (k0Var != null) {
                        k0Var.b(j0Var, j26, i44, i43, 0, null);
                        if (i37 + 1 == vVar2.f5593b) {
                            k0Var.a(j0Var, null);
                        }
                    } else {
                        j0Var.b(j26, i44, i43, 0, null);
                    }
                    mVar2.f5526e++;
                    this.f5543q = -1;
                    this.r = 0;
                    this.f5544s = 0;
                    this.f5545t = 0;
                    this.f5546u = false;
                    return 0;
                }
                long j27 = this.f5540n - this.f5541o;
                long position5 = pVar.getPosition() + j27;
                u1.q qVar10 = this.f5542p;
                if (qVar10 != null) {
                    pVar.readFully(qVar10.f15266a, this.f5541o, (int) j27);
                    if (this.f5539m == 1718909296) {
                        this.f5547v = true;
                        qVar10.O(i16);
                        int iO2 = qVar10.o();
                        int i45 = iO2 != 1751476579 ? iO2 != 1903435808 ? 0 : 1 : 2;
                        if (i45 == 0) {
                            qVar10.P(4);
                            while (true) {
                                if (qVar10.a() <= 0) {
                                    i45 = 0;
                                    break;
                                }
                                int iO3 = qVar10.o();
                                i45 = iO3 != 1751476579 ? iO3 != 1903435808 ? 0 : 1 : 2;
                                if (i45 != 0) {
                                    break;
                                }
                            }
                        }
                        this.E = i45;
                    } else if (!arrayDeque.isEmpty()) {
                        ((v1.c) arrayDeque.peek()).f16329d.add(new v1.d(this.f5539m, qVar10));
                    }
                } else {
                    if (!this.f5547v && this.f5539m == 1835295092) {
                        this.E = 1;
                    }
                    if (j27 < 262144) {
                        pVar.i((int) j27);
                    } else {
                        cVar.f4591b = pVar.getPosition() + j27;
                        z4 = true;
                        h(position5);
                        if (this.f5548w) {
                            this.f5550y = true;
                            cVar.f4591b = this.f5549x;
                            this.f5548w = false;
                            z4 = true;
                        }
                        if (!((z4 || this.l == 2) ? false : true)) {
                            return 1;
                        }
                        i13 = 3;
                        i14 = 0;
                        i15 = 4;
                    }
                }
                z4 = false;
                h(position5);
                if (this.f5548w) {
                }
                if (z4) {
                    if (!((z4 || this.l == 2) ? false : true)) {
                    }
                }
            }
            i17 = 2;
            i18 = 1;
        }
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        this.f5535h.clear();
        this.f5541o = 0;
        this.f5543q = -1;
        this.r = 0;
        this.f5544s = 0;
        this.f5545t = 0;
        this.f5546u = false;
        this.z = false;
        if (j10 == 0) {
            if (this.l != 3) {
                this.l = 0;
                this.f5541o = 0;
                return;
            } else {
                q qVar = this.f5536i;
                qVar.f5556a.clear();
                qVar.f5557b = 0;
                this.f5537j.clear();
                return;
            }
        }
        for (m mVar : this.C) {
            v vVar = mVar.f5523b;
            int iA = vVar.a(j11);
            if (iA == -1) {
                iA = vVar.b(j11);
            }
            mVar.f5526e = iA;
            k0 k0Var = mVar.f5525d;
            if (k0Var != null) {
                k0Var.f10490b = false;
                k0Var.f10491c = 0;
            }
        }
    }

    @Override // l2.o
    public final List f() {
        return this.f5538k;
    }

    @Override // l2.o
    public final boolean g(l2.p pVar) {
        y0 y0VarR;
        l2.g0 g0VarI = r.i(pVar, false, (this.f5529b & 2) != 0);
        if (g0VarI != null) {
            y0VarR = g0.r(g0VarI);
        } else {
            e0 e0Var = g0.f15471b;
            y0VarR = y0.f15549e;
        }
        this.f5538k = y0VarR;
        return g0VarI == null;
    }

    /* JADX WARN: Removed duplicated region for block: B:165:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0124  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(long j10) {
        ArrayList arrayList;
        d0 d0VarF;
        boolean z;
        ArrayDeque arrayDeque;
        d0 d0Var;
        ArrayList arrayList2;
        int i10;
        ArrayDeque arrayDeque2;
        ArrayList arrayList3;
        String str;
        d0 d0Var2;
        boolean z4;
        int i11;
        int i12;
        long j11;
        int i13;
        d0 d0Var3;
        l2.v vVar;
        d0 d0Var4;
        int i14;
        ArrayList arrayList4;
        int length;
        int i15;
        c0 c0Var;
        c0 c0Var2;
        c0 c0Var3;
        while (true) {
            ArrayDeque arrayDeque3 = this.f5535h;
            if (arrayDeque3.isEmpty() || ((v1.c) arrayDeque3.peek()).f16328c != j10) {
                break;
            }
            v1.c cVar = (v1.c) arrayDeque3.pop();
            if (cVar.f567b == 1836019574) {
                v1.c cVarG = cVar.g(1835365473);
                ArrayList arrayList5 = new ArrayList();
                long[][] jArr = null;
                boolean z10 = this.f5530c;
                long j12 = 0;
                int i16 = this.f5529b;
                if (cVarG != null) {
                    d0VarF = e.f(cVarG);
                    if (this.f5550y) {
                        d0VarF.getClass();
                        c0[] c0VarArr = d0VarF.f13430a;
                        int length2 = c0VarArr.length;
                        int i17 = 0;
                        while (true) {
                            if (i17 >= length2) {
                                c0Var2 = null;
                                break;
                            }
                            c0 c0Var4 = c0VarArr[i17];
                            if (v1.a.class.isAssignableFrom(c0Var4.getClass())) {
                                c0Var2 = (c0) v1.a.class.cast(c0Var4);
                                if (!((v1.a) c0Var2).f16323a.equals("auxiliary.tracks.interleaved")) {
                                    c0Var2 = null;
                                }
                                if (c0Var2 != null) {
                                    break;
                                } else {
                                    i17++;
                                }
                            }
                        }
                        v1.a aVar = (v1.a) c0Var2;
                        if (aVar != null && aVar.f16324b[0] == 0) {
                            this.A = this.f5549x + 16;
                        }
                        int length3 = c0VarArr.length;
                        int i18 = 0;
                        while (true) {
                            if (i18 >= length3) {
                                c0Var3 = null;
                                break;
                            }
                            c0 c0Var5 = c0VarArr[i18];
                            if (v1.a.class.isAssignableFrom(c0Var5.getClass())) {
                                c0Var3 = (c0) v1.a.class.cast(c0Var5);
                                if (!((v1.a) c0Var3).f16323a.equals("auxiliary.tracks.map")) {
                                    c0Var3 = null;
                                }
                                if (c0Var3 != null) {
                                    break;
                                } else {
                                    i18++;
                                }
                            }
                        }
                        v1.a aVar2 = (v1.a) c0Var3;
                        aVar2.getClass();
                        ArrayList arrayListD = aVar2.d();
                        arrayList5 = new ArrayList(arrayListD.size());
                        for (int i19 = 0; i19 < arrayListD.size(); i19++) {
                            int iIntValue = ((Integer) arrayListD.get(i19)).intValue();
                            arrayList5.add(Integer.valueOf(iIntValue != 0 ? iIntValue != 1 ? iIntValue != 2 ? iIntValue != 3 ? 0 : 4 : 3 : 2 : 1));
                        }
                    } else if (d0VarF != null && (i16 & 64) != 0) {
                        c0[] c0VarArr2 = d0VarF.f13430a;
                        int length4 = c0VarArr2.length;
                        int i20 = 0;
                        while (true) {
                            if (i20 >= length4) {
                                c0Var = null;
                                break;
                            }
                            c0 c0Var6 = c0VarArr2[i20];
                            if (v1.a.class.isAssignableFrom(c0Var6.getClass())) {
                                c0Var = (c0) v1.a.class.cast(c0Var6);
                                if (!((v1.a) c0Var).f16323a.equals("auxiliary.tracks.offset")) {
                                    c0Var = null;
                                }
                                if (c0Var != null) {
                                    break;
                                } else {
                                    i20++;
                                }
                            }
                        }
                        v1.a aVar3 = (v1.a) c0Var;
                        if (aVar3 != null) {
                            long jH = new u1.q(aVar3.f16324b).H();
                            if (jH > 0) {
                                this.f5549x = jH;
                                this.f5548w = true;
                                arrayDeque = arrayDeque3;
                                z = z10;
                                arrayDeque.clear();
                                this.z = true;
                                if (this.f5548w && !z) {
                                    this.l = 2;
                                }
                            }
                        }
                    }
                    arrayList = arrayList5;
                } else {
                    arrayList = arrayList5;
                    d0VarF = null;
                }
                ArrayList arrayList6 = new ArrayList();
                boolean z11 = this.E == 1;
                l2.v vVar2 = new l2.v();
                v1.d dVarI = cVar.i(1969517665);
                if (dVarI != null) {
                    d0 d0VarJ = e.j(dVarI);
                    vVar2.c(d0VarJ);
                    d0Var = d0VarJ;
                } else {
                    d0Var = null;
                }
                v1.d dVarI2 = cVar.i(1836476516);
                dVarI2.getClass();
                d0 d0Var5 = new d0(e.g(dVarI2.f16331c));
                boolean z12 = (i16 & 1) != 0;
                l2.v vVar3 = vVar2;
                boolean z13 = z11;
                boolean z14 = z10;
                ArrayList arrayListI = e.i(cVar, vVar2, -9223372036854775807L, null, z12, z13, new u0(23), this.f5530c);
                if (this.f5550y) {
                    boolean z15 = arrayList.size() == arrayListI.size();
                    Locale locale = Locale.US;
                    a9.o.s("The number of auxiliary track types from metadata (" + arrayList.size() + ") is not same as the number of auxiliary tracks (" + arrayListI.size() + ")", z15);
                }
                String strA = r.a(arrayListI);
                int i21 = 0;
                int i22 = 0;
                int size = -1;
                long jMax = -9223372036854775807L;
                while (i21 < arrayListI.size()) {
                    v vVar4 = (v) arrayListI.get(i21);
                    if (vVar4.f5593b == 0) {
                        arrayList3 = arrayList;
                        arrayList4 = arrayList6;
                        z4 = z14;
                        arrayDeque2 = arrayDeque3;
                        arrayList2 = arrayListI;
                        i11 = i21;
                        i10 = i22;
                        vVar = vVar3;
                        d0Var4 = d0VarF;
                    } else {
                        l2.q qVar = this.B;
                        int i23 = i22 + 1;
                        s sVar = vVar4.f5592a;
                        arrayList2 = arrayListI;
                        j0 j0VarZ = qVar.z(i22, sVar.f5561b);
                        m mVar = new m(sVar, vVar4, j0VarZ);
                        long j13 = sVar.f5564e;
                        if (j13 == -9223372036854775807L) {
                            j13 = vVar4.f5600i;
                        }
                        j0VarZ.d(j13);
                        ArrayList arrayList7 = arrayList6;
                        boolean z16 = z14;
                        jMax = Math.max(jMax, j13);
                        r1.p pVar = sVar.f5566g;
                        i10 = i23;
                        boolean zEquals = "audio/true-hd".equals(pVar.f13523o);
                        int i24 = vVar4.f5596e;
                        int i25 = zEquals ? i24 * 16 : i24 + 30;
                        r1.o oVar = new r1.o(pVar);
                        oVar.f13493o = i25;
                        int i26 = sVar.f5561b;
                        if (i26 == 2) {
                            int i27 = i16 & 8;
                            arrayDeque2 = arrayDeque3;
                            int i28 = pVar.f13515f;
                            if (i27 != 0) {
                                i28 |= size == -1 ? 1 : 2;
                            }
                            if (this.f5550y) {
                                i28 |= 32768;
                                oVar.f13486g = ((Integer) arrayList.get(i21)).intValue();
                            }
                            oVar.f13485f = i28;
                        } else {
                            arrayDeque2 = arrayDeque3;
                        }
                        String str2 = pVar.f13523o;
                        if (r1.e0.k(str2)) {
                            long[] jArr2 = vVar4.f5597f;
                            arrayList3 = arrayList;
                            if (jArr2.length > 0) {
                                int[] iArr = vVar4.f5599h;
                                z4 = z16;
                                boolean z17 = vVar4.f5601j;
                                if (z17) {
                                    i11 = i21;
                                    length = vVar4.f5593b;
                                } else {
                                    i11 = i21;
                                    length = iArr.length;
                                }
                                i12 = size;
                                int iMin = Math.min(length, 20);
                                a9.o.t(j13 != -9223372036854775807L);
                                str = str2;
                                long jMin = Math.min(j13, 10000000L);
                                d0Var2 = d0VarF;
                                int i29 = -1;
                                int i30 = 0;
                                int i31 = 0;
                                while (i30 < iMin) {
                                    int i32 = z17 ? i30 : iArr[i30];
                                    long j14 = jArr2[i32];
                                    if (j14 > jMin) {
                                        break;
                                    }
                                    int[] iArr2 = iArr;
                                    if (j14 >= 0 && (i15 = vVar4.f5595d[i32]) > i31) {
                                        i31 = i15;
                                        i29 = i32;
                                    }
                                    i30++;
                                    iArr = iArr2;
                                }
                                if (i29 != -1) {
                                    j11 = jArr2[i29];
                                }
                                if (j11 != -9223372036854775807L) {
                                    u2.c cVar2 = new u2.c(j11);
                                    i13 = 1;
                                    d0Var3 = new d0(cVar2);
                                } else {
                                    i13 = 1;
                                    d0Var3 = null;
                                }
                                if (i26 == i13 && vVar3.a()) {
                                    vVar = vVar3;
                                    oVar.I = vVar.f10530a;
                                    oVar.J = vVar.f10531b;
                                } else {
                                    vVar = vVar3;
                                }
                                ArrayList arrayList8 = this.f5537j;
                                d0Var4 = d0Var2;
                                r.h(i26, d0Var4, oVar, pVar.l, !arrayList8.isEmpty() ? null : new d0(arrayList8), d0Var, d0Var5, d0Var3);
                                oVar.b(strA);
                                if (Objects.equals(str, "audio/mpeg")) {
                                    mVar.f5524c.g(new r1.p(oVar));
                                } else {
                                    mVar.f5527f = new r1.p(oVar);
                                }
                                if (i26 != 2) {
                                    i14 = i12;
                                    if (i14 == -1) {
                                        size = arrayList7.size();
                                    }
                                    arrayList4 = arrayList7;
                                    arrayList4.add(mVar);
                                } else {
                                    i14 = i12;
                                }
                                size = i14;
                                arrayList4 = arrayList7;
                                arrayList4.add(mVar);
                            }
                            j11 = -9223372036854775807L;
                            if (j11 != -9223372036854775807L) {
                            }
                            if (i26 == i13) {
                                vVar = vVar3;
                                ArrayList arrayList82 = this.f5537j;
                                d0Var4 = d0Var2;
                                r.h(i26, d0Var4, oVar, pVar.l, !arrayList82.isEmpty() ? null : new d0(arrayList82), d0Var, d0Var5, d0Var3);
                                oVar.b(strA);
                                if (Objects.equals(str, "audio/mpeg")) {
                                }
                                if (i26 != 2) {
                                }
                                size = i14;
                                arrayList4 = arrayList7;
                                arrayList4.add(mVar);
                            }
                        } else {
                            arrayList3 = arrayList;
                        }
                        str = str2;
                        d0Var2 = d0VarF;
                        z4 = z16;
                        i11 = i21;
                        i12 = size;
                        j11 = -9223372036854775807L;
                        if (j11 != -9223372036854775807L) {
                        }
                        if (i26 == i13) {
                        }
                    }
                    vVar3 = vVar;
                    d0VarF = d0Var4;
                    arrayListI = arrayList2;
                    i22 = i10;
                    arrayDeque3 = arrayDeque2;
                    arrayList = arrayList3;
                    z14 = z4;
                    i21 = i11 + 1;
                    arrayList6 = arrayList4;
                }
                ArrayList arrayList9 = arrayList6;
                z = z14;
                arrayDeque = arrayDeque3;
                int i33 = size;
                long j15 = jMax;
                m[] mVarArr = (m[]) arrayList9.toArray(new m[0]);
                this.C = mVarArr;
                if (!z) {
                    long[][] jArr3 = new long[mVarArr.length][];
                    int[] iArr3 = new int[mVarArr.length];
                    long[] jArr4 = new long[mVarArr.length];
                    boolean[] zArr = new boolean[mVarArr.length];
                    for (int i34 = 0; i34 < mVarArr.length; i34++) {
                        jArr3[i34] = new long[mVarArr[i34].f5523b.f5593b];
                        jArr4[i34] = mVarArr[i34].f5523b.f5597f[0];
                    }
                    int i35 = 0;
                    while (i35 < mVarArr.length) {
                        long j16 = Long.MAX_VALUE;
                        int i36 = -1;
                        for (int i37 = 0; i37 < mVarArr.length; i37++) {
                            if (!zArr[i37]) {
                                long j17 = jArr4[i37];
                                if (j17 <= j16) {
                                    i36 = i37;
                                    j16 = j17;
                                }
                            }
                        }
                        int i38 = iArr3[i36];
                        long[] jArr5 = jArr3[i36];
                        jArr5[i38] = j12;
                        v vVar5 = mVarArr[i36].f5523b;
                        m[] mVarArr2 = mVarArr;
                        long[][] jArr6 = jArr3;
                        j12 += vVar5.f5595d[i38];
                        int i39 = i38 + 1;
                        iArr3[i36] = i39;
                        if (i39 < jArr5.length) {
                            jArr4[i36] = vVar5.f5597f[i39];
                        } else {
                            zArr[i36] = true;
                            i35++;
                        }
                        jArr3 = jArr6;
                        mVarArr = mVarArr2;
                    }
                    jArr = jArr3;
                }
                this.D = jArr;
                this.B.q();
                this.B.s(new l(j15, this.C, i33));
                arrayDeque.clear();
                this.z = true;
                if (this.f5548w) {
                }
            } else if (!arrayDeque3.isEmpty()) {
                ((v1.c) arrayDeque3.peek()).f16330e.add(cVar);
            }
        }
        if (this.l != 2) {
            this.l = 0;
            this.f5541o = 0;
        }
    }

    @Override // l2.o
    public final void a() {
    }
}
