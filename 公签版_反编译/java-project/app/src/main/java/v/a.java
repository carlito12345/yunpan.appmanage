package v;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* loaded from: classes.dex */
public final class a implements r0.a {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f16161a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f16162b;

    /* renamed from: c, reason: collision with root package name */
    public Intent f16163c;

    /* renamed from: d, reason: collision with root package name */
    public char f16164d;

    /* renamed from: f, reason: collision with root package name */
    public char f16166f;

    /* renamed from: h, reason: collision with root package name */
    public Drawable f16168h;

    /* renamed from: i, reason: collision with root package name */
    public final Context f16169i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f16170j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f16171k;

    /* renamed from: e, reason: collision with root package name */
    public int f16165e = 4096;

    /* renamed from: g, reason: collision with root package name */
    public int f16167g = 4096;
    public ColorStateList l = null;

    /* renamed from: m, reason: collision with root package name */
    public PorterDuff.Mode f16172m = null;

    /* renamed from: n, reason: collision with root package name */
    public boolean f16173n = false;

    /* renamed from: p, reason: collision with root package name */
    public boolean f16174p = false;

    /* renamed from: q, reason: collision with root package name */
    public int f16175q = 16;

    public a(Context context, CharSequence charSequence) {
        this.f16169i = context;
        this.f16161a = charSequence;
    }

    @Override // r0.a
    public final n a() {
        return null;
    }

    @Override // r0.a
    public final r0.a b(n nVar) {
        throw new UnsupportedOperationException();
    }

    public final void c() {
        Drawable drawable = this.f16168h;
        if (drawable != null) {
            if (this.f16173n || this.f16174p) {
                Drawable drawableN0 = com.bumptech.glide.c.n0(drawable);
                this.f16168h = drawableN0;
                Drawable drawableMutate = drawableN0.mutate();
                this.f16168h = drawableMutate;
                if (this.f16173n) {
                    com.bumptech.glide.c.f0(drawableMutate, this.l);
                }
                if (this.f16174p) {
                    com.bumptech.glide.c.g0(this.f16168h, this.f16172m);
                }
            }
        }
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // r0.a, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f16167g;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f16166f;
    }

    @Override // r0.a, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f16170j;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f16168h;
    }

    @Override // r0.a, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.l;
    }

    @Override // r0.a, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f16172m;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f16163c;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return R.id.home;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // r0.a, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f16165e;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f16164d;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f16161a;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f16162b;
        return charSequence != null ? charSequence : this.f16161a;
    }

    @Override // r0.a, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f16171k;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f16175q & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f16175q & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f16175q & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f16175q & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c7) {
        this.f16166f = Character.toLowerCase(c7);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.f16175q = (z ? 1 : 0) | (this.f16175q & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.f16175q = (z ? 2 : 0) | (this.f16175q & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f16170j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f16175q = (z ? 16 : 0) | (this.f16175q & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f16168h = drawable;
        c();
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.l = colorStateList;
        this.f16173n = true;
        c();
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f16172m = mode;
        this.f16174p = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f16163c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c7) {
        this.f16164d = c7;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c7, char c10) {
        this.f16164d = c7;
        this.f16166f = Character.toLowerCase(c10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f16161a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f16162b = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f16171k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        this.f16175q = (this.f16175q & 8) | (z ? 0 : 8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // r0.a, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c7, int i10) {
        this.f16166f = Character.toLowerCase(c7);
        this.f16167g = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final r0.a setContentDescription(CharSequence charSequence) {
        this.f16170j = charSequence;
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c7, int i10) {
        this.f16164d = c7;
        this.f16165e = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i10) {
        this.f16161a = this.f16169i.getResources().getString(i10);
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final r0.a setTooltipText(CharSequence charSequence) {
        this.f16171k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i10) {
        this.f16168h = n0.g.e(this.f16169i, i10);
        c();
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final MenuItem setShortcut(char c7, char c10, int i10, int i11) {
        this.f16164d = c7;
        this.f16165e = KeyEvent.normalizeMetaState(i10);
        this.f16166f = Character.toLowerCase(c10);
        this.f16167g = KeyEvent.normalizeMetaState(i11);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i10) {
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i10) {
        return this;
    }
}
