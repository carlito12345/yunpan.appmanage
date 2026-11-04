package v8;

import android.view.View;

/* loaded from: classes.dex */
public final class f implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final ta.c f16674a;

    public f(a aVar, ta.c cVar) {
        this.f16674a = cVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        ta.c cVar = this.f16674a;
        cVar.getClass();
        p000if.a.F0(cVar.f14859a);
        return true;
    }
}
