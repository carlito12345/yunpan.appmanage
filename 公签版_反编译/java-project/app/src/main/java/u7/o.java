package u7;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class o {

    /* renamed from: a, reason: collision with root package name */
    public transient Set f15508a;

    /* renamed from: b, reason: collision with root package name */
    public transient Collection f15509b;

    /* renamed from: c, reason: collision with root package name */
    public transient Map f15510c;

    public Map a() {
        Map map = this.f15510c;
        if (map != null) {
            return map;
        }
        Map mapB = b();
        this.f15510c = mapB;
        return mapB;
    }

    public abstract Map b();

    public abstract Set c();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o) {
            return a().equals(((o) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a().toString();
    }
}
