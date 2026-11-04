package b8;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class t extends w {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f2661b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2662c;

    public t(Method method, int i10) {
        this.f2661b = method;
        this.f2662c = i10;
    }

    @Override // b8.w
    public final Object a(Class cls) {
        String strB = com.bumptech.glide.manager.s.b(cls);
        if (strB == null) {
            return this.f2661b.invoke(null, cls, Integer.valueOf(this.f2662c));
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(strB));
    }
}
