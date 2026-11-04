package u4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class b extends x {

    /* renamed from: e, reason: collision with root package name */
    public final x4.u f15328e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f15329f;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f15330g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f15331h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f15332i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f15333j;

    /* renamed from: k, reason: collision with root package name */
    public x4.c f15334k;
    public byte[] l;

    public b(x4.u uVar) {
        super(1, -1);
        if (uVar == null) {
            throw new NullPointerException("thisClass == null");
        }
        this.f15328e = uVar;
        this.f15329f = new ArrayList(20);
        this.f15330g = new HashMap(40);
        this.f15331h = new ArrayList(20);
        this.f15332i = new ArrayList(20);
        this.f15333j = new ArrayList(20);
        this.f15334k = null;
    }

    public static void l(f fVar, b5.b bVar, String str, ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return;
        }
        if (bVar.d()) {
            bVar.b(0, "  " + str + ":");
        }
        int iB = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iB = ((i) arrayList.get(i10)).b(fVar, bVar, iB, i10);
        }
    }

    public static void n(b5.b bVar, String str, int i10) {
        if (bVar.d()) {
            bVar.c(String.format("  %-21s %08x", str.concat("_size:"), Integer.valueOf(i10)));
        }
        bVar.m(i10);
    }

    @Override // u4.p
    public final void a(f fVar) {
        ArrayList arrayList = this.f15329f;
        if (!arrayList.isEmpty()) {
            o();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                h hVar = (h) it.next();
                hVar.getClass();
                fVar.f15361h.m(hVar.f15372b);
            }
        }
        ArrayList arrayList2 = this.f15331h;
        if (!arrayList2.isEmpty()) {
            Collections.sort(arrayList2);
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                h hVar2 = (h) it2.next();
                hVar2.getClass();
                fVar.f15361h.m(hVar2.f15372b);
            }
        }
        ArrayList arrayList3 = this.f15332i;
        if (!arrayList3.isEmpty()) {
            Collections.sort(arrayList3);
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                j jVar = (j) it3.next();
                jVar.getClass();
                fVar.f15362i.m(jVar.f15374b);
                e eVar = jVar.f15375c;
                if (eVar != null) {
                    fVar.f15354a.k(eVar);
                }
            }
        }
        ArrayList arrayList4 = this.f15333j;
        if (arrayList4.isEmpty()) {
            return;
        }
        Collections.sort(arrayList4);
        Iterator it4 = arrayList4.iterator();
        while (it4.hasNext()) {
            j jVar2 = (j) it4.next();
            jVar2.getClass();
            fVar.f15362i.m(jVar2.f15374b);
            e eVar2 = jVar2.f15375c;
            if (eVar2 != null) {
                fVar.f15354a.k(eVar2);
            }
        }
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_CLASS_DATA_ITEM;
    }

    @Override // u4.x
    public final void i(w wVar, int i10) {
        b5.b bVar = new b5.b();
        m(wVar.f15324b, bVar);
        int i11 = bVar.f2555c;
        byte[] bArr = new byte[i11];
        System.arraycopy(bVar.f2554b, 0, bArr, 0, i11);
        this.l = bArr;
        j(i11);
    }

    @Override // u4.x
    public final void k(f fVar, b5.b bVar) {
        if (bVar.d()) {
            m(fVar, bVar);
        } else {
            bVar.h(this.l);
        }
    }

    public final void m(f fVar, b5.b bVar) {
        boolean zD = bVar.d();
        if (zD) {
            bVar.b(0, g() + " class data for " + this.f15328e.f18142a.a());
        }
        ArrayList arrayList = this.f15329f;
        n(bVar, "static_fields", arrayList.size());
        ArrayList arrayList2 = this.f15331h;
        n(bVar, "instance_fields", arrayList2.size());
        ArrayList arrayList3 = this.f15332i;
        n(bVar, "direct_methods", arrayList3.size());
        ArrayList arrayList4 = this.f15333j;
        n(bVar, "virtual_methods", arrayList4.size());
        l(fVar, bVar, "static_fields", arrayList);
        l(fVar, bVar, "instance_fields", arrayList2);
        l(fVar, bVar, "direct_methods", arrayList3);
        l(fVar, bVar, "virtual_methods", arrayList4);
        if (zD) {
            bVar.e();
        }
    }

    public final x4.c o() {
        HashMap map;
        x4.c cVar;
        x4.a aVar;
        if (this.f15334k == null) {
            ArrayList arrayList = this.f15329f;
            if (arrayList.size() != 0) {
                Collections.sort(arrayList);
                int size = arrayList.size();
                while (true) {
                    map = this.f15330g;
                    if (size <= 0) {
                        break;
                    }
                    x4.a aVar2 = (x4.a) map.get((h) arrayList.get(size - 1));
                    if (aVar2 instanceof x4.n) {
                        if (((x4.n) aVar2).g() != 0) {
                            break;
                        }
                        size--;
                    } else {
                        if (aVar2 != null) {
                            break;
                        }
                        size--;
                    }
                }
                if (size == 0) {
                    cVar = null;
                } else {
                    x4.b bVar = new x4.b(size);
                    for (int i10 = 0; i10 < size; i10++) {
                        h hVar = (h) arrayList.get(i10);
                        x4.a aVar3 = (x4.a) map.get(hVar);
                        if (aVar3 == null) {
                            y4.c cVarE = hVar.f15372b.e();
                            switch (cVarE.f18964b) {
                                case 1:
                                    aVar = x4.d.f18117b;
                                    break;
                                case 2:
                                    aVar = x4.e.f18119b;
                                    break;
                                case 3:
                                    aVar = x4.f.f18120b;
                                    break;
                                case 4:
                                    aVar = x4.g.f18121b;
                                    break;
                                case 5:
                                    aVar = x4.i.f18122b;
                                    break;
                                case 6:
                                    aVar = x4.j.f18124c;
                                    break;
                                case 7:
                                    aVar = x4.o.f18128b;
                                    break;
                                case 8:
                                    aVar = x4.s.f18135b;
                                    break;
                                case 9:
                                    aVar = x4.k.f18125a;
                                    break;
                                default:
                                    throw new UnsupportedOperationException("no zero for type: " + cVarE.a());
                            }
                            aVar3 = aVar;
                        }
                        bVar.e(i10, aVar3);
                    }
                    bVar.f2570a = false;
                    cVar = new x4.c(bVar);
                }
                this.f15334k = cVar;
            }
        }
        return this.f15334k;
    }

    public final boolean p() {
        return this.f15329f.isEmpty() && this.f15331h.isEmpty() && this.f15332i.isEmpty() && this.f15333j.isEmpty();
    }
}
