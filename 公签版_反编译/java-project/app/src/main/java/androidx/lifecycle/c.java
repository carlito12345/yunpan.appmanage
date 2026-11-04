package androidx.lifecycle;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final int f1757a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f1758b;

    public c(Method method, int i10) throws SecurityException {
        this.f1757a = i10;
        this.f1758b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f1757a == cVar.f1757a && this.f1758b.getName().equals(cVar.f1758b.getName());
    }

    public final int hashCode() {
        return this.f1758b.getName().hashCode() + (this.f1757a * 31);
    }
}
