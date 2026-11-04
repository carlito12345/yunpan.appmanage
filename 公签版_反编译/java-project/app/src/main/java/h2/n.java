package h2;

import android.content.Context;
import android.content.ContextWrapper;
import android.media.Spatializer;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Pair;
import f2.j1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import r1.r0;
import r1.s0;
import r1.v0;
import u1.f0;
import u7.g0;
import u7.v;
import u7.x0;
import u7.y;
import u7.y0;

/* loaded from: classes.dex */
public final class n extends q {

    /* renamed from: k, reason: collision with root package name */
    public static final x0 f6393k = new v(new a2.m(11));

    /* renamed from: c, reason: collision with root package name */
    public final Object f6394c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f6395d;

    /* renamed from: e, reason: collision with root package name */
    public final gf.g f6396e;

    /* renamed from: f, reason: collision with root package name */
    public i f6397f;

    /* renamed from: g, reason: collision with root package name */
    public Thread f6398g;

    /* renamed from: h, reason: collision with root package name */
    public j2.d f6399h;

    /* renamed from: i, reason: collision with root package name */
    public r1.d f6400i;

    /* renamed from: j, reason: collision with root package name */
    public Boolean f6401j;

    public n(ContextWrapper contextWrapper) {
        gf.g gVar = new gf.g(26);
        i iVar = i.G;
        this.f6394c = new Object();
        this.f6395d = contextWrapper != null ? contextWrapper.getApplicationContext() : null;
        this.f6396e = gVar;
        if (iVar instanceof i) {
            this.f6397f = iVar;
        } else {
            iVar.getClass();
            h hVar = new h(iVar);
            hVar.c(iVar);
            this.f6397f = new i(hVar);
        }
        this.f6400i = r1.d.f13426d;
        if (this.f6397f.B && contextWrapper == null) {
            u1.a.p("Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    public static int c(int i10, int i11) {
        if (i10 == 0 || i10 != i11) {
            return Integer.bitCount(i10 & i11);
        }
        return Integer.MAX_VALUE;
    }

    public static int d(r1.p pVar, y0 y0Var) {
        for (int i10 = 0; i10 < y0Var.size(); i10++) {
            for (int i11 = 0; i11 < pVar.f13512c.size(); i11++) {
                if (((r1.q) pVar.f13512c.get(i11)).f13550b.equals(y0Var.get(i10))) {
                    return i10;
                }
            }
        }
        return Integer.MAX_VALUE;
    }

    public static void e(b5.i iVar, i iVar2, o[] oVarArr) {
        for (int i10 = 0; i10 < iVar.f2571a; i10++) {
            j1 j1Var = ((j1[]) iVar.f2573c)[i10];
            Map map = (Map) iVar2.E.get(i10);
            if (map != null && map.containsKey(j1Var)) {
                Map map2 = (Map) iVar2.E.get(i10);
                if (map2 != null && map2.get(j1Var) != null) {
                    throw new ClassCastException();
                }
                oVarArr[i10] = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void f(b5.i iVar, i iVar2, o[] oVarArr) {
        for (int i10 = 0; i10 < iVar.f2571a; i10++) {
            int i11 = ((int[]) iVar.f2572b)[i10];
            if (!iVar2.F.get(i10)) {
                if (iVar2.f13617w.contains(Integer.valueOf(i11))) {
                    oVarArr[i10] = null;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void g(b5.i iVar, i iVar2, o[] oVarArr) {
        j1[] j1VarArr;
        int i10;
        HashMap map = new HashMap();
        int i11 = 0;
        while (true) {
            j1VarArr = (j1[]) iVar.f2573c;
            i10 = iVar.f2571a;
            if (i11 >= i10) {
                break;
            }
            h(j1VarArr[i11], iVar2, map);
            i11++;
        }
        h((j1) iVar.f2576f, iVar2, map);
        for (int i12 = 0; i12 < i10; i12++) {
            s0 s0Var = (s0) map.get(Integer.valueOf(((int[]) iVar.f2572b)[i12]));
            if (s0Var != null) {
                g0 g0Var = s0Var.f13559b;
                if (!g0Var.isEmpty()) {
                    y0 y0Var = j1VarArr[i12].f5300b;
                    r0 r0Var = s0Var.f13558a;
                    int iIndexOf = y0Var.indexOf(r0Var);
                    if (iIndexOf < 0) {
                        iIndexOf = -1;
                    }
                    o oVar = iIndexOf != -1 ? new o(r0Var, d.b.r0(g0Var)) : null;
                    oVarArr[i12] = oVar;
                }
            }
        }
    }

    public static void h(j1 j1Var, i iVar, HashMap map) {
        for (int i10 = 0; i10 < j1Var.f5299a; i10++) {
            s0 s0Var = (s0) iVar.f13616v.get(j1Var.a(i10));
            if (s0Var != null) {
                r0 r0Var = s0Var.f13558a;
                s0 s0Var2 = (s0) map.get(Integer.valueOf(r0Var.f13555c));
                if (s0Var2 == null || (s0Var2.f13559b.isEmpty() && !s0Var.f13559b.isEmpty())) {
                    map.put(Integer.valueOf(r0Var.f13555c), s0Var);
                }
            }
        }
    }

    public static Pair i(o[] oVarArr, int i10) {
        for (int i11 = 0; i11 < oVarArr.length; i11++) {
            o oVar = oVarArr[i11];
            if (oVar != null && oVar.f6402a.f13555c == i10) {
                return Pair.create(oVar, Integer.valueOf(i11));
            }
        }
        return null;
    }

    public static int j(r1.p pVar, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(pVar.f13513d)) {
            return 4;
        }
        String strM = m(str);
        String strM2 = m(pVar.f13513d);
        if (strM2 == null || strM == null) {
            return (z && strM2 == null) ? 1 : 0;
        }
        if (strM2.startsWith(strM) || strM.startsWith(strM2)) {
            return 3;
        }
        String str2 = f0.f15206a;
        return strM2.split("-", 2)[0].equals(strM.split("-", 2)[0]) ? 2 : 0;
    }

    public static String m(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static o o(j1 j1Var, int[][] iArr, i iVar) {
        iVar.f13612q.getClass();
        r0 r0Var = null;
        g gVar = null;
        int i10 = 0;
        for (int i11 = 0; i11 < j1Var.f5299a; i11++) {
            r0 r0VarA = j1Var.a(i11);
            int[] iArr2 = iArr[i11];
            for (int i12 = 0; i12 < r0VarA.f13553a; i12++) {
                if (ta.q.f(iArr2[i12], iVar.C)) {
                    g gVar2 = new g(r0VarA.f13556d[i12], iArr2[i12]);
                    if (gVar != null) {
                        if (y.f15546a.c(gVar2.f6358b, gVar.f6358b).c(gVar2.f6357a, gVar.f6357a).e() > 0) {
                            r0Var = r0VarA;
                            i10 = i12;
                            gVar = gVar2;
                        }
                    }
                }
            }
        }
        if (r0Var == null) {
            return null;
        }
        return new o(r0Var, new int[]{i10});
    }

    public static Pair p(int i10, b5.i iVar, int[][][] iArr, k kVar, Comparator comparator) {
        Collection collectionR;
        b5.i iVar2 = iVar;
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < iVar2.f2571a) {
            if (i10 == ((int[]) iVar2.f2572b)[i11]) {
                j1 j1Var = ((j1[]) iVar2.f2573c)[i11];
                for (int i12 = 0; i12 < j1Var.f5299a; i12++) {
                    r0 r0VarA = j1Var.a(i12);
                    y0 y0VarD = kVar.d(i11, r0VarA, iArr[i11][i12]);
                    int i13 = r0VarA.f13553a;
                    boolean[] zArr = new boolean[i13];
                    for (int i14 = 0; i14 < i13; i14++) {
                        l lVar = (l) y0VarD.get(i14);
                        int iA = lVar.a();
                        if (!zArr[i14] && iA != 0) {
                            if (iA == 1) {
                                collectionR = g0.r(lVar);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(lVar);
                                for (int i15 = i14 + 1; i15 < i13; i15++) {
                                    l lVar2 = (l) y0VarD.get(i15);
                                    if (lVar2.a() == 2 && lVar.b(lVar2)) {
                                        arrayList2.add(lVar2);
                                        zArr[i15] = true;
                                    }
                                }
                                collectionR = arrayList2;
                            }
                            arrayList.add(collectionR);
                        }
                    }
                }
            }
            i11++;
            iVar2 = iVar;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i16 = 0; i16 < list.size(); i16++) {
            iArr2[i16] = ((l) list.get(i16)).f6374c;
        }
        l lVar3 = (l) list.get(0);
        return Pair.create(new o(lVar3.f6373b, iArr2), Integer.valueOf(lVar3.f6372a));
    }

    @Override // h2.q
    public final void a() {
        j2.d dVar;
        j2.c cVar;
        Handler handler;
        synchronized (this.f6394c) {
            try {
                Thread thread = this.f6398g;
                if (thread != null) {
                    a9.o.s("DefaultTrackSelector is accessed on the wrong thread.", thread == Thread.currentThread());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (Build.VERSION.SDK_INT >= 32 && (dVar = this.f6399h) != null) {
            Spatializer spatializer = dVar.f9662a;
            if (spatializer != null && (cVar = dVar.f9665d) != null && (handler = dVar.f9664c) != null) {
                spatializer.removeOnSpatializerStateChangedListener(cVar);
                handler.removeCallbacksAndMessages(null);
            }
            this.f6399h = null;
        }
        this.f6404a = null;
        this.f6405b = null;
    }

    @Override // h2.q
    public final void b(v0 v0Var) {
        if (v0Var instanceof i) {
            q((i) v0Var);
        }
        h hVar = new h(k());
        hVar.c(v0Var);
        q(new i(hVar));
    }

    public final i k() {
        i iVar;
        synchronized (this.f6394c) {
            iVar = this.f6397f;
        }
        return iVar;
    }

    public final void l() {
        boolean z;
        y1.f0 f0Var;
        j2.d dVar;
        synchronized (this.f6394c) {
            try {
                z = this.f6397f.B && Build.VERSION.SDK_INT >= 32 && (dVar = this.f6399h) != null && dVar.f9663b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!z || (f0Var = this.f6404a) == null) {
            return;
        }
        f0Var.f18660h.f(10);
    }

    public final void n() {
        synchronized (this.f6394c) {
            this.f6397f.getClass();
        }
    }

    public final void q(i iVar) {
        boolean zEquals;
        synchronized (this.f6394c) {
            zEquals = this.f6397f.equals(iVar);
            this.f6397f = iVar;
        }
        if (zEquals) {
            return;
        }
        if (iVar.B && this.f6395d == null) {
            u1.a.p("Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
        y1.f0 f0Var = this.f6404a;
        if (f0Var != null) {
            f0Var.f18660h.f(10);
        }
    }
}
