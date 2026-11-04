package h2;

import java.util.Comparator;
import r1.r0;
import u7.g0;
import u7.g1;
import u7.w0;
import u7.y;
import u7.y0;

/* loaded from: classes.dex */
public final class j extends l implements Comparable {

    /* renamed from: e, reason: collision with root package name */
    public final int f6363e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f6364f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f6365g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f6366h;

    /* renamed from: i, reason: collision with root package name */
    public final int f6367i;

    /* renamed from: j, reason: collision with root package name */
    public final int f6368j;

    /* renamed from: k, reason: collision with root package name */
    public final int f6369k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public final int f6370m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f6371n;

    public j(int i10, r0 r0Var, int i11, i iVar, int i12, String str, String str2) {
        int iJ;
        super(i10, r0Var, i11);
        int i13 = 0;
        this.f6364f = ta.q.f(i12, false);
        int i14 = this.f6375d.f13514e & (iVar.f13615u ^ (-1));
        this.f6365g = (i14 & 1) != 0;
        this.f6366h = (i14 & 2) != 0;
        y0 y0Var = iVar.r;
        y0 y0VarR = str2 != null ? g0.r(str2) : y0Var.isEmpty() ? g0.r("") : y0Var;
        int i15 = 0;
        while (true) {
            if (i15 >= y0VarR.size()) {
                i15 = Integer.MAX_VALUE;
                iJ = 0;
                break;
            } else {
                iJ = n.j(this.f6375d, (String) y0VarR.get(i15), false);
                if (iJ > 0) {
                    break;
                } else {
                    i15++;
                }
            }
        }
        this.f6367i = i15;
        this.f6368j = iJ;
        int iC = n.c(this.f6375d.f13515f, str2 != null ? 1088 : 0);
        this.f6369k = iC;
        r1.p pVar = this.f6375d;
        this.f6371n = (1088 & pVar.f13515f) != 0;
        int iD = n.d(pVar, iVar.f13613s);
        this.l = iD;
        int iJ2 = n.j(this.f6375d, str, n.m(str) == null);
        this.f6370m = iJ2;
        boolean z = iJ > 0 || (y0Var.isEmpty() && iC > 0) || ((y0Var.isEmpty() && iD != Integer.MAX_VALUE) || this.f6365g || (this.f6366h && iJ2 > 0));
        if (ta.q.f(i12, iVar.C) && z) {
            i13 = 1;
        }
        this.f6363e = i13;
    }

    @Override // h2.l
    public final int a() {
        return this.f6363e;
    }

    @Override // h2.l
    public final /* bridge */ /* synthetic */ boolean b(l lVar) {
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final int compareTo(j jVar) {
        y yVarC = y.f15546a.c(this.f6364f, jVar.f6364f);
        Integer numValueOf = Integer.valueOf(this.f6367i);
        Integer numValueOf2 = Integer.valueOf(jVar.f6367i);
        Comparator comparator = w0.f15544a;
        comparator.getClass();
        g1 g1Var = g1.f15472a;
        y yVarB = yVarC.b(numValueOf, numValueOf2, g1Var);
        int i10 = this.f6368j;
        y yVarA = yVarB.a(i10, jVar.f6368j);
        int i11 = this.f6369k;
        y yVarC2 = yVarA.a(i11, jVar.f6369k).b(Integer.valueOf(this.l), Integer.valueOf(jVar.l), g1Var).c(this.f6365g, jVar.f6365g);
        Boolean boolValueOf = Boolean.valueOf(this.f6366h);
        Boolean boolValueOf2 = Boolean.valueOf(jVar.f6366h);
        if (i10 != 0) {
            comparator = g1Var;
        }
        y yVarA2 = yVarC2.b(boolValueOf, boolValueOf2, comparator).a(this.f6370m, jVar.f6370m);
        if (i11 == 0) {
            yVarA2 = yVarA2.d(this.f6371n, jVar.f6371n);
        }
        return yVarA2.e();
    }
}
