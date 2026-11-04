package f2;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class m0 extends k {

    /* renamed from: s, reason: collision with root package name */
    public static final r1.y f5323s;

    /* renamed from: k, reason: collision with root package name */
    public final a[] f5324k;
    public final ArrayList l;

    /* renamed from: m, reason: collision with root package name */
    public final r1.q0[] f5325m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f5326n;

    /* renamed from: o, reason: collision with root package name */
    public final m7.e f5327o;

    /* renamed from: p, reason: collision with root package name */
    public int f5328p;

    /* renamed from: q, reason: collision with root package name */
    public long[][] f5329q;
    public ch.a r;

    static {
        dd.c cVar = new dd.c(4);
        u7.e0 e0Var = u7.g0.f15471b;
        u7.y0 y0Var = u7.y0.f15549e;
        Collections.emptyList();
        u7.y0 y0Var2 = u7.y0.f15549e;
        r1.t tVar = new r1.t();
        f5323s = new r1.y("MergingMediaSource", new r1.s(cVar), null, new r1.u(tVar), r1.b0.B, r1.w.f13618a);
    }

    public m0(a... aVarArr) {
        m7.e eVar = new m7.e(21);
        this.f5324k = aVarArr;
        this.f5327o = eVar;
        this.f5326n = new ArrayList(Arrays.asList(aVarArr));
        this.f5328p = -1;
        this.l = new ArrayList(aVarArr.length);
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            this.l.add(new ArrayList());
        }
        this.f5325m = new r1.q0[aVarArr.length];
        this.f5329q = new long[0][];
        new HashMap();
        u7.q.c(8, "expectedKeys");
        new u7.r0().a().s();
    }

    @Override // f2.a
    public final a0 a(c0 c0Var, s4.a aVar, long j10) {
        a[] aVarArr = this.f5324k;
        int length = aVarArr.length;
        a0[] a0VarArr = new a0[length];
        r1.q0[] q0VarArr = this.f5325m;
        int iB = q0VarArr[0].b(c0Var.f5236a);
        for (int i10 = 0; i10 < length; i10++) {
            c0 c0VarA = c0Var.a(q0VarArr[i10].l(iB));
            a0VarArr[i10] = aVarArr[i10].a(c0VarA, aVar, j10 - this.f5329q[iB][i10]);
            ((List) this.l.get(i10)).add(new l0(c0VarA, a0VarArr[i10]));
        }
        return new k0(this.f5327o, this.f5329q[iB], a0VarArr);
    }

    @Override // f2.a
    public final r1.y g() {
        a[] aVarArr = this.f5324k;
        return aVarArr.length > 0 ? aVarArr[0].g() : f5323s;
    }

    @Override // f2.k, f2.a
    public final void i() throws ch.a {
        ch.a aVar = this.r;
        if (aVar != null) {
            throw aVar;
        }
        super.i();
    }

    @Override // f2.a
    public final void k(w1.x xVar) {
        this.f5304j = xVar;
        this.f5303i = u1.f0.k(null);
        int i10 = 0;
        while (true) {
            a[] aVarArr = this.f5324k;
            if (i10 >= aVarArr.length) {
                return;
            }
            w(Integer.valueOf(i10), aVarArr[i10]);
            i10++;
        }
    }

    @Override // f2.a
    public final void m(a0 a0Var) {
        k0 k0Var = (k0) a0Var;
        int i10 = 0;
        while (true) {
            a[] aVarArr = this.f5324k;
            if (i10 >= aVarArr.length) {
                return;
            }
            List list = (List) this.l.get(i10);
            boolean z = k0Var.f5306b[i10];
            a0[] a0VarArr = k0Var.f5305a;
            a0 a0Var2 = z ? ((h1) a0VarArr[i10]).f5284a : a0VarArr[i10];
            int i11 = 0;
            while (true) {
                if (i11 >= list.size()) {
                    break;
                }
                if (((l0) list.get(i11)).f5319b.equals(a0Var2)) {
                    list.remove(i11);
                    break;
                }
                i11++;
            }
            aVarArr[i10].m(k0Var.f5306b[i10] ? ((h1) a0VarArr[i10]).f5284a : a0VarArr[i10]);
            i10++;
        }
    }

    @Override // f2.k, f2.a
    public final void o() {
        super.o();
        Arrays.fill(this.f5325m, (Object) null);
        this.f5328p = -1;
        this.r = null;
        ArrayList arrayList = this.f5326n;
        arrayList.clear();
        Collections.addAll(arrayList, this.f5324k);
    }

    @Override // f2.a
    public final void r(r1.y yVar) {
        this.f5324k[0].r(yVar);
    }

    @Override // f2.k
    public final c0 s(Object obj, c0 c0Var) {
        ArrayList arrayList = this.l;
        List list = (List) arrayList.get(((Integer) obj).intValue());
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (((l0) list.get(i10)).f5318a.equals(c0Var)) {
                return ((l0) ((List) arrayList.get(0)).get(i10)).f5318a;
            }
        }
        return null;
    }

    @Override // f2.k
    public final void v(Object obj, a aVar, r1.q0 q0Var) {
        Integer num = (Integer) obj;
        if (this.r != null) {
            return;
        }
        if (this.f5328p == -1) {
            this.f5328p = q0Var.h();
        } else if (q0Var.h() != this.f5328p) {
            this.r = new ch.a();
            return;
        }
        int length = this.f5329q.length;
        r1.q0[] q0VarArr = this.f5325m;
        if (length == 0) {
            this.f5329q = (long[][]) Array.newInstance((Class<?>) Long.TYPE, this.f5328p, q0VarArr.length);
        }
        ArrayList arrayList = this.f5326n;
        arrayList.remove(aVar);
        q0VarArr[num.intValue()] = q0Var;
        if (arrayList.isEmpty()) {
            l(q0VarArr[0]);
        }
    }
}
