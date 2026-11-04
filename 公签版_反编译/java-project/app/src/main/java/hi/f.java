package hi;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f8227a = DesugarCollections.synchronizedMap(new HashMap());

    public static void a(e eVar) {
        ArrayList arrayList = new ArrayList();
        Map map = f8227a;
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getValue() == eVar) {
                arrayList.add((String) entry.getKey());
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            map.remove((String) it.next());
        }
    }
}
