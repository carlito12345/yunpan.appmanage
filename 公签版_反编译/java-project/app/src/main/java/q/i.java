package q;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.util.ArrayList;
import w.n3;
import w.s3;

/* loaded from: classes.dex */
public abstract class i extends androidx.fragment.app.j0 implements j {
    public a0 z;

    public i() {
        this.f807e.f2550b.c("androidx:appcompat", new b4.a(this));
        o(new h(this));
    }

    @Override // android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        s();
        a0 a0Var = (a0) r();
        a0Var.u();
        ((ViewGroup) a0Var.C.findViewById(R.id.content)).addView(view, layoutParams);
        a0Var.f12768m.a(a0Var.l.getCallback());
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        a0 a0Var = (a0) r();
        a0Var.S = true;
        int i10 = a0Var.Y;
        if (i10 == -100) {
            i10 = m.f12856b;
        }
        int iB = a0Var.B(context, i10);
        if (m.a(context) && m.a(context)) {
            if (!t0.b.a()) {
                synchronized (m.f12863i) {
                    try {
                        t0.j jVar = m.f12857c;
                        if (jVar == null) {
                            if (m.f12858d == null) {
                                m.f12858d = t0.j.c(a9.o.a0(context));
                            }
                            if (!m.f12858d.f14636a.isEmpty()) {
                                m.f12857c = m.f12858d;
                            }
                        } else if (!jVar.equals(m.f12858d)) {
                            t0.j jVar2 = m.f12857c;
                            m.f12858d = jVar2;
                            a9.o.Y(context, jVar2.f14636a.a());
                        }
                    } finally {
                    }
                }
            } else if (!m.f12860f) {
                m.f12855a.execute(new com.yunpan.appmanage.util.i(context, 1));
            }
        }
        t0.j jVarN = a0.n(context);
        Configuration configuration = null;
        if (a0.f12763c1 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(a0.r(context, iB, jVarN, null, false));
            } catch (IllegalStateException unused) {
            }
        } else if (context instanceof u.d) {
            try {
                ((u.d) context).a(a0.r(context, iB, jVarN, null, false));
            } catch (IllegalStateException unused2) {
            }
        } else if (a0.f12762b1) {
            int i11 = Build.VERSION.SDK_INT;
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = 0.0f;
            Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = new Configuration();
                configuration.fontScale = 0.0f;
                if (configuration3.diff(configuration4) != 0) {
                    float f10 = configuration3.fontScale;
                    float f11 = configuration4.fontScale;
                    if (f10 != f11) {
                        configuration.fontScale = f11;
                    }
                    int i12 = configuration3.mcc;
                    int i13 = configuration4.mcc;
                    if (i12 != i13) {
                        configuration.mcc = i13;
                    }
                    int i14 = configuration3.mnc;
                    int i15 = configuration4.mnc;
                    if (i14 != i15) {
                        configuration.mnc = i15;
                    }
                    if (i11 >= 24) {
                        u.a(configuration3, configuration4, configuration);
                    } else if (!qf.c.o(configuration3.locale, configuration4.locale)) {
                        configuration.locale = configuration4.locale;
                    }
                    int i16 = configuration3.touchscreen;
                    int i17 = configuration4.touchscreen;
                    if (i16 != i17) {
                        configuration.touchscreen = i17;
                    }
                    int i18 = configuration3.keyboard;
                    int i19 = configuration4.keyboard;
                    if (i18 != i19) {
                        configuration.keyboard = i19;
                    }
                    int i20 = configuration3.keyboardHidden;
                    int i21 = configuration4.keyboardHidden;
                    if (i20 != i21) {
                        configuration.keyboardHidden = i21;
                    }
                    int i22 = configuration3.navigation;
                    int i23 = configuration4.navigation;
                    if (i22 != i23) {
                        configuration.navigation = i23;
                    }
                    int i24 = configuration3.navigationHidden;
                    int i25 = configuration4.navigationHidden;
                    if (i24 != i25) {
                        configuration.navigationHidden = i25;
                    }
                    int i26 = configuration3.orientation;
                    int i27 = configuration4.orientation;
                    if (i26 != i27) {
                        configuration.orientation = i27;
                    }
                    int i28 = configuration3.screenLayout & 15;
                    int i29 = configuration4.screenLayout & 15;
                    if (i28 != i29) {
                        configuration.screenLayout |= i29;
                    }
                    int i30 = configuration3.screenLayout & 192;
                    int i31 = configuration4.screenLayout & 192;
                    if (i30 != i31) {
                        configuration.screenLayout |= i31;
                    }
                    int i32 = configuration3.screenLayout & 48;
                    int i33 = configuration4.screenLayout & 48;
                    if (i32 != i33) {
                        configuration.screenLayout |= i33;
                    }
                    int i34 = configuration3.screenLayout & 768;
                    int i35 = configuration4.screenLayout & 768;
                    if (i34 != i35) {
                        configuration.screenLayout |= i35;
                    }
                    if (i11 >= 26) {
                        if ((configuration3.colorMode & 3) != (configuration4.colorMode & 3)) {
                            configuration.colorMode |= configuration4.colorMode & 3;
                        }
                        if ((configuration3.colorMode & 12) != (configuration4.colorMode & 12)) {
                            configuration.colorMode |= configuration4.colorMode & 12;
                        }
                    }
                    int i36 = configuration3.uiMode & 15;
                    int i37 = configuration4.uiMode & 15;
                    if (i36 != i37) {
                        configuration.uiMode |= i37;
                    }
                    int i38 = configuration3.uiMode & 48;
                    int i39 = configuration4.uiMode & 48;
                    if (i38 != i39) {
                        configuration.uiMode |= i39;
                    }
                    int i40 = configuration3.screenWidthDp;
                    int i41 = configuration4.screenWidthDp;
                    if (i40 != i41) {
                        configuration.screenWidthDp = i41;
                    }
                    int i42 = configuration3.screenHeightDp;
                    int i43 = configuration4.screenHeightDp;
                    if (i42 != i43) {
                        configuration.screenHeightDp = i43;
                    }
                    int i44 = configuration3.smallestScreenWidthDp;
                    int i45 = configuration4.smallestScreenWidthDp;
                    if (i44 != i45) {
                        configuration.smallestScreenWidthDp = i45;
                    }
                    int i46 = configuration3.densityDpi;
                    int i47 = configuration4.densityDpi;
                    if (i46 != i47) {
                        configuration.densityDpi = i47;
                    }
                }
            }
            Configuration configurationR = a0.r(context, iB, jVarN, configuration, true);
            u.d dVar = new u.d(context, com.yunpan.appmanage.R.style.Theme_AppCompat_Empty);
            dVar.a(configurationR);
            try {
                if (context.getTheme() != null) {
                    o0.b.l(dVar.getTheme());
                }
            } catch (NullPointerException unused3) {
            }
            context = dVar;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        ((a0) r()).z();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    @Override // m0.k, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        ((a0) r()).z();
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final View findViewById(int i10) {
        a0 a0Var = (a0) r();
        a0Var.u();
        return a0Var.l.findViewById(i10);
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        a0 a0Var = (a0) r();
        if (a0Var.f12771q == null) {
            a0Var.z();
            m0 m0Var = a0Var.f12770p;
            a0Var.f12771q = new u.i(m0Var != null ? m0Var.l0() : a0Var.f12767k);
        }
        return a0Var.f12771q;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        int i10 = s3.f17257b;
        return super.getResources();
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        a0 a0Var = (a0) r();
        if (a0Var.f12770p != null) {
            a0Var.z();
            a0Var.f12770p.getClass();
            a0Var.A(0);
        }
    }

    @Override // androidx.activity.m, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a0 a0Var = (a0) r();
        if (a0Var.H && a0Var.B) {
            a0Var.z();
            m0 m0Var = a0Var.f12770p;
            if (m0Var != null) {
                m0Var.o0(m0Var.f12864b.getResources().getBoolean(com.yunpan.appmanage.R.bool.abc_action_bar_embed_tabs));
            }
        }
        w.s sVarA = w.s.a();
        Context context = a0Var.f12767k;
        synchronized (sVarA) {
            sVarA.f17251a.l(context);
        }
        a0Var.X = new Configuration(a0Var.f12767k.getResources().getConfiguration());
        a0Var.l(false, false);
    }

    @Override // androidx.fragment.app.j0, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        r().c();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return super.onKeyDown(i10, keyEvent);
        }
        return true;
    }

    @Override // androidx.fragment.app.j0, androidx.activity.m, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        Intent intentC;
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        a0 a0Var = (a0) r();
        a0Var.z();
        m0 m0Var = a0Var.f12770p;
        if (menuItem.getItemId() != 16908332 || m0Var == null || (((n3) m0Var.f12868f).f17163b & 4) == 0 || (intentC = m0.c0.c(this)) == null) {
            return false;
        }
        if (!m0.m.c(this, intentC)) {
            m0.m.b(this, intentC);
            return true;
        }
        ArrayList arrayList = new ArrayList();
        Intent intentC2 = m0.c0.c(this);
        if (intentC2 == null) {
            intentC2 = m0.c0.c(this);
        }
        if (intentC2 != null) {
            ComponentName component = intentC2.getComponent();
            if (component == null) {
                component = intentC2.resolveActivity(getPackageManager());
            }
            int size = arrayList.size();
            try {
                Intent intentD = m0.c0.d(this, component);
                while (intentD != null) {
                    arrayList.add(size, intentD);
                    intentD = m0.c0.d(this, intentD.getComponent());
                }
                arrayList.add(intentC2);
            } catch (PackageManager.NameNotFoundException e7) {
                throw new IllegalArgumentException(e7);
            }
        }
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        n0.a.a(this, intentArr, null);
        try {
            m0.a.a(this);
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((a0) r()).u();
    }

    @Override // androidx.fragment.app.j0, android.app.Activity
    public final void onPostResume() {
        super.onPostResume();
        a0 a0Var = (a0) r();
        a0Var.z();
        m0 m0Var = a0Var.f12770p;
        if (m0Var != null) {
            m0Var.f12881u = true;
        }
    }

    @Override // androidx.fragment.app.j0, android.app.Activity
    public final void onStart() {
        super.onStart();
        ((a0) r()).l(true, false);
    }

    @Override // androidx.fragment.app.j0, android.app.Activity
    public void onStop() {
        super.onStop();
        a0 a0Var = (a0) r();
        a0Var.z();
        m0 m0Var = a0Var.f12770p;
        if (m0Var != null) {
            m0Var.f12881u = false;
            u.k kVar = m0Var.f12880t;
            if (kVar != null) {
                kVar.a();
            }
        }
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i10) {
        super.onTitleChanged(charSequence, i10);
        r().k(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        ((a0) r()).z();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    public final m r() {
        if (this.z == null) {
            g0 g0Var = m.f12855a;
            this.z = new a0(this, null, this, this);
        }
        return this.z;
    }

    public final void s() {
        androidx.lifecycle.l0.h(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        ue.d.e(decorView, "<this>");
        decorView.setTag(com.yunpan.appmanage.R.id.view_tree_view_model_store_owner, this);
        nh.b.j0(getWindow().getDecorView(), this);
        View decorView2 = getWindow().getDecorView();
        ue.d.e(decorView2, "<this>");
        decorView2.setTag(com.yunpan.appmanage.R.id.view_tree_on_back_pressed_dispatcher_owner, this);
    }

    @Override // android.app.Activity
    public final void setContentView(int i10) {
        s();
        r().h(i10);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i10) {
        super.setTheme(i10);
        ((a0) r()).Z = i10;
    }

    @Override // androidx.activity.m, android.app.Activity
    public void setContentView(View view) {
        s();
        r().i(view);
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        s();
        r().j(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }
}
