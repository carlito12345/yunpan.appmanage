package q;

import a2.w0;
import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class l0 extends u.a implements v.i {

    /* renamed from: c, reason: collision with root package name */
    public final Context f12850c;

    /* renamed from: d, reason: collision with root package name */
    public final v.k f12851d;

    /* renamed from: e, reason: collision with root package name */
    public kf.d f12852e;

    /* renamed from: f, reason: collision with root package name */
    public WeakReference f12853f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ m0 f12854g;

    public l0(m0 m0Var, Context context, kf.d dVar) {
        this.f12854g = m0Var;
        this.f12850c = context;
        this.f12852e = dVar;
        v.k kVar = new v.k(context);
        kVar.l = 1;
        this.f12851d = kVar;
        kVar.f16237e = this;
    }

    @Override // u.a
    public final void a() {
        m0 m0Var = this.f12854g;
        if (m0Var.f12872j != this) {
            return;
        }
        if (m0Var.f12878q) {
            m0Var.f12873k = this;
            m0Var.l = this.f12852e;
        } else {
            this.f12852e.F(this);
        }
        this.f12852e = null;
        m0Var.k0(false);
        ActionBarContextView actionBarContextView = m0Var.f12869g;
        if (actionBarContextView.f922k == null) {
            actionBarContextView.e();
        }
        m0Var.f12866d.setHideOnContentScrollEnabled(m0Var.f12882v);
        m0Var.f12872j = null;
    }

    @Override // u.a
    public final View b() {
        WeakReference weakReference = this.f12853f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // u.a
    public final v.k c() {
        return this.f12851d;
    }

    @Override // u.a
    public final MenuInflater d() {
        return new u.i(this.f12850c);
    }

    @Override // v.i
    public final boolean e(v.k kVar, MenuItem menuItem) {
        kf.d dVar = this.f12852e;
        if (dVar != null) {
            return ((w0) dVar.f10286b).R(this, menuItem);
        }
        return false;
    }

    @Override // v.i
    public final void f(v.k kVar) {
        if (this.f12852e == null) {
            return;
        }
        i();
        w.j jVar = this.f12854g.f12869g.f915d;
        if (jVar != null) {
            jVar.l();
        }
    }

    @Override // u.a
    public final CharSequence g() {
        return this.f12854g.f12869g.getSubtitle();
    }

    @Override // u.a
    public final CharSequence h() {
        return this.f12854g.f12869g.getTitle();
    }

    @Override // u.a
    public final void i() {
        if (this.f12854g.f12872j != this) {
            return;
        }
        v.k kVar = this.f12851d;
        kVar.w();
        try {
            this.f12852e.J(this, kVar);
        } finally {
            kVar.v();
        }
    }

    @Override // u.a
    public final boolean j() {
        return this.f12854g.f12869g.f928t;
    }

    @Override // u.a
    public final void k(View view) {
        this.f12854g.f12869g.setCustomView(view);
        this.f12853f = new WeakReference(view);
    }

    @Override // u.a
    public final void l(int i10) {
        m(this.f12854g.f12864b.getResources().getString(i10));
    }

    @Override // u.a
    public final void m(CharSequence charSequence) {
        this.f12854g.f12869g.setSubtitle(charSequence);
    }

    @Override // u.a
    public final void n(int i10) {
        o(this.f12854g.f12864b.getResources().getString(i10));
    }

    @Override // u.a
    public final void o(CharSequence charSequence) {
        this.f12854g.f12869g.setTitle(charSequence);
    }

    @Override // u.a
    public final void p(boolean z) {
        this.f15104b = z;
        this.f12854g.f12869g.setTitleOptional(z);
    }
}
