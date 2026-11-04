package com.bumptech.glide;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import uh.r;
import uh.s;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final Map f3329a;

    public h(g gVar) {
        this.f3329a = Collections.unmodifiableMap(new HashMap(gVar.f3328a));
    }

    public h(Map map) {
        this.f3329a = map;
        HashMap map2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (s sVar : map.keySet()) {
            HashMap map3 = new HashMap();
            Iterator it = ((Map) map.get(sVar)).entrySet().iterator();
            while (true) {
                if (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    Object value = entry.getValue();
                    Object value2 = entry.getValue();
                    Object key = entry.getKey();
                    a5.a aVar = r.f16158a;
                    if (map3.put(value, new AbstractMap.SimpleImmutableEntry(value2, key)) != null) {
                        break;
                    }
                } else {
                    ArrayList arrayList2 = new ArrayList(map3.values());
                    Collections.sort(arrayList2, r.f16158a);
                    map2.put(sVar, arrayList2);
                    arrayList.addAll(arrayList2);
                    map2.put(null, arrayList);
                    break;
                }
            }
        }
        Collections.sort(arrayList, r.f16158a);
    }
}
