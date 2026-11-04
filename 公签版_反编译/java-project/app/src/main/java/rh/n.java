package rh;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public class n extends p {

    /* renamed from: a, reason: collision with root package name */
    public final int f13799a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13800b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13801c;

    public n(int i10, int i11, int i12) {
        this.f13801c = i12;
        this.f13799a = i10;
        this.f13800b = i11;
    }

    @Override // rh.p
    public final boolean b(ph.l lVar, ph.l lVar2) {
        int iG;
        ph.l lVar3 = lVar2.f12741a;
        if (lVar3 == null || (lVar3 instanceof ph.h)) {
            return false;
        }
        switch (this.f13801c) {
            case 0:
                iG = lVar2.G() + 1;
                break;
            case 1:
                ph.l lVar4 = lVar2.f12741a;
                if (lVar4 == null) {
                    iG = 0;
                    break;
                } else {
                    iG = lVar4.D().size() - lVar2.G();
                    break;
                }
            case 2:
                iG = 0;
                if (lVar2.f12741a != null) {
                    for (ph.l lVarM = lVar2; lVarM != null; lVarM = lVarM.m()) {
                        if (lVarM.f12722d.f13285c.equals(lVar2.f12722d.f13285c)) {
                            iG++;
                        }
                    }
                    break;
                }
                break;
            default:
                ph.l lVar5 = lVar2.f12741a;
                iG = 0;
                if (lVar5 != null) {
                    int size = lVar5.f12723e.size();
                    int i10 = 0;
                    while (iG < size) {
                        ph.q qVar = (ph.q) ((ArrayList) lVar5.h()).get(iG);
                        if (qVar.q().equals(lVar2.f12722d.f13285c)) {
                            i10++;
                        }
                        if (qVar == lVar2) {
                            iG = i10;
                            break;
                        } else {
                            iG++;
                        }
                    }
                    iG = i10;
                }
                break;
        }
        int i11 = this.f13800b;
        int i12 = this.f13799a;
        if (i12 == 0) {
            return iG == i11;
        }
        int i13 = iG - i11;
        return i13 * i12 >= 0 && i13 % i12 == 0;
    }

    public String toString() {
        String str;
        int i10 = this.f13800b;
        int i11 = this.f13799a;
        String str2 = i11 == 0 ? ":%s(%3$d)" : i10 == 0 ? ":%s(%2$dn)" : ":%s(%2$dn%3$+d)";
        switch (this.f13801c) {
            case 0:
                str = "nth-child";
                break;
            case 1:
                str = "nth-last-child";
                break;
            case 2:
                str = "nth-last-of-type";
                break;
            default:
                str = "nth-of-type";
                break;
        }
        return String.format(str2, str, Integer.valueOf(i11), Integer.valueOf(i10));
    }
}
