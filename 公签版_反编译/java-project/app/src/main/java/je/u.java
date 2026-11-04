package je;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class u extends s1.g {
    public static int l0(int i10) {
        if (i10 < 0) {
            return i10;
        }
        if (i10 < 3) {
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map m0(ArrayList arrayList) {
        s sVar = s.f9871a;
        int size = arrayList.size();
        if (size == 0) {
            return sVar;
        }
        if (size == 1) {
            ie.b bVar = (ie.b) arrayList.get(0);
            ue.d.e(bVar, "pair");
            Map mapSingletonMap = Collections.singletonMap(bVar.f8683a, bVar.f8684b);
            ue.d.d(mapSingletonMap, "singletonMap(...)");
            return mapSingletonMap;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(l0(arrayList.size()));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ie.b bVar2 = (ie.b) it.next();
            linkedHashMap.put(bVar2.f8683a, bVar2.f8684b);
        }
        return linkedHashMap;
    }
}
