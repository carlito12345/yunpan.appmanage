package q;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.WeakHashMap;
import w.m1;
import w.n3;
import x0.b1;
import x0.l1;
import x0.p0;

/* loaded from: classes.dex */
public final class m0 extends qf.c implements w.c {

    /* renamed from: b, reason: collision with root package name */
    public Context f12864b;

    /* renamed from: c, reason: collision with root package name */
    public Context f12865c;

    /* renamed from: d, reason: collision with root package name */
    public ActionBarOverlayLayout f12866d;

    /* renamed from: e, reason: collision with root package name */
    public ActionBarContainer f12867e;

    /* renamed from: f, reason: collision with root package name */
    public m1 f12868f;

    /* renamed from: g, reason: collision with root package name */
    public ActionBarContextView f12869g;

    /* renamed from: h, reason: collision with root package name */
    public final View f12870h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f12871i;

    /* renamed from: j, reason: collision with root package name */
    public l0 f12872j;

    /* renamed from: k, reason: collision with root package name */
    public l0 f12873k;
    public kf.d l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f12874m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f12875n;

    /* renamed from: o, reason: collision with root package name */
    public int f12876o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f12877p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f12878q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f12879s;

    /* renamed from: t, reason: collision with root package name */
    public u.k f12880t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f12881u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f12882v;

    /* renamed from: w, reason: collision with root package name */
    public final k0 f12883w;

    /* renamed from: x, reason: collision with root package name */
    public final k0 f12884x;

    /* renamed from: y, reason: collision with root package name */
    public final l5.y f12885y;
    public static final AccelerateInterpolator z = new AccelerateInterpolator();
    public static final DecelerateInterpolator A = new DecelerateInterpolator();

    public m0(Activity activity, boolean z4) {
        new ArrayList();
        this.f12875n = new ArrayList();
        this.f12876o = 0;
        this.f12877p = true;
        this.f12879s = true;
        this.f12883w = new k0(this, 0);
        this.f12884x = new k0(this, 1);
        this.f12885y = new l5.y(12, this);
        View decorView = activity.getWindow().getDecorView();
        m0(decorView);
        if (z4) {
            return;
        }
        this.f12870h = decorView.findViewById(R.id.content);
    }

    public final void k0(boolean z4) {
        l1 l1VarI;
        l1 l1VarI2;
        if (z4) {
            if (!this.r) {
                this.r = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f12866d;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                p0(false);
            }
        } else if (this.r) {
            this.r = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f12866d;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            p0(false);
        }
        if (!b1.m(this.f12867e)) {
            if (z4) {
                ((n3) this.f12868f).f17162a.setVisibility(4);
                this.f12869g.setVisibility(0);
                return;
            } else {
                ((n3) this.f12868f).f17162a.setVisibility(0);
                this.f12869g.setVisibility(8);
                return;
            }
        }
        if (z4) {
            n3 n3Var = (n3) this.f12868f;
            l1VarI = b1.a(n3Var.f17162a);
            l1VarI.a(0.0f);
            l1VarI.c(100L);
            l1VarI.d(new u.j(n3Var, 4));
            l1VarI2 = this.f12869g.i(0, 200L);
        } else {
            n3 n3Var2 = (n3) this.f12868f;
            l1 l1VarA = b1.a(n3Var2.f17162a);
            l1VarA.a(1.0f);
            l1VarA.c(200L);
            l1VarA.d(new u.j(n3Var2, 0));
            l1VarI = this.f12869g.i(8, 100L);
            l1VarI2 = l1VarA;
        }
        u.k kVar = new u.k();
        ArrayList arrayList = kVar.f15155a;
        arrayList.add(l1VarI);
        View view = (View) l1VarI.f18009a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) l1VarI2.f18009a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(l1VarI2);
        kVar.b();
    }

    public final Context l0() {
        if (this.f12865c == null) {
            TypedValue typedValue = new TypedValue();
            this.f12864b.getTheme().resolveAttribute(com.yunpan.appmanage.R.attr.actionBarWidgetTheme, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                this.f12865c = new ContextThemeWrapper(this.f12864b, i10);
            } else {
                this.f12865c = this.f12864b;
            }
        }
        return this.f12865c;
    }

    public final void m0(View view) {
        m1 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.yunpan.appmanage.R.id.decor_content_parent);
        this.f12866d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(com.yunpan.appmanage.R.id.action_bar);
        if (callbackFindViewById instanceof m1) {
            wrapper = (m1) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        }
        this.f12868f = wrapper;
        this.f12869g = (ActionBarContextView) view.findViewById(com.yunpan.appmanage.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.yunpan.appmanage.R.id.action_bar_container);
        this.f12867e = actionBarContainer;
        m1 m1Var = this.f12868f;
        if (m1Var == null || this.f12869g == null || actionBarContainer == null) {
            throw new IllegalStateException(m0.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        Context context = ((n3) m1Var).f17162a.getContext();
        this.f12864b = context;
        if ((((n3) this.f12868f).f17163b & 4) != 0) {
            this.f12871i = true;
        }
        int i10 = context.getApplicationInfo().targetSdkVersion;
        this.f12868f.getClass();
        o0(context.getResources().getBoolean(com.yunpan.appmanage.R.bool.abc_action_bar_embed_tabs));
        TypedArray typedArrayObtainStyledAttributes = this.f12864b.obtainStyledAttributes(null, p.a.f12515a, com.yunpan.appmanage.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f12866d;
            if (!actionBarOverlayLayout2.f937h) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f12882v = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            float f10 = dimensionPixelSize;
            ActionBarContainer actionBarContainer2 = this.f12867e;
            WeakHashMap weakHashMap = b1.f17953a;
            if (Build.VERSION.SDK_INT >= 21) {
                p0.s(actionBarContainer2, f10);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void n0(boolean z4) {
        if (this.f12871i) {
            return;
        }
        int i10 = z4 ? 4 : 0;
        n3 n3Var = (n3) this.f12868f;
        int i11 = n3Var.f17163b;
        this.f12871i = true;
        n3Var.a((i10 & 4) | (i11 & (-5)));
    }

    public final void o0(boolean z4) {
        if (z4) {
            this.f12867e.setTabContainer(null);
            ((n3) this.f12868f).getClass();
        } else {
            ((n3) this.f12868f).getClass();
            this.f12867e.setTabContainer(null);
        }
        this.f12868f.getClass();
        ((n3) this.f12868f).f17162a.setCollapsible(false);
        this.f12866d.setHasNonEmbeddedTabs(false);
    }

    public final void p0(boolean z4) {
        boolean z10 = this.r || !this.f12878q;
        View view = this.f12870h;
        l5.y yVar = this.f12885y;
        if (!z10) {
            if (this.f12879s) {
                this.f12879s = false;
                u.k kVar = this.f12880t;
                if (kVar != null) {
                    kVar.a();
                }
                int i10 = this.f12876o;
                k0 k0Var = this.f12883w;
                if (i10 != 0 || (!this.f12881u && !z4)) {
                    k0Var.c();
                    return;
                }
                this.f12867e.setAlpha(1.0f);
                this.f12867e.setTransitioning(true);
                u.k kVar2 = new u.k();
                float f10 = -this.f12867e.getHeight();
                if (z4) {
                    this.f12867e.getLocationInWindow(new int[]{0, 0});
                    f10 -= r11[1];
                }
                l1 l1VarA = b1.a(this.f12867e);
                l1VarA.f(f10);
                l1VarA.e(yVar);
                boolean z11 = kVar2.f15159e;
                ArrayList arrayList = kVar2.f15155a;
                if (!z11) {
                    arrayList.add(l1VarA);
                }
                if (this.f12877p && view != null) {
                    l1 l1VarA2 = b1.a(view);
                    l1VarA2.f(f10);
                    if (!kVar2.f15159e) {
                        arrayList.add(l1VarA2);
                    }
                }
                AccelerateInterpolator accelerateInterpolator = z;
                boolean z12 = kVar2.f15159e;
                if (!z12) {
                    kVar2.f15157c = accelerateInterpolator;
                }
                if (!z12) {
                    kVar2.f15156b = 250L;
                }
                if (!z12) {
                    kVar2.f15158d = k0Var;
                }
                this.f12880t = kVar2;
                kVar2.b();
                return;
            }
            return;
        }
        if (this.f12879s) {
            return;
        }
        this.f12879s = true;
        u.k kVar3 = this.f12880t;
        if (kVar3 != null) {
            kVar3.a();
        }
        this.f12867e.setVisibility(0);
        int i11 = this.f12876o;
        k0 k0Var2 = this.f12884x;
        if (i11 == 0 && (this.f12881u || z4)) {
            this.f12867e.setTranslationY(0.0f);
            float f11 = -this.f12867e.getHeight();
            if (z4) {
                this.f12867e.getLocationInWindow(new int[]{0, 0});
                f11 -= r11[1];
            }
            this.f12867e.setTranslationY(f11);
            u.k kVar4 = new u.k();
            l1 l1VarA3 = b1.a(this.f12867e);
            l1VarA3.f(0.0f);
            l1VarA3.e(yVar);
            boolean z13 = kVar4.f15159e;
            ArrayList arrayList2 = kVar4.f15155a;
            if (!z13) {
                arrayList2.add(l1VarA3);
            }
            if (this.f12877p && view != null) {
                view.setTranslationY(f11);
                l1 l1VarA4 = b1.a(view);
                l1VarA4.f(0.0f);
                if (!kVar4.f15159e) {
                    arrayList2.add(l1VarA4);
                }
            }
            DecelerateInterpolator decelerateInterpolator = A;
            boolean z14 = kVar4.f15159e;
            if (!z14) {
                kVar4.f15157c = decelerateInterpolator;
            }
            if (!z14) {
                kVar4.f15156b = 250L;
            }
            if (!z14) {
                kVar4.f15158d = k0Var2;
            }
            this.f12880t = kVar4;
            kVar4.b();
        } else {
            this.f12867e.setAlpha(1.0f);
            this.f12867e.setTranslationY(0.0f);
            if (this.f12877p && view != null) {
                view.setTranslationY(0.0f);
            }
            k0Var2.c();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f12866d;
        if (actionBarOverlayLayout != null) {
            b1.v(actionBarOverlayLayout);
        }
    }

    public m0(Dialog dialog) {
        new ArrayList();
        this.f12875n = new ArrayList();
        this.f12876o = 0;
        this.f12877p = true;
        this.f12879s = true;
        this.f12883w = new k0(this, 0);
        this.f12884x = new k0(this, 1);
        this.f12885y = new l5.y(12, this);
        m0(dialog.getWindow().getDecorView());
    }
}
