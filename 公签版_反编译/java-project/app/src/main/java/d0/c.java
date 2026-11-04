package d0;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: p, reason: collision with root package name */
    public static boolean f4211p = false;

    /* renamed from: q, reason: collision with root package name */
    public static int f4212q = 1000;

    /* renamed from: c, reason: collision with root package name */
    public final e f4215c;

    /* renamed from: f, reason: collision with root package name */
    public b[] f4218f;
    public final v3.f l;

    /* renamed from: o, reason: collision with root package name */
    public b f4226o;

    /* renamed from: a, reason: collision with root package name */
    public boolean f4213a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f4214b = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f4216d = 32;

    /* renamed from: e, reason: collision with root package name */
    public int f4217e = 32;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4219g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean[] f4220h = new boolean[32];

    /* renamed from: i, reason: collision with root package name */
    public int f4221i = 1;

    /* renamed from: j, reason: collision with root package name */
    public int f4222j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f4223k = 32;

    /* renamed from: m, reason: collision with root package name */
    public g[] f4224m = new g[f4212q];

    /* renamed from: n, reason: collision with root package name */
    public int f4225n = 0;

    public c() {
        this.f4218f = null;
        this.f4218f = new b[32];
        s();
        v3.f fVar = new v3.f((byte) 0, 8);
        this.l = fVar;
        this.f4215c = new e(fVar);
        this.f4226o = new b(fVar);
    }

    public static int n(Object obj) {
        g gVar = ((f0.c) obj).f5074i;
        if (gVar != null) {
            return (int) (gVar.f4237e + 0.5f);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v0 */
    public final g a(int i10) {
        d dVar = (d) this.l.f16475c;
        int i11 = dVar.f4228b;
        g gVar = null;
        if (i11 > 0) {
            int i12 = i11 - 1;
            ?? r32 = dVar.f4227a;
            ?? r4 = r32[i12];
            r32[i12] = 0;
            dVar.f4228b = i12;
            gVar = r4;
        }
        g gVar2 = gVar;
        if (gVar2 == null) {
            gVar2 = new g(i10);
            gVar2.l = i10;
        } else {
            gVar2.c();
            gVar2.l = i10;
        }
        int i13 = this.f4225n;
        int i14 = f4212q;
        if (i13 >= i14) {
            int i15 = i14 * 2;
            f4212q = i15;
            this.f4224m = (g[]) Arrays.copyOf(this.f4224m, i15);
        }
        g[] gVarArr = this.f4224m;
        int i16 = this.f4225n;
        this.f4225n = i16 + 1;
        gVarArr[i16] = gVar2;
        return gVar2;
    }

    public final void b(g gVar, g gVar2, int i10, float f10, g gVar3, g gVar4, int i11, int i12) {
        b bVarL = l();
        if (gVar2 == gVar3) {
            bVarL.f4209d.g(gVar, 1.0f);
            bVarL.f4209d.g(gVar4, 1.0f);
            bVarL.f4209d.g(gVar2, -2.0f);
        } else if (f10 == 0.5f) {
            bVarL.f4209d.g(gVar, 1.0f);
            bVarL.f4209d.g(gVar2, -1.0f);
            bVarL.f4209d.g(gVar3, -1.0f);
            bVarL.f4209d.g(gVar4, 1.0f);
            if (i10 > 0 || i11 > 0) {
                bVarL.f4207b = (-i10) + i11;
            }
        } else if (f10 <= 0.0f) {
            bVarL.f4209d.g(gVar, -1.0f);
            bVarL.f4209d.g(gVar2, 1.0f);
            bVarL.f4207b = i10;
        } else if (f10 >= 1.0f) {
            bVarL.f4209d.g(gVar4, -1.0f);
            bVarL.f4209d.g(gVar3, 1.0f);
            bVarL.f4207b = -i11;
        } else {
            float f11 = 1.0f - f10;
            bVarL.f4209d.g(gVar, f11 * 1.0f);
            bVarL.f4209d.g(gVar2, f11 * (-1.0f));
            bVarL.f4209d.g(gVar3, (-1.0f) * f10);
            bVarL.f4209d.g(gVar4, 1.0f * f10);
            if (i10 > 0 || i11 > 0) {
                bVarL.f4207b = (i11 * f10) + ((-i10) * f11);
            }
        }
        if (i12 != 8) {
            bVarL.a(this, i12);
        }
        c(bVarL);
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01c3 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(b bVar) {
        boolean z;
        boolean z4;
        g gVar;
        g gVarF;
        ArrayList arrayList;
        if (this.f4222j + 1 >= this.f4223k || this.f4221i + 1 >= this.f4217e) {
            o();
        }
        if (bVar.f4210e) {
            z = false;
        } else {
            if (this.f4218f.length != 0) {
                boolean z10 = false;
                while (!z10) {
                    int iD = bVar.f4209d.d();
                    int i10 = 0;
                    while (true) {
                        arrayList = bVar.f4208c;
                        if (i10 >= iD) {
                            break;
                        }
                        g gVarE = bVar.f4209d.e(i10);
                        if (gVarE.f4235c != -1 || gVarE.f4238f) {
                            arrayList.add(gVarE);
                        }
                        i10++;
                    }
                    int size = arrayList.size();
                    if (size > 0) {
                        for (int i11 = 0; i11 < size; i11++) {
                            g gVar2 = (g) arrayList.get(i11);
                            if (gVar2.f4238f) {
                                bVar.h(this, gVar2, true);
                            } else {
                                bVar.i(this, this.f4218f[gVar2.f4235c], true);
                            }
                        }
                        arrayList.clear();
                    } else {
                        z10 = true;
                    }
                }
                if (bVar.f4206a != null && bVar.f4209d.d() == 0) {
                    bVar.f4210e = true;
                    this.f4213a = true;
                }
            }
            if (bVar.e()) {
                return;
            }
            float f10 = bVar.f4207b;
            if (f10 < 0.0f) {
                bVar.f4207b = f10 * (-1.0f);
                a aVar = bVar.f4209d;
                int i12 = aVar.f4203h;
                for (int i13 = 0; i12 != -1 && i13 < aVar.f4196a; i13++) {
                    float[] fArr = aVar.f4202g;
                    fArr[i12] = fArr[i12] * (-1.0f);
                    i12 = aVar.f4201f[i12];
                }
            }
            int iD2 = bVar.f4209d.d();
            g gVar3 = null;
            g gVar4 = null;
            float f11 = 0.0f;
            boolean z11 = false;
            float f12 = 0.0f;
            boolean z12 = false;
            for (int i14 = 0; i14 < iD2; i14++) {
                float f13 = bVar.f4209d.f(i14);
                g gVarE2 = bVar.f4209d.e(i14);
                if (gVarE2.l == 1) {
                    if (gVar3 == null) {
                        z11 = gVarE2.f4243k <= 1;
                    } else if (f11 > f13) {
                        if (gVarE2.f4243k <= 1) {
                        }
                    } else if (!z11 && gVarE2.f4243k <= 1) {
                        gVar3 = gVarE2;
                        f11 = f13;
                        z11 = true;
                    }
                    gVar3 = gVarE2;
                    f11 = f13;
                } else if (gVar3 == null && f13 < 0.0f) {
                    if (gVar4 == null) {
                        z12 = gVarE2.f4243k <= 1;
                    } else if (f12 > f13) {
                        if (gVarE2.f4243k <= 1) {
                        }
                    } else if (!z12 && gVarE2.f4243k <= 1) {
                        gVar4 = gVarE2;
                        f12 = f13;
                        z12 = true;
                    }
                    gVar4 = gVarE2;
                    f12 = f13;
                }
            }
            if (gVar3 == null) {
                gVar3 = gVar4;
            }
            if (gVar3 == null) {
                z4 = true;
            } else {
                bVar.g(gVar3);
                z4 = false;
            }
            if (bVar.f4209d.d() == 0) {
                bVar.f4210e = true;
            }
            if (z4) {
                if (this.f4221i + 1 >= this.f4217e) {
                    o();
                }
                g gVarA = a(3);
                int i15 = this.f4214b + 1;
                this.f4214b = i15;
                this.f4221i++;
                gVarA.f4234b = i15;
                v3.f fVar = this.l;
                ((g[]) fVar.f16476d)[i15] = gVarA;
                bVar.f4206a = gVarA;
                int i16 = this.f4222j;
                h(bVar);
                if (this.f4222j == i16 + 1) {
                    b bVar2 = this.f4226o;
                    bVar2.getClass();
                    bVar2.f4206a = null;
                    bVar2.f4209d.b();
                    for (int i17 = 0; i17 < bVar.f4209d.d(); i17++) {
                        bVar2.f4209d.a(bVar.f4209d.e(i17), bVar.f4209d.f(i17), true);
                    }
                    r(this.f4226o);
                    if (gVarA.f4235c == -1) {
                        if (bVar.f4206a == gVarA && (gVarF = bVar.f(null, gVarA)) != null) {
                            bVar.g(gVarF);
                        }
                        if (!bVar.f4210e) {
                            bVar.f4206a.e(this, bVar);
                        }
                        ((d) fVar.f16474b).b(bVar);
                        this.f4222j--;
                    }
                    z = true;
                }
                gVar = bVar.f4206a;
                if (gVar != null) {
                }
            } else {
                z = false;
                gVar = bVar.f4206a;
                if (gVar != null) {
                    return;
                }
                if (gVar.l != 1 && bVar.f4207b < 0.0f) {
                    return;
                }
            }
        }
        if (z) {
            return;
        }
        h(bVar);
    }

    public final void d(g gVar, int i10) {
        int i11 = gVar.f4235c;
        if (i11 == -1) {
            gVar.d(this, i10);
            for (int i12 = 0; i12 < this.f4214b + 1; i12++) {
                g gVar2 = ((g[]) this.l.f16476d)[i12];
            }
            return;
        }
        if (i11 == -1) {
            b bVarL = l();
            bVarL.f4206a = gVar;
            float f10 = i10;
            gVar.f4237e = f10;
            bVarL.f4207b = f10;
            bVarL.f4210e = true;
            c(bVarL);
            return;
        }
        b bVar = this.f4218f[i11];
        if (bVar.f4210e) {
            bVar.f4207b = i10;
            return;
        }
        if (bVar.f4209d.d() == 0) {
            bVar.f4210e = true;
            bVar.f4207b = i10;
            return;
        }
        b bVarL2 = l();
        if (i10 < 0) {
            bVarL2.f4207b = i10 * (-1);
            bVarL2.f4209d.g(gVar, 1.0f);
        } else {
            bVarL2.f4207b = i10;
            bVarL2.f4209d.g(gVar, -1.0f);
        }
        c(bVarL2);
    }

    public final void e(g gVar, g gVar2, int i10, int i11) {
        if (i11 == 8 && gVar2.f4238f && gVar.f4235c == -1) {
            gVar.d(this, gVar2.f4237e + i10);
            return;
        }
        b bVarL = l();
        boolean z = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z = true;
            }
            bVarL.f4207b = i10;
        }
        if (z) {
            bVarL.f4209d.g(gVar, 1.0f);
            bVarL.f4209d.g(gVar2, -1.0f);
        } else {
            bVarL.f4209d.g(gVar, -1.0f);
            bVarL.f4209d.g(gVar2, 1.0f);
        }
        if (i11 != 8) {
            bVarL.a(this, i11);
        }
        c(bVarL);
    }

    public final void f(g gVar, g gVar2, int i10, int i11) {
        b bVarL = l();
        g gVarM = m();
        gVarM.f4236d = 0;
        bVarL.b(gVar, gVar2, gVarM, i10);
        if (i11 != 8) {
            bVarL.f4209d.g(j(i11), (int) (bVarL.f4209d.c(gVarM) * (-1.0f)));
        }
        c(bVarL);
    }

    public final void g(g gVar, g gVar2, int i10, int i11) {
        b bVarL = l();
        g gVarM = m();
        gVarM.f4236d = 0;
        bVarL.c(gVar, gVar2, gVarM, i10);
        if (i11 != 8) {
            bVarL.f4209d.g(j(i11), (int) (bVarL.f4209d.c(gVarM) * (-1.0f)));
        }
        c(bVarL);
    }

    public final void h(b bVar) {
        int i10;
        if (bVar.f4210e) {
            bVar.f4206a.d(this, bVar.f4207b);
        } else {
            b[] bVarArr = this.f4218f;
            int i11 = this.f4222j;
            bVarArr[i11] = bVar;
            g gVar = bVar.f4206a;
            gVar.f4235c = i11;
            this.f4222j = i11 + 1;
            gVar.e(this, bVar);
        }
        if (this.f4213a) {
            int i12 = 0;
            while (i12 < this.f4222j) {
                if (this.f4218f[i12] == null) {
                    System.out.getClass();
                }
                b bVar2 = this.f4218f[i12];
                if (bVar2 != null && bVar2.f4210e) {
                    bVar2.f4206a.d(this, bVar2.f4207b);
                    ((d) this.l.f16474b).b(bVar2);
                    this.f4218f[i12] = null;
                    int i13 = i12 + 1;
                    int i14 = i13;
                    while (true) {
                        i10 = this.f4222j;
                        if (i13 >= i10) {
                            break;
                        }
                        b[] bVarArr2 = this.f4218f;
                        int i15 = i13 - 1;
                        b bVar3 = bVarArr2[i13];
                        bVarArr2[i15] = bVar3;
                        g gVar2 = bVar3.f4206a;
                        if (gVar2.f4235c == i13) {
                            gVar2.f4235c = i15;
                        }
                        i14 = i13;
                        i13++;
                    }
                    if (i14 < i10) {
                        this.f4218f[i14] = null;
                    }
                    this.f4222j = i10 - 1;
                    i12--;
                }
                i12++;
            }
            this.f4213a = false;
        }
    }

    public final void i() {
        for (int i10 = 0; i10 < this.f4222j; i10++) {
            b bVar = this.f4218f[i10];
            bVar.f4206a.f4237e = bVar.f4207b;
        }
    }

    public final g j(int i10) {
        if (this.f4221i + 1 >= this.f4217e) {
            o();
        }
        g gVarA = a(4);
        int i11 = this.f4214b + 1;
        this.f4214b = i11;
        this.f4221i++;
        gVarA.f4234b = i11;
        gVarA.f4236d = i10;
        ((g[]) this.l.f16476d)[i11] = gVarA;
        e eVar = this.f4215c;
        eVar.f4231h.f175b = gVarA;
        float[] fArr = gVarA.f4240h;
        Arrays.fill(fArr, 0.0f);
        fArr[gVarA.f4236d] = 1.0f;
        eVar.j(gVarA);
        return gVarA;
    }

    public final g k(Object obj) {
        g gVar = null;
        if (obj == null) {
            return null;
        }
        if (this.f4221i + 1 >= this.f4217e) {
            o();
        }
        if (obj instanceof f0.c) {
            f0.c cVar = (f0.c) obj;
            gVar = cVar.f5074i;
            if (gVar == null) {
                cVar.k();
                gVar = cVar.f5074i;
            }
            int i10 = gVar.f4234b;
            v3.f fVar = this.l;
            if (i10 == -1 || i10 > this.f4214b || ((g[]) fVar.f16476d)[i10] == null) {
                if (i10 != -1) {
                    gVar.c();
                }
                int i11 = this.f4214b + 1;
                this.f4214b = i11;
                this.f4221i++;
                gVar.f4234b = i11;
                gVar.l = 1;
                ((g[]) fVar.f16476d)[i11] = gVar;
            }
        }
        return gVar;
    }

    public final b l() {
        Object obj;
        v3.f fVar = this.l;
        d dVar = (d) fVar.f16474b;
        int i10 = dVar.f4228b;
        if (i10 > 0) {
            int i11 = i10 - 1;
            Object[] objArr = dVar.f4227a;
            obj = objArr[i11];
            objArr[i11] = null;
            dVar.f4228b = i11;
        } else {
            obj = null;
        }
        b bVar = (b) obj;
        if (bVar == null) {
            return new b(fVar);
        }
        bVar.f4206a = null;
        bVar.f4209d.b();
        bVar.f4207b = 0.0f;
        bVar.f4210e = false;
        return bVar;
    }

    public final g m() {
        if (this.f4221i + 1 >= this.f4217e) {
            o();
        }
        g gVarA = a(3);
        int i10 = this.f4214b + 1;
        this.f4214b = i10;
        this.f4221i++;
        gVarA.f4234b = i10;
        ((g[]) this.l.f16476d)[i10] = gVarA;
        return gVarA;
    }

    public final void o() {
        int i10 = this.f4216d * 2;
        this.f4216d = i10;
        this.f4218f = (b[]) Arrays.copyOf(this.f4218f, i10);
        v3.f fVar = this.l;
        fVar.f16476d = (g[]) Arrays.copyOf((g[]) fVar.f16476d, this.f4216d);
        int i11 = this.f4216d;
        this.f4220h = new boolean[i11];
        this.f4217e = i11;
        this.f4223k = i11;
    }

    public final void p() {
        e eVar = this.f4215c;
        if (eVar.e()) {
            i();
            return;
        }
        if (!this.f4219g) {
            q(eVar);
            return;
        }
        for (int i10 = 0; i10 < this.f4222j; i10++) {
            if (!this.f4218f[i10].f4210e) {
                q(eVar);
                return;
            }
        }
        i();
    }

    public final void q(e eVar) {
        int i10 = 0;
        while (true) {
            if (i10 >= this.f4222j) {
                break;
            }
            b bVar = this.f4218f[i10];
            int i11 = 1;
            if (bVar.f4206a.l != 1) {
                float f10 = 0.0f;
                if (bVar.f4207b < 0.0f) {
                    boolean z = false;
                    int i12 = 0;
                    while (!z) {
                        i12 += i11;
                        float f11 = Float.MAX_VALUE;
                        int i13 = 0;
                        int i14 = -1;
                        int i15 = -1;
                        int i16 = 0;
                        while (i13 < this.f4222j) {
                            b bVar2 = this.f4218f[i13];
                            if (bVar2.f4206a.l != i11 && !bVar2.f4210e && bVar2.f4207b < f10) {
                                int iD = bVar2.f4209d.d();
                                int i17 = 0;
                                while (i17 < iD) {
                                    g gVarE = bVar2.f4209d.e(i17);
                                    float fC = bVar2.f4209d.c(gVarE);
                                    if (fC > f10) {
                                        for (int i18 = 0; i18 < 9; i18++) {
                                            float f12 = gVarE.f4239g[i18] / fC;
                                            if ((f12 < f11 && i18 == i16) || i18 > i16) {
                                                i16 = i18;
                                                i15 = gVarE.f4234b;
                                                i14 = i13;
                                                f11 = f12;
                                            }
                                        }
                                    }
                                    i17++;
                                    f10 = 0.0f;
                                }
                            }
                            i13++;
                            f10 = 0.0f;
                            i11 = 1;
                        }
                        if (i14 != -1) {
                            b bVar3 = this.f4218f[i14];
                            bVar3.f4206a.f4235c = -1;
                            bVar3.g(((g[]) this.l.f16476d)[i15]);
                            g gVar = bVar3.f4206a;
                            gVar.f4235c = i14;
                            gVar.e(this, bVar3);
                        } else {
                            z = true;
                        }
                        if (i12 > this.f4221i / 2) {
                            z = true;
                        }
                        f10 = 0.0f;
                        i11 = 1;
                    }
                }
            }
            i10++;
        }
        r(eVar);
        i();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0090 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void r(b bVar) {
        boolean z;
        for (int i10 = 0; i10 < this.f4221i; i10++) {
            this.f4220h[i10] = false;
        }
        boolean z4 = false;
        int i11 = 0;
        while (!z4) {
            int i12 = 1;
            i11++;
            if (i11 >= this.f4221i * 2) {
                return;
            }
            g gVar = bVar.f4206a;
            if (gVar != null) {
                this.f4220h[gVar.f4234b] = true;
            }
            g gVarD = bVar.d(this.f4220h);
            if (gVarD != null) {
                boolean[] zArr = this.f4220h;
                int i13 = gVarD.f4234b;
                if (zArr[i13]) {
                    return;
                } else {
                    zArr[i13] = true;
                }
            }
            if (gVarD != null) {
                float f10 = Float.MAX_VALUE;
                int i14 = 0;
                int i15 = -1;
                while (i14 < this.f4222j) {
                    b bVar2 = this.f4218f[i14];
                    if (bVar2.f4206a.l != i12 && !bVar2.f4210e) {
                        a aVar = bVar2.f4209d;
                        int i16 = aVar.f4203h;
                        if (i16 == -1) {
                            z = false;
                            if (!z) {
                                float fC = bVar2.f4209d.c(gVarD);
                                if (fC < 0.0f) {
                                    float f11 = (-bVar2.f4207b) / fC;
                                    if (f11 < f10) {
                                        f10 = f11;
                                        i15 = i14;
                                    }
                                }
                            }
                        } else {
                            for (int i17 = 0; i16 != -1 && i17 < aVar.f4196a; i17++) {
                                if (aVar.f4200e[i16] == gVarD.f4234b) {
                                    z = true;
                                    break;
                                }
                                i16 = aVar.f4201f[i16];
                            }
                            z = false;
                            if (!z) {
                            }
                        }
                    }
                    i14++;
                    i12 = 1;
                }
                if (i15 > -1) {
                    b bVar3 = this.f4218f[i15];
                    bVar3.f4206a.f4235c = -1;
                    bVar3.g(gVarD);
                    g gVar2 = bVar3.f4206a;
                    gVar2.f4235c = i15;
                    gVar2.e(this, bVar3);
                }
            } else {
                z4 = true;
            }
        }
    }

    public final void s() {
        for (int i10 = 0; i10 < this.f4222j; i10++) {
            b bVar = this.f4218f[i10];
            if (bVar != null) {
                ((d) this.l.f16474b).b(bVar);
            }
            this.f4218f[i10] = null;
        }
    }

    public final void t() {
        v3.f fVar;
        int i10 = 0;
        while (true) {
            fVar = this.l;
            g[] gVarArr = (g[]) fVar.f16476d;
            if (i10 >= gVarArr.length) {
                break;
            }
            g gVar = gVarArr[i10];
            if (gVar != null) {
                gVar.c();
            }
            i10++;
        }
        d dVar = (d) fVar.f16475c;
        g[] gVarArr2 = this.f4224m;
        int length = this.f4225n;
        dVar.getClass();
        if (length > gVarArr2.length) {
            length = gVarArr2.length;
        }
        for (int i11 = 0; i11 < length; i11++) {
            g gVar2 = gVarArr2[i11];
            int i12 = dVar.f4228b;
            Object[] objArr = dVar.f4227a;
            if (i12 < objArr.length) {
                objArr[i12] = gVar2;
                dVar.f4228b = i12 + 1;
            }
        }
        this.f4225n = 0;
        Arrays.fill((g[]) fVar.f16476d, (Object) null);
        this.f4214b = 0;
        e eVar = this.f4215c;
        eVar.f4230g = 0;
        eVar.f4207b = 0.0f;
        this.f4221i = 1;
        for (int i13 = 0; i13 < this.f4222j; i13++) {
            b bVar = this.f4218f[i13];
        }
        s();
        this.f4222j = 0;
        this.f4226o = new b(fVar);
    }
}
