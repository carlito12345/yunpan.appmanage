package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public final class v2 extends d2 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2329a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w2 f2330b;

    public v2(w2 w2Var) {
        this.f2330b = w2Var;
    }

    @Override // androidx.recyclerview.widget.d2
    public final void a(RecyclerView recyclerView, int i10) {
        if (i10 == 0 && this.f2329a) {
            this.f2329a = false;
            this.f2330b.d();
        }
    }

    @Override // androidx.recyclerview.widget.d2
    public final void b(RecyclerView recyclerView, int i10, int i11) {
        if (i10 == 0 && i11 == 0) {
            return;
        }
        this.f2329a = true;
    }
}
