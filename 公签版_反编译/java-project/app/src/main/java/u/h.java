package u;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import v.r;

/* loaded from: classes.dex */
public final class h {
    public CharSequence A;
    public CharSequence B;
    public final /* synthetic */ i E;

    /* renamed from: a, reason: collision with root package name */
    public final Menu f15122a;

    /* renamed from: h, reason: collision with root package name */
    public boolean f15129h;

    /* renamed from: i, reason: collision with root package name */
    public int f15130i;

    /* renamed from: j, reason: collision with root package name */
    public int f15131j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f15132k;
    public CharSequence l;

    /* renamed from: m, reason: collision with root package name */
    public int f15133m;

    /* renamed from: n, reason: collision with root package name */
    public char f15134n;

    /* renamed from: o, reason: collision with root package name */
    public int f15135o;

    /* renamed from: p, reason: collision with root package name */
    public char f15136p;

    /* renamed from: q, reason: collision with root package name */
    public int f15137q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f15138s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f15139t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f15140u;

    /* renamed from: v, reason: collision with root package name */
    public int f15141v;

    /* renamed from: w, reason: collision with root package name */
    public int f15142w;

    /* renamed from: x, reason: collision with root package name */
    public String f15143x;

    /* renamed from: y, reason: collision with root package name */
    public String f15144y;
    public v.n z;
    public ColorStateList C = null;
    public PorterDuff.Mode D = null;

    /* renamed from: b, reason: collision with root package name */
    public int f15123b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f15124c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f15125d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f15126e = 0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f15127f = true;

    /* renamed from: g, reason: collision with root package name */
    public boolean f15128g = true;

    public h(i iVar, Menu menu) {
        this.E = iVar;
        this.f15122a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) throws NoSuchMethodException, SecurityException {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.E.f15149c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public final void b(MenuItem menuItem) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z = false;
        menuItem.setChecked(this.f15138s).setVisible(this.f15139t).setEnabled(this.f15140u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.f15133m);
        int i10 = this.f15141v;
        if (i10 >= 0) {
            menuItem.setShowAsAction(i10);
        }
        String str = this.f15144y;
        i iVar = this.E;
        if (str != null) {
            if (iVar.f15149c.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (iVar.f15150d == null) {
                iVar.f15150d = i.a(iVar.f15149c);
            }
            menuItem.setOnMenuItemClickListener(new g(iVar.f15150d, this.f15144y));
        }
        if (this.r >= 2) {
            if (menuItem instanceof v.m) {
                v.m mVar = (v.m) menuItem;
                mVar.z = (mVar.z & (-5)) | 4;
            } else if (menuItem instanceof r) {
                r rVar = (r) menuItem;
                try {
                    Method method = rVar.f16287d;
                    r0.a aVar = rVar.f16286c;
                    if (method == null) {
                        rVar.f16287d = aVar.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    rVar.f16287d.invoke(aVar, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
        String str2 = this.f15143x;
        if (str2 != null) {
            menuItem.setActionView((View) a(str2, i.f15145e, iVar.f15147a));
            z = true;
        }
        int i11 = this.f15142w;
        if (i11 > 0 && !z) {
            menuItem.setActionView(i11);
        }
        v.n nVar = this.z;
        if (nVar != null && (menuItem instanceof r0.a)) {
            ((r0.a) menuItem).b(nVar);
        }
        CharSequence charSequence = this.A;
        boolean z4 = menuItem instanceof r0.a;
        if (z4) {
            ((r0.a) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            x0.r.h(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.B;
        if (z4) {
            ((r0.a) menuItem).setTooltipText(charSequence2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            x0.r.m(menuItem, charSequence2);
        }
        char c7 = this.f15134n;
        int i12 = this.f15135o;
        if (z4) {
            ((r0.a) menuItem).setAlphabeticShortcut(c7, i12);
        } else if (Build.VERSION.SDK_INT >= 26) {
            x0.r.g(menuItem, c7, i12);
        }
        char c10 = this.f15136p;
        int i13 = this.f15137q;
        if (z4) {
            ((r0.a) menuItem).setNumericShortcut(c10, i13);
        } else if (Build.VERSION.SDK_INT >= 26) {
            x0.r.k(menuItem, c10, i13);
        }
        PorterDuff.Mode mode = this.D;
        if (mode != null) {
            if (z4) {
                ((r0.a) menuItem).setIconTintMode(mode);
            } else if (Build.VERSION.SDK_INT >= 26) {
                x0.r.j(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.C;
        if (colorStateList != null) {
            if (z4) {
                ((r0.a) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                x0.r.i(menuItem, colorStateList);
            }
        }
    }
}
