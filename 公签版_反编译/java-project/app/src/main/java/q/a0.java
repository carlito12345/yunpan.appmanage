package q;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.view.menu.ExpandedMenuView;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import org.simpleframework.xml.strategy.Name;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import w.i3;
import w.j1;
import w.l1;
import w.m1;
import w.n3;
import w.q0;
import w.s3;
import w.u3;
import w.v1;
import x0.b1;
import x0.j2;

/* loaded from: classes.dex */
public final class a0 extends m implements v.i, LayoutInflater.Factory2 {
    public static final a0.t Y0 = new a0.t(0);
    public static final boolean Z0;

    /* renamed from: a1, reason: collision with root package name */
    public static final int[] f12761a1;

    /* renamed from: b1, reason: collision with root package name */
    public static final boolean f12762b1;

    /* renamed from: c1, reason: collision with root package name */
    public static final boolean f12763c1;

    /* renamed from: d1, reason: collision with root package name */
    public static final boolean f12764d1;
    public boolean B;
    public ViewGroup C;
    public TextView D;
    public View E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean K;
    public boolean L;
    public boolean M;
    public x M0;
    public boolean N;
    public x N0;
    public z[] O;
    public boolean O0;
    public z P;
    public int P0;
    public boolean R;
    public boolean R0;
    public boolean S;
    public Rect S0;
    public boolean T;
    public Rect T0;
    public d0 U0;
    public boolean V;
    public j5.c V0;
    public OnBackInvokedDispatcher W0;
    public Configuration X;
    public OnBackInvokedCallback X0;
    public final int Y;
    public int Z;

    /* renamed from: h0, reason: collision with root package name */
    public int f12765h0;

    /* renamed from: j, reason: collision with root package name */
    public final Object f12766j;

    /* renamed from: k, reason: collision with root package name */
    public final Context f12767k;
    public Window l;

    /* renamed from: m, reason: collision with root package name */
    public w f12768m;

    /* renamed from: n, reason: collision with root package name */
    public final Object f12769n;

    /* renamed from: p, reason: collision with root package name */
    public m0 f12770p;

    /* renamed from: q, reason: collision with root package name */
    public u.i f12771q;
    public CharSequence r;

    /* renamed from: s, reason: collision with root package name */
    public l1 f12772s;

    /* renamed from: t, reason: collision with root package name */
    public p f12773t;

    /* renamed from: t0, reason: collision with root package name */
    public boolean f12774t0;

    /* renamed from: v, reason: collision with root package name */
    public p f12775v;

    /* renamed from: w, reason: collision with root package name */
    public u.a f12776w;

    /* renamed from: x, reason: collision with root package name */
    public ActionBarContextView f12777x;

    /* renamed from: y, reason: collision with root package name */
    public PopupWindow f12778y;
    public o z;
    public x0.l1 A = null;
    public final o Q0 = new o(this, 0);

    static {
        boolean z = Build.VERSION.SDK_INT < 21;
        Z0 = z;
        f12761a1 = new int[]{R.attr.windowBackground};
        f12762b1 = !"robolectric".equals(Build.FINGERPRINT);
        f12763c1 = true;
        if (!z || f12764d1) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new n(Thread.getDefaultUncaughtExceptionHandler()));
        f12764d1 = true;
    }

    public a0(Context context, Window window, j jVar, Object obj) {
        i iVar = null;
        this.Y = -100;
        this.f12767k = context;
        this.f12766j = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (!(context instanceof i)) {
                        if (!(context instanceof ContextWrapper)) {
                            break;
                        } else {
                            context = ((ContextWrapper) context).getBaseContext();
                        }
                    } else {
                        iVar = (i) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (iVar != null) {
                this.Y = ((a0) iVar.r()).Y;
            }
        }
        if (this.Y == -100) {
            a0.t tVar = Y0;
            Integer num = (Integer) tVar.get(this.f12766j.getClass().getName());
            if (num != null) {
                this.Y = num.intValue();
                tVar.remove(this.f12766j.getClass().getName());
            }
        }
        if (window != null) {
            m(window);
        }
        w.s.d();
    }

    public static t0.j n(Context context) {
        t0.j jVar;
        t0.j jVarC;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33 || (jVar = m.f12857c) == null) {
            return null;
        }
        t0.j jVarX = x(context.getApplicationContext().getResources().getConfiguration());
        t0.l lVar = jVar.f14636a;
        int i11 = 0;
        if (i10 < 24) {
            jVarC = lVar.isEmpty() ? t0.j.f14635b : t0.j.c(lVar.get(0).toString());
        } else if (lVar.isEmpty()) {
            jVarC = t0.j.f14635b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (i11 < jVarX.f14636a.size() + lVar.size()) {
                Locale locale = i11 < lVar.size() ? lVar.get(i11) : jVarX.f14636a.get(i11 - lVar.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i11++;
            }
            jVarC = t0.j.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
        }
        return jVarC.f14636a.isEmpty() ? jVarX : jVarC;
    }

    public static Configuration r(Context context, int i10, t0.j jVar, Configuration configuration, boolean z) {
        int i11 = i10 != 1 ? i10 != 2 ? z ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i11 | (configuration2.uiMode & (-49));
        if (jVar != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                u.d(configuration2, jVar);
            } else {
                t0.l lVar = jVar.f14636a;
                r.b(configuration2, lVar.get(0));
                r.a(configuration2, lVar.get(0));
            }
        }
        return configuration2;
    }

    public static t0.j x(Configuration configuration) {
        int i10 = Build.VERSION.SDK_INT;
        return i10 >= 24 ? u.b(configuration) : i10 >= 21 ? t0.j.c(s.a(configuration.locale)) : t0.j.a(configuration.locale);
    }

    public final void A(int i10) {
        this.P0 = (1 << i10) | this.P0;
        if (this.O0) {
            return;
        }
        View decorView = this.l.getDecorView();
        o oVar = this.Q0;
        WeakHashMap weakHashMap = b1.f17953a;
        x0.j0.m(decorView, oVar);
        this.O0 = true;
    }

    public final int B(Context context, int i10) {
        if (i10 == -100) {
            return -1;
        }
        if (i10 != -1) {
            if (i10 == 0) {
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return w(context).e();
                }
                return -1;
            }
            if (i10 != 1 && i10 != 2) {
                if (i10 != 3) {
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
                if (this.N0 == null) {
                    this.N0 = new x(this, context);
                }
                return this.N0.e();
            }
        }
        return i10;
    }

    public final boolean C() {
        m1 m1Var;
        i3 i3Var;
        boolean z = this.R;
        this.R = false;
        z zVarY = y(0);
        if (zVarY.f12913m) {
            if (!z) {
                q(zVarY, true);
            }
            return true;
        }
        u.a aVar = this.f12776w;
        if (aVar != null) {
            aVar.a();
            return true;
        }
        z();
        m0 m0Var = this.f12770p;
        if (m0Var == null || (m1Var = m0Var.f12868f) == null || (i3Var = ((n3) m1Var).f17162a.O) == null || i3Var.f17106b == null) {
            return false;
        }
        i3 i3Var2 = ((n3) m1Var).f17162a.O;
        v.m mVar = i3Var2 == null ? null : i3Var2.f17106b;
        if (mVar != null) {
            mVar.collapseActionView();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0173, code lost:
    
        if (r3.f16226f.getCount() > 0) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void D(z zVar, KeyEvent keyEvent) {
        int i10;
        ViewGroup.LayoutParams layoutParams;
        if (zVar.f12913m || this.V) {
            return;
        }
        int i11 = zVar.f12902a;
        Context context = this.f12767k;
        if (i11 == 0 && (context.getResources().getConfiguration().screenLayout & 15) == 4) {
            return;
        }
        Window.Callback callback = this.l.getCallback();
        if (callback != null && !callback.onMenuOpened(i11, zVar.f12909h)) {
            q(zVar, true);
            return;
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null || !F(zVar, keyEvent)) {
            return;
        }
        y yVar = zVar.f12906e;
        if (yVar != null && !zVar.f12914n) {
            View view = zVar.f12908g;
            if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                i10 = -1;
            }
            zVar.l = false;
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i10, -2, 0, 0, 1002, 8519680, -3);
            layoutParams2.gravity = zVar.f12904c;
            layoutParams2.windowAnimations = zVar.f12905d;
            windowManager.addView(zVar.f12906e, layoutParams2);
            zVar.f12913m = true;
            if (i11 != 0) {
                H();
                return;
            }
            return;
        }
        if (yVar == null) {
            z();
            m0 m0Var = this.f12770p;
            Context contextL0 = m0Var != null ? m0Var.l0() : null;
            if (contextL0 != null) {
                context = contextL0;
            }
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(com.yunpan.appmanage.R.attr.actionBarPopupTheme, typedValue, true);
            int i12 = typedValue.resourceId;
            if (i12 != 0) {
                themeNewTheme.applyStyle(i12, true);
            }
            themeNewTheme.resolveAttribute(com.yunpan.appmanage.R.attr.panelMenuListTheme, typedValue, true);
            int i13 = typedValue.resourceId;
            if (i13 != 0) {
                themeNewTheme.applyStyle(i13, true);
            } else {
                themeNewTheme.applyStyle(com.yunpan.appmanage.R.style.Theme_AppCompat_CompactMenu, true);
            }
            u.d dVar = new u.d(context, 0);
            dVar.getTheme().setTo(themeNewTheme);
            zVar.f12911j = dVar;
            TypedArray typedArrayObtainStyledAttributes = dVar.obtainStyledAttributes(p.a.f12524j);
            zVar.f12903b = typedArrayObtainStyledAttributes.getResourceId(86, 0);
            zVar.f12905d = typedArrayObtainStyledAttributes.getResourceId(1, 0);
            typedArrayObtainStyledAttributes.recycle();
            zVar.f12906e = new y(this, zVar.f12911j);
            zVar.f12904c = 81;
        } else if (zVar.f12914n && yVar.getChildCount() > 0) {
            zVar.f12906e.removeAllViews();
        }
        View view2 = zVar.f12908g;
        if (view2 == null) {
            if (zVar.f12909h != null) {
                if (this.f12775v == null) {
                    this.f12775v = new p(this, 4);
                }
                p pVar = this.f12775v;
                if (zVar.f12910i == null) {
                    v.g gVar = new v.g(zVar.f12911j);
                    zVar.f12910i = gVar;
                    gVar.f16225e = pVar;
                    v.k kVar = zVar.f12909h;
                    kVar.b(gVar, kVar.f16233a);
                }
                v.g gVar2 = zVar.f12910i;
                y yVar2 = zVar.f12906e;
                if (gVar2.f16224d == null) {
                    gVar2.f16224d = (ExpandedMenuView) gVar2.f16222b.inflate(com.yunpan.appmanage.R.layout.abc_expanded_menu_layout, (ViewGroup) yVar2, false);
                    if (gVar2.f16226f == null) {
                        gVar2.f16226f = new v.f(gVar2);
                    }
                    gVar2.f16224d.setAdapter((ListAdapter) gVar2.f16226f);
                    gVar2.f16224d.setOnItemClickListener(gVar2);
                }
                ExpandedMenuView expandedMenuView = gVar2.f16224d;
                zVar.f12907f = expandedMenuView;
                if (expandedMenuView != null) {
                }
            }
            zVar.f12914n = true;
            return;
        }
        zVar.f12907f = view2;
        if (zVar.f12907f != null) {
            if (zVar.f12908g == null) {
                v.g gVar3 = zVar.f12910i;
                if (gVar3.f16226f == null) {
                    gVar3.f16226f = new v.f(gVar3);
                }
            }
            ViewGroup.LayoutParams layoutParams3 = zVar.f12907f.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            zVar.f12906e.setBackgroundResource(zVar.f12903b);
            ViewParent parent = zVar.f12907f.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(zVar.f12907f);
            }
            zVar.f12906e.addView(zVar.f12907f, layoutParams3);
            if (!zVar.f12907f.hasFocus()) {
                zVar.f12907f.requestFocus();
            }
        }
        zVar.f12914n = true;
        return;
        i10 = -2;
        zVar.l = false;
        WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i10, -2, 0, 0, 1002, 8519680, -3);
        layoutParams22.gravity = zVar.f12904c;
        layoutParams22.windowAnimations = zVar.f12905d;
        windowManager.addView(zVar.f12906e, layoutParams22);
        zVar.f12913m = true;
        if (i11 != 0) {
        }
    }

    public final boolean E(z zVar, int i10, KeyEvent keyEvent) {
        v.k kVar;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((zVar.f12912k || F(zVar, keyEvent)) && (kVar = zVar.f12909h) != null) {
            return kVar.performShortcut(i10, keyEvent, 1);
        }
        return false;
    }

    public final boolean F(z zVar, KeyEvent keyEvent) {
        l1 l1Var;
        l1 l1Var2;
        Resources.Theme themeNewTheme;
        l1 l1Var3;
        l1 l1Var4;
        if (this.V) {
            return false;
        }
        if (zVar.f12912k) {
            return true;
        }
        z zVar2 = this.P;
        if (zVar2 != null && zVar2 != zVar) {
            q(zVar2, false);
        }
        Window.Callback callback = this.l.getCallback();
        int i10 = zVar.f12902a;
        if (callback != null) {
            zVar.f12908g = callback.onCreatePanelView(i10);
        }
        boolean z = i10 == 0 || i10 == 108;
        if (z && (l1Var4 = this.f12772s) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) l1Var4;
            actionBarOverlayLayout.k();
            ((n3) actionBarOverlayLayout.f934e).l = true;
        }
        if (zVar.f12908g == null) {
            v.k kVar = zVar.f12909h;
            if (kVar == null || zVar.f12915o) {
                if (kVar == null) {
                    Context context = this.f12767k;
                    if ((i10 == 0 || i10 == 108) && this.f12772s != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = context.getTheme();
                        theme.resolveAttribute(com.yunpan.appmanage.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            themeNewTheme = context.getResources().newTheme();
                            themeNewTheme.setTo(theme);
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                            themeNewTheme.resolveAttribute(com.yunpan.appmanage.R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme.resolveAttribute(com.yunpan.appmanage.R.attr.actionBarWidgetTheme, typedValue, true);
                            themeNewTheme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (themeNewTheme == null) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                            }
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                        }
                        if (themeNewTheme != null) {
                            u.d dVar = new u.d(context, 0);
                            dVar.getTheme().setTo(themeNewTheme);
                            context = dVar;
                        }
                    }
                    v.k kVar2 = new v.k(context);
                    kVar2.f16237e = this;
                    v.k kVar3 = zVar.f12909h;
                    if (kVar2 != kVar3) {
                        if (kVar3 != null) {
                            kVar3.r(zVar.f12910i);
                        }
                        zVar.f12909h = kVar2;
                        v.g gVar = zVar.f12910i;
                        if (gVar != null) {
                            kVar2.b(gVar, kVar2.f16233a);
                        }
                    }
                    if (zVar.f12909h == null) {
                        return false;
                    }
                }
                if (z && (l1Var2 = this.f12772s) != null) {
                    if (this.f12773t == null) {
                        this.f12773t = new p(this, 3);
                    }
                    ((ActionBarOverlayLayout) l1Var2).l(zVar.f12909h, this.f12773t);
                }
                zVar.f12909h.w();
                if (!callback.onCreatePanelMenu(i10, zVar.f12909h)) {
                    v.k kVar4 = zVar.f12909h;
                    if (kVar4 != null) {
                        if (kVar4 != null) {
                            kVar4.r(zVar.f12910i);
                        }
                        zVar.f12909h = null;
                    }
                    if (z && (l1Var = this.f12772s) != null) {
                        ((ActionBarOverlayLayout) l1Var).l(null, this.f12773t);
                    }
                    return false;
                }
                zVar.f12915o = false;
            }
            zVar.f12909h.w();
            Bundle bundle = zVar.f12916p;
            if (bundle != null) {
                zVar.f12909h.s(bundle);
                zVar.f12916p = null;
            }
            if (!callback.onPreparePanel(0, zVar.f12908g, zVar.f12909h)) {
                if (z && (l1Var3 = this.f12772s) != null) {
                    ((ActionBarOverlayLayout) l1Var3).l(null, this.f12773t);
                }
                zVar.f12909h.v();
                return false;
            }
            zVar.f12909h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            zVar.f12909h.v();
        }
        zVar.f12912k = true;
        zVar.l = false;
        this.P = zVar;
        return true;
    }

    public final void G() {
        if (this.B) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void H() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.W0 != null && (y(0).f12913m || this.f12776w != null)) {
                z = true;
            }
            if (z && this.X0 == null) {
                this.X0 = v.b(this.W0, this);
            } else {
                if (z || (onBackInvokedCallback = this.X0) == null) {
                    return;
                }
                v.c(this.W0, onBackInvokedCallback);
            }
        }
    }

    public final int I(j2 j2Var, Rect rect) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z;
        boolean z4;
        int iD = j2Var != null ? j2Var.d() : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.f12777x;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f12777x.getLayoutParams();
            if (this.f12777x.isShown()) {
                if (this.S0 == null) {
                    this.S0 = new Rect();
                    this.T0 = new Rect();
                }
                Rect rect2 = this.S0;
                Rect rect3 = this.T0;
                if (j2Var == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(j2Var.b(), j2Var.d(), j2Var.c(), j2Var.a());
                }
                ViewGroup viewGroup = this.C;
                Method method = u3.f17278a;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect2, rect3);
                    } catch (Exception unused) {
                    }
                }
                int i10 = rect2.top;
                int i11 = rect2.left;
                int i12 = rect2.right;
                j2 j2VarJ = b1.j(this.C);
                int iB = j2VarJ == null ? 0 : j2VarJ.b();
                int iC = j2VarJ == null ? 0 : j2VarJ.c();
                if (marginLayoutParams.topMargin == i10 && marginLayoutParams.leftMargin == i11 && marginLayoutParams.rightMargin == i12) {
                    z4 = false;
                } else {
                    marginLayoutParams.topMargin = i10;
                    marginLayoutParams.leftMargin = i11;
                    marginLayoutParams.rightMargin = i12;
                    z4 = true;
                }
                Context context = this.f12767k;
                if (i10 <= 0 || this.E != null) {
                    View view = this.E;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i13 = marginLayoutParams2.height;
                        int i14 = marginLayoutParams.topMargin;
                        if (i13 != i14 || marginLayoutParams2.leftMargin != iB || marginLayoutParams2.rightMargin != iC) {
                            marginLayoutParams2.height = i14;
                            marginLayoutParams2.leftMargin = iB;
                            marginLayoutParams2.rightMargin = iC;
                            this.E.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(context);
                    this.E = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iB;
                    layoutParams.rightMargin = iC;
                    this.C.addView(this.E, -1, layoutParams);
                }
                View view3 = this.E;
                z = view3 != null;
                if (z && view3.getVisibility() != 0) {
                    View view4 = this.E;
                    view4.setBackgroundColor((x0.j0.g(view4) & 8192) != 0 ? n0.g.c(context, com.yunpan.appmanage.R.color.abc_decor_view_status_guard_light) : n0.g.c(context, com.yunpan.appmanage.R.color.abc_decor_view_status_guard));
                }
                if (!this.K && z) {
                    iD = 0;
                }
                z = z;
                z = z4;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                z = false;
            }
            if (z) {
                this.f12777x.setLayoutParams(marginLayoutParams);
            }
        }
        View view5 = this.E;
        if (view5 != null) {
            view5.setVisibility(z ? 0 : 8);
        }
        return iD;
    }

    @Override // q.m
    public final void b() {
        String strE;
        this.S = true;
        l(false, true);
        v();
        Object obj = this.f12766j;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    strE = m0.c0.e(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e7) {
                    throw new IllegalArgumentException(e7);
                }
            } catch (IllegalArgumentException unused) {
                strE = null;
            }
            if (strE != null) {
                m0 m0Var = this.f12770p;
                if (m0Var == null) {
                    this.R0 = true;
                } else {
                    m0Var.n0(true);
                }
            }
            synchronized (m.f12862h) {
                m.d(this);
                m.f12861g.add(new WeakReference(this));
            }
        }
        this.X = new Configuration(this.f12767k.getResources().getConfiguration());
        this.T = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // q.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c() {
        if (this.f12766j instanceof Activity) {
            synchronized (m.f12862h) {
                m.d(this);
            }
        }
        if (this.O0) {
            this.l.getDecorView().removeCallbacks(this.Q0);
        }
        this.V = true;
        if (this.Y != -100) {
            Object obj = this.f12766j;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                Y0.put(this.f12766j.getClass().getName(), Integer.valueOf(this.Y));
            } else {
                Y0.remove(this.f12766j.getClass().getName());
            }
        }
        x xVar = this.M0;
        if (xVar != null) {
            xVar.c();
        }
        x xVar2 = this.N0;
        if (xVar2 != null) {
            xVar2.c();
        }
    }

    @Override // v.i
    public final boolean e(v.k kVar, MenuItem menuItem) {
        z zVar;
        Window.Callback callback = this.l.getCallback();
        if (callback != null && !this.V) {
            v.k kVarK = kVar.k();
            z[] zVarArr = this.O;
            int length = zVarArr != null ? zVarArr.length : 0;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    zVar = zVarArr[i10];
                    if (zVar != null && zVar.f12909h == kVarK) {
                        break;
                    }
                    i10++;
                } else {
                    zVar = null;
                    break;
                }
            }
            if (zVar != null) {
                return callback.onMenuItemSelected(zVar.f12902a, menuItem);
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r6.k() != false) goto L20;
     */
    @Override // v.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f(v.k kVar) {
        ActionMenuView actionMenuView;
        w.j jVar;
        w.j jVar2;
        w.j jVar3;
        l1 l1Var = this.f12772s;
        if (l1Var != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) l1Var;
            actionBarOverlayLayout.k();
            Toolbar toolbar = ((n3) actionBarOverlayLayout.f934e).f17162a;
            if (toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f986a) != null && actionMenuView.f953t) {
                if (ViewConfiguration.get(this.f12767k).hasPermanentMenuKey()) {
                    ActionBarOverlayLayout actionBarOverlayLayout2 = (ActionBarOverlayLayout) this.f12772s;
                    actionBarOverlayLayout2.k();
                    ActionMenuView actionMenuView2 = ((n3) actionBarOverlayLayout2.f934e).f17162a.f986a;
                    if (actionMenuView2 != null) {
                        w.j jVar4 = actionMenuView2.f954v;
                        if (jVar4 != null) {
                            if (jVar4.f17126w == null) {
                            }
                        }
                    }
                }
                Window.Callback callback = this.l.getCallback();
                ActionBarOverlayLayout actionBarOverlayLayout3 = (ActionBarOverlayLayout) this.f12772s;
                actionBarOverlayLayout3.k();
                ActionMenuView actionMenuView3 = ((n3) actionBarOverlayLayout3.f934e).f17162a.f986a;
                if ((actionMenuView3 == null || (jVar3 = actionMenuView3.f954v) == null || !jVar3.k()) ? false : true) {
                    ActionBarOverlayLayout actionBarOverlayLayout4 = (ActionBarOverlayLayout) this.f12772s;
                    actionBarOverlayLayout4.k();
                    ActionMenuView actionMenuView4 = ((n3) actionBarOverlayLayout4.f934e).f17162a.f986a;
                    if (actionMenuView4 != null && (jVar2 = actionMenuView4.f954v) != null) {
                        jVar2.h();
                    }
                    if (this.V) {
                        return;
                    }
                    callback.onPanelClosed(108, y(0).f12909h);
                    return;
                }
                if (callback == null || this.V) {
                    return;
                }
                if (this.O0 && (1 & this.P0) != 0) {
                    View decorView = this.l.getDecorView();
                    o oVar = this.Q0;
                    decorView.removeCallbacks(oVar);
                    oVar.run();
                }
                z zVarY = y(0);
                v.k kVar2 = zVarY.f12909h;
                if (kVar2 == null || zVarY.f12915o || !callback.onPreparePanel(0, zVarY.f12908g, kVar2)) {
                    return;
                }
                callback.onMenuOpened(108, zVarY.f12909h);
                ActionBarOverlayLayout actionBarOverlayLayout5 = (ActionBarOverlayLayout) this.f12772s;
                actionBarOverlayLayout5.k();
                ActionMenuView actionMenuView5 = ((n3) actionBarOverlayLayout5.f934e).f17162a.f986a;
                if (actionMenuView5 == null || (jVar = actionMenuView5.f954v) == null) {
                    return;
                }
                jVar.l();
                return;
            }
        }
        z zVarY2 = y(0);
        zVarY2.f12914n = true;
        q(zVarY2, false);
        D(zVarY2, null);
    }

    @Override // q.m
    public final boolean g(int i10) {
        if (i10 == 8) {
            i10 = 108;
        } else if (i10 == 9) {
            i10 = 109;
        }
        if (this.M && i10 == 108) {
            return false;
        }
        if (this.H && i10 == 1) {
            this.H = false;
        }
        if (i10 == 1) {
            G();
            this.M = true;
            return true;
        }
        if (i10 == 2) {
            G();
            this.F = true;
            return true;
        }
        if (i10 == 5) {
            G();
            this.G = true;
            return true;
        }
        if (i10 == 10) {
            G();
            this.K = true;
            return true;
        }
        if (i10 == 108) {
            G();
            this.H = true;
            return true;
        }
        if (i10 != 109) {
            return this.l.requestFeature(i10);
        }
        G();
        this.I = true;
        return true;
    }

    @Override // q.m
    public final void h(int i10) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.C.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f12767k).inflate(i10, viewGroup);
        this.f12768m.a(this.l.getCallback());
    }

    @Override // q.m
    public final void i(View view) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.C.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f12768m.a(this.l.getCallback());
    }

    @Override // q.m
    public final void j(View view, ViewGroup.LayoutParams layoutParams) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.C.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f12768m.a(this.l.getCallback());
    }

    @Override // q.m
    public final void k(CharSequence charSequence) {
        this.r = charSequence;
        l1 l1Var = this.f12772s;
        if (l1Var != null) {
            l1Var.setWindowTitle(charSequence);
            return;
        }
        m0 m0Var = this.f12770p;
        if (m0Var == null) {
            TextView textView = this.D;
            if (textView != null) {
                textView.setText(charSequence);
                return;
            }
            return;
        }
        n3 n3Var = (n3) m0Var.f12868f;
        if (n3Var.f17168g) {
            return;
        }
        n3Var.f17169h = charSequence;
        if ((n3Var.f17163b & 8) != 0) {
            Toolbar toolbar = n3Var.f17162a;
            toolbar.setTitle(charSequence);
            if (n3Var.f17168g) {
                b1.z(toolbar.getRootView(), charSequence);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean l(boolean z, boolean z4) {
        int i10;
        boolean z10;
        boolean z11;
        boolean z12;
        Map map;
        boolean z13;
        boolean z14;
        Object obj;
        boolean z15;
        if (this.V) {
            return false;
        }
        int i11 = this.Y;
        if (i11 == -100) {
            i11 = m.f12856b;
        }
        Context context = this.f12767k;
        int iB = B(context, i11);
        int i12 = Build.VERSION.SDK_INT;
        Object obj2 = null;
        t0.j jVarN = i12 < 33 ? n(context) : null;
        if (!z4 && jVarN != null) {
            jVarN = x(context.getResources().getConfiguration());
        }
        Configuration configurationR = r(context, iB, jVarN, null, false);
        boolean z16 = this.f12774t0;
        Object obj3 = this.f12766j;
        if (z16 || !(obj3 instanceof Activity)) {
            this.f12774t0 = true;
            i10 = this.f12765h0;
        } else {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                i10 = 0;
            } else {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, obj3.getClass()), i12 >= 29 ? 269221888 : i12 >= 24 ? 786432 : 0);
                    if (activityInfo != null) {
                        this.f12765h0 = activityInfo.configChanges;
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    this.f12765h0 = 0;
                }
                this.f12774t0 = true;
                i10 = this.f12765h0;
            }
        }
        Configuration configuration = this.X;
        if (configuration == null) {
            configuration = context.getResources().getConfiguration();
        }
        int i13 = configuration.uiMode & 48;
        int i14 = configurationR.uiMode & 48;
        t0.j jVarX = x(configuration);
        t0.j jVarX2 = jVarN == null ? null : x(configurationR);
        int i15 = i13 != i14 ? 512 : 0;
        if (jVarX2 != null && !jVarX.equals(jVarX2)) {
            i15 |= 8196;
        }
        if (((i10 ^ (-1)) & i15) != 0 && z && this.S && ((f12762b1 || this.T) && (obj3 instanceof Activity))) {
            Activity activity = (Activity) obj3;
            if (!activity.isChild()) {
                if (Build.VERSION.SDK_INT >= 28) {
                    activity.recreate();
                } else {
                    new Handler(activity.getMainLooper()).post(new com.hjq.permissions.core.c(activity, 1));
                }
                z10 = true;
            }
        } else {
            z10 = false;
        }
        if (z10 || i15 == 0) {
            z11 = z10;
        } else {
            boolean z17 = (i10 & i15) == i15;
            Resources resources = context.getResources();
            Configuration configuration2 = new Configuration(resources.getConfiguration());
            configuration2.uiMode = i14 | (resources.getConfiguration().uiMode & (-49));
            if (jVarX2 != null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    u.d(configuration2, jVarX2);
                } else {
                    t0.l lVar = jVarX2.f14636a;
                    r.b(configuration2, lVar.get(0));
                    r.a(configuration2, lVar.get(0));
                }
            }
            resources.updateConfiguration(configuration2, null);
            int i16 = Build.VERSION.SDK_INT;
            if (i16 < 26 && i16 < 28) {
                if (i16 >= 24) {
                    if (!android.support.v4.media.session.b.f767k) {
                        try {
                            Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                            android.support.v4.media.session.b.f766j = declaredField;
                            z14 = true;
                            try {
                                declaredField.setAccessible(true);
                            } catch (NoSuchFieldException unused2) {
                            }
                        } catch (NoSuchFieldException unused3) {
                            z14 = true;
                        }
                        android.support.v4.media.session.b.f767k = z14;
                    }
                    Field field = android.support.v4.media.session.b.f766j;
                    if (field != null) {
                        try {
                            obj = field.get(resources);
                        } catch (IllegalAccessException unused4) {
                            obj = null;
                        }
                        if (obj != null) {
                            if (!android.support.v4.media.session.b.f761e) {
                                try {
                                    Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                                    android.support.v4.media.session.b.f760d = declaredField2;
                                    z15 = true;
                                    try {
                                        declaredField2.setAccessible(true);
                                    } catch (NoSuchFieldException unused5) {
                                    }
                                } catch (NoSuchFieldException unused6) {
                                    z15 = true;
                                }
                                android.support.v4.media.session.b.f761e = z15;
                            }
                            Field field2 = android.support.v4.media.session.b.f760d;
                            if (field2 != null) {
                                try {
                                    obj2 = field2.get(obj);
                                } catch (IllegalAccessException unused7) {
                                }
                            }
                            if (obj2 != null) {
                                android.support.v4.media.session.b.g(obj2);
                            }
                        }
                    }
                } else if (i16 >= 23) {
                    if (!android.support.v4.media.session.b.f761e) {
                        try {
                            Field declaredField3 = Resources.class.getDeclaredField("mDrawableCache");
                            android.support.v4.media.session.b.f760d = declaredField3;
                            z13 = true;
                            try {
                                declaredField3.setAccessible(true);
                            } catch (NoSuchFieldException unused8) {
                            }
                        } catch (NoSuchFieldException unused9) {
                            z13 = true;
                        }
                        android.support.v4.media.session.b.f761e = z13;
                    }
                    Field field3 = android.support.v4.media.session.b.f760d;
                    if (field3 != null) {
                        try {
                            obj2 = field3.get(resources);
                        } catch (IllegalAccessException unused10) {
                        }
                    }
                    if (obj2 != null) {
                        android.support.v4.media.session.b.g(obj2);
                    }
                } else if (i16 >= 21) {
                    if (!android.support.v4.media.session.b.f761e) {
                        try {
                            Field declaredField4 = Resources.class.getDeclaredField("mDrawableCache");
                            android.support.v4.media.session.b.f760d = declaredField4;
                            z12 = true;
                            try {
                                declaredField4.setAccessible(true);
                            } catch (NoSuchFieldException unused11) {
                            }
                        } catch (NoSuchFieldException unused12) {
                            z12 = true;
                        }
                        android.support.v4.media.session.b.f761e = z12;
                    }
                    Field field4 = android.support.v4.media.session.b.f760d;
                    if (field4 != null) {
                        try {
                            map = (Map) field4.get(resources);
                        } catch (IllegalAccessException unused13) {
                            map = null;
                        }
                        if (map != null) {
                            map.clear();
                        }
                    }
                }
            }
            int i17 = this.Z;
            if (i17 != 0) {
                context.setTheme(i17);
                if (Build.VERSION.SDK_INT >= 23) {
                    context.getTheme().applyStyle(this.Z, true);
                }
                if (z17 && (obj3 instanceof Activity)) {
                    Activity activity2 = (Activity) obj3;
                    if (activity2 instanceof androidx.lifecycle.t) {
                        if (((androidx.lifecycle.v) ((androidx.lifecycle.t) activity2).getLifecycle()).f1818c.compareTo(androidx.lifecycle.n.CREATED) >= 0) {
                            activity2.onConfigurationChanged(configuration2);
                        }
                    } else if (this.T && !this.V) {
                        activity2.onConfigurationChanged(configuration2);
                    }
                }
                z11 = true;
            }
        }
        if (z11 && (obj3 instanceof i)) {
            if ((i15 & 512) != 0) {
            }
            if ((i15 & 4) != 0) {
            }
        }
        if (z11 && jVarX2 != null) {
            t0.j jVarX3 = x(context.getResources().getConfiguration());
            if (Build.VERSION.SDK_INT >= 24) {
                u.c(jVarX3);
            } else {
                Locale.setDefault(jVarX3.f14636a.get(0));
            }
        }
        if (i11 == 0) {
            w(context).h();
        } else {
            x xVar = this.M0;
            if (xVar != null) {
                xVar.c();
            }
        }
        if (i11 == 3) {
            if (this.N0 == null) {
                this.N0 = new x(this, context);
            }
            this.N0.h();
        } else {
            x xVar2 = this.N0;
            if (xVar2 != null) {
                xVar2.c();
            }
        }
        return z11;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m(Window window) {
        Drawable drawableG;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.l != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof w) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        w wVar = new w(this, callback);
        this.f12768m = wVar;
        window.setCallback(wVar);
        Context context = this.f12767k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, f12761a1);
        if (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawableG = null;
        } else {
            w.s sVarA = w.s.a();
            synchronized (sVarA) {
                drawableG = sVarA.f17251a.g(context, resourceId, true);
            }
        }
        if (drawableG != null) {
            window.setBackgroundDrawable(drawableG);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.l = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.W0) != null) {
            return;
        }
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.X0) != null) {
            v.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.X0 = null;
        }
        Object obj = this.f12766j;
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.W0 = v.a(activity);
            } else {
                this.W0 = null;
            }
        }
        H();
    }

    public final void o(int i10, z zVar, v.k kVar) {
        if (kVar == null) {
            if (zVar == null && i10 >= 0) {
                z[] zVarArr = this.O;
                if (i10 < zVarArr.length) {
                    zVar = zVarArr[i10];
                }
            }
            if (zVar != null) {
                kVar = zVar.f12909h;
            }
        }
        if ((zVar == null || zVar.f12913m) && !this.V) {
            w wVar = this.f12768m;
            Window.Callback callback = this.l.getCallback();
            wVar.getClass();
            try {
                wVar.f12896d = true;
                callback.onPanelClosed(i10, kVar);
            } finally {
                wVar.f12896d = false;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012d  */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        View d0Var;
        boolean z4;
        XmlPullParser xmlPullParser;
        boolean zEquals;
        String attributeValue = str;
        char c7 = 4;
        View view2 = null;
        if (this.U0 == null) {
            int[] iArr = p.a.f12524j;
            Context context2 = this.f12767k;
            String string = context2.obtainStyledAttributes(iArr).getString(116);
            if (string == null) {
                this.U0 = new d0();
            } else {
                try {
                    this.U0 = (d0) context2.getClassLoader().loadClass(string).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable unused) {
                    this.U0 = new d0();
                }
            }
        }
        boolean z10 = Z0;
        if (!z10) {
            z = false;
            break;
        }
        if (this.V0 == null) {
            this.V0 = new j5.c(1);
        }
        j5.c cVar = this.V0;
        cVar.getClass();
        boolean z11 = attributeSet instanceof XmlPullParser;
        if (z11) {
            XmlPullParser xmlPullParser2 = (XmlPullParser) attributeSet;
            if (xmlPullParser2.getDepth() == 1) {
                ArrayDeque arrayDeque = cVar.f9754a;
                while (true) {
                    if (arrayDeque.isEmpty()) {
                        xmlPullParser = null;
                        break;
                    }
                    xmlPullParser = (XmlPullParser) ((WeakReference) arrayDeque.peek()).get();
                    if (xmlPullParser != null) {
                        try {
                            if (xmlPullParser.getEventType() != 3 && xmlPullParser.getEventType() != 1) {
                                break;
                            }
                        } catch (XmlPullParserException unused2) {
                            continue;
                        }
                    }
                    arrayDeque.pop();
                }
                arrayDeque.push(new WeakReference(xmlPullParser2));
                if (xmlPullParser == null || xmlPullParser2 == xmlPullParser) {
                    zEquals = false;
                    z4 = !zEquals;
                    if (!z4) {
                        if (!z11) {
                            ViewParent parent = (ViewParent) view;
                            if (parent != null) {
                                View decorView = this.l.getDecorView();
                                while (parent != null) {
                                    if (parent != decorView && (parent instanceof View) && !b1.l((View) parent)) {
                                        parent = parent.getParent();
                                    }
                                }
                            }
                            z = false;
                            break;
                        } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                        }
                    }
                    z = true;
                } else {
                    try {
                        if (xmlPullParser.getEventType() == 2) {
                            zEquals = "include".equals(xmlPullParser.getName());
                        }
                    } catch (XmlPullParserException unused3) {
                    }
                    if (!zEquals) {
                    }
                    if (!z4) {
                    }
                    z = true;
                }
            }
        }
        d0 d0Var2 = this.U0;
        int i10 = s3.f17257b;
        d0Var2.getClass();
        Context context3 = (!z || view == 0) ? context : view.getContext();
        TypedArray typedArrayObtainStyledAttributes = context3.obtainStyledAttributes(attributeSet, p.a.f12537y, 0, 0);
        int resourceId = z10 ? typedArrayObtainStyledAttributes.getResourceId(0, 0) : 0;
        if (resourceId == 0) {
            resourceId = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (resourceId != 0 && (!(context3 instanceof u.d) || ((u.d) context3).f15106a != resourceId)) {
            context3 = new u.d(context3, resourceId);
        }
        str.getClass();
        switch (str.hashCode()) {
            case -1946472170:
                if (!attributeValue.equals("RatingBar")) {
                    c7 = 65535;
                    break;
                } else {
                    c7 = 0;
                    break;
                }
            case -1455429095:
                if (attributeValue.equals("CheckedTextView")) {
                    c7 = 1;
                    break;
                }
                break;
            case -1346021293:
                if (attributeValue.equals("MultiAutoCompleteTextView")) {
                    c7 = 2;
                    break;
                }
                break;
            case -938935918:
                if (attributeValue.equals("TextView")) {
                    c7 = 3;
                    break;
                }
                break;
            case -937446323:
                if (!attributeValue.equals("ImageButton")) {
                }
                break;
            case -658531749:
                if (attributeValue.equals("SeekBar")) {
                    c7 = 5;
                    break;
                }
                break;
            case -339785223:
                if (attributeValue.equals("Spinner")) {
                    c7 = 6;
                    break;
                }
                break;
            case 776382189:
                if (attributeValue.equals("RadioButton")) {
                    c7 = 7;
                    break;
                }
                break;
            case 799298502:
                if (attributeValue.equals("ToggleButton")) {
                    c7 = '\b';
                    break;
                }
                break;
            case 1125864064:
                if (attributeValue.equals("ImageView")) {
                    c7 = '\t';
                    break;
                }
                break;
            case 1413872058:
                if (attributeValue.equals("AutoCompleteTextView")) {
                    c7 = '\n';
                    break;
                }
                break;
            case 1601505219:
                if (attributeValue.equals("CheckBox")) {
                    c7 = 11;
                    break;
                }
                break;
            case 1666676343:
                if (attributeValue.equals("EditText")) {
                    c7 = '\f';
                    break;
                }
                break;
            case 2001146706:
                if (attributeValue.equals("Button")) {
                    c7 = '\r';
                    break;
                }
                break;
        }
        switch (c7) {
            case 0:
                d0Var = new w.d0(context3, attributeSet);
                break;
            case 1:
                d0Var = new w.q(context3, attributeSet);
                break;
            case 2:
                d0Var = new w.y(context3, attributeSet);
                break;
            case 3:
                d0Var = d0Var2.e(context3, attributeSet);
                break;
            case 4:
                d0Var = new w.w(context3, attributeSet, com.yunpan.appmanage.R.attr.imageButtonStyle);
                break;
            case 5:
                d0Var = new AppCompatSeekBar(context3, attributeSet);
                break;
            case 6:
                d0Var = new q0(context3, attributeSet);
                break;
            case 7:
                d0Var = d0Var2.d(context3, attributeSet);
                break;
            case '\b':
                d0Var = new j1(context3, attributeSet);
                break;
            case '\t':
                d0Var = new w.x(context3, attributeSet, 0);
                break;
            case '\n':
                d0Var = d0Var2.a(context3, attributeSet);
                break;
            case 11:
                d0Var = d0Var2.c(context3, attributeSet);
                break;
            case '\f':
                d0Var = new w.u(context3, attributeSet);
                break;
            case '\r':
                d0Var = d0Var2.b(context3, attributeSet);
                break;
            default:
                d0Var = null;
                break;
        }
        if (d0Var == null && context != context3) {
            Object[] objArr = d0Var2.f12807a;
            if (attributeValue.equals("view")) {
                attributeValue = attributeSet.getAttributeValue(null, Name.LABEL);
            }
            try {
                objArr[0] = context3;
                objArr[1] = attributeSet;
                if (-1 == attributeValue.indexOf(46)) {
                    int i11 = 0;
                    while (true) {
                        String[] strArr = d0.f12805g;
                        if (i11 < 3) {
                            View viewF = d0Var2.f(context3, attributeValue, strArr[i11]);
                            if (viewF != null) {
                                objArr[0] = null;
                                objArr[1] = null;
                                view2 = viewF;
                            } else {
                                i11++;
                            }
                        }
                    }
                } else {
                    View viewF2 = d0Var2.f(context3, attributeValue, null);
                    objArr[0] = null;
                    objArr[1] = null;
                    view2 = viewF2;
                }
            } catch (Exception unused4) {
            } finally {
                objArr[0] = null;
                objArr[1] = null;
            }
            d0Var = view2;
        }
        if (d0Var != null) {
            Context context4 = d0Var.getContext();
            if (context4 instanceof ContextWrapper) {
                WeakHashMap weakHashMap = b1.f17953a;
                if (x0.i0.a(d0Var)) {
                    TypedArray typedArrayObtainStyledAttributes2 = context4.obtainStyledAttributes(attributeSet, d0.f12801c);
                    String string2 = typedArrayObtainStyledAttributes2.getString(0);
                    if (string2 != null) {
                        d0Var.setOnClickListener(new c0(d0Var, string2));
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                }
            }
            int i12 = Build.VERSION.SDK_INT;
            if (i12 >= 19 && i12 <= 28) {
                TypedArray typedArrayObtainStyledAttributes3 = context3.obtainStyledAttributes(attributeSet, d0.f12802d);
                if (typedArrayObtainStyledAttributes3.hasValue(0)) {
                    boolean z12 = typedArrayObtainStyledAttributes3.getBoolean(0, false);
                    WeakHashMap weakHashMap2 = b1.f17953a;
                    new x0.g0(2).f(d0Var, Boolean.valueOf(z12));
                }
                typedArrayObtainStyledAttributes3.recycle();
                TypedArray typedArrayObtainStyledAttributes4 = context3.obtainStyledAttributes(attributeSet, d0.f12803e);
                if (typedArrayObtainStyledAttributes4.hasValue(0)) {
                    b1.z(d0Var, typedArrayObtainStyledAttributes4.getString(0));
                }
                typedArrayObtainStyledAttributes4.recycle();
                TypedArray typedArrayObtainStyledAttributes5 = context3.obtainStyledAttributes(attributeSet, d0.f12804f);
                if (typedArrayObtainStyledAttributes5.hasValue(0)) {
                    boolean z13 = typedArrayObtainStyledAttributes5.getBoolean(0, false);
                    WeakHashMap weakHashMap3 = b1.f17953a;
                    new x0.g0(0).f(d0Var, Boolean.valueOf(z13));
                }
                typedArrayObtainStyledAttributes5.recycle();
            }
        }
        return d0Var;
    }

    public final void p(v.k kVar) {
        w.j jVar;
        if (this.N) {
            return;
        }
        this.N = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f12772s;
        actionBarOverlayLayout.k();
        ActionMenuView actionMenuView = ((n3) actionBarOverlayLayout.f934e).f17162a.f986a;
        if (actionMenuView != null && (jVar = actionMenuView.f954v) != null) {
            jVar.h();
            w.e eVar = jVar.f17125v;
            if (eVar != null && eVar.b()) {
                eVar.f16298i.dismiss();
            }
        }
        Window.Callback callback = this.l.getCallback();
        if (callback != null && !this.V) {
            callback.onPanelClosed(108, kVar);
        }
        this.N = false;
    }

    public final void q(z zVar, boolean z) {
        y yVar;
        l1 l1Var;
        w.j jVar;
        if (z && zVar.f12902a == 0 && (l1Var = this.f12772s) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) l1Var;
            actionBarOverlayLayout.k();
            ActionMenuView actionMenuView = ((n3) actionBarOverlayLayout.f934e).f17162a.f986a;
            if (actionMenuView != null && (jVar = actionMenuView.f954v) != null && jVar.k()) {
                p(zVar.f12909h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.f12767k.getSystemService("window");
        if (windowManager != null && zVar.f12913m && (yVar = zVar.f12906e) != null) {
            windowManager.removeView(yVar);
            if (z) {
                o(zVar.f12902a, zVar, null);
            }
        }
        zVar.f12912k = false;
        zVar.l = false;
        zVar.f12913m = false;
        zVar.f12907f = null;
        zVar.f12914n = true;
        if (this.P == zVar) {
            this.P = null;
        }
        if (zVar.f12902a == 0) {
            H();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0122  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean s(KeyEvent keyEvent) {
        View decorView;
        boolean z;
        boolean zF;
        AudioManager audioManager;
        ActionMenuView actionMenuView;
        w.j jVar;
        w.j jVar2;
        w.j jVar3;
        Object obj = this.f12766j;
        if (((obj instanceof x0.o) || (obj instanceof g)) && (decorView = this.l.getDecorView()) != null && android.support.v4.media.session.b.d(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82) {
            w wVar = this.f12768m;
            Window.Callback callback = this.l.getCallback();
            wVar.getClass();
            try {
                wVar.f12895c = true;
                if (callback.dispatchKeyEvent(keyEvent)) {
                    return true;
                }
            } finally {
                wVar.f12895c = false;
            }
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() == 0) {
            if (keyCode == 4) {
                this.R = (keyEvent.getFlags() & 128) != 0;
            } else if (keyCode == 82) {
                if (keyEvent.getRepeatCount() != 0) {
                    return true;
                }
                z zVarY = y(0);
                if (zVarY.f12913m) {
                    return true;
                }
                F(zVarY, keyEvent);
                return true;
            }
        } else if (keyCode != 4) {
            if (keyCode == 82) {
                if (this.f12776w != null) {
                    return true;
                }
                z zVarY2 = y(0);
                l1 l1Var = this.f12772s;
                Context context = this.f12767k;
                if (l1Var != null) {
                    ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) l1Var;
                    actionBarOverlayLayout.k();
                    Toolbar toolbar = ((n3) actionBarOverlayLayout.f934e).f17162a;
                    if (toolbar.getVisibility() != 0 || (actionMenuView = toolbar.f986a) == null || !actionMenuView.f953t || ViewConfiguration.get(context).hasPermanentMenuKey()) {
                        boolean z4 = zVarY2.f12913m;
                        if (z4 || zVarY2.l) {
                            q(zVarY2, true);
                            z = z4;
                        } else {
                            if (zVarY2.f12912k) {
                                if (zVarY2.f12915o) {
                                    zVarY2.f12912k = false;
                                    zF = F(zVarY2, keyEvent);
                                } else {
                                    zF = true;
                                }
                                if (zF) {
                                    D(zVarY2, keyEvent);
                                    z = true;
                                }
                            }
                            z = false;
                        }
                    } else {
                        ActionBarOverlayLayout actionBarOverlayLayout2 = (ActionBarOverlayLayout) this.f12772s;
                        actionBarOverlayLayout2.k();
                        ActionMenuView actionMenuView2 = ((n3) actionBarOverlayLayout2.f934e).f17162a.f986a;
                        if (actionMenuView2 == null || (jVar2 = actionMenuView2.f954v) == null || !jVar2.k()) {
                            if (!this.V && F(zVarY2, keyEvent)) {
                                ActionBarOverlayLayout actionBarOverlayLayout3 = (ActionBarOverlayLayout) this.f12772s;
                                actionBarOverlayLayout3.k();
                                ActionMenuView actionMenuView3 = ((n3) actionBarOverlayLayout3.f934e).f17162a.f986a;
                                if (actionMenuView3 != null && (jVar = actionMenuView3.f954v) != null && jVar.l()) {
                                    z = true;
                                }
                            }
                            z = false;
                        } else {
                            ActionBarOverlayLayout actionBarOverlayLayout4 = (ActionBarOverlayLayout) this.f12772s;
                            actionBarOverlayLayout4.k();
                            ActionMenuView actionMenuView4 = ((n3) actionBarOverlayLayout4.f934e).f17162a.f986a;
                            if (actionMenuView4 == null || (jVar3 = actionMenuView4.f954v) == null || !jVar3.h()) {
                                z = false;
                            }
                        }
                    }
                }
                if (!z || (audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio")) == null) {
                    return true;
                }
                audioManager.playSoundEffect(0);
                return true;
            }
        } else if (C()) {
            return true;
        }
        return false;
    }

    public final void t(int i10) {
        z zVarY = y(i10);
        if (zVarY.f12909h != null) {
            Bundle bundle = new Bundle();
            zVarY.f12909h.t(bundle);
            if (bundle.size() > 0) {
                zVarY.f12916p = bundle;
            }
            zVarY.f12909h.w();
            zVarY.f12909h.clear();
        }
        zVarY.f12915o = true;
        zVarY.f12914n = true;
        if ((i10 == 108 || i10 == 0) && this.f12772s != null) {
            z zVarY2 = y(0);
            zVarY2.f12912k = false;
            F(zVarY2, null);
        }
    }

    public final void u() {
        ViewGroup viewGroup;
        int i10 = 2;
        int i11 = 1;
        int i12 = 0;
        if (this.B) {
            return;
        }
        int[] iArr = p.a.f12524j;
        Context context = this.f12767k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(117)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(126, false)) {
            g(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(117, false)) {
            g(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(118, false)) {
            g(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(119, false)) {
            g(10);
        }
        this.L = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        v();
        this.l.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (this.M) {
            viewGroup = this.K ? (ViewGroup) layoutInflaterFrom.inflate(com.yunpan.appmanage.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(com.yunpan.appmanage.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.L) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(com.yunpan.appmanage.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.I = false;
            this.H = false;
        } else if (this.H) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.yunpan.appmanage.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new u.d(context, typedValue.resourceId) : context).inflate(com.yunpan.appmanage.R.layout.abc_screen_toolbar, (ViewGroup) null);
            l1 l1Var = (l1) viewGroup.findViewById(com.yunpan.appmanage.R.id.decor_content_parent);
            this.f12772s = l1Var;
            l1Var.setWindowCallback(this.l.getCallback());
            if (this.I) {
                ((ActionBarOverlayLayout) this.f12772s).j(109);
            }
            if (this.F) {
                ((ActionBarOverlayLayout) this.f12772s).j(2);
            }
            if (this.G) {
                ((ActionBarOverlayLayout) this.f12772s).j(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.H + ", windowActionBarOverlay: " + this.I + ", android:windowIsFloating: " + this.L + ", windowActionModeOverlay: " + this.K + ", windowNoTitle: " + this.M + " }");
        }
        if (Build.VERSION.SDK_INT >= 21) {
            b1.C(viewGroup, new p(this, i12));
        } else if (viewGroup instanceof v1) {
            ((v1) viewGroup).setOnFitSystemWindowsListener(new p(this, i11));
        }
        if (this.f12772s == null) {
            this.D = (TextView) viewGroup.findViewById(com.yunpan.appmanage.R.id.title);
        }
        Method method = u3.f17278a;
        try {
            Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method2.isAccessible()) {
                method2.setAccessible(true);
            }
            method2.invoke(viewGroup, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.yunpan.appmanage.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.l.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.l.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new p(this, i10));
        this.C = viewGroup;
        Object obj = this.f12766j;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.r;
        if (!TextUtils.isEmpty(title)) {
            l1 l1Var2 = this.f12772s;
            if (l1Var2 != null) {
                l1Var2.setWindowTitle(title);
            } else {
                m0 m0Var = this.f12770p;
                if (m0Var != null) {
                    n3 n3Var = (n3) m0Var.f12868f;
                    if (!n3Var.f17168g) {
                        n3Var.f17169h = title;
                        if ((n3Var.f17163b & 8) != 0) {
                            Toolbar toolbar = n3Var.f17162a;
                            toolbar.setTitle(title);
                            if (n3Var.f17168g) {
                                b1.z(toolbar.getRootView(), title);
                            }
                        }
                    }
                } else {
                    TextView textView = this.D;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.C.findViewById(R.id.content);
        View decorView = this.l.getDecorView();
        contentFrameLayout2.f969g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (b1.m(contentFrameLayout2)) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        typedArrayObtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes2.hasValue(122)) {
            typedArrayObtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(123)) {
            typedArrayObtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(120)) {
            typedArrayObtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(121)) {
            typedArrayObtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.B = true;
        z zVarY = y(0);
        if (this.V || zVarY.f12909h != null) {
            return;
        }
        A(108);
    }

    public final void v() {
        if (this.l == null) {
            Object obj = this.f12766j;
            if (obj instanceof Activity) {
                m(((Activity) obj).getWindow());
            }
        }
        if (this.l == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final fe.c w(Context context) {
        if (this.M0 == null) {
            if (v3.f.f16472e == null) {
                Context applicationContext = context.getApplicationContext();
                v3.f.f16472e = new v3.f(applicationContext, (LocationManager) applicationContext.getSystemService(RequestParameters.SUBRESOURCE_LOCATION));
            }
            this.M0 = new x(this, v3.f.f16472e);
        }
        return this.M0;
    }

    public final z y(int i10) {
        z[] zVarArr = this.O;
        if (zVarArr == null || zVarArr.length <= i10) {
            z[] zVarArr2 = new z[i10 + 1];
            if (zVarArr != null) {
                System.arraycopy(zVarArr, 0, zVarArr2, 0, zVarArr.length);
            }
            this.O = zVarArr2;
            zVarArr = zVarArr2;
        }
        z zVar = zVarArr[i10];
        if (zVar != null) {
            return zVar;
        }
        z zVar2 = new z(i10);
        zVarArr[i10] = zVar2;
        return zVar2;
    }

    public final void z() {
        u();
        if (this.H && this.f12770p == null) {
            Object obj = this.f12766j;
            if (obj instanceof Activity) {
                this.f12770p = new m0((Activity) obj, this.I);
            } else if (obj instanceof Dialog) {
                this.f12770p = new m0((Dialog) obj);
            }
            m0 m0Var = this.f12770p;
            if (m0Var != null) {
                m0Var.n0(this.R0);
            }
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
