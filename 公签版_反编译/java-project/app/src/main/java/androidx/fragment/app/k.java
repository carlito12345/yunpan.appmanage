package androidx.fragment.app;

/* loaded from: classes.dex */
public final class k extends j {

    /* renamed from: c, reason: collision with root package name */
    public final Object f1313c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f1314d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f1315e;

    public k(z1 z1Var, t0.g gVar, boolean z, boolean z4) {
        super(z1Var, gVar);
        c2 c2Var = z1Var.f1436a;
        c2 c2Var2 = c2.VISIBLE;
        Fragment fragment = z1Var.f1438c;
        this.f1313c = c2Var == c2Var2 ? z ? fragment.getReenterTransition() : fragment.getEnterTransition() : z ? fragment.getReturnTransition() : fragment.getExitTransition();
        this.f1314d = z1Var.f1436a == c2Var2 ? z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() : true;
        this.f1315e = z4 ? z ? fragment.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition() : null;
    }

    public final v1 c() {
        Object obj = this.f1313c;
        v1 v1VarD = d(obj);
        Object obj2 = this.f1315e;
        v1 v1VarD2 = d(obj2);
        if (v1VarD == null || v1VarD2 == null || v1VarD == v1VarD2) {
            return v1VarD == null ? v1VarD2 : v1VarD;
        }
        throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + this.f1305a.f1438c + " returned Transition " + obj + " which uses a different Transition  type than its shared element transition " + obj2).toString());
    }

    public final v1 d(Object obj) {
        if (obj == null) {
            return null;
        }
        t1 t1Var = n1.f1355a;
        if (t1Var != null && a2.p0.w(obj)) {
            return t1Var;
        }
        v1 v1Var = n1.f1356b;
        if (v1Var != null && v1Var.e(obj)) {
            return v1Var;
        }
        throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f1305a.f1438c + " is not a valid framework Transition or AndroidX Transition");
    }
}
