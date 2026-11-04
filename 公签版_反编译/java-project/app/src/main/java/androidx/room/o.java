package androidx.room;

import java.util.ArrayList;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f2422a;

    public o(int i10) {
        switch (i10) {
            case 1:
                this.f2422a = new LinkedHashMap(0, 0.75f, true);
                break;
            case 2:
                this.f2422a = new LinkedHashMap();
                break;
            default:
                this.f2422a = new LinkedHashMap();
                break;
        }
    }

    public void a(l2.j jVar) {
        long[] jArr = jVar.f10479e;
        if (jArr.length > 0) {
            LinkedHashMap linkedHashMap = this.f2422a;
            if (linkedHashMap.containsKey(Long.valueOf(jArr[0]))) {
                return;
            }
            linkedHashMap.put(Long.valueOf(jVar.f10479e[0]), jVar);
        }
    }

    public l2.j b() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (l2.j jVar : this.f2422a.values()) {
            arrayList.add(jVar.f10476b);
            arrayList2.add(jVar.f10477c);
            arrayList3.add(jVar.f10478d);
            arrayList4.add(jVar.f10479e);
        }
        int[][] iArr = (int[][]) arrayList.toArray(new int[arrayList.size()][]);
        long length = 0;
        for (int[] iArr2 : iArr) {
            length += iArr2.length;
        }
        int i10 = (int) length;
        a9.o.j("the total number of elements (%s) in the arrays must fit in an int", length == ((long) i10), length);
        int[] iArr3 = new int[i10];
        int length2 = 0;
        for (int[] iArr4 : iArr) {
            System.arraycopy(iArr4, 0, iArr3, length2, iArr4.length);
            length2 += iArr4.length;
        }
        return new l2.j(iArr3, p000if.a.p((long[][]) arrayList2.toArray(new long[arrayList2.size()][])), p000if.a.p((long[][]) arrayList3.toArray(new long[arrayList3.size()][])), p000if.a.p((long[][]) arrayList4.toArray(new long[arrayList4.size()][])));
    }
}
