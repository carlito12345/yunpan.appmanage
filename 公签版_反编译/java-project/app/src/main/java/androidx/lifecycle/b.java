package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1755a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f1756b;

    public b(HashMap map) {
        this.f1756b = map;
        for (Map.Entry entry : map.entrySet()) {
            m mVar = (m) entry.getValue();
            List arrayList = (List) this.f1755a.get(mVar);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.f1755a.put(mVar, arrayList);
            }
            arrayList.add((c) entry.getKey());
        }
    }

    public static void a(List list, t tVar, m mVar, s sVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                c cVar = (c) list.get(size);
                cVar.getClass();
                try {
                    int i10 = cVar.f1757a;
                    Method method = cVar.f1758b;
                    if (i10 == 0) {
                        method.invoke(sVar, null);
                    } else if (i10 == 1) {
                        method.invoke(sVar, tVar);
                    } else if (i10 == 2) {
                        method.invoke(sVar, tVar, mVar);
                    }
                } catch (IllegalAccessException e7) {
                    throw new RuntimeException(e7);
                } catch (InvocationTargetException e10) {
                    throw new RuntimeException("Failed to call observer method", e10.getCause());
                }
            }
        }
    }
}
