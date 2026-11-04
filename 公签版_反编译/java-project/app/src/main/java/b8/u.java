package b8;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class u extends w {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f2663b;

    public u(Method method) {
        this.f2663b = method;
    }

    @Override // b8.w
    public final Object a(Class cls) {
        String strB = com.bumptech.glide.manager.s.b(cls);
        if (strB == null) {
            return this.f2663b.invoke(null, cls, Object.class);
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(strB));
    }
}
