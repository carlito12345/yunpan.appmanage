package b8;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class s extends w {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f2659b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2660c;

    public s(Object obj, Method method) {
        this.f2659b = method;
        this.f2660c = obj;
    }

    @Override // b8.w
    public final Object a(Class cls) {
        String strB = com.bumptech.glide.manager.s.b(cls);
        if (strB == null) {
            return this.f2659b.invoke(this.f2660c, cls);
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(strB));
    }
}
