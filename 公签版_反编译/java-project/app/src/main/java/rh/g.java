package rh;

import java.util.ArrayList;
import java.util.List;
import org.slf4j.Marker;
import qh.f0;
import qh.h0;

/* loaded from: classes3.dex */
public final class g extends p {

    /* renamed from: b, reason: collision with root package name */
    public static boolean f13788b = false;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13789a;

    public /* synthetic */ g(int i10) {
        this.f13789a = i10;
    }

    @Override // rh.p
    public int a() {
        switch (this.f13789a) {
            case 0:
                return 10;
            case 6:
                return 1;
            case 7:
                return -1;
            case 8:
                return 1;
            default:
                return super.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15, types: [ph.q] */
    /* JADX WARN: Type inference failed for: r8v16, types: [ph.q] */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v37 */
    @Override // rh.p
    public final boolean b(ph.l lVar, ph.l lVar2) {
        e eVar;
        switch (this.f13789a) {
            case 0:
                break;
            case 1:
                for (ph.q qVarI = lVar2.i(); qVarI != null; qVarI = qVarI.n()) {
                    if (!(qVarI instanceof ph.x)) {
                        if (!(qVarI instanceof ph.e) && !(qVarI instanceof ph.i)) {
                            break;
                        }
                    } else if (!oh.f.f(((ph.x) qVarI).A())) {
                        break;
                    }
                }
                break;
            case 2:
                ph.l lVar3 = lVar2.f12741a;
                if (lVar3 == null || (lVar3 instanceof ph.h) || lVar2 != lVar3.I()) {
                }
                break;
            case 3:
                ph.l lVar4 = lVar2.f12741a;
                if (lVar4 != null && !(lVar4 instanceof ph.h)) {
                    int iE = lVar4.e();
                    ph.l lVar5 = null;
                    ph.l lVarV = iE == 0 ? 0 : (ph.q) ((ArrayList) lVar4.h()).get(iE - 1);
                    while (true) {
                        if (lVarV != 0) {
                            if (lVarV instanceof ph.l) {
                                lVar5 = lVarV;
                            } else {
                                lVarV = lVarV.v();
                            }
                        }
                    }
                    if (lVar2 == lVar5) {
                    }
                }
                break;
            case 4:
                ph.l lVar6 = lVar2.f12741a;
                if (lVar6 != null && !(lVar6 instanceof ph.h)) {
                    if (lVar6 == null) {
                        eVar = new e(0);
                    } else {
                        List<ph.l> listD = lVar6.D();
                        e eVar2 = new e(listD.size() - 1);
                        for (ph.l lVar7 : listD) {
                            if (lVar7 != lVar2) {
                                eVar2.add(lVar7);
                            }
                        }
                        eVar = eVar2;
                    }
                    if (eVar.isEmpty()) {
                    }
                }
                break;
            case 5:
                ph.l lVar8 = lVar2.f12741a;
                if (lVar8 != null && !(lVar8 instanceof ph.h)) {
                    int i10 = 0;
                    for (ph.l lVarI = lVar8.I(); lVarI != null; lVarI = lVarI.m()) {
                        if (lVarI.f12722d.f13285c.equals(lVar2.f12722d.f13285c)) {
                            i10++;
                        }
                        if (i10 > 1) {
                            if (i10 != 1) {
                            }
                        }
                    }
                    if (i10 != 1) {
                    }
                }
                break;
            case 6:
                if (lVar instanceof ph.h) {
                    lVar = lVar.I();
                }
                if (lVar2 == lVar) {
                }
                break;
            case 7:
                if (!(lVar2 instanceof ph.t)) {
                    for (ph.q qVar : lVar2.H(ph.x.class)) {
                        f0 f0Var = lVar2.f12722d;
                        String str = f0Var.f13284b;
                        ph.t tVar = new ph.t(new h0(h0.f13288c).d(str, oh.a.d(str), f0Var.f13283a, true), lVar2.d(), lVar2.c());
                        qVar.y(tVar);
                        tVar.A(qVar);
                    }
                    break;
                }
                break;
            default:
                if (lVar == lVar2) {
                }
                break;
        }
        return true;
    }

    public final String toString() {
        switch (this.f13789a) {
            case 0:
                return Marker.ANY_MARKER;
            case 1:
                return ":empty";
            case 2:
                return ":first-child";
            case 3:
                return ":last-child";
            case 4:
                return ":only-child";
            case 5:
                return ":only-of-type";
            case 6:
                return ":root";
            case 7:
                return ":matchText";
            default:
                return ">";
        }
    }

    public g() {
        this.f13789a = 7;
        if (f13788b) {
            return;
        }
        f13788b = true;
        System.err.getClass();
    }
}
