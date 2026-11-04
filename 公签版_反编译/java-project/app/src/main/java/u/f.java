package u;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import v.a0;

/* loaded from: classes.dex */
public final class f extends ActionMode {

    /* renamed from: a, reason: collision with root package name */
    public final Context f15117a;

    /* renamed from: b, reason: collision with root package name */
    public final a f15118b;

    public f(Context context, a aVar) {
        this.f15117a = context;
        this.f15118b = aVar;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f15118b.a();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f15118b.b();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new a0(this.f15117a, this.f15118b.c());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f15118b.d();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f15118b.g();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f15118b.f15103a;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f15118b.h();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f15118b.f15104b;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f15118b.i();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f15118b.j();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f15118b.k(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f15118b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f15118b.f15103a = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f15118b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z) {
        this.f15118b.p(z);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i10) {
        this.f15118b.l(i10);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i10) {
        this.f15118b.n(i10);
    }
}
