package t4;

import java.util.BitSet;
import s4.g;
import s4.h;
import s4.u;
import s4.v;
import w4.k;
import w4.l;
import x4.m;
import x4.n;
import x4.q;
import x4.t;
import y4.c;

/* loaded from: classes.dex */
public final class a extends d.b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f14775d;

    /* renamed from: e, reason: collision with root package name */
    public static final a f14756e = new a(0);

    /* renamed from: f, reason: collision with root package name */
    public static final a f14757f = new a(1);

    /* renamed from: g, reason: collision with root package name */
    public static final a f14758g = new a(2);

    /* renamed from: h, reason: collision with root package name */
    public static final a f14759h = new a(3);

    /* renamed from: i, reason: collision with root package name */
    public static final a f14760i = new a(4);

    /* renamed from: j, reason: collision with root package name */
    public static final a f14761j = new a(5);

    /* renamed from: k, reason: collision with root package name */
    public static final a f14762k = new a(6);
    public static final a l = new a(7);

    /* renamed from: m, reason: collision with root package name */
    public static final a f14763m = new a(8);

    /* renamed from: n, reason: collision with root package name */
    public static final a f14764n = new a(9);

    /* renamed from: o, reason: collision with root package name */
    public static final a f14765o = new a(10);

    /* renamed from: p, reason: collision with root package name */
    public static final a f14766p = new a(11);

    /* renamed from: q, reason: collision with root package name */
    public static final a f14767q = new a(12);
    public static final a r = new a(13);

    /* renamed from: s, reason: collision with root package name */
    public static final a f14768s = new a(14);

    /* renamed from: t, reason: collision with root package name */
    public static final a f14769t = new a(15);

    /* renamed from: u, reason: collision with root package name */
    public static final a f14770u = new a(16);

    /* renamed from: v, reason: collision with root package name */
    public static final a f14771v = new a(17);

    /* renamed from: w, reason: collision with root package name */
    public static final a f14772w = new a(18);

    /* renamed from: x, reason: collision with root package name */
    public static final a f14773x = new a(19);

    /* renamed from: y, reason: collision with root package name */
    public static final a f14774y = new a(20);
    public static final a z = new a(21);
    public static final a A = new a(22);
    public static final a B = new a(23);
    public static final a C = new a(24);
    public static final a D = new a(25);

    public /* synthetic */ a(int i10) {
        this.f14775d = i10;
    }

    public static l A0(l lVar) {
        int iB0 = B0(lVar);
        int length = lVar.f2559b.length;
        if (iB0 == length) {
            return lVar;
        }
        l lVar2 = new l(iB0);
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            k kVar = (k) lVar.d(i11);
            lVar2.e(i10, kVar);
            if (kVar.c() == 2) {
                lVar2.e(i10 + 1, k.d(kVar.f17466a + 1, c.f18955p));
                i10 += 2;
            } else {
                i10++;
            }
        }
        lVar2.f2570a = false;
        return lVar2;
    }

    public static int B0(l lVar) {
        int length = lVar.f2559b.length;
        if (length > 5) {
            return -1;
        }
        int iC = 0;
        for (int i10 = 0; i10 < length; i10++) {
            iC += ((k) lVar.d(i10)).c();
            if (!d.b.u0((r5.c() + r5.f17466a) - 1)) {
                return -1;
            }
        }
        if (iC <= 5) {
            return iC;
        }
        return -1;
    }

    @Override // d.b
    public final String O(s4.l lVar) {
        switch (this.f14775d) {
            case 0:
                return d.b.e(lVar);
            case 1:
                return "";
            case 2:
                return ((k) lVar.f14309d.d(0)).f() + ", " + d.b.U((n) ((g) lVar).f14303e);
            case 3:
                return ((k) lVar.f14309d.d(0)).f();
            case 4:
                l lVar2 = lVar.f14309d;
                int length = lVar2.f2559b.length;
                return ((k) lVar2.d(length - 2)).f() + ", " + ((k) lVar2.d(length - 1)).f();
            case 5:
                return d.b.e(lVar);
            case 6:
                return ((k) lVar.f14309d.d(0)).f() + ", " + lVar.d();
            case 7:
                return ((k) lVar.f14309d.d(0)).f() + ", " + d.b.U((n) ((g) lVar).f14303e);
            case 8:
                return ((k) lVar.f14309d.d(0)).f() + ", " + d.b.U((n) ((g) lVar).f14303e);
            case 9:
                return ((k) lVar.f14309d.d(0)).f() + ", " + d.b.e(lVar);
            case 10:
                n nVar = (n) ((g) lVar).f14303e;
                StringBuilder sb2 = new StringBuilder();
                l lVar3 = lVar.f14309d;
                sb2.append(((k) lVar3.d(0)).f());
                sb2.append(", ");
                sb2.append(((k) lVar3.d(1)).f());
                sb2.append(", ");
                sb2.append(d.b.U(nVar));
                return sb2.toString();
            case 11:
                StringBuilder sb3 = new StringBuilder();
                l lVar4 = lVar.f14309d;
                sb3.append(((k) lVar4.d(0)).f());
                sb3.append(", ");
                sb3.append(((k) lVar4.d(1)).f());
                sb3.append(", ");
                sb3.append(lVar.d());
                return sb3.toString();
            case 12:
                n nVar2 = (n) ((g) lVar).f14303e;
                StringBuilder sb4 = new StringBuilder();
                l lVar5 = lVar.f14309d;
                sb4.append(((k) lVar5.d(0)).f());
                sb4.append(", ");
                sb4.append(((k) lVar5.d(1)).f());
                sb4.append(", ");
                sb4.append(d.b.U(nVar2));
                return sb4.toString();
            case 13:
                StringBuilder sb5 = new StringBuilder();
                l lVar6 = lVar.f14309d;
                sb5.append(((k) lVar6.d(0)).f());
                sb5.append(", ");
                sb5.append(((k) lVar6.d(1)).f());
                sb5.append(", ");
                sb5.append(d.b.e(lVar));
                return sb5.toString();
            case 14:
                StringBuilder sb6 = new StringBuilder();
                l lVar7 = lVar.f14309d;
                sb6.append(((k) lVar7.d(0)).f());
                sb6.append(", ");
                sb6.append(((k) lVar7.d(1)).f());
                return sb6.toString();
            case 15:
                StringBuilder sb7 = new StringBuilder();
                l lVar8 = lVar.f14309d;
                sb7.append(((k) lVar8.d(0)).f());
                sb7.append(", ");
                sb7.append(((k) lVar8.d(1)).f());
                sb7.append(", ");
                sb7.append(((k) lVar8.d(2)).f());
                return sb7.toString();
            case 16:
                return ((k) lVar.f14309d.d(0)).f() + ", " + lVar.d();
            case 17:
                return ((k) lVar.f14309d.d(0)).f() + ", " + d.b.U((n) ((g) lVar).f14303e);
            case 18:
                return ((k) lVar.f14309d.d(0)).f() + ", " + d.b.e(lVar);
            case 19:
                StringBuilder sb8 = new StringBuilder();
                l lVar9 = lVar.f14309d;
                sb8.append(((k) lVar9.d(0)).f());
                sb8.append(", ");
                sb8.append(((k) lVar9.d(1)).f());
                return sb8.toString();
            case 20:
                return d.b.g0(A0(lVar.f14309d)) + ", " + lVar.d();
            case 21:
                return d.b.h0(lVar.f14309d) + ", " + lVar.d();
            case 22:
                l lVar10 = lVar.f14309d;
                int length2 = lVar10.f2559b.length;
                int i10 = -1;
                if (length2 <= 5) {
                    int i11 = 0;
                    int iC = 0;
                    while (true) {
                        if (i11 < length2) {
                            iC += ((k) lVar10.d(i11)).c();
                            if (d.b.u0((r7.c() + r7.f17466a) - 1)) {
                                i11++;
                            }
                        } else if (iC <= 5) {
                            i10 = iC;
                        }
                    }
                }
                int length3 = lVar10.f2559b.length;
                if (i10 != length3) {
                    l lVar11 = new l(i10);
                    int i12 = 0;
                    for (int i13 = 0; i13 < length3; i13++) {
                        k kVar = (k) lVar10.d(i13);
                        lVar11.e(i12, kVar);
                        if (kVar.c() == 2) {
                            lVar11.e(i12 + 1, k.d(kVar.f17466a + 1, c.f18955p));
                            i12 += 2;
                        } else {
                            i12++;
                        }
                    }
                    lVar11.f2570a = false;
                    lVar10 = lVar11;
                }
                return d.b.g0(lVar10) + ", " + lVar.d();
            case 23:
                return d.b.h0(lVar.f14309d) + ", " + lVar.d();
            case 24:
                return ((k) lVar.f14309d.d(0)).f() + ", " + d.b.U((n) ((g) lVar).f14303e);
            default:
                throw new RuntimeException("unsupported");
        }
    }

    @Override // d.b
    public final String P(s4.l lVar) {
        switch (this.f14775d) {
            case 0:
                return d.b.c(lVar);
            case 1:
                return "";
            case 2:
                return d.b.T((n) ((g) lVar).f14303e, 4);
            case 3:
                return "";
            case 4:
                return "";
            case 5:
                return d.b.c(lVar);
            case 6:
                return lVar.c();
            case 7:
                return d.b.T((n) ((g) lVar).f14303e, ((k) lVar.f14309d.d(0)).c() == 1 ? 32 : 64);
            case 8:
                return d.b.T((n) ((g) lVar).f14303e, 16);
            case 9:
                return d.b.c(lVar);
            case 10:
                return d.b.T((n) ((g) lVar).f14303e, 8);
            case 11:
                return lVar.c();
            case 12:
                return d.b.T((n) ((g) lVar).f14303e, 16);
            case 13:
                return d.b.c(lVar);
            case 14:
                return "";
            case 15:
                return "";
            case 16:
                return lVar.c();
            case 17:
                return d.b.T((n) ((g) lVar).f14303e, 32);
            case 18:
                return d.b.c(lVar);
            case 19:
                return "";
            case 20:
                return lVar.c();
            case 21:
                return lVar.c();
            case 22:
                return lVar.c();
            case 23:
                return lVar.c();
            case 24:
                return d.b.T((n) ((g) lVar).f14303e, 64);
            default:
                throw new RuntimeException("unsupported");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:363:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x007c  */
    @Override // d.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean Q(h hVar) {
        int iF;
        k kVar;
        k kVar2;
        k kVar3;
        k kVar4;
        boolean z4;
        switch (this.f14775d) {
            case 0:
                if (!(hVar instanceof v) || hVar.f14309d.f2559b.length != 0) {
                    return false;
                }
                v vVar = (v) hVar;
                if (vVar.n()) {
                    return d(vVar);
                }
                return true;
            case 1:
                return (hVar instanceof u) && hVar.f14309d.f2559b.length == 0;
            case 2:
                l lVar = hVar.f14309d;
                if (!(hVar instanceof g) || lVar.f2559b.length != 1 || !d.b.u0(((k) lVar.d(0)).f17466a)) {
                    return false;
                }
                x4.a aVar = ((g) hVar).f14303e;
                if (!(aVar instanceof n)) {
                    return false;
                }
                n nVar = (n) aVar;
                return nVar.e() && (iF = nVar.f()) >= -8 && iF <= 7;
            case 3:
                l lVar2 = hVar.f14309d;
                return (hVar instanceof u) && lVar2.f2559b.length == 1 && d.b.t0(((k) lVar2.d(0)).f17466a);
            case 4:
                if (!(hVar instanceof u)) {
                    return false;
                }
                l lVar3 = hVar.f14309d;
                int length = lVar3.f2559b.length;
                if (length == 2) {
                    kVar = (k) lVar3.d(0);
                    kVar2 = (k) lVar3.d(1);
                } else {
                    if (length != 3) {
                        return false;
                    }
                    kVar = (k) lVar3.d(1);
                    kVar2 = (k) lVar3.d(2);
                    if (kVar.f17466a != ((k) lVar3.d(0)).f17466a) {
                        return false;
                    }
                }
                return d.b.u0(kVar.f17466a) && d.b.u0(kVar2.f17466a);
            case 5:
                if (!(hVar instanceof v) || hVar.f14309d.f2559b.length != 0) {
                    return false;
                }
                v vVar2 = (v) hVar;
                if (vVar2.n()) {
                    return d(vVar2);
                }
                return true;
            case 6:
                if (!(hVar instanceof g)) {
                    return false;
                }
                l lVar4 = hVar.f14309d;
                int length2 = lVar4.f2559b.length;
                if (length2 == 1) {
                    kVar3 = (k) lVar4.d(0);
                } else {
                    if (length2 != 2) {
                        return false;
                    }
                    kVar3 = (k) lVar4.d(0);
                    if (kVar3.f17466a != ((k) lVar4.d(1)).f17466a) {
                        return false;
                    }
                }
                if (!d.b.t0(kVar3.f17466a)) {
                    return false;
                }
                g gVar = (g) hVar;
                if (!d.b.v0(gVar.m())) {
                    return false;
                }
                x4.a aVar2 = gVar.f14303e;
                return (aVar2 instanceof x4.u) || (aVar2 instanceof x4.h) || (aVar2 instanceof t);
            case 7:
                l lVar5 = hVar.f14309d;
                if (!(hVar instanceof g) || lVar5.f2559b.length != 1 || !d.b.t0(((k) lVar5.d(0)).f17466a)) {
                    return false;
                }
                x4.a aVar3 = ((g) hVar).f14303e;
                if (!(aVar3 instanceof n)) {
                    return false;
                }
                n nVar2 = (n) aVar3;
                if (((k) lVar5.d(0)).c() == 1) {
                    if ((nVar2.f() & 65535) != 0) {
                        return false;
                    }
                } else if ((nVar2.g() & 281474976710655L) != 0) {
                    return false;
                }
                return true;
            case 8:
                l lVar6 = hVar.f14309d;
                if (!(hVar instanceof g) || lVar6.f2559b.length != 1 || !d.b.t0(((k) lVar6.d(0)).f17466a)) {
                    return false;
                }
                x4.a aVar4 = ((g) hVar).f14303e;
                if (!(aVar4 instanceof n)) {
                    return false;
                }
                n nVar3 = (n) aVar4;
                if (!nVar3.e()) {
                    return false;
                }
                int iF2 = nVar3.f();
                return ((short) iF2) == iF2;
            case 9:
                l lVar7 = hVar.f14309d;
                if (!(hVar instanceof v) || lVar7.f2559b.length != 1 || !d.b.t0(((k) lVar7.d(0)).f17466a)) {
                    return false;
                }
                v vVar3 = (v) hVar;
                if (vVar3.n()) {
                    return d(vVar3);
                }
                return true;
            case 10:
                l lVar8 = hVar.f14309d;
                if (!(hVar instanceof g) || lVar8.f2559b.length != 2 || !d.b.t0(((k) lVar8.d(0)).f17466a) || !d.b.t0(((k) lVar8.d(1)).f17466a)) {
                    return false;
                }
                x4.a aVar5 = ((g) hVar).f14303e;
                if (!(aVar5 instanceof n)) {
                    return false;
                }
                n nVar4 = (n) aVar5;
                if (!nVar4.e()) {
                    return false;
                }
                int iF3 = nVar4.f();
                return ((byte) iF3) == iF3;
            case 11:
                l lVar9 = hVar.f14309d;
                if (!(hVar instanceof g) || lVar9.f2559b.length != 2 || !d.b.u0(((k) lVar9.d(0)).f17466a) || !d.b.u0(((k) lVar9.d(1)).f17466a)) {
                    return false;
                }
                g gVar2 = (g) hVar;
                if (!d.b.v0(gVar2.m())) {
                    return false;
                }
                x4.a aVar6 = gVar2.f14303e;
                return (aVar6 instanceof x4.u) || (aVar6 instanceof x4.h);
            case 12:
                l lVar10 = hVar.f14309d;
                if (!(hVar instanceof g) || lVar10.f2559b.length != 2 || !d.b.u0(((k) lVar10.d(0)).f17466a) || !d.b.u0(((k) lVar10.d(1)).f17466a)) {
                    return false;
                }
                x4.a aVar7 = ((g) hVar).f14303e;
                if (!(aVar7 instanceof n)) {
                    return false;
                }
                n nVar5 = (n) aVar7;
                if (!nVar5.e()) {
                    return false;
                }
                int iF4 = nVar5.f();
                return ((short) iF4) == iF4;
            case 13:
                l lVar11 = hVar.f14309d;
                if (!(hVar instanceof v) || lVar11.f2559b.length != 2 || !d.b.u0(((k) lVar11.d(0)).f17466a) || !d.b.u0(((k) lVar11.d(1)).f17466a)) {
                    return false;
                }
                v vVar4 = (v) hVar;
                if (vVar4.n()) {
                    return d(vVar4);
                }
                return true;
            case 14:
                l lVar12 = hVar.f14309d;
                return (hVar instanceof u) && lVar12.f2559b.length == 2 && d.b.t0(((k) lVar12.d(0)).f17466a) && d.b.v0(((k) lVar12.d(1)).f17466a);
            case 15:
                l lVar13 = hVar.f14309d;
                return (hVar instanceof u) && lVar13.f2559b.length == 3 && d.b.t0(((k) lVar13.d(0)).f17466a) && d.b.t0(((k) lVar13.d(1)).f17466a) && d.b.t0(((k) lVar13.d(2)).f17466a);
            case 16:
                if (!(hVar instanceof g)) {
                    return false;
                }
                l lVar14 = hVar.f14309d;
                int length3 = lVar14.f2559b.length;
                if (length3 == 1) {
                    kVar4 = (k) lVar14.d(0);
                } else {
                    if (length3 != 2) {
                        return false;
                    }
                    kVar4 = (k) lVar14.d(0);
                    if (kVar4.f17466a != ((k) lVar14.d(1)).f17466a) {
                        return false;
                    }
                }
                if (!d.b.t0(kVar4.f17466a)) {
                    return false;
                }
                x4.a aVar8 = ((g) hVar).f14303e;
                return (aVar8 instanceof x4.u) || (aVar8 instanceof x4.h) || (aVar8 instanceof t);
            case 17:
                l lVar15 = hVar.f14309d;
                if (!(hVar instanceof g) || lVar15.f2559b.length != 1 || !d.b.t0(((k) lVar15.d(0)).f17466a)) {
                    return false;
                }
                x4.a aVar9 = ((g) hVar).f14303e;
                if (aVar9 instanceof n) {
                    return ((n) aVar9).e();
                }
                return false;
            case 18:
                l lVar16 = hVar.f14309d;
                return (hVar instanceof v) && lVar16.f2559b.length == 1 && d.b.t0(((k) lVar16.d(0)).f17466a);
            case 19:
                l lVar17 = hVar.f14309d;
                return (hVar instanceof u) && lVar17.f2559b.length == 2 && d.b.v0(((k) lVar17.d(0)).f17466a) && d.b.v0(((k) lVar17.d(1)).f17466a);
            case 20:
                if (!(hVar instanceof g)) {
                    return false;
                }
                g gVar3 = (g) hVar;
                if (!d.b.v0(gVar3.m())) {
                    return false;
                }
                x4.a aVar10 = gVar3.f14303e;
                return ((aVar10 instanceof q) || (aVar10 instanceof x4.u)) && B0(gVar3.f14309d) >= 0;
            case 21:
                if (!(hVar instanceof g)) {
                    return false;
                }
                g gVar4 = (g) hVar;
                if (!d.b.v0(gVar4.m())) {
                    return false;
                }
                x4.a aVar11 = gVar4.f14303e;
                if (!(aVar11 instanceof q) && !(aVar11 instanceof x4.u)) {
                    return false;
                }
                l lVar18 = gVar4.f14309d;
                Object[] objArr = lVar18.f2559b;
                if (objArr.length != 0) {
                    int length4 = objArr.length;
                    if (length4 < 2) {
                        z4 = true;
                        if (z4 && d.b.v0(((k) lVar18.d(0)).f17466a)) {
                            int length5 = lVar18.f2559b.length;
                            int iC = 0;
                            for (int i10 = 0; i10 < length5; i10++) {
                                iC += lVar18.b(i10).c();
                            }
                            if (!d.b.t0(iC)) {
                                return false;
                            }
                        }
                    } else {
                        int iC2 = ((k) lVar18.d(0)).f17466a;
                        for (int i11 = 0; i11 < length4; i11++) {
                            k kVar5 = (k) lVar18.d(i11);
                            if (kVar5.f17466a != iC2) {
                                z4 = false;
                                return z4 ? false : false;
                            }
                            iC2 += kVar5.c();
                        }
                        z4 = true;
                        if (z4) {
                        }
                    }
                }
                return true;
            case 22:
                return false;
            case 23:
                return false;
            case 24:
                l lVar19 = hVar.f14309d;
                if ((hVar instanceof g) && lVar19.f2559b.length == 1 && d.b.t0(((k) lVar19.d(0)).f17466a)) {
                    return ((g) hVar).f14303e instanceof m;
                }
                return false;
            default:
                return true;
        }
    }

    @Override // d.b
    public boolean d(v vVar) {
        switch (this.f14775d) {
            case 0:
                int iM = vVar.m();
                return iM != 0 && ((byte) iM) == iM;
            case 5:
                int iM2 = vVar.m();
                return iM2 != 0 && ((short) iM2) == iM2;
            case 9:
                int iM3 = vVar.m();
                return iM3 != 0 && ((short) iM3) == iM3;
            case 13:
                int iM4 = vVar.m();
                return iM4 != 0 && ((short) iM4) == iM4;
            case 18:
                return true;
            default:
                return super.d(vVar);
        }
    }

    @Override // d.b
    public final int i() {
        switch (this.f14775d) {
            case 0:
                return 1;
            case 1:
                return 1;
            case 2:
                return 1;
            case 3:
                return 1;
            case 4:
                return 1;
            case 5:
                return 2;
            case 6:
                return 2;
            case 7:
                return 2;
            case 8:
                return 2;
            case 9:
                return 2;
            case 10:
                return 2;
            case 11:
                return 2;
            case 12:
                return 2;
            case 13:
                return 2;
            case 14:
                return 2;
            case 15:
                return 2;
            case 16:
                return 3;
            case 17:
                return 3;
            case 18:
                return 3;
            case 19:
                return 3;
            case 20:
                return 3;
            case 21:
                return 3;
            case 22:
                return 4;
            case 23:
                return 4;
            case 24:
                return 5;
            default:
                throw new RuntimeException("unsupported");
        }
    }

    @Override // d.b
    public BitSet k(h hVar) {
        switch (this.f14775d) {
            case 2:
                BitSet bitSet = new BitSet(1);
                bitSet.set(0, d.b.u0(((k) hVar.f14309d.d(0)).f17466a));
                return bitSet;
            case 3:
                BitSet bitSet2 = new BitSet(1);
                bitSet2.set(0, d.b.t0(((k) hVar.f14309d.d(0)).f17466a));
                return bitSet2;
            case 4:
                BitSet bitSet3 = new BitSet(2);
                l lVar = hVar.f14309d;
                k kVar = (k) lVar.d(0);
                k kVar2 = (k) lVar.d(1);
                int length = lVar.f2559b.length;
                int i10 = kVar.f17466a;
                int i11 = kVar2.f17466a;
                if (length == 2) {
                    bitSet3.set(0, d.b.u0(i10));
                    bitSet3.set(1, d.b.u0(i11));
                } else {
                    if (length != 3) {
                        throw new AssertionError();
                    }
                    if (i10 != i11) {
                        bitSet3.set(0, false);
                        bitSet3.set(1, false);
                    } else {
                        boolean zU0 = d.b.u0(i11);
                        bitSet3.set(0, zU0);
                        bitSet3.set(1, zU0);
                    }
                    bitSet3.set(2, d.b.u0(((k) lVar.d(2)).f17466a));
                }
                return bitSet3;
            case 5:
            case 21:
            case 23:
            default:
                return super.k(hVar);
            case 6:
                l lVar2 = hVar.f14309d;
                int length2 = lVar2.f2559b.length;
                BitSet bitSet4 = new BitSet(length2);
                boolean zT0 = d.b.t0(((k) lVar2.d(0)).f17466a);
                if (length2 == 1) {
                    bitSet4.set(0, zT0);
                } else {
                    if (((k) lVar2.d(0)).f17466a == ((k) lVar2.d(1)).f17466a) {
                        bitSet4.set(0, zT0);
                        bitSet4.set(1, zT0);
                    }
                }
                return bitSet4;
            case 7:
                BitSet bitSet5 = new BitSet(1);
                bitSet5.set(0, d.b.t0(((k) hVar.f14309d.d(0)).f17466a));
                return bitSet5;
            case 8:
                BitSet bitSet6 = new BitSet(1);
                bitSet6.set(0, d.b.t0(((k) hVar.f14309d.d(0)).f17466a));
                return bitSet6;
            case 9:
                BitSet bitSet7 = new BitSet(1);
                bitSet7.set(0, d.b.t0(((k) hVar.f14309d.d(0)).f17466a));
                return bitSet7;
            case 10:
                BitSet bitSet8 = new BitSet(2);
                l lVar3 = hVar.f14309d;
                bitSet8.set(0, d.b.t0(((k) lVar3.d(0)).f17466a));
                bitSet8.set(1, d.b.t0(((k) lVar3.d(1)).f17466a));
                return bitSet8;
            case 11:
                BitSet bitSet9 = new BitSet(2);
                l lVar4 = hVar.f14309d;
                bitSet9.set(0, d.b.u0(((k) lVar4.d(0)).f17466a));
                bitSet9.set(1, d.b.u0(((k) lVar4.d(1)).f17466a));
                return bitSet9;
            case 12:
                BitSet bitSet10 = new BitSet(2);
                l lVar5 = hVar.f14309d;
                bitSet10.set(0, d.b.u0(((k) lVar5.d(0)).f17466a));
                bitSet10.set(1, d.b.u0(((k) lVar5.d(1)).f17466a));
                return bitSet10;
            case 13:
                BitSet bitSet11 = new BitSet(2);
                l lVar6 = hVar.f14309d;
                bitSet11.set(0, d.b.u0(((k) lVar6.d(0)).f17466a));
                bitSet11.set(1, d.b.u0(((k) lVar6.d(1)).f17466a));
                return bitSet11;
            case 14:
                BitSet bitSet12 = new BitSet(2);
                l lVar7 = hVar.f14309d;
                bitSet12.set(0, d.b.t0(((k) lVar7.d(0)).f17466a));
                bitSet12.set(1, d.b.v0(((k) lVar7.d(1)).f17466a));
                return bitSet12;
            case 15:
                BitSet bitSet13 = new BitSet(3);
                l lVar8 = hVar.f14309d;
                bitSet13.set(0, d.b.t0(((k) lVar8.d(0)).f17466a));
                bitSet13.set(1, d.b.t0(((k) lVar8.d(1)).f17466a));
                bitSet13.set(2, d.b.t0(((k) lVar8.d(2)).f17466a));
                return bitSet13;
            case 16:
                l lVar9 = hVar.f14309d;
                int length3 = lVar9.f2559b.length;
                BitSet bitSet14 = new BitSet(length3);
                boolean zT02 = d.b.t0(((k) lVar9.d(0)).f17466a);
                if (length3 == 1) {
                    bitSet14.set(0, zT02);
                } else {
                    if (((k) lVar9.d(0)).f17466a == ((k) lVar9.d(1)).f17466a) {
                        bitSet14.set(0, zT02);
                        bitSet14.set(1, zT02);
                    }
                }
                return bitSet14;
            case 17:
                BitSet bitSet15 = new BitSet(1);
                bitSet15.set(0, d.b.t0(((k) hVar.f14309d.d(0)).f17466a));
                return bitSet15;
            case 18:
                BitSet bitSet16 = new BitSet(1);
                bitSet16.set(0, d.b.t0(((k) hVar.f14309d.d(0)).f17466a));
                return bitSet16;
            case 19:
                BitSet bitSet17 = new BitSet(2);
                l lVar10 = hVar.f14309d;
                bitSet17.set(0, d.b.v0(((k) lVar10.d(0)).f17466a));
                bitSet17.set(1, d.b.v0(((k) lVar10.d(1)).f17466a));
                return bitSet17;
            case 20:
                l lVar11 = hVar.f14309d;
                int length4 = lVar11.f2559b.length;
                BitSet bitSet18 = new BitSet(length4);
                for (int i12 = 0; i12 < length4; i12++) {
                    k kVar3 = (k) lVar11.d(i12);
                    bitSet18.set(i12, d.b.u0((kVar3.c() + kVar3.f17466a) - 1));
                }
                return bitSet18;
            case 22:
                l lVar12 = hVar.f14309d;
                int length5 = lVar12.f2559b.length;
                BitSet bitSet19 = new BitSet(length5);
                for (int i13 = 0; i13 < length5; i13++) {
                    k kVar4 = (k) lVar12.d(i13);
                    bitSet19.set(i13, d.b.u0((kVar4.c() + kVar4.f17466a) - 1));
                }
                return bitSet19;
            case 24:
                BitSet bitSet20 = new BitSet(1);
                bitSet20.set(0, d.b.t0(((k) hVar.f14309d.d(0)).f17466a));
                return bitSet20;
        }
    }

    @Override // d.b
    public final void z0(b5.b bVar, s4.l lVar) {
        switch (this.f14775d) {
            case 0:
                bVar.k(d.b.Y(lVar, ((v) lVar).m() & 255));
                return;
            case 1:
                bVar.k(d.b.Y(lVar, 0));
                return;
            case 2:
                bVar.k(d.b.Y(lVar, d.b.W(((k) lVar.f14309d.d(0)).f17466a, ((n) ((g) lVar).f14303e).f() & 15)));
                return;
            case 3:
                bVar.k(d.b.Y(lVar, ((k) lVar.f14309d.d(0)).f17466a));
                return;
            case 4:
                l lVar2 = lVar.f14309d;
                int length = lVar2.f2559b.length;
                bVar.k(d.b.Y(lVar, d.b.W(((k) lVar2.d(length - 2)).f17466a, ((k) lVar2.d(length - 1)).f17466a)));
                return;
            case 5:
                int iM = ((v) lVar).m();
                bVar.k(d.b.Y(lVar, 0));
                bVar.k((short) iM);
                return;
            case 6:
                int iM2 = ((g) lVar).m();
                bVar.k(d.b.Y(lVar, ((k) lVar.f14309d.d(0)).f17466a));
                bVar.k((short) iM2);
                return;
            case 7:
                n nVar = (n) ((g) lVar).f14303e;
                l lVar3 = lVar.f14309d;
                short sF = (short) (((k) lVar3.d(0)).c() == 1 ? nVar.f() >>> 16 : (int) (nVar.g() >>> 48));
                bVar.k(d.b.Y(lVar, ((k) lVar3.d(0)).f17466a));
                bVar.k(sF);
                return;
            case 8:
                int iF = ((n) ((g) lVar).f14303e).f();
                bVar.k(d.b.Y(lVar, ((k) lVar.f14309d.d(0)).f17466a));
                bVar.k((short) iF);
                return;
            case 9:
                int iM3 = ((v) lVar).m();
                bVar.k(d.b.Y(lVar, ((k) lVar.f14309d.d(0)).f17466a));
                bVar.k((short) iM3);
                return;
            case 10:
                int iF2 = ((n) ((g) lVar).f14303e).f();
                l lVar4 = lVar.f14309d;
                short sY = d.b.Y(lVar, ((k) lVar4.d(0)).f17466a);
                short sJ = d.b.j(((k) lVar4.d(1)).f17466a, iF2 & 255);
                bVar.k(sY);
                bVar.k(sJ);
                return;
            case 11:
                int iM4 = ((g) lVar).m();
                l lVar5 = lVar.f14309d;
                bVar.k(d.b.Y(lVar, d.b.W(((k) lVar5.d(0)).f17466a, ((k) lVar5.d(1)).f17466a)));
                bVar.k((short) iM4);
                return;
            case 12:
                int iF3 = ((n) ((g) lVar).f14303e).f();
                l lVar6 = lVar.f14309d;
                bVar.k(d.b.Y(lVar, d.b.W(((k) lVar6.d(0)).f17466a, ((k) lVar6.d(1)).f17466a)));
                bVar.k((short) iF3);
                return;
            case 13:
                int iM5 = ((v) lVar).m();
                l lVar7 = lVar.f14309d;
                bVar.k(d.b.Y(lVar, d.b.W(((k) lVar7.d(0)).f17466a, ((k) lVar7.d(1)).f17466a)));
                bVar.k((short) iM5);
                return;
            case 14:
                l lVar8 = lVar.f14309d;
                short sY2 = d.b.Y(lVar, ((k) lVar8.d(0)).f17466a);
                short s8 = (short) ((k) lVar8.d(1)).f17466a;
                bVar.k(sY2);
                bVar.k(s8);
                return;
            case 15:
                l lVar9 = lVar.f14309d;
                short sY3 = d.b.Y(lVar, ((k) lVar9.d(0)).f17466a);
                short sJ2 = d.b.j(((k) lVar9.d(1)).f17466a, ((k) lVar9.d(2)).f17466a);
                bVar.k(sY3);
                bVar.k(sJ2);
                return;
            case 16:
                int iM6 = ((g) lVar).m();
                bVar.k(d.b.Y(lVar, ((k) lVar.f14309d.d(0)).f17466a));
                bVar.k((short) iM6);
                bVar.k((short) (iM6 >> 16));
                return;
            case 17:
                int iF4 = ((n) ((g) lVar).f14303e).f();
                bVar.k(d.b.Y(lVar, ((k) lVar.f14309d.d(0)).f17466a));
                bVar.k((short) iF4);
                bVar.k((short) (iF4 >> 16));
                return;
            case 18:
                int iM7 = ((v) lVar).m();
                bVar.k(d.b.Y(lVar, ((k) lVar.f14309d.d(0)).f17466a));
                bVar.k((short) iM7);
                bVar.k((short) (iM7 >> 16));
                return;
            case 19:
                short sY4 = d.b.Y(lVar, 0);
                l lVar10 = lVar.f14309d;
                short s10 = (short) ((k) lVar10.d(0)).f17466a;
                short s11 = (short) ((k) lVar10.d(1)).f17466a;
                bVar.k(sY4);
                bVar.k(s10);
                bVar.k(s11);
                return;
            case 20:
                int iM8 = ((g) lVar).m();
                l lVarA0 = A0(lVar.f14309d);
                int length2 = lVarA0.f2559b.length;
                int i10 = length2 > 0 ? ((k) lVarA0.d(0)).f17466a : 0;
                int i11 = length2 > 1 ? ((k) lVarA0.d(1)).f17466a : 0;
                int i12 = length2 > 2 ? ((k) lVarA0.d(2)).f17466a : 0;
                int i13 = length2 > 3 ? ((k) lVarA0.d(3)).f17466a : 0;
                short sY5 = d.b.Y(lVar, d.b.W(length2 > 4 ? ((k) lVarA0.d(4)).f17466a : 0, length2));
                short s12 = (short) iM8;
                if ((i10 & 15) != i10) {
                    throw new IllegalArgumentException("n0 out of range 0..15");
                }
                if ((i11 & 15) != i11) {
                    throw new IllegalArgumentException("n1 out of range 0..15");
                }
                if ((i12 & 15) != i12) {
                    throw new IllegalArgumentException("n2 out of range 0..15");
                }
                if ((i13 & 15) != i13) {
                    throw new IllegalArgumentException("n3 out of range 0..15");
                }
                bVar.k(sY5);
                bVar.k(s12);
                bVar.k((short) ((i11 << 4) | i10 | (i12 << 8) | (i13 << 12)));
                return;
            case 21:
                int iM9 = ((g) lVar).m();
                l lVar11 = lVar.f14309d;
                int i14 = lVar11.f2559b.length == 0 ? 0 : ((k) lVar11.d(0)).f17466a;
                int length3 = lVar11.f2559b.length;
                int iC = 0;
                for (int i15 = 0; i15 < length3; i15++) {
                    iC += lVar11.b(i15).c();
                }
                bVar.k(d.b.Y(lVar, iC));
                bVar.k((short) iM9);
                bVar.k((short) i14);
                return;
            case 22:
                throw new ClassCastException();
            case 23:
                throw new ClassCastException();
            case 24:
                long j10 = ((m) ((g) lVar).f14303e).f18127a;
                bVar.k(d.b.Y(lVar, ((k) lVar.f14309d.d(0)).f17466a));
                bVar.k((short) j10);
                bVar.k((short) (j10 >> 16));
                bVar.k((short) (j10 >> 32));
                bVar.k((short) (j10 >> 48));
                return;
            default:
                throw new RuntimeException("unsupported");
        }
    }
}
