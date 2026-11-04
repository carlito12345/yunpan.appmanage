package c8;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* loaded from: classes.dex */
public final class b0 extends z7.a0 {

    /* renamed from: a, reason: collision with root package name */
    public final z7.m f2887a;

    /* renamed from: b, reason: collision with root package name */
    public final z7.a0 f2888b;

    /* renamed from: c, reason: collision with root package name */
    public final Type f2889c;

    public b0(z7.m mVar, z7.a0 a0Var, Type type) {
        this.f2887a = mVar;
        this.f2888b = a0Var;
        this.f2889c = type;
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) {
        return this.f2888b.b(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003c  */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.reflect.Type] */
    @Override // z7.a0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(h8.b bVar, Object obj) {
        z7.a0 a0VarD;
        ?? r02 = this.f2889c;
        Class<?> cls = (obj == null || !((r02 instanceof Class) || (r02 instanceof TypeVariable))) ? r02 : obj.getClass();
        z7.a0 a0Var = this.f2888b;
        if (cls != r02) {
            z7.a0 a0VarC = this.f2887a.c(new g8.a(cls));
            if (a0VarC instanceof v) {
                z7.a0 a0Var2 = a0Var;
                while ((a0Var2 instanceof a0) && (a0VarD = ((a0) a0Var2).d()) != a0Var2) {
                    a0Var2 = a0VarD;
                }
                if (a0Var2 instanceof v) {
                }
            } else {
                a0Var = a0VarC;
            }
        }
        a0Var.c(bVar, obj);
    }
}
