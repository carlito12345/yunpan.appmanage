package sb;

import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final WeakHashMap f14470a = new WeakHashMap();

    public d(String str) {
    }

    public static synchronized d a(String str) {
        d dVar;
        WeakHashMap weakHashMap = f14470a;
        dVar = (d) weakHashMap.get(str);
        if (dVar == null) {
            dVar = new d(str);
            weakHashMap.put(str, dVar);
        }
        return dVar;
    }
}
