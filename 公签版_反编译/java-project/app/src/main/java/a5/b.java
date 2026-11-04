package a5;

import java.lang.reflect.Method;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f399a;

    /* renamed from: b, reason: collision with root package name */
    public final Class[] f400b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f401c;

    /* renamed from: d, reason: collision with root package name */
    public final Method f402d;

    public b(Method method) {
        this.f402d = method;
        this.f399a = method.getName();
        this.f400b = method.getParameterTypes();
        this.f401c = method.getReturnType();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f399a.equals(bVar.f399a) && this.f401c.equals(bVar.f401c) && Arrays.equals(this.f400b, bVar.f400b);
    }

    public final int hashCode() {
        int iHashCode = this.f399a.hashCode() + 544;
        int iHashCode2 = this.f401c.hashCode() + (iHashCode * 31) + iHashCode;
        return (iHashCode2 * 31) + Arrays.hashCode(this.f400b) + iHashCode2;
    }
}
