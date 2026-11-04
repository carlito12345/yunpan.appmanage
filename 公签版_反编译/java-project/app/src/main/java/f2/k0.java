package f2;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;

/* loaded from: classes.dex */
public final class k0 implements a0, z {

    /* renamed from: a, reason: collision with root package name */
    public final a0[] f5305a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean[] f5306b;

    /* renamed from: c, reason: collision with root package name */
    public final IdentityHashMap f5307c;

    /* renamed from: d, reason: collision with root package name */
    public final m7.e f5308d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f5309e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f5310f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public z f5311g;

    /* renamed from: h, reason: collision with root package name */
    public j1 f5312h;

    /* renamed from: i, reason: collision with root package name */
    public a0[] f5313i;

    /* renamed from: j, reason: collision with root package name */
    public m f5314j;

    public k0(m7.e eVar, long[] jArr, a0... a0VarArr) {
        this.f5308d = eVar;
        this.f5305a = a0VarArr;
        eVar.getClass();
        u7.e0 e0Var = u7.g0.f15471b;
        u7.y0 y0Var = u7.y0.f15549e;
        this.f5314j = new m(y0Var, y0Var);
        this.f5307c = new IdentityHashMap();
        this.f5313i = new a0[0];
        this.f5306b = new boolean[a0VarArr.length];
        for (int i10 = 0; i10 < a0VarArr.length; i10++) {
            long j10 = jArr[i10];
            if (j10 != 0) {
                this.f5306b[i10] = true;
                this.f5305a[i10] = new h1(a0VarArr[i10], j10);
            }
        }
    }

    @Override // f2.d1
    public final boolean a(y1.j0 j0Var) {
        ArrayList arrayList = this.f5309e;
        if (arrayList.isEmpty()) {
            return this.f5314j.a(j0Var);
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((a0) arrayList.get(i10)).a(j0Var);
        }
        return false;
    }

    @Override // f2.z
    public final void b(d1 d1Var) {
        z zVar = this.f5311g;
        zVar.getClass();
        zVar.b(this);
    }

    @Override // f2.d1
    public final long c() {
        return this.f5314j.c();
    }

    @Override // f2.z
    public final void d(a0 a0Var) {
        ArrayList arrayList = this.f5309e;
        arrayList.remove(a0Var);
        if (arrayList.isEmpty()) {
            a0[] a0VarArr = this.f5305a;
            int i10 = 0;
            for (a0 a0Var2 : a0VarArr) {
                i10 += a0Var2.n().f5299a;
            }
            r1.r0[] r0VarArr = new r1.r0[i10];
            int i11 = 0;
            for (int i12 = 0; i12 < a0VarArr.length; i12++) {
                j1 j1VarN = a0VarArr[i12].n();
                int i13 = j1VarN.f5299a;
                int i14 = 0;
                while (i14 < i13) {
                    r1.r0 r0VarA = j1VarN.a(i14);
                    int i15 = r0VarA.f13553a;
                    r1.p[] pVarArr = new r1.p[i15];
                    int i16 = 0;
                    while (i16 < i15) {
                        r1.p pVar = r0VarA.f13556d[i16];
                        pVar.getClass();
                        r1.o oVar = new r1.o(pVar);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(i12);
                        sb2.append(":");
                        a0[] a0VarArr2 = a0VarArr;
                        String str = pVar.f13510a;
                        if (str == null) {
                            str = "";
                        }
                        sb2.append(str);
                        oVar.f13480a = sb2.toString();
                        String str2 = pVar.f13521m;
                        if (str2 != null) {
                            oVar.l = i12 + ":" + str2;
                        }
                        pVarArr[i16] = new r1.p(oVar);
                        i16++;
                        a0VarArr = a0VarArr2;
                    }
                    a0[] a0VarArr3 = a0VarArr;
                    r1.r0 r0Var = new r1.r0(i12 + ":" + r0VarA.f13554b, pVarArr);
                    this.f5310f.put(r0Var, r0VarA);
                    r0VarArr[i11] = r0Var;
                    i14++;
                    i11++;
                    a0VarArr = a0VarArr3;
                }
            }
            this.f5312h = new j1(r0VarArr);
            z zVar = this.f5311g;
            zVar.getClass();
            zVar.d(this);
        }
    }

    @Override // f2.a0
    public final void g() {
        for (a0 a0Var : this.f5305a) {
            a0Var.g();
        }
    }

    @Override // f2.a0
    public final long h(long j10) {
        long jH = this.f5313i[0].h(j10);
        int i10 = 1;
        while (true) {
            a0[] a0VarArr = this.f5313i;
            if (i10 >= a0VarArr.length) {
                return jH;
            }
            if (a0VarArr[i10].h(jH) != jH) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i10++;
        }
    }

    @Override // f2.a0
    public final void i(long j10) {
        for (a0 a0Var : this.f5313i) {
            a0Var.i(j10);
        }
    }

    @Override // f2.d1
    public final boolean j() {
        return this.f5314j.j();
    }

    @Override // f2.a0
    public final long k(long j10, y1.e1 e1Var) {
        a0[] a0VarArr = this.f5313i;
        return (a0VarArr.length > 0 ? a0VarArr[0] : this.f5305a[0]).k(j10, e1Var);
    }

    @Override // f2.a0
    public final void l(z zVar, long j10) {
        this.f5311g = zVar;
        ArrayList arrayList = this.f5309e;
        a0[] a0VarArr = this.f5305a;
        Collections.addAll(arrayList, a0VarArr);
        for (a0 a0Var : a0VarArr) {
            a0Var.l(this, j10);
        }
    }

    @Override // f2.a0
    public final long m() {
        long j10 = -9223372036854775807L;
        for (a0 a0Var : this.f5313i) {
            long jM = a0Var.m();
            if (jM == -9223372036854775807L) {
                if (j10 != -9223372036854775807L && a0Var.h(j10) != j10) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j10 == -9223372036854775807L) {
                for (a0 a0Var2 : this.f5313i) {
                    if (a0Var2 == a0Var) {
                        break;
                    }
                    if (a0Var2.h(jM) != jM) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j10 = jM;
            } else if (jM != j10) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j10;
    }

    @Override // f2.a0
    public final j1 n() {
        j1 j1Var = this.f5312h;
        j1Var.getClass();
        return j1Var;
    }

    @Override // f2.a0
    public final long o(h2.p[] pVarArr, boolean[] zArr, c1[] c1VarArr, boolean[] zArr2, long j10) {
        IdentityHashMap identityHashMap;
        ArrayList arrayList;
        int[] iArr = new int[pVarArr.length];
        int[] iArr2 = new int[pVarArr.length];
        int i10 = 0;
        while (true) {
            int length = pVarArr.length;
            identityHashMap = this.f5307c;
            if (i10 >= length) {
                break;
            }
            c1 c1Var = c1VarArr[i10];
            Integer num = c1Var == null ? null : (Integer) identityHashMap.get(c1Var);
            iArr[i10] = num == null ? -1 : num.intValue();
            h2.p pVar = pVarArr[i10];
            if (pVar != null) {
                String str = pVar.a().f13554b;
                iArr2[i10] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr2[i10] = -1;
            }
            i10++;
        }
        identityHashMap.clear();
        int length2 = pVarArr.length;
        c1[] c1VarArr2 = new c1[length2];
        c1[] c1VarArr3 = new c1[pVarArr.length];
        h2.p[] pVarArr2 = new h2.p[pVarArr.length];
        a0[] a0VarArr = this.f5305a;
        ArrayList arrayList2 = new ArrayList(a0VarArr.length);
        long j11 = j10;
        int i11 = 0;
        while (i11 < a0VarArr.length) {
            int i12 = 0;
            while (i12 < pVarArr.length) {
                c1VarArr3[i12] = iArr[i12] == i11 ? c1VarArr[i12] : null;
                if (iArr2[i12] == i11) {
                    h2.p pVar2 = pVarArr[i12];
                    pVar2.getClass();
                    arrayList = arrayList2;
                    r1.r0 r0Var = (r1.r0) this.f5310f.get(pVar2.a());
                    r0Var.getClass();
                    pVarArr2[i12] = new j0(pVar2, r0Var);
                } else {
                    arrayList = arrayList2;
                    pVarArr2[i12] = null;
                }
                i12++;
                arrayList2 = arrayList;
            }
            ArrayList arrayList3 = arrayList2;
            int i13 = i11;
            a0[] a0VarArr2 = a0VarArr;
            h2.p[] pVarArr3 = pVarArr2;
            long jO = a0VarArr[i11].o(pVarArr2, zArr, c1VarArr3, zArr2, j11);
            if (i13 == 0) {
                j11 = jO;
            } else if (jO != j11) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i14 = 0; i14 < pVarArr.length; i14++) {
                if (iArr2[i14] == i13) {
                    c1 c1Var2 = c1VarArr3[i14];
                    c1Var2.getClass();
                    c1VarArr2[i14] = c1VarArr3[i14];
                    identityHashMap.put(c1Var2, Integer.valueOf(i13));
                    z = true;
                } else if (iArr[i14] == i13) {
                    a9.o.t(c1VarArr3[i14] == null);
                }
            }
            if (z) {
                arrayList3.add(a0VarArr2[i13]);
            }
            i11 = i13 + 1;
            arrayList2 = arrayList3;
            a0VarArr = a0VarArr2;
            pVarArr2 = pVarArr3;
        }
        ArrayList arrayList4 = arrayList2;
        System.arraycopy(c1VarArr2, 0, c1VarArr, 0, length2);
        this.f5313i = (a0[]) arrayList4.toArray(new a0[0]);
        AbstractList abstractListT = u7.q.t(arrayList4, new a2.u0(20));
        this.f5308d.getClass();
        this.f5314j = new m(arrayList4, abstractListT);
        return j11;
    }

    @Override // f2.d1
    public final long p() {
        return this.f5314j.p();
    }

    @Override // f2.d1
    public final void r(long j10) {
        this.f5314j.r(j10);
    }
}
