package h2;

import android.text.TextUtils;
import j$.util.Objects;
import r1.r0;
import u1.f0;
import u7.g1;
import u7.w0;
import u7.x0;
import u7.y;
import u7.y0;

/* loaded from: classes.dex */
public final class e extends l implements Comparable {
    public final boolean A;

    /* renamed from: e, reason: collision with root package name */
    public final int f6338e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f6339f;

    /* renamed from: g, reason: collision with root package name */
    public final String f6340g;

    /* renamed from: h, reason: collision with root package name */
    public final i f6341h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f6342i;

    /* renamed from: j, reason: collision with root package name */
    public final int f6343j;

    /* renamed from: k, reason: collision with root package name */
    public final int f6344k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public final int f6345m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f6346n;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f6347p;

    /* renamed from: q, reason: collision with root package name */
    public final int f6348q;
    public final int r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f6349s;

    /* renamed from: t, reason: collision with root package name */
    public final int f6350t;

    /* renamed from: v, reason: collision with root package name */
    public final int f6351v;

    /* renamed from: w, reason: collision with root package name */
    public final int f6352w;

    /* renamed from: x, reason: collision with root package name */
    public final int f6353x;

    /* renamed from: y, reason: collision with root package name */
    public final boolean f6354y;
    public final boolean z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public e(int i10, r0 r0Var, int i11, i iVar, int i12, boolean z, c cVar, int i13) {
        int i14;
        int iJ;
        boolean z4;
        int iJ2;
        boolean z10;
        super(i10, r0Var, i11);
        int i15 = 0;
        this.f6341h = iVar;
        int i16 = iVar.A ? 24 : 16;
        this.f6346n = false;
        this.f6340g = n.m(this.f6375d.f13513d);
        this.f6342i = ta.q.f(i12, false);
        int i17 = 0;
        while (true) {
            y0 y0Var = iVar.l;
            i14 = Integer.MAX_VALUE;
            if (i17 >= y0Var.size()) {
                i17 = Integer.MAX_VALUE;
                iJ = 0;
                break;
            } else {
                iJ = n.j(this.f6375d, (String) y0Var.get(i17), false);
                if (iJ > 0) {
                    break;
                } else {
                    i17++;
                }
            }
        }
        this.f6344k = i17;
        this.f6343j = iJ;
        this.l = n.c(this.f6375d.f13515f, 0);
        this.f6345m = n.d(this.f6375d, iVar.f13608m);
        r1.p pVar = this.f6375d;
        int i18 = pVar.f13515f;
        this.f6347p = i18 == 0 || (i18 & 1) != 0;
        this.f6349s = (pVar.f13514e & 1) != 0;
        String str = pVar.f13523o;
        if (str != null) {
            switch (str) {
                case "audio/eac3-joc":
                case "audio/ac4":
                case "audio/iamf":
                    z4 = true;
                    break;
            }
        } else {
            z4 = false;
        }
        this.A = z4;
        r1.p pVar2 = this.f6375d;
        int i19 = pVar2.G;
        this.f6350t = i19;
        this.f6351v = pVar2.H;
        int i20 = pVar2.f13519j;
        this.f6352w = i20;
        this.f6339f = (i20 == -1 || i20 <= iVar.f13610o) && (i19 == -1 || i19 <= iVar.f13609n) && cVar.apply(pVar2);
        String[] strArrV = f0.v();
        int i21 = 0;
        while (true) {
            if (i21 < strArrV.length) {
                iJ2 = n.j(this.f6375d, strArrV[i21], false);
                if (iJ2 <= 0) {
                    i21++;
                }
            } else {
                i21 = Integer.MAX_VALUE;
                iJ2 = 0;
            }
        }
        this.f6348q = i21;
        this.r = iJ2;
        int i22 = 0;
        while (true) {
            y0 y0Var2 = iVar.f13611p;
            if (i22 < y0Var2.size()) {
                String str2 = this.f6375d.f13523o;
                if (str2 == null || !str2.equals(y0Var2.get(i22))) {
                    i22++;
                } else {
                    i14 = i22;
                }
            }
        }
        this.f6353x = i14;
        this.f6354y = ta.q.b(i12) == 128;
        this.z = ta.q.c(i12) == 64;
        i iVar2 = this.f6341h;
        if (ta.q.f(i12, iVar2.C) && ((z10 = this.f6339f) || iVar2.z)) {
            iVar2.f13612q.getClass();
            i15 = (!ta.q.f(i12, false) || !z10 || this.f6375d.f13519j == -1 || (!iVar2.D && z) || (i16 & i12) == 0) ? 1 : 2;
        }
        this.f6338e = i15;
    }

    @Override // h2.l
    public final int a() {
        return this.f6338e;
    }

    @Override // h2.l
    public final boolean b(l lVar) {
        int i10;
        String str;
        e eVar = (e) lVar;
        this.f6341h.getClass();
        r1.p pVar = this.f6375d;
        int i11 = pVar.G;
        if (i11 != -1) {
            r1.p pVar2 = eVar.f6375d;
            if (i11 == pVar2.G && ((this.f6346n || ((str = pVar.f13523o) != null && TextUtils.equals(str, pVar2.f13523o))) && (i10 = pVar.H) != -1 && i10 == pVar2.H)) {
                if (this.f6354y == eVar.f6354y && this.z == eVar.z) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final int compareTo(e eVar) {
        boolean z = this.f6342i;
        boolean z4 = this.f6339f;
        x0 x0VarA = (z4 && z) ? n.f6393k : n.f6393k.a();
        y yVarC = y.f15546a.c(z, eVar.f6342i);
        Integer numValueOf = Integer.valueOf(this.f6344k);
        Integer numValueOf2 = Integer.valueOf(eVar.f6344k);
        w0.f15544a.getClass();
        g1 g1Var = g1.f15472a;
        y yVarB = yVarC.b(numValueOf, numValueOf2, g1Var).a(this.f6343j, eVar.f6343j).a(this.l, eVar.l).b(Integer.valueOf(this.f6345m), Integer.valueOf(eVar.f6345m), g1Var).c(this.f6349s, eVar.f6349s).c(this.f6347p, eVar.f6347p).b(Integer.valueOf(this.f6348q), Integer.valueOf(eVar.f6348q), g1Var).a(this.r, eVar.r).c(z4, eVar.f6339f).b(Integer.valueOf(this.f6353x), Integer.valueOf(eVar.f6353x), g1Var);
        this.f6341h.getClass();
        y yVarB2 = yVarB.c(this.f6354y, eVar.f6354y).c(this.z, eVar.z).c(this.A, eVar.A).b(Integer.valueOf(this.f6350t), Integer.valueOf(eVar.f6350t), x0VarA).b(Integer.valueOf(this.f6351v), Integer.valueOf(eVar.f6351v), x0VarA);
        if (Objects.equals(this.f6340g, eVar.f6340g)) {
            yVarB2 = yVarB2.b(Integer.valueOf(this.f6352w), Integer.valueOf(eVar.f6352w), x0VarA);
        }
        return yVarB2.e();
    }
}
