package q;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import w.y1;
import x0.b1;
import x0.q0;

/* loaded from: classes.dex */
public final class g extends androidx.activity.n implements DialogInterface, j {

    /* renamed from: d, reason: collision with root package name */
    public a0 f12834d;

    /* renamed from: e, reason: collision with root package name */
    public final b0 f12835e;

    /* renamed from: f, reason: collision with root package name */
    public final e f12836f;

    /* JADX WARN: Type inference failed for: r2v2, types: [q.b0] */
    public g(ContextThemeWrapper contextThemeWrapper, int i10) {
        int i11;
        int iG = g(contextThemeWrapper, i10);
        if (iG == 0) {
            TypedValue typedValue = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i11 = typedValue.resourceId;
        } else {
            i11 = iG;
        }
        super(contextThemeWrapper, i11);
        this.f12835e = new x0.o() { // from class: q.b0
            @Override // x0.o
            public final boolean j(KeyEvent keyEvent) {
                return this.f12781a.i(keyEvent);
            }
        };
        m mVarE = e();
        if (iG == 0) {
            TypedValue typedValue2 = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue2, true);
            iG = typedValue2.resourceId;
        }
        ((a0) mVarE).Z = iG;
        mVarE.b();
        this.f12836f = new e(getContext(), this, getWindow());
    }

    public static int g(Context context, int i10) {
        if (((i10 >>> 24) & 255) >= 1) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // androidx.activity.n, android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a0 a0Var = (a0) e();
        a0Var.u();
        ((ViewGroup) a0Var.C.findViewById(android.R.id.content)).addView(view, layoutParams);
        a0Var.f12768m.a(a0Var.l.getCallback());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        e().c();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return android.support.v4.media.session.b.e(this.f12835e, getWindow().getDecorView(), this, keyEvent);
    }

    public final m e() {
        if (this.f12834d == null) {
            g0 g0Var = m.f12855a;
            this.f12834d = new a0(getContext(), getWindow(), this, this);
        }
        return this.f12834d;
    }

    public final void f(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        a0 a0Var = (a0) e();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(a0Var.f12767k);
        if (layoutInflaterFrom.getFactory() == null) {
            layoutInflaterFrom.setFactory2(a0Var);
            if (Build.VERSION.SDK_INT < 21) {
                LayoutInflater.Factory factory = layoutInflaterFrom.getFactory();
                if (factory instanceof LayoutInflater.Factory2) {
                    com.bumptech.glide.c.v(layoutInflaterFrom, (LayoutInflater.Factory2) factory);
                } else {
                    com.bumptech.glide.c.v(layoutInflaterFrom, a0Var);
                }
            }
        } else {
            boolean z = layoutInflaterFrom.getFactory2() instanceof a0;
        }
        super.onCreate(bundle);
        e().b();
    }

    @Override // android.app.Dialog
    public final View findViewById(int i10) {
        a0 a0Var = (a0) e();
        a0Var.u();
        return a0Var.l.findViewById(i10);
    }

    public final void h(CharSequence charSequence) {
        super.setTitle(charSequence);
        e().k(charSequence);
    }

    public final boolean i(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        a0 a0Var = (a0) e();
        if (a0Var.f12770p != null) {
            a0Var.z();
            a0Var.f12770p.getClass();
            a0Var.A(0);
        }
    }

    @Override // androidx.activity.n, android.app.Dialog
    public final void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        int i10;
        ListAdapter listAdapter;
        View viewFindViewById;
        f(bundle);
        e eVar = this.f12836f;
        eVar.f12809b.setContentView(eVar.f12830y);
        Window window = eVar.f12810c;
        View viewFindViewById2 = window.findViewById(R.id.parentPanel);
        View viewFindViewById3 = viewFindViewById2.findViewById(R.id.topPanel);
        View viewFindViewById4 = viewFindViewById2.findViewById(R.id.contentPanel);
        View viewFindViewById5 = viewFindViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2.findViewById(R.id.customPanel);
        View view = eVar.f12813f;
        if (view == null) {
            view = null;
        }
        boolean z = view != null;
        if (!z || !e.a(view)) {
            window.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (eVar.f12814g) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (eVar.f12812e != null) {
                ((LinearLayout.LayoutParams) ((y1) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View viewFindViewById6 = viewGroup.findViewById(R.id.topPanel);
        View viewFindViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View viewFindViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup viewGroupC = e.c(viewFindViewById6, viewFindViewById3);
        ViewGroup viewGroupC2 = e.c(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupC3 = e.c(viewFindViewById8, viewFindViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        eVar.f12823q = nestedScrollView;
        nestedScrollView.setFocusable(false);
        eVar.f12823q.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupC2.findViewById(android.R.id.message);
        eVar.f12826u = textView;
        if (textView != null) {
            textView.setVisibility(8);
            eVar.f12823q.removeView(eVar.f12826u);
            if (eVar.f12812e != null) {
                ViewGroup viewGroup2 = (ViewGroup) eVar.f12823q.getParent();
                int iIndexOfChild = viewGroup2.indexOfChild(eVar.f12823q);
                viewGroup2.removeViewAt(iIndexOfChild);
                viewGroup2.addView(eVar.f12812e, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
            } else {
                viewGroupC2.setVisibility(8);
            }
        }
        Button button = (Button) viewGroupC3.findViewById(android.R.id.button1);
        eVar.f12815h = button;
        androidx.leanback.widget.h0 h0Var = eVar.E;
        button.setOnClickListener(h0Var);
        if (TextUtils.isEmpty(eVar.f12816i)) {
            eVar.f12815h.setVisibility(8);
            i10 = 0;
        } else {
            eVar.f12815h.setText(eVar.f12816i);
            eVar.f12815h.setVisibility(0);
            i10 = 1;
        }
        Button button2 = (Button) viewGroupC3.findViewById(android.R.id.button2);
        eVar.f12818k = button2;
        button2.setOnClickListener(h0Var);
        if (TextUtils.isEmpty(eVar.l)) {
            eVar.f12818k.setVisibility(8);
        } else {
            eVar.f12818k.setText(eVar.l);
            eVar.f12818k.setVisibility(0);
            i10 |= 2;
        }
        Button button3 = (Button) viewGroupC3.findViewById(android.R.id.button3);
        eVar.f12820n = button3;
        button3.setOnClickListener(h0Var);
        if (TextUtils.isEmpty(eVar.f12821o)) {
            eVar.f12820n.setVisibility(8);
        } else {
            eVar.f12820n.setText(eVar.f12821o);
            eVar.f12820n.setVisibility(0);
            i10 |= 4;
        }
        TypedValue typedValue = new TypedValue();
        eVar.f12808a.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i10 == 1) {
                Button button4 = eVar.f12815h;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i10 == 2) {
                Button button5 = eVar.f12818k;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i10 == 4) {
                Button button6 = eVar.f12820n;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i10 == 0) {
            viewGroupC3.setVisibility(8);
        }
        if (eVar.f12827v != null) {
            viewGroupC.addView(eVar.f12827v, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            eVar.f12824s = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(eVar.f12811d) || !eVar.C) {
                window.findViewById(R.id.title_template).setVisibility(8);
                eVar.f12824s.setVisibility(8);
                viewGroupC.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                eVar.f12825t = textView2;
                textView2.setText(eVar.f12811d);
                Drawable drawable = eVar.r;
                if (drawable != null) {
                    eVar.f12824s.setImageDrawable(drawable);
                } else {
                    eVar.f12825t.setPadding(eVar.f12824s.getPaddingLeft(), eVar.f12824s.getPaddingTop(), eVar.f12824s.getPaddingRight(), eVar.f12824s.getPaddingBottom());
                    eVar.f12824s.setVisibility(8);
                }
            }
        }
        boolean z4 = viewGroup.getVisibility() != 8;
        int i11 = (viewGroupC == null || viewGroupC.getVisibility() == 8) ? 0 : 1;
        boolean z10 = viewGroupC3.getVisibility() != 8;
        if (!z10 && (viewFindViewById = viewGroupC2.findViewById(R.id.textSpacerNoButtons)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (i11 != 0) {
            NestedScrollView nestedScrollView2 = eVar.f12823q;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View viewFindViewById9 = eVar.f12812e != null ? viewGroupC.findViewById(R.id.titleDividerNoCustom) : null;
            if (viewFindViewById9 != null) {
                viewFindViewById9.setVisibility(0);
            }
        } else {
            View viewFindViewById10 = viewGroupC2.findViewById(R.id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = eVar.f12812e;
        if (alertController$RecycleListView instanceof AlertController$RecycleListView) {
            alertController$RecycleListView.getClass();
            if (!z10 || i11 == 0) {
                alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i11 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.f875a, alertController$RecycleListView.getPaddingRight(), z10 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.f876b);
            }
        }
        if (!z4) {
            View view2 = eVar.f12812e;
            if (view2 == null) {
                view2 = eVar.f12823q;
            }
            if (view2 != null) {
                int i12 = i11 | (z10 ? 2 : 0);
                View viewFindViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View viewFindViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                int i13 = Build.VERSION.SDK_INT;
                if (i13 >= 23) {
                    WeakHashMap weakHashMap = b1.f17953a;
                    if (i13 >= 23) {
                        q0.d(view2, i12, 3);
                    }
                    if (viewFindViewById11 != null) {
                        viewGroupC2.removeView(viewFindViewById11);
                    }
                    if (viewFindViewById12 != null) {
                        viewGroupC2.removeView(viewFindViewById12);
                    }
                } else {
                    if (viewFindViewById11 != null && (i12 & 1) == 0) {
                        viewGroupC2.removeView(viewFindViewById11);
                        viewFindViewById11 = null;
                    }
                    if (viewFindViewById12 != null && (i12 & 2) == 0) {
                        viewGroupC2.removeView(viewFindViewById12);
                        viewFindViewById12 = null;
                    }
                    if (viewFindViewById11 != null || viewFindViewById12 != null) {
                        AlertController$RecycleListView alertController$RecycleListView2 = eVar.f12812e;
                        if (alertController$RecycleListView2 != null) {
                            alertController$RecycleListView2.setOnScrollListener(new a(viewFindViewById11, viewFindViewById12));
                            eVar.f12812e.post(new com.yunpan.appmanage.util.l(eVar, viewFindViewById11, viewFindViewById12, 2));
                        } else {
                            if (viewFindViewById11 != null) {
                                viewGroupC2.removeView(viewFindViewById11);
                            }
                            if (viewFindViewById12 != null) {
                                viewGroupC2.removeView(viewFindViewById12);
                            }
                        }
                    }
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView3 = eVar.f12812e;
        if (alertController$RecycleListView3 == null || (listAdapter = eVar.f12828w) == null) {
            return;
        }
        alertController$RecycleListView3.setAdapter(listAdapter);
        int i14 = eVar.f12829x;
        if (i14 > -1) {
            alertController$RecycleListView3.setItemChecked(i14, true);
            alertController$RecycleListView3.setSelection(i14);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f12836f.f12823q;
        if (nestedScrollView == null || !nestedScrollView.j(keyEvent)) {
            return super.onKeyDown(i10, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f12836f.f12823q;
        if (nestedScrollView == null || !nestedScrollView.j(keyEvent)) {
            return super.onKeyUp(i10, keyEvent);
        }
        return true;
    }

    @Override // androidx.activity.n, android.app.Dialog
    public final void onStop() {
        super.onStop();
        a0 a0Var = (a0) e();
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

    @Override // androidx.activity.n, android.app.Dialog
    public final void setContentView(int i10) {
        e().h(i10);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i10) {
        super.setTitle(i10);
        e().k(getContext().getString(i10));
    }

    @Override // androidx.activity.n, android.app.Dialog
    public final void setContentView(View view) {
        e().i(view);
    }

    @Override // androidx.activity.n, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        e().j(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        h(charSequence);
        e eVar = this.f12836f;
        eVar.f12811d = charSequence;
        TextView textView = eVar.f12825t;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
