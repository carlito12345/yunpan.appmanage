package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class i3 {

    /* renamed from: a, reason: collision with root package name */
    public final a0.t f2157a = new a0.t(0);

    /* renamed from: b, reason: collision with root package name */
    public final a0.k f2158b = new a0.k();

    public final void a(RecyclerView.ViewHolder viewHolder, s1 s1Var) {
        a0.t tVar = this.f2157a;
        g3 g3VarA = (g3) tVar.get(viewHolder);
        if (g3VarA == null) {
            g3VarA = g3.a();
            tVar.put(viewHolder, g3VarA);
        }
        g3VarA.f2141c = s1Var;
        g3VarA.f2139a |= 8;
    }

    public final s1 b(RecyclerView.ViewHolder viewHolder, int i10) {
        g3 g3Var;
        s1 s1Var;
        a0.t tVar = this.f2157a;
        int iD = tVar.d(viewHolder);
        if (iD >= 0 && (g3Var = (g3) tVar.j(iD)) != null) {
            int i11 = g3Var.f2139a;
            if ((i11 & i10) != 0) {
                int i12 = i11 & (i10 ^ (-1));
                g3Var.f2139a = i12;
                if (i10 == 4) {
                    s1Var = g3Var.f2140b;
                } else {
                    if (i10 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    s1Var = g3Var.f2141c;
                }
                if ((i12 & 12) == 0) {
                    tVar.h(iD);
                    g3Var.f2139a = 0;
                    g3Var.f2140b = null;
                    g3Var.f2141c = null;
                    g3.f2138d.c(g3Var);
                }
                return s1Var;
            }
        }
        return null;
    }

    public final void c(RecyclerView.ViewHolder viewHolder) {
        g3 g3Var = (g3) this.f2157a.get(viewHolder);
        if (g3Var == null) {
            return;
        }
        g3Var.f2139a &= -2;
    }

    public final void d(RecyclerView.ViewHolder viewHolder) {
        a0.k kVar = this.f2158b;
        int iJ = kVar.j() - 1;
        while (true) {
            if (iJ < 0) {
                break;
            }
            if (viewHolder == kVar.k(iJ)) {
                Object[] objArr = kVar.f35c;
                Object obj = objArr[iJ];
                Object obj2 = a0.l.f37a;
                if (obj != obj2) {
                    objArr[iJ] = obj2;
                    kVar.f33a = true;
                }
            } else {
                iJ--;
            }
        }
        g3 g3Var = (g3) this.f2157a.remove(viewHolder);
        if (g3Var != null) {
            g3Var.f2139a = 0;
            g3Var.f2140b = null;
            g3Var.f2141c = null;
            g3.f2138d.c(g3Var);
        }
    }
}
