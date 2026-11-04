package th;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
import wh.k;
import wh.n;

/* loaded from: classes3.dex */
public abstract class d implements Comparable {
    static {
        new ConcurrentHashMap();
        new ConcurrentHashMap();
        try {
            Locale.class.getMethod("getUnicodeLocaleType", String.class);
        } catch (Throwable unused) {
        }
    }

    public static d a(k kVar) {
        p000if.a.t0(kVar, "temporal");
        d dVar = (d) kVar.c(n.f17927b);
        return dVar != null ? dVar : e.f15102a;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ((d) obj).getClass();
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        ((d) obj).getClass();
        return true;
    }

    public final int hashCode() {
        return getClass().hashCode() ^ 72805;
    }

    public final String toString() {
        return "ISO";
    }
}
