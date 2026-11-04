package a5;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final Class f403a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f404b;

    /* renamed from: c, reason: collision with root package name */
    public final ClassLoader f405c;

    public c(Class cls, ArrayList arrayList, ClassLoader classLoader) {
        this.f403a = cls;
        this.f404b = new ArrayList(arrayList);
        this.f405c = classLoader;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f403a == cVar.f403a && this.f404b.equals(cVar.f404b) && this.f405c == cVar.f405c;
    }

    public final int hashCode() {
        return this.f405c.hashCode() + this.f404b.hashCode() + this.f403a.hashCode();
    }
}
