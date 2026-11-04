package h2;

import d2.c0;
import j$.util.Objects;
import r1.r0;
import u7.g1;
import u7.w0;
import u7.y;
import u7.y0;

/* loaded from: classes.dex */
public final class m extends l {
    public final boolean A;
    public final String B;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f6376e;

    /* renamed from: f, reason: collision with root package name */
    public final i f6377f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f6378g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f6379h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f6380i;

    /* renamed from: j, reason: collision with root package name */
    public final int f6381j;

    /* renamed from: k, reason: collision with root package name */
    public final int f6382k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public final int f6383m;

    /* renamed from: n, reason: collision with root package name */
    public final int f6384n;

    /* renamed from: p, reason: collision with root package name */
    public final int f6385p;

    /* renamed from: q, reason: collision with root package name */
    public final int f6386q;
    public final boolean r;

    /* renamed from: s, reason: collision with root package name */
    public final int f6387s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f6388t;

    /* renamed from: v, reason: collision with root package name */
    public final int f6389v;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f6390w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f6391x;

    /* renamed from: y, reason: collision with root package name */
    public final boolean f6392y;
    public final int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0143  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public m(int i10, r0 r0Var, int i11, i iVar, int i12, String str, int i13, boolean z) {
        boolean z4;
        boolean z10;
        int i14;
        int iJ;
        int i15;
        boolean z11;
        String strC;
        r1.p pVar;
        int i16;
        int i17;
        int i18;
        r1.p pVar2;
        int i19;
        int i20;
        int i21;
        super(i10, r0Var, i11);
        int i22 = 0;
        this.f6377f = iVar;
        int i23 = iVar.f6362y ? 24 : 16;
        this.f6388t = false;
        if (!z || (((i19 = (pVar2 = this.f6375d).f13529v) != -1 && i19 > iVar.f13597a) || ((i20 = pVar2.f13530w) != -1 && i20 > iVar.f13598b))) {
            z4 = false;
        } else {
            float f10 = pVar2.z;
            if ((f10 == -1.0f || f10 <= iVar.f13599c) && ((i21 = pVar2.f13519j) == -1 || i21 <= iVar.f13600d)) {
                z4 = true;
            }
        }
        this.f6376e = z4;
        if (!z || (((i16 = (pVar = this.f6375d).f13529v) != -1 && i16 < 0) || ((i17 = pVar.f13530w) != -1 && i17 < 0))) {
            z10 = false;
        } else {
            float f11 = pVar.z;
            if ((f11 == -1.0f || f11 >= 0) && ((i18 = pVar.f13519j) == -1 || i18 >= 0)) {
                z10 = true;
            }
        }
        this.f6378g = z10;
        this.f6379h = ta.q.f(i12, false);
        r1.p pVar3 = this.f6375d;
        float f12 = pVar3.z;
        this.f6380i = f12 != -1.0f && f12 >= 10.0f;
        this.f6381j = pVar3.f13519j;
        this.f6382k = pVar3.b();
        int i24 = 0;
        while (true) {
            y0 y0Var = iVar.f13607k;
            i14 = Integer.MAX_VALUE;
            if (i24 >= y0Var.size()) {
                i24 = Integer.MAX_VALUE;
                iJ = 0;
                break;
            } else {
                iJ = n.j(this.f6375d, (String) y0Var.get(i24), false);
                if (iJ > 0) {
                    break;
                } else {
                    i24++;
                }
            }
        }
        this.f6383m = i24;
        this.f6384n = iJ;
        this.f6385p = n.c(this.f6375d.f13515f, 0);
        int i25 = this.f6375d.f13515f;
        this.r = i25 == 0 || (i25 & 1) != 0;
        this.f6387s = n.j(this.f6375d, str, n.m(str) == null);
        String str2 = this.f6375d.f13523o;
        int iB = ta.q.b(i12);
        if (iB == 256 && (strC = c0.c(this.f6375d)) != null) {
            str2 = strC;
        }
        int i26 = 0;
        while (true) {
            y0 y0Var2 = iVar.f13605i;
            if (i26 < y0Var2.size()) {
                if (str2 != null && str2.equals(y0Var2.get(i26))) {
                    i14 = i26;
                    break;
                }
                i26++;
            } else {
                break;
            }
        }
        this.l = i14;
        this.f6386q = n.d(this.f6375d, iVar.f13606j);
        this.f6390w = iB == 128 || iB == 256;
        boolean z12 = iB == 128;
        this.f6391x = z12;
        this.f6392y = ta.q.c(i12) == 64;
        this.B = str2;
        if (str2 != null) {
            switch (str2) {
                case "video/dolby-vision":
                    i15 = 5;
                    break;
                case "video/av01":
                    i15 = 4;
                    break;
                case "video/hevc":
                    i15 = 3;
                    break;
                case "video/avc":
                    i15 = 1;
                    break;
                case "video/x-vnd.on2.vp9":
                    i15 = 2;
                    break;
            }
        } else {
            i15 = 0;
        }
        this.z = i15;
        this.A = z12 && r1.g.f(this.f6375d.E);
        r1.p pVar4 = this.f6375d;
        if ((pVar4.f13515f & 16384) == 0) {
            i iVar2 = this.f6377f;
            if (ta.q.f(i12, iVar2.C) && ((z11 = this.f6376e) || iVar2.f6361x)) {
                i22 = (ta.q.f(i12, false) && this.f6378g && z11 && pVar4.f13519j != -1 && (i12 & i23) != 0) ? 2 : 1;
            }
        }
        this.f6389v = i22;
    }

    public static int c(m mVar, m mVar2) {
        y yVarC = y.f15546a.c(mVar.f6379h, mVar2.f6379h);
        Integer numValueOf = Integer.valueOf(mVar.f6383m);
        Integer numValueOf2 = Integer.valueOf(mVar2.f6383m);
        w0.f15544a.getClass();
        g1 g1Var = g1.f15472a;
        return yVarC.b(numValueOf, numValueOf2, g1Var).a(mVar.f6384n, mVar2.f6384n).a(mVar.f6385p, mVar2.f6385p).b(Integer.valueOf(mVar.f6386q), Integer.valueOf(mVar2.f6386q), g1Var).c(mVar.r, mVar2.r).a(mVar.f6387s, mVar2.f6387s).c(mVar.f6380i, mVar2.f6380i).c(mVar.f6376e, mVar2.f6376e).c(mVar.f6378g, mVar2.f6378g).b(Integer.valueOf(mVar.l), Integer.valueOf(mVar2.l), g1Var).c(mVar.f6390w, mVar2.f6390w).c(mVar.f6392y, mVar2.f6392y).e();
    }

    @Override // h2.l
    public final int a() {
        return this.f6389v;
    }

    @Override // h2.l
    public final boolean b(l lVar) {
        m mVar = (m) lVar;
        if (this.f6388t || Objects.equals(this.B, mVar.B)) {
            this.f6377f.getClass();
            if (this.f6390w == mVar.f6390w && this.f6392y == mVar.f6392y) {
                return true;
            }
        }
        return false;
    }
}
