package y1;

import android.content.Context;
import android.os.Build;
import android.util.Pair;
import android.view.accessibility.CaptioningManager;
import f2.j1;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public final class l0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f18720a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18721b;

    /* renamed from: c, reason: collision with root package name */
    public final f2.c1[] f18722c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18723d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18724e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18725f;

    /* renamed from: g, reason: collision with root package name */
    public m0 f18726g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f18727h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean[] f18728i;

    /* renamed from: j, reason: collision with root package name */
    public final a[] f18729j;

    /* renamed from: k, reason: collision with root package name */
    public final h2.q f18730k;
    public final m7.l l;

    /* renamed from: m, reason: collision with root package name */
    public l0 f18731m;

    /* renamed from: n, reason: collision with root package name */
    public j1 f18732n;

    /* renamed from: o, reason: collision with root package name */
    public h2.r f18733o;

    /* renamed from: p, reason: collision with root package name */
    public long f18734p;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [f2.c] */
    public l0(a[] aVarArr, long j10, h2.q qVar, s4.a aVar, m7.l lVar, m0 m0Var, h2.r rVar) {
        this.f18729j = aVarArr;
        this.f18734p = j10;
        this.f18730k = qVar;
        this.l = lVar;
        f2.c0 c0Var = m0Var.f18758a;
        this.f18721b = c0Var.f5236a;
        this.f18726g = m0Var;
        this.f18732n = j1.f5298d;
        this.f18733o = rVar;
        this.f18722c = new f2.c1[aVarArr.length];
        this.f18728i = new boolean[aVarArr.length];
        lVar.getClass();
        int i10 = a1.f18571k;
        Pair pair = (Pair) c0Var.f5236a;
        Object obj = pair.first;
        f2.c0 c0VarA = c0Var.a(pair.second);
        u0 u0Var = (u0) ((HashMap) lVar.f10957e).get(obj);
        u0Var.getClass();
        ((HashSet) lVar.f10960h).add(u0Var);
        t0 t0Var = (t0) ((HashMap) lVar.f10959g).get(u0Var);
        if (t0Var != null) {
            t0Var.f18809a.d(t0Var.f18810b);
        }
        u0Var.f18818c.add(c0VarA);
        f2.u uVarA = u0Var.f18816a.a(c0VarA, aVar, m0Var.f18759b);
        ((IdentityHashMap) lVar.f10956d).put(uVarA, u0Var);
        lVar.d();
        long j11 = m0Var.f18762e;
        this.f18720a = j11 != -9223372036854775807L ? new f2.c(uVarA, !m0Var.f18764g, 0L, j11) : uVarA;
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [f2.a0, java.lang.Object] */
    public final long a(h2.r rVar, long j10, boolean z, boolean[] zArr) {
        a[] aVarArr;
        f2.c1[] c1VarArr;
        int i10 = 0;
        while (true) {
            boolean z4 = true;
            if (i10 >= rVar.f6406a) {
                break;
            }
            if (z || !rVar.a(this.f18733o, i10)) {
                z4 = false;
            }
            this.f18728i[i10] = z4;
            i10++;
        }
        int i11 = 0;
        while (true) {
            aVarArr = this.f18729j;
            int length = aVarArr.length;
            c1VarArr = this.f18722c;
            if (i11 >= length) {
                break;
            }
            if (aVarArr[i11].f18553b == -2) {
                c1VarArr[i11] = null;
            }
            i11++;
        }
        b();
        this.f18733o = rVar;
        c();
        long jO = this.f18720a.o(rVar.f6408c, this.f18728i, this.f18722c, zArr, j10);
        for (int i12 = 0; i12 < aVarArr.length; i12++) {
            if (aVarArr[i12].f18553b == -2 && this.f18733o.b(i12)) {
                c1VarArr[i12] = new gf.g(22);
            }
        }
        this.f18725f = false;
        for (int i13 = 0; i13 < c1VarArr.length; i13++) {
            if (c1VarArr[i13] != null) {
                a9.o.t(rVar.b(i13));
                if (aVarArr[i13].f18553b != -2) {
                    this.f18725f = true;
                }
            } else {
                a9.o.t(rVar.f6408c[i13] == null);
            }
        }
        return jO;
    }

    public final void b() {
        if (this.f18731m != null) {
            return;
        }
        int i10 = 0;
        while (true) {
            h2.r rVar = this.f18733o;
            if (i10 >= rVar.f6406a) {
                return;
            }
            boolean zB = rVar.b(i10);
            h2.p pVar = this.f18733o.f6408c[i10];
            if (zB && pVar != null) {
                pVar.f();
            }
            i10++;
        }
    }

    public final void c() {
        if (this.f18731m != null) {
            return;
        }
        int i10 = 0;
        while (true) {
            h2.r rVar = this.f18733o;
            if (i10 >= rVar.f6406a) {
                return;
            }
            boolean zB = rVar.b(i10);
            h2.p pVar = this.f18733o.f6408c[i10];
            if (zB && pVar != null) {
                pVar.d();
            }
            i10++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [f2.d1, java.lang.Object] */
    public final long d() {
        if (!this.f18724e) {
            return this.f18726g.f18759b;
        }
        long jP = this.f18725f ? this.f18720a.p() : Long.MIN_VALUE;
        return jP == Long.MIN_VALUE ? this.f18726g.f18763f : jP;
    }

    public final long e() {
        return this.f18726g.f18759b + this.f18734p;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [f2.a0, java.lang.Object] */
    public final void f(float f10, r1.q0 q0Var, boolean z) {
        this.f18724e = true;
        this.f18732n = this.f18720a.n();
        h2.r rVarJ = j(f10, q0Var, z);
        m0 m0Var = this.f18726g;
        long j10 = m0Var.f18759b;
        long j11 = m0Var.f18763f;
        long jA = a(rVarJ, (j11 == -9223372036854775807L || j10 < j11) ? j10 : Math.max(0L, j11 - 1), false, new boolean[this.f18729j.length]);
        long j12 = this.f18734p;
        m0 m0Var2 = this.f18726g;
        this.f18734p = (m0Var2.f18759b - jA) + j12;
        this.f18726g = m0Var2.b(jA, m0Var2.f18760c);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [f2.d1, java.lang.Object] */
    public final boolean g() {
        return this.f18724e && (!this.f18725f || this.f18720a.p() == Long.MIN_VALUE);
    }

    public final boolean h() {
        return this.f18724e && (g() || d() - this.f18726g.f18759b >= -9223372036854775807L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [f2.a0, java.lang.Object] */
    public final void i() {
        b();
        ?? r02 = this.f18720a;
        try {
            boolean z = r02 instanceof f2.c;
            m7.l lVar = this.l;
            if (z) {
                lVar.h(((f2.c) r02).f5228a);
            } else {
                lVar.h(r02);
            }
        } catch (RuntimeException e7) {
            u1.a.g("Period release failed.", e7);
        }
    }

    public final h2.r j(float f10, r1.q0 q0Var, boolean z) {
        h2.i iVar;
        String str;
        h2.n nVar;
        long j10;
        j1[] j1VarArr;
        int i10;
        int i11;
        u7.y0 y0VarR;
        long j11;
        int i12;
        int i13;
        int i14;
        int i15;
        b5.i iVar2;
        String languageTag;
        CaptioningManager captioningManagerD;
        Locale locale;
        Pair pairP;
        int i16;
        boolean z4;
        Context context;
        int i17;
        int[] iArr;
        int i18 = 5;
        int i19 = 0;
        h2.q qVar = this.f18730k;
        a[] aVarArr = this.f18729j;
        j1 j1Var = this.f18732n;
        qVar.getClass();
        int[] iArr2 = new int[aVarArr.length + 1];
        int length = aVarArr.length + 1;
        r1.r0[][] r0VarArr = new r1.r0[length][];
        int[][][] iArr3 = new int[aVarArr.length + 1][][];
        int iA = ta.q.a(0, 0, 0, 0);
        for (int i20 = 0; i20 < length; i20++) {
            int i21 = j1Var.f5299a;
            r0VarArr[i20] = new r1.r0[i21];
            iArr3[i20] = new int[i21][];
        }
        int length2 = aVarArr.length;
        int[] iArr4 = new int[length2];
        for (int i22 = 0; i22 < length2; i22++) {
            iArr4[i22] = aVarArr[i22].C();
        }
        int i23 = 0;
        while (i23 < j1Var.f5299a) {
            r1.r0 r0VarA = j1Var.a(i23);
            boolean z10 = r0VarA.f13555c == i18;
            int length3 = aVarArr.length;
            int i24 = 0;
            boolean z11 = true;
            while (i24 < aVarArr.length) {
                a aVar = aVarArr[i24];
                j1 j1Var2 = j1Var;
                int[] iArr5 = iArr4;
                int i25 = iA;
                int iMax = 0;
                for (int i26 = 0; i26 < r0VarA.f13553a; i26++) {
                    iMax = Math.max(iMax, aVar.B(r0VarA.f13556d[i26]) & 7);
                }
                boolean z12 = iArr2[i24] == 0;
                if (iMax > i19 || (iMax == i19 && z10 && !z11 && z12)) {
                    length3 = i24;
                    z11 = z12;
                    i19 = iMax;
                }
                i24++;
                j1Var = j1Var2;
                iArr4 = iArr5;
                iA = i25;
            }
            j1 j1Var3 = j1Var;
            int[] iArr6 = iArr4;
            int i27 = iA;
            if (length3 == aVarArr.length) {
                iArr = new int[r0VarA.f13553a];
                i17 = 1;
            } else {
                a aVar2 = aVarArr[length3];
                int[] iArr7 = new int[r0VarA.f13553a];
                for (int i28 = 0; i28 < r0VarA.f13553a; i28++) {
                    iArr7[i28] = aVar2.B(r0VarA.f13556d[i28]);
                }
                i17 = 1;
                iArr = iArr7;
            }
            int i29 = iArr2[length3];
            r0VarArr[length3][i29] = r0VarA;
            iArr3[length3][i29] = iArr;
            iArr2[length3] = i29 + i17;
            i23 += i17;
            j1Var = j1Var3;
            iArr4 = iArr6;
            iA = i27;
            i18 = 5;
            i19 = 0;
        }
        int[] iArr8 = iArr4;
        int i30 = iA;
        j1[] j1VarArr2 = new j1[aVarArr.length];
        String[] strArr = new String[aVarArr.length];
        int[] iArr9 = new int[aVarArr.length];
        for (int i31 = 0; i31 < aVarArr.length; i31++) {
            int i32 = iArr2[i31];
            j1VarArr2[i31] = new j1((r1.r0[]) u1.f0.I(i32, r0VarArr[i31]));
            iArr3[i31] = (int[][]) u1.f0.I(i32, iArr3[i31]);
            strArr[i31] = aVarArr[i31].j();
            iArr9[i31] = aVarArr[i31].f18553b;
        }
        b5.i iVar3 = new b5.i(iArr9, j1VarArr2, iArr8, iArr3, new j1((r1.r0[]) u1.f0.I(iArr2[aVarArr.length], r0VarArr[aVarArr.length])));
        h2.n nVar2 = (h2.n) qVar;
        synchronized (nVar2.f6394c) {
            nVar2.f6398g = Thread.currentThread();
            iVar = nVar2.f6397f;
        }
        if (nVar2.f6401j == null && (context = nVar2.f6395d) != null) {
            nVar2.f6401j = Boolean.valueOf(u1.f0.F(context));
        }
        if (iVar.B && Build.VERSION.SDK_INT >= 32 && nVar2.f6399h == null) {
            nVar2.f6399h = new j2.d(nVar2.f6395d, new a2.h(21, nVar2), nVar2.f6401j);
        }
        int i33 = iVar3.f2571a;
        h2.o[] oVarArr = new h2.o[i33];
        h2.n.g(iVar3, iVar, oVarArr);
        h2.n.e(iVar3, iVar, oVarArr);
        h2.n.f(iVar3, iVar, oVarArr);
        int i34 = iVar3.f2571a;
        Pair pairI = h2.n.i(oVarArr, 1);
        int i35 = iVar3.f2571a;
        if (pairI == null) {
            int i36 = 0;
            while (true) {
                if (i36 >= i35) {
                    i16 = 1;
                    z4 = false;
                    break;
                }
                if (2 == iArr9[i36] && j1VarArr2[i36].f5299a > 0) {
                    z4 = true;
                    i16 = 1;
                    break;
                }
                i36++;
            }
            pairI = h2.n.p(i16, iVar3, iArr3, new h2.d(nVar2, iVar, z4, iArr8), new a2.m(14));
            if (pairI != null) {
                oVarArr[((Integer) pairI.second).intValue()] = (h2.o) pairI.first;
            }
        }
        if (pairI == null) {
            str = null;
        } else {
            h2.o oVar = (h2.o) pairI.first;
            str = oVar.f6402a.f13556d[oVar.f6403b[0]].f13513d;
        }
        Pair pairI2 = h2.n.i(oVarArr, 2);
        Pair pairI3 = h2.n.i(oVarArr, 4);
        Context context2 = nVar2.f6395d;
        if (pairI2 == null && pairI3 == null) {
            iVar.f13612q.getClass();
            Pair pairP2 = h2.n.p(2, iVar3, iArr3, new androidx.fragment.app.f(iVar, str, iArr8, (!iVar.f13603g || context2 == null) ? null : u1.f0.p(context2), 3), new a2.m(13));
            if (pairP2 == null) {
                iVar.f13612q.getClass();
                nVar = nVar2;
                pairP = h2.n.p(4, iVar3, iArr3, new a1.d(5, iVar), new a2.m(12));
            } else {
                nVar = nVar2;
                pairP = null;
            }
            if (pairP != null) {
                oVarArr[((Integer) pairP.second).intValue()] = (h2.o) pairP.first;
            } else if (pairP2 != null) {
                oVarArr[((Integer) pairP2.second).intValue()] = (h2.o) pairP2.first;
            }
        } else {
            nVar = nVar2;
        }
        if (h2.n.i(oVarArr, 3) == null) {
            iVar.f13612q.getClass();
            if (!iVar.f13614t || context2 == null || (captioningManagerD = com.hierynomus.security.jce.a.d(context2.getSystemService("captioning"))) == null || !captioningManagerD.isEnabled() || (locale = captioningManagerD.getLocale()) == null) {
                languageTag = null;
            } else {
                String str2 = u1.f0.f15206a;
                languageTag = locale.toLanguageTag();
            }
            Pair pairP3 = h2.n.p(3, iVar3, iArr3, new com.hjq.permissions.b(iVar, str, languageTag, 1), new a2.m(10));
            if (pairP3 != null) {
                oVarArr[((Integer) pairP3.second).intValue()] = (h2.o) pairP3.first;
            }
        }
        iVar.f13612q.getClass();
        int i37 = u7.j0.f15482c;
        u7.i0 i0Var = new u7.i0();
        for (int i38 = 0; i38 < i33; i38++) {
            h2.o oVar2 = oVarArr[i38];
            if (oVar2 != null && !iVar.F.get(i38)) {
                r1.r0 r0Var = oVar2.f6402a;
                if (!iVar.f13617w.contains(Integer.valueOf(r0Var.f13555c))) {
                    i0Var.g(r0Var.f13554b);
                    int i39 = 0;
                    while (true) {
                        int[] iArr10 = oVar2.f6403b;
                        h2.o oVar3 = oVar2;
                        if (i39 < iArr10.length) {
                            String str3 = r0Var.f13556d[iArr10[i39]].f13521m;
                            if (str3 != null) {
                                i0Var.b(str3);
                            }
                            i39++;
                            oVar2 = oVar3;
                        }
                    }
                }
            }
        }
        u7.j0 j0VarH = i0Var.h();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i40 = 0;
        while (i40 < i35) {
            if (iArr9[i40] != 5) {
                iVar2 = iVar3;
                i15 = i33;
            } else {
                j1 j1Var4 = j1VarArr2[i40];
                i15 = i33;
                int i41 = 0;
                while (i41 < j1Var4.f5299a) {
                    r1.r0 r0VarA2 = j1Var4.a(i41);
                    arrayList.add(r0VarA2);
                    j1 j1Var5 = j1Var4;
                    int[] iArr11 = (int[]) iArr3[i40][i41].clone();
                    b5.i iVar4 = iVar3;
                    int[][][] iArr12 = iArr3;
                    for (int i42 = 0; i42 < iArr11.length; i42++) {
                        String str4 = r0VarA2.f13556d[i42].f13521m;
                        if (str4 != null && !j0VarH.contains(str4)) {
                            iArr11[i42] = i30;
                        }
                    }
                    arrayList2.add(iArr11);
                    i41++;
                    iVar3 = iVar4;
                    j1Var4 = j1Var5;
                    iArr3 = iArr12;
                }
                iVar2 = iVar3;
            }
            i40++;
            i33 = i15;
            iVar3 = iVar2;
            iArr3 = iArr3;
        }
        b5.i iVar5 = iVar3;
        int i43 = i33;
        int[][][] iArr13 = iArr3;
        int size = arrayList.size();
        r1.r0[] r0VarArr2 = new r1.r0[size];
        a9.o.t(arrayList.size() == size);
        arrayList.toArray(r0VarArr2);
        j1 j1Var6 = new j1(r0VarArr2);
        int size2 = arrayList2.size();
        int[][] iArr14 = new int[size2][];
        a9.o.t(arrayList2.size() == size2);
        arrayList2.toArray(iArr14);
        for (int i44 = 0; i44 < i35; i44++) {
            if (iArr9[i44] == 5) {
                h2.o oVarO = h2.n.o(j1Var6, iArr14, iVar);
                oVarArr[i44] = oVarO;
                if (oVarO == null) {
                    break;
                }
                int iIndexOf = j1Var6.f5300b.indexOf(oVarO.f6402a);
                Arrays.fill(iArr14[iIndexOf >= 0 ? iIndexOf : -1], i30);
            }
        }
        int i45 = 1;
        int i46 = 0;
        while (i46 < i34) {
            int i47 = iArr9[i46];
            if (i47 != 2 && i47 != i45) {
                if (i47 != 3 && i47 != 4) {
                    if (i47 != 5 && oVarArr[i46] == null) {
                        oVarArr[i46] = h2.n.o(j1VarArr2[i46], iArr13[i46], iVar);
                    }
                }
                i46++;
                i45 = 1;
            }
            i46++;
            i45 = 1;
        }
        h2.n.g(iVar5, iVar, oVarArr);
        h2.n.e(iVar5, iVar, oVarArr);
        h2.n.f(iVar5, iVar, oVarArr);
        h2.n nVar3 = nVar;
        gf.g gVar = nVar3.f6396e;
        nVar3.f6405b.getClass();
        gVar.getClass();
        ArrayList arrayList3 = new ArrayList();
        for (int i48 = 0; i48 < oVarArr.length; i48 += i14) {
            h2.o oVar4 = oVarArr[i48];
            if (oVar4 != null) {
                i14 = 1;
                if (oVar4.f6403b.length > 1) {
                    u7.d0 d0VarJ = u7.g0.j();
                    d0VarJ.c(new h2.a(0L, 0L));
                    arrayList3.add(d0VarJ);
                }
            } else {
                i14 = 1;
            }
            arrayList3.add(null);
        }
        int length4 = oVarArr.length;
        long[][] jArr = new long[length4][];
        int i49 = 0;
        while (true) {
            j10 = -1;
            if (i49 >= oVarArr.length) {
                break;
            }
            h2.o oVar5 = oVarArr[i49];
            if (oVar5 == null) {
                jArr[i49] = new long[0];
                i13 = 1;
            } else {
                int[] iArr15 = oVar5.f6403b;
                jArr[i49] = new long[iArr15.length];
                for (int i50 = 0; i50 < iArr15.length; i50++) {
                    long j12 = oVar5.f6402a.f13556d[iArr15[i50]].f13519j;
                    long[] jArr2 = jArr[i49];
                    if (j12 == -1) {
                        j12 = 0;
                    }
                    jArr2[i50] = j12;
                }
                i13 = 1;
                Arrays.sort(jArr[i49]);
            }
            i49 += i13;
        }
        int[] iArr16 = new int[length4];
        long[] jArr3 = new long[length4];
        for (int i51 = 0; i51 < length4; i51++) {
            long[] jArr4 = jArr[i51];
            jArr3[i51] = jArr4.length == 0 ? 0L : jArr4[0];
        }
        h2.b.m(arrayList3, jArr3);
        u7.w0 w0Var = u7.w0.f15544a;
        w0Var.getClass();
        u7.u0 u0VarS = new u7.s0(w0Var).a().s();
        int i52 = 0;
        while (i52 < length4) {
            long[] jArr5 = jArr[i52];
            if (jArr5.length <= 1) {
                i12 = length4;
                j11 = j10;
            } else {
                int length5 = jArr5.length;
                double[] dArr = new double[length5];
                int i53 = 0;
                while (true) {
                    long[] jArr6 = jArr[i52];
                    double dLog = 0.0d;
                    if (i53 >= jArr6.length) {
                        break;
                    }
                    long j13 = jArr6[i53];
                    if (j13 != -1) {
                        dLog = Math.log(j13);
                    }
                    dArr[i53] = dLog;
                    i53++;
                }
                int i54 = 1;
                j11 = -1;
                int i55 = length5 - 1;
                double d10 = dArr[i55] - dArr[0];
                int i56 = 0;
                while (i56 < i55) {
                    double d11 = dArr[i56];
                    i56 += i54;
                    Double dValueOf = Double.valueOf(d10 == 0.0d ? 1.0d : (((d11 + dArr[i56]) * 0.5d) - dArr[0]) / d10);
                    int i57 = length4;
                    Integer numValueOf = Integer.valueOf(i52);
                    int i58 = i55;
                    Map map = u0VarS.f15540d;
                    double d12 = d10;
                    Collection collection = (Collection) map.get(dValueOf);
                    if (collection == null) {
                        List list = (List) u0VarS.f15542f.get();
                        if (!list.add(numValueOf)) {
                            throw new AssertionError("New Collection violated the Collection spec");
                        }
                        u0VarS.f15541e++;
                        map.put(dValueOf, list);
                    } else if (collection.add(numValueOf)) {
                        u0VarS.f15541e++;
                    }
                    length4 = i57;
                    i55 = i58;
                    d10 = d12;
                    i54 = 1;
                }
                i12 = length4;
            }
            i52++;
            length4 = i12;
            j10 = j11;
        }
        Collection nVar4 = u0VarS.f15509b;
        if (nVar4 == null) {
            nVar4 = new u7.n(0, u0VarS);
            u0VarS.f15509b = nVar4;
        }
        u7.g0 g0VarM = u7.g0.m(nVar4);
        for (int i59 = 0; i59 < g0VarM.size(); i59++) {
            int iIntValue = ((Integer) g0VarM.get(i59)).intValue();
            int i60 = iArr16[iIntValue] + 1;
            iArr16[iIntValue] = i60;
            jArr3[iIntValue] = jArr[iIntValue][i60];
            h2.b.m(arrayList3, jArr3);
        }
        for (int i61 = 0; i61 < oVarArr.length; i61++) {
            if (arrayList3.get(i61) != null) {
                jArr3[i61] = jArr3[i61] * 2;
            }
        }
        h2.b.m(arrayList3, jArr3);
        u7.d0 d0VarJ2 = u7.g0.j();
        for (int i62 = 0; i62 < arrayList3.size(); i62++) {
            u7.d0 d0Var = (u7.d0) arrayList3.get(i62);
            d0VarJ2.c(d0Var == null ? u7.g0.p() : d0Var.g());
        }
        u7.y0 y0VarG = d0VarJ2.g();
        h2.p[] pVarArr = new h2.p[oVarArr.length];
        for (int i63 = 0; i63 < oVarArr.length; i63++) {
            h2.o oVar6 = oVarArr[i63];
            if (oVar6 != null) {
                int[] iArr17 = oVar6.f6403b;
                if (iArr17.length != 0) {
                    pVarArr[i63] = iArr17.length == 1 ? new h2.b(oVar6.f6402a, iArr17[0]) : new h2.b(oVar6.f6402a, iArr17, 10000, 25000, (u7.g0) y0VarG.get(i63));
                }
            }
        }
        b1[] b1VarArr = new b1[i43];
        for (int i64 = 0; i64 < i43; i64++) {
            b1VarArr[i64] = (iVar.F.get(i64) || iVar.f13617w.contains(Integer.valueOf(((int[]) iVar5.f2572b)[i64])) || (((int[]) iVar5.f2572b)[i64] != -2 && pVarArr[i64] == null)) ? null : b1.f18584c;
        }
        iVar.f13612q.getClass();
        Pair pairCreate = Pair.create(b1VarArr, pVarArr);
        h2.p[] pVarArr2 = (h2.p[]) pairCreate.second;
        int length6 = pVarArr2.length;
        List[] listArr = new List[length6];
        for (int i65 = 0; i65 < pVarArr2.length; i65++) {
            h2.p pVar = pVarArr2[i65];
            if (pVar != null) {
                y0VarR = u7.g0.r(pVar);
            } else {
                u7.e0 e0Var = u7.g0.f15471b;
                y0VarR = u7.y0.f15549e;
            }
            listArr[i65] = y0VarR;
        }
        u7.d0 d0Var2 = new u7.d0();
        int i66 = 0;
        while (i66 < iVar5.f2571a) {
            j1[] j1VarArr3 = (j1[]) iVar5.f2573c;
            j1 j1Var7 = j1VarArr3[i66];
            int i67 = 0;
            while (i67 < j1Var7.f5299a) {
                r1.r0 r0VarA3 = j1Var7.a(i67);
                int i68 = j1VarArr3[i66].a(i67).f13553a;
                int[] iArr18 = new int[i68];
                int i69 = 0;
                int i70 = 0;
                while (i69 < i68) {
                    if ((((int[][][]) iVar5.f2575e)[i66][i67][i69] & 7) != 4) {
                        i11 = 1;
                    } else {
                        i11 = 1;
                        iArr18[i70] = i69;
                        i70++;
                    }
                    i69 += i11;
                }
                int[] iArrCopyOf = Arrays.copyOf(iArr18, i70);
                int iMin = 16;
                j1 j1Var8 = j1Var7;
                String str5 = null;
                int i71 = 0;
                boolean z13 = false;
                int i72 = 0;
                while (i71 < iArrCopyOf.length) {
                    int[] iArr19 = iArrCopyOf;
                    String str6 = j1VarArr3[i66].a(i67).f13556d[iArrCopyOf[i71]].f13523o;
                    int i73 = i72 + 1;
                    if (i72 == 0) {
                        str5 = str6;
                    } else {
                        z13 = (!Objects.equals(str5, str6)) | z13;
                    }
                    iMin = Math.min(iMin, ((int[][][]) iVar5.f2575e)[i66][i67][i71] & 24);
                    i71++;
                    iArrCopyOf = iArr19;
                    i72 = i73;
                }
                if (z13) {
                    iMin = Math.min(iMin, ((int[]) iVar5.f2574d)[i66]);
                }
                boolean z14 = iMin != 0;
                int i74 = r0VarA3.f13553a;
                int[] iArr20 = new int[i74];
                boolean[] zArr = new boolean[i74];
                int i75 = 0;
                while (i75 < r0VarA3.f13553a) {
                    iArr20[i75] = ((int[][][]) iVar5.f2575e)[i66][i67][i75] & 7;
                    int i76 = 0;
                    boolean z15 = false;
                    while (i76 < length6) {
                        List list2 = listArr[i76];
                        int i77 = length6;
                        List[] listArr2 = listArr;
                        int i78 = 0;
                        while (true) {
                            if (i78 >= list2.size()) {
                                j1VarArr = j1VarArr3;
                                i10 = 1;
                                break;
                            }
                            h2.p pVar2 = (h2.p) list2.get(i78);
                            j1VarArr = j1VarArr3;
                            if (pVar2.a().equals(r0VarA3) && pVar2.l(i75) != -1) {
                                i10 = 1;
                                z15 = true;
                                break;
                            }
                            i78++;
                            j1VarArr3 = j1VarArr;
                        }
                        i76 += i10;
                        length6 = i77;
                        listArr = listArr2;
                        j1VarArr3 = j1VarArr;
                    }
                    zArr[i75] = z15;
                    i75++;
                    listArr = listArr;
                    j1VarArr3 = j1VarArr3;
                }
                d0Var2.b(new r1.w0(r0VarA3, z14, iArr20, zArr));
                i67++;
                j1Var7 = j1Var8;
                length6 = length6;
                listArr = listArr;
                j1VarArr3 = j1VarArr3;
            }
            i66++;
            listArr = listArr;
        }
        int i79 = 0;
        while (true) {
            j1 j1Var9 = (j1) iVar5.f2576f;
            if (i79 >= j1Var9.f5299a) {
                break;
            }
            r1.r0 r0VarA4 = j1Var9.a(i79);
            int[] iArr21 = new int[r0VarA4.f13553a];
            Arrays.fill(iArr21, 0);
            d0Var2.b(new r1.w0(r0VarA4, false, iArr21, new boolean[r0VarA4.f13553a]));
            i79++;
        }
        h2.r rVar = new h2.r((b1[]) pairCreate.first, (h2.p[]) pairCreate.second, new r1.x0(d0Var2.g()), iVar5);
        for (int i80 = 0; i80 < rVar.f6406a; i80++) {
            if (rVar.b(i80)) {
                a9.o.t(rVar.f6408c[i80] != null || this.f18729j[i80].f18553b == -2);
            } else {
                a9.o.t(rVar.f6408c[i80] == null);
            }
        }
        for (h2.p pVar3 : rVar.f6408c) {
            if (pVar3 != null) {
                pVar3.i(f10);
                pVar3.b(z);
            }
        }
        return rVar;
    }

    public final void k() {
        Object obj = this.f18720a;
        if (obj instanceof f2.c) {
            long j10 = this.f18726g.f18762e;
            if (j10 == -9223372036854775807L) {
                j10 = Long.MIN_VALUE;
            }
            f2.c cVar = (f2.c) obj;
            cVar.f5233f = 0L;
            cVar.f5234g = j10;
        }
    }
}
