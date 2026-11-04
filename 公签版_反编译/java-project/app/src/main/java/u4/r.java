package u4;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class r extends x {

    /* renamed from: e, reason: collision with root package name */
    public final q f15396e;

    /* renamed from: f, reason: collision with root package name */
    public final a0 f15397f;

    /* renamed from: g, reason: collision with root package name */
    public final p f15398g;

    /* renamed from: h, reason: collision with root package name */
    public final int f15399h;

    public r(q qVar, a0 a0Var, p pVar, p pVar2, int i10) {
        super(4, 12);
        if (qVar == null) {
            throw new NullPointerException("type == null");
        }
        if (pVar == null) {
            throw new NullPointerException("firstItem == null");
        }
        if (pVar2 == null) {
            throw new NullPointerException("lastItem == null");
        }
        if (i10 <= 0) {
            throw new IllegalArgumentException("itemCount <= 0");
        }
        this.f15396e = qVar;
        this.f15397f = a0Var;
        this.f15398g = pVar;
        this.f15399h = i10;
    }

    public static void l(a0[] a0VarArr, w wVar) {
        if (a0VarArr == null) {
            throw new NullPointerException("sections == null");
        }
        if (wVar.f15403f.size() != 0) {
            throw new IllegalArgumentException("mapSection.items().size() != 0");
        }
        ArrayList arrayList = new ArrayList(50);
        for (a0 a0Var : a0VarArr) {
            q qVar = null;
            p pVar = null;
            p pVar2 = null;
            int i10 = 0;
            for (p pVar3 : a0Var.c()) {
                q qVarB = pVar3.b();
                if (qVarB != qVar) {
                    if (i10 != 0) {
                        arrayList.add(new r(qVar, a0Var, pVar, pVar2, i10));
                    }
                    pVar = pVar3;
                    qVar = qVarB;
                    i10 = 0;
                }
                i10++;
                pVar2 = pVar3;
            }
            if (i10 != 0) {
                arrayList.add(new r(qVar, a0Var, pVar, pVar2, i10));
            } else if (a0Var == wVar) {
                arrayList.add(new r(wVar));
            }
        }
        wVar.k(new g0(q.TYPE_MAP_LIST, arrayList));
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_MAP_ITEM;
    }

    @Override // u4.x
    public final void k(f fVar, b5.b bVar) {
        q qVar = this.f15396e;
        int i10 = qVar.f15393a;
        a0 a0Var = this.f15397f;
        p pVar = this.f15398g;
        int iB = pVar == null ? a0Var.b() : a0Var.a(pVar);
        boolean zD = bVar.d();
        int i11 = this.f15399h;
        if (zD) {
            bVar.b(0, g() + ' ' + qVar.f15394b + " map");
            StringBuilder sb2 = new StringBuilder("  type:   ");
            sb2.append(qf.c.e0(i10));
            sb2.append(" // ");
            sb2.append(qVar.toString());
            bVar.b(2, sb2.toString());
            bVar.b(2, "  unused: 0");
            bVar.b(4, "  size:   ".concat(qf.c.f0(i11)));
            bVar.b(4, "  offset: ".concat(qf.c.f0(iB)));
        }
        bVar.k(i10);
        bVar.k(0);
        bVar.j(i11);
        bVar.j(iB);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(r.class.getName());
        sb2.append('{');
        sb2.append(this.f15397f.toString());
        sb2.append(' ');
        sb2.append(this.f15396e.f15395c);
        sb2.append('}');
        return sb2.toString();
    }

    public r(w wVar) {
        super(4, 12);
        if (wVar != null) {
            this.f15396e = q.TYPE_MAP_LIST;
            this.f15397f = wVar;
            this.f15398g = null;
            this.f15399h = 1;
            return;
        }
        throw new NullPointerException("section == null");
    }

    @Override // u4.p
    public final void a(f fVar) {
    }
}
