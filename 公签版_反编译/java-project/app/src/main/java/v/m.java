package v;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import ua.i1;

/* loaded from: classes.dex */
public final class m implements r0.a {
    public int A;
    public View B;
    public n C;
    public MenuItem.OnActionExpandListener D;

    /* renamed from: a, reason: collision with root package name */
    public final int f16257a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16258b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16259c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16260d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f16261e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f16262f;

    /* renamed from: g, reason: collision with root package name */
    public Intent f16263g;

    /* renamed from: h, reason: collision with root package name */
    public char f16264h;

    /* renamed from: j, reason: collision with root package name */
    public char f16266j;
    public Drawable l;

    /* renamed from: n, reason: collision with root package name */
    public final k f16269n;

    /* renamed from: p, reason: collision with root package name */
    public d0 f16270p;

    /* renamed from: q, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f16271q;
    public CharSequence r;

    /* renamed from: s, reason: collision with root package name */
    public CharSequence f16272s;

    /* renamed from: i, reason: collision with root package name */
    public int f16265i = 4096;

    /* renamed from: k, reason: collision with root package name */
    public int f16267k = 4096;

    /* renamed from: m, reason: collision with root package name */
    public int f16268m = 0;

    /* renamed from: t, reason: collision with root package name */
    public ColorStateList f16273t = null;

    /* renamed from: v, reason: collision with root package name */
    public PorterDuff.Mode f16274v = null;

    /* renamed from: w, reason: collision with root package name */
    public boolean f16275w = false;

    /* renamed from: x, reason: collision with root package name */
    public boolean f16276x = false;

    /* renamed from: y, reason: collision with root package name */
    public boolean f16277y = false;
    public int z = 16;
    public boolean E = false;

    public m(k kVar, int i10, int i11, int i12, int i13, CharSequence charSequence, int i14) {
        this.f16269n = kVar;
        this.f16257a = i11;
        this.f16258b = i10;
        this.f16259c = i12;
        this.f16260d = i13;
        this.f16261e = charSequence;
        this.A = i14;
    }

    public static void c(int i10, int i11, String str, StringBuilder sb2) {
        if ((i10 & i11) == i11) {
            sb2.append(str);
        }
    }

    @Override // r0.a
    public final n a() {
        return this.C;
    }

    @Override // r0.a
    public final r0.a b(n nVar) {
        this.B = null;
        this.C = nVar;
        this.f16269n.p(true);
        n nVar2 = this.C;
        if (nVar2 != null) {
            nVar2.f16280c = new i1(27, this);
            nVar2.f16278a.setVisibilityListener(nVar2);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.A & 8) == 0) {
            return false;
        }
        if (this.B == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.D;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f16269n.d(this);
        }
        return false;
    }

    public final Drawable d(Drawable drawable) {
        if (drawable != null && this.f16277y && (this.f16275w || this.f16276x)) {
            drawable = com.bumptech.glide.c.n0(drawable).mutate();
            if (this.f16275w) {
                com.bumptech.glide.c.f0(drawable, this.f16273t);
            }
            if (this.f16276x) {
                com.bumptech.glide.c.g0(drawable, this.f16274v);
            }
            this.f16277y = false;
        }
        return drawable;
    }

    public final boolean e() {
        n nVar;
        if ((this.A & 8) == 0) {
            return false;
        }
        if (this.B == null && (nVar = this.C) != null) {
            this.B = nVar.a(this);
        }
        return this.B != null;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (!e()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.D;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f16269n.f(this);
        }
        return false;
    }

    public final boolean f() {
        return (this.z & 32) == 32;
    }

    public final void g(boolean z) {
        if (z) {
            this.z |= 32;
        } else {
            this.z &= -33;
        }
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.B;
        if (view != null) {
            return view;
        }
        n nVar = this.C;
        if (nVar == null) {
            return null;
        }
        View viewA = nVar.a(this);
        this.B = viewA;
        return viewA;
    }

    @Override // r0.a, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f16267k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f16266j;
    }

    @Override // r0.a, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.r;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f16258b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.l;
        if (drawable != null) {
            return d(drawable);
        }
        int i10 = this.f16268m;
        if (i10 == 0) {
            return null;
        }
        Drawable drawableX = com.bumptech.glide.d.x(this.f16269n.f16233a, i10);
        this.f16268m = 0;
        this.l = drawableX;
        return d(drawableX);
    }

    @Override // r0.a, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f16273t;
    }

    @Override // r0.a, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f16274v;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f16263g;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f16257a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // r0.a, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f16265i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f16264h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f16259c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f16270p;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f16261e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f16262f;
        if (charSequence == null) {
            charSequence = this.f16261e;
        }
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    @Override // r0.a, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f16272s;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f16270p != null;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.E;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.z & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.z & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.z & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        n nVar = this.C;
        return (nVar == null || !nVar.f16278a.overridesItemVisibility()) ? (this.z & 8) == 0 : (this.z & 8) == 0 && this.C.f16278a.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i10;
        this.B = view;
        this.C = null;
        if (view != null && view.getId() == -1 && (i10 = this.f16257a) > 0) {
            view.setId(i10);
        }
        k kVar = this.f16269n;
        kVar.f16243k = true;
        kVar.p(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c7) {
        if (this.f16266j == c7) {
            return this;
        }
        this.f16266j = Character.toLowerCase(c7);
        this.f16269n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        int i10 = this.z;
        int i11 = (z ? 1 : 0) | (i10 & (-2));
        this.z = i11;
        if (i10 != i11) {
            this.f16269n.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        int i10 = this.z;
        if ((i10 & 4) != 0) {
            k kVar = this.f16269n;
            kVar.getClass();
            ArrayList arrayList = kVar.f16238f;
            int size = arrayList.size();
            kVar.w();
            for (int i11 = 0; i11 < size; i11++) {
                m mVar = (m) arrayList.get(i11);
                if (mVar.f16258b == this.f16258b && (mVar.z & 4) != 0 && mVar.isCheckable()) {
                    boolean z4 = mVar == this;
                    int i12 = mVar.z;
                    int i13 = (z4 ? 2 : 0) | (i12 & (-3));
                    mVar.z = i13;
                    if (i12 != i13) {
                        mVar.f16269n.p(false);
                    }
                }
            }
            kVar.v();
        } else {
            int i14 = (i10 & (-3)) | (z ? 2 : 0);
            this.z = i14;
            if (i10 != i14) {
                this.f16269n.p(false);
            }
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        if (z) {
            this.z |= 16;
        } else {
            this.z &= -17;
        }
        this.f16269n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f16268m = 0;
        this.l = drawable;
        this.f16277y = true;
        this.f16269n.p(false);
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f16273t = colorStateList;
        this.f16275w = true;
        this.f16277y = true;
        this.f16269n.p(false);
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f16274v = mode;
        this.f16276x = true;
        this.f16277y = true;
        this.f16269n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f16263g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c7) {
        if (this.f16264h == c7) {
            return this;
        }
        this.f16264h = c7;
        this.f16269n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.D = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f16271q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c7, char c10) {
        this.f16264h = c7;
        this.f16266j = Character.toLowerCase(c10);
        this.f16269n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i10) {
        int i11 = i10 & 3;
        if (i11 != 0 && i11 != 1 && i11 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.A = i10;
        k kVar = this.f16269n;
        kVar.f16243k = true;
        kVar.p(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f16261e = charSequence;
        this.f16269n.p(false);
        d0 d0Var = this.f16270p;
        if (d0Var != null) {
            d0Var.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f16262f = charSequence;
        this.f16269n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        int i10 = this.z;
        int i11 = (z ? 0 : 8) | (i10 & (-9));
        this.z = i11;
        if (i10 != i11) {
            k kVar = this.f16269n;
            kVar.f16240h = true;
            kVar.p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f16261e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // r0.a, android.view.MenuItem
    public final r0.a setContentDescription(CharSequence charSequence) {
        this.r = charSequence;
        this.f16269n.p(false);
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final r0.a setTooltipText(CharSequence charSequence) {
        this.f16272s = charSequence;
        this.f16269n.p(false);
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c7, int i10) {
        if (this.f16266j == c7 && this.f16267k == i10) {
            return this;
        }
        this.f16266j = Character.toLowerCase(c7);
        this.f16267k = KeyEvent.normalizeMetaState(i10);
        this.f16269n.p(false);
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c7, int i10) {
        if (this.f16264h == c7 && this.f16265i == i10) {
            return this;
        }
        this.f16264h = c7;
        this.f16265i = KeyEvent.normalizeMetaState(i10);
        this.f16269n.p(false);
        return this;
    }

    @Override // r0.a, android.view.MenuItem
    public final MenuItem setShortcut(char c7, char c10, int i10, int i11) {
        this.f16264h = c7;
        this.f16265i = KeyEvent.normalizeMetaState(i10);
        this.f16266j = Character.toLowerCase(c10);
        this.f16267k = KeyEvent.normalizeMetaState(i11);
        this.f16269n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i10) {
        this.l = null;
        this.f16268m = i10;
        this.f16277y = true;
        this.f16269n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i10) {
        setTitle(this.f16269n.f16233a.getString(i10));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i10) {
        int i11;
        Context context = this.f16269n.f16233a;
        View viewInflate = LayoutInflater.from(context).inflate(i10, (ViewGroup) new LinearLayout(context), false);
        this.B = viewInflate;
        this.C = null;
        if (viewInflate != null && viewInflate.getId() == -1 && (i11 = this.f16257a) > 0) {
            viewInflate.setId(i11);
        }
        k kVar = this.f16269n;
        kVar.f16243k = true;
        kVar.p(true);
        return this;
    }
}
