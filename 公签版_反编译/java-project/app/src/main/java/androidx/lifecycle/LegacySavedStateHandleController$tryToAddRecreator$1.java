package androidx.lifecycle;

/* loaded from: classes.dex */
public final class LegacySavedStateHandleController$tryToAddRecreator$1 implements r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f1747a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b4.e f1748b;

    public LegacySavedStateHandleController$tryToAddRecreator$1(o oVar, b4.e eVar) {
        this.f1747a = oVar;
        this.f1748b = eVar;
    }

    @Override // androidx.lifecycle.r
    public final void a(t tVar, m mVar) throws NoSuchMethodException, SecurityException {
        if (mVar == m.ON_START) {
            this.f1747a.b(this);
            this.f1748b.d();
        }
    }
}
