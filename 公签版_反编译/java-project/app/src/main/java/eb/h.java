package eb;

import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import x0.m1;

/* loaded from: classes.dex */
public final class h implements m1 {

    /* renamed from: a, reason: collision with root package name */
    public int f4845a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4846b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4847c;

    public h() {
        this.f4847c = new byte[65536];
    }

    @Override // x0.m1
    public void a(View view) {
        this.f4846b = true;
    }

    @Override // x0.m1
    public void b() {
        super/*android.view.ViewGroup*/.setVisibility(0);
        this.f4846b = false;
    }

    @Override // x0.m1
    public void c() {
        if (this.f4846b) {
            return;
        }
        ActionBarContextView actionBarContextView = (ActionBarContextView) this.f4847c;
        actionBarContextView.f917f = null;
        super/*android.view.ViewGroup*/.setVisibility(this.f4845a);
    }

    public h(ActionBarContextView actionBarContextView) {
        this.f4847c = actionBarContextView;
        this.f4846b = false;
    }

    public h(wb.i iVar, boolean z, int i10) {
        this.f4847c = iVar;
        this.f4846b = z;
        this.f4845a = i10;
    }
}
