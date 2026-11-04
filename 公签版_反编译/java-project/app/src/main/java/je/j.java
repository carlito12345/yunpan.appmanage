package je;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class j extends p {
    public static final void l0(Iterable iterable, AbstractCollection abstractCollection) {
        ue.d.e(iterable, "<this>");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static List m0(Iterable iterable) {
        ArrayList arrayListN0;
        ue.d.e(iterable, "<this>");
        boolean z = iterable instanceof Collection;
        r rVar = r.f9870a;
        if (z) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return rVar;
            }
            if (size != 1) {
                return n0(collection);
            }
            return qf.c.J(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
        }
        if (z) {
            arrayListN0 = n0((Collection) iterable);
        } else {
            ArrayList arrayList = new ArrayList();
            l0(iterable, arrayList);
            arrayListN0 = arrayList;
        }
        int size2 = arrayListN0.size();
        return size2 != 0 ? size2 != 1 ? arrayListN0 : qf.c.J(arrayListN0.get(0)) : rVar;
    }

    public static ArrayList n0(Collection collection) {
        ue.d.e(collection, "<this>");
        return new ArrayList(collection);
    }

    public static Set o0(ArrayList arrayList) {
        t tVar = t.f9872a;
        int size = arrayList.size();
        if (size == 0) {
            return tVar;
        }
        if (size != 1) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(u.l0(arrayList.size()));
            l0(arrayList, linkedHashSet);
            return linkedHashSet;
        }
        Set setSingleton = Collections.singleton(arrayList.get(0));
        ue.d.d(setSingleton, "singleton(...)");
        return setSingleton;
    }
}
