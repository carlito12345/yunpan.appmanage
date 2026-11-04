package a6;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f437a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b, reason: collision with root package name */
    public final long f438b;

    /* renamed from: c, reason: collision with root package name */
    public long f439c;

    /* renamed from: d, reason: collision with root package name */
    public long f440d;

    public m(long j10) {
        this.f438b = j10;
        this.f439c = j10;
    }

    public final synchronized Object a(Object obj) {
        l lVar;
        lVar = (l) this.f437a.get(obj);
        return lVar != null ? lVar.f435a : null;
    }

    public int b(Object obj) {
        return 1;
    }

    public final synchronized Object d(Object obj, Object obj2) {
        int iB = b(obj2);
        long j10 = iB;
        if (j10 >= this.f439c) {
            c(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.f440d += j10;
        }
        l lVar = (l) this.f437a.put(obj, obj2 == null ? null : new l(iB, obj2));
        if (lVar != null) {
            this.f440d -= lVar.f436b;
            if (!lVar.f435a.equals(obj2)) {
                c(obj, lVar.f435a);
            }
        }
        e(this.f439c);
        return lVar != null ? lVar.f435a : null;
    }

    public final synchronized void e(long j10) {
        while (this.f440d > j10) {
            Iterator it = this.f437a.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            l lVar = (l) entry.getValue();
            this.f440d -= lVar.f436b;
            Object key = entry.getKey();
            it.remove();
            c(key, lVar.f435a);
        }
    }

    public void c(Object obj, Object obj2) {
    }
}
