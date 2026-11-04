package z7;

/* loaded from: classes.dex */
public final class l extends c8.a0 {

    /* renamed from: a, reason: collision with root package name */
    public a0 f19453a = null;

    @Override // z7.a0
    public final Object b(h8.a aVar) {
        a0 a0Var = this.f19453a;
        if (a0Var != null) {
            return a0Var.b(aVar);
        }
        throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) {
        a0 a0Var = this.f19453a;
        if (a0Var == null) {
            throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }
        a0Var.c(bVar, obj);
    }

    @Override // c8.a0
    public final a0 d() {
        a0 a0Var = this.f19453a;
        if (a0Var != null) {
            return a0Var;
        }
        throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
    }
}
