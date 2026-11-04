package g0;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: f, reason: collision with root package name */
    public static int f5964f;

    /* renamed from: b, reason: collision with root package name */
    public final int f5966b;

    /* renamed from: c, reason: collision with root package name */
    public int f5967c;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f5965a = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f5968d = null;

    /* renamed from: e, reason: collision with root package name */
    public int f5969e = -1;

    public n(int i10) {
        int i11 = f5964f;
        f5964f = i11 + 1;
        this.f5966b = i11;
        this.f5967c = i10;
    }

    public final void a(ArrayList arrayList) {
        int size = this.f5965a.size();
        if (this.f5969e != -1 && size > 0) {
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                n nVar = (n) arrayList.get(i10);
                if (this.f5969e == nVar.f5966b) {
                    c(this.f5967c, nVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int b(d0.c cVar, int i10) {
        int iN;
        int iN2;
        ArrayList arrayList = this.f5965a;
        if (arrayList.size() == 0) {
            return 0;
        }
        f0.e eVar = (f0.e) ((f0.d) arrayList.get(0)).T;
        cVar.t();
        eVar.b(cVar, false);
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            ((f0.d) arrayList.get(i11)).b(cVar, false);
        }
        if (i10 == 0 && eVar.f5122z0 > 0) {
            f0.j.a(eVar, cVar, arrayList, 0);
        }
        if (i10 == 1 && eVar.A0 > 0) {
            f0.j.a(eVar, cVar, arrayList, 1);
        }
        try {
            cVar.p();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        this.f5968d = new ArrayList();
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            this.f5968d.add(new gf.g((f0.d) arrayList.get(i12), cVar));
        }
        if (i10 == 0) {
            iN = d0.c.n(eVar.I);
            iN2 = d0.c.n(eVar.K);
            cVar.t();
        } else {
            iN = d0.c.n(eVar.J);
            iN2 = d0.c.n(eVar.L);
            cVar.t();
        }
        return iN2 - iN;
    }

    public final void c(int i10, n nVar) {
        Iterator it = this.f5965a.iterator();
        while (it.hasNext()) {
            f0.d dVar = (f0.d) it.next();
            ArrayList arrayList = nVar.f5965a;
            if (!arrayList.contains(dVar)) {
                arrayList.add(dVar);
            }
            int i11 = nVar.f5966b;
            if (i10 == 0) {
                dVar.f5101n0 = i11;
            } else {
                dVar.f5103o0 = i11;
            }
        }
        this.f5969e = nVar.f5966b;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = this.f5967c;
        sb2.append(i10 == 0 ? "Horizontal" : i10 == 1 ? "Vertical" : i10 == 2 ? "Both" : "Unknown");
        sb2.append(" [");
        String strS = android.support.v4.media.session.a.s(sb2, this.f5966b, "] <");
        Iterator it = this.f5965a.iterator();
        while (it.hasNext()) {
            f0.d dVar = (f0.d) it.next();
            StringBuilder sbB = d0.f.b(strS, " ");
            sbB.append(dVar.f5090h0);
            strS = sbB.toString();
        }
        return g.b.j(strS, " >");
    }
}
