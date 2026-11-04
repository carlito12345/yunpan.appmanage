package v;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* loaded from: classes.dex */
public final class d0 extends k implements SubMenu {
    public final k B;
    public final m C;

    public d0(Context context, k kVar, m mVar) {
        super(context);
        this.B = kVar;
        this.C = mVar;
    }

    @Override // v.k
    public final boolean d(m mVar) {
        return this.B.d(mVar);
    }

    @Override // v.k
    public final boolean e(k kVar, MenuItem menuItem) {
        return super.e(kVar, menuItem) || this.B.e(kVar, menuItem);
    }

    @Override // v.k
    public final boolean f(m mVar) {
        return this.B.f(mVar);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.C;
    }

    @Override // v.k
    public final String j() {
        m mVar = this.C;
        int i10 = mVar != null ? mVar.f16257a : 0;
        if (i10 == 0) {
            return null;
        }
        return da.b.a(i10, "android:menu:actionviewstates:");
    }

    @Override // v.k
    public final k k() {
        return this.B.k();
    }

    @Override // v.k
    public final boolean m() {
        return this.B.m();
    }

    @Override // v.k
    public final boolean n() {
        return this.B.n();
    }

    @Override // v.k
    public final boolean o() {
        return this.B.o();
    }

    @Override // v.k, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.B.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.C.setIcon(drawable);
        return this;
    }

    @Override // v.k, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.B.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i10) {
        u(0, null, i10, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i10) {
        u(i10, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i10) {
        this.C.setIcon(i10);
        return this;
    }
}
