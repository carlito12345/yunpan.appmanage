package v;

import android.view.MenuItem;

/* loaded from: classes.dex */
public final class p implements MenuItem.OnActionExpandListener {

    /* renamed from: a, reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f16282a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f16283b;

    public p(r rVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f16283b = rVar;
        this.f16282a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f16282a.onMenuItemActionCollapse(this.f16283b.f(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f16282a.onMenuItemActionExpand(this.f16283b.f(menuItem));
    }
}
