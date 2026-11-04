package androidx.lifecycle;

/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements r {

    /* renamed from: a, reason: collision with root package name */
    public final e f1745a;

    /* renamed from: b, reason: collision with root package name */
    public final r f1746b;

    public DefaultLifecycleObserverAdapter(e eVar, r rVar) {
        this.f1745a = eVar;
        this.f1746b = rVar;
    }

    @Override // androidx.lifecycle.r
    public final void a(t tVar, m mVar) {
        int i10 = f.f1762a[mVar.ordinal()];
        e eVar = this.f1745a;
        if (i10 == 3) {
            eVar.b();
        } else if (i10 == 7) {
            throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        r rVar = this.f1746b;
        if (rVar != null) {
            rVar.a(tVar, mVar);
        }
    }
}
