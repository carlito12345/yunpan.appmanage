package u;

import a2.w0;
import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class e extends a implements v.i {

    /* renamed from: c, reason: collision with root package name */
    public final Context f15111c;

    /* renamed from: d, reason: collision with root package name */
    public final ActionBarContextView f15112d;

    /* renamed from: e, reason: collision with root package name */
    public final kf.d f15113e;

    /* renamed from: f, reason: collision with root package name */
    public WeakReference f15114f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f15115g;

    /* renamed from: h, reason: collision with root package name */
    public final v.k f15116h;

    public e(Context context, ActionBarContextView actionBarContextView, kf.d dVar) {
        this.f15111c = context;
        this.f15112d = actionBarContextView;
        this.f15113e = dVar;
        v.k kVar = new v.k(actionBarContextView.getContext());
        kVar.l = 1;
        this.f15116h = kVar;
        kVar.f16237e = this;
    }

    @Override // u.a
    public final void a() {
        if (this.f15115g) {
            return;
        }
        this.f15115g = true;
        this.f15113e.F(this);
    }

    @Override // u.a
    public final View b() {
        WeakReference weakReference = this.f15114f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // u.a
    public final v.k c() {
        return this.f15116h;
    }

    @Override // u.a
    public final MenuInflater d() {
        return new i(this.f15112d.getContext());
    }

    @Override // v.i
    public final boolean e(v.k kVar, MenuItem menuItem) {
        return ((w0) this.f15113e.f10286b).R(this, menuItem);
    }

    @Override // v.i
    public final void f(v.k kVar) {
        i();
        w.j jVar = this.f15112d.f915d;
        if (jVar != null) {
            jVar.l();
        }
    }

    @Override // u.a
    public final CharSequence g() {
        return this.f15112d.getSubtitle();
    }

    @Override // u.a
    public final CharSequence h() {
        return this.f15112d.getTitle();
    }

    @Override // u.a
    public final void i() {
        this.f15113e.J(this, this.f15116h);
    }

    @Override // u.a
    public final boolean j() {
        return this.f15112d.f928t;
    }

    @Override // u.a
    public final void k(View view) {
        this.f15112d.setCustomView(view);
        this.f15114f = view != null ? new WeakReference(view) : null;
    }

    @Override // u.a
    public final void l(int i10) {
        m(this.f15111c.getString(i10));
    }

    @Override // u.a
    public final void m(CharSequence charSequence) {
        this.f15112d.setSubtitle(charSequence);
    }

    @Override // u.a
    public final void n(int i10) {
        o(this.f15111c.getString(i10));
    }

    @Override // u.a
    public final void o(CharSequence charSequence) {
        this.f15112d.setTitle(charSequence);
    }

    @Override // u.a
    public final void p(boolean z) {
        this.f15104b = z;
        this.f15112d.setTitleOptional(z);
    }
}
