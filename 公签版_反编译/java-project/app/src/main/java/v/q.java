package v;

import android.view.MenuItem;

/* loaded from: classes.dex */
public final class q implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final MenuItem.OnMenuItemClickListener f16284a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f16285b;

    public q(r rVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f16285b = rVar;
        this.f16284a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.f16284a.onMenuItemClick(this.f16285b.f(menuItem));
    }
}
