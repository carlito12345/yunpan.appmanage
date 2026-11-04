package c8;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public final String f2948a;

    /* renamed from: b, reason: collision with root package name */
    public final Field f2949b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2950c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f2951d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Method f2952e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ z7.a0 f2953f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ z7.a0 f2954g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f2955h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f2956i;

    public u(String str, Field field, boolean z, Method method, z7.a0 a0Var, z7.a0 a0Var2, boolean z4, boolean z10) {
        this.f2951d = z;
        this.f2952e = method;
        this.f2953f = a0Var;
        this.f2954g = a0Var2;
        this.f2955h = z4;
        this.f2956i = z10;
        this.f2948a = str;
        this.f2949b = field;
        this.f2950c = field.getName();
    }

    public final void a(h8.b bVar, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        Field field = this.f2949b;
        boolean z = this.f2951d;
        Method method = this.f2952e;
        if (z) {
            if (method == null) {
                z.b(obj, field);
            } else {
                z.b(obj, method);
            }
        }
        if (method != null) {
            try {
                objInvoke = method.invoke(obj, null);
            } catch (InvocationTargetException e7) {
                throw new z7.q(g.b.A("Accessor ", e8.c.d(method, false), " threw exception"), e7.getCause());
            }
        } else {
            objInvoke = field.get(obj);
        }
        if (objInvoke == obj) {
            return;
        }
        bVar.N(this.f2948a);
        this.f2953f.c(bVar, objInvoke);
    }
}
