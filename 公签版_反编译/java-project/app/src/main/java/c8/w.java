package c8;

import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class w extends v {

    /* renamed from: b, reason: collision with root package name */
    public final b8.o f2961b;

    public w(b8.o oVar, x xVar) {
        super(xVar);
        this.f2961b = oVar;
    }

    @Override // c8.v
    public final Object d() {
        return this.f2961b.c();
    }

    @Override // c8.v
    public final void f(Object obj, h8.a aVar, u uVar) throws IllegalAccessException, IllegalArgumentException {
        Object objB = uVar.f2954g.b(aVar);
        if (objB == null && uVar.f2955h) {
            return;
        }
        Field field = uVar.f2949b;
        if (uVar.f2951d) {
            z.b(obj, field);
        } else if (uVar.f2956i) {
            throw new z7.q(da.b.c("Cannot set value of 'static final' ", e8.c.d(field, false)));
        }
        field.set(obj, objB);
    }

    @Override // c8.v
    public final Object e(Object obj) {
        return obj;
    }
}
