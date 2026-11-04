package y1;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    public static final b f18581b = new b(new HashMap());

    /* renamed from: a, reason: collision with root package name */
    public final Map f18582a;

    public b(HashMap map) {
        this.f18582a = Collections.unmodifiableMap(map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f18582a.equals(((b) obj).f18582a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f18582a.hashCode();
    }
}
