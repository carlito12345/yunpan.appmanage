package u4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class d extends f0 {

    /* renamed from: f, reason: collision with root package name */
    public final TreeMap f15346f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f15347g;

    public d(f fVar) {
        super("class_defs", fVar, 4);
        this.f15346f = new TreeMap();
        this.f15347g = null;
    }

    @Override // u4.a0
    public final Collection c() {
        ArrayList arrayList = this.f15347g;
        return arrayList != null ? arrayList : this.f15346f.values();
    }

    @Override // u4.f0
    public final void k() {
        TreeMap treeMap = this.f15346f;
        int size = treeMap.size();
        this.f15347g = new ArrayList(size);
        Iterator it = treeMap.keySet().iterator();
        int iL = 0;
        while (it.hasNext()) {
            iL = l((y4.c) it.next(), iL, size - iL);
        }
    }

    public final int l(y4.c cVar, int i10, int i11) {
        c cVar2 = (c) this.f15346f.get(cVar);
        if (cVar2 == null || cVar2.f15378a >= 0) {
            return i10;
        }
        if (i11 < 0) {
            throw new RuntimeException("class circularity with " + cVar);
        }
        int i12 = i11 - 1;
        x4.u uVar = cVar2.f15338d;
        if (uVar != null) {
            i10 = l(uVar.f18142a, i10, i12);
        }
        e0 e0Var = cVar2.f15339e;
        y4.e eVar = e0Var == null ? y4.b.f18928c : e0Var.f15353e;
        int length = ((b5.c) eVar).f2559b.length;
        for (int i13 = 0; i13 < length; i13++) {
            i10 = l(eVar.b(i13), i10, i12);
        }
        cVar2.g(i10);
        this.f15347g.add(cVar2);
        return i10 + 1;
    }
}
