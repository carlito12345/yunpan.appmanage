package v;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import ua.c2;
import w.m2;
import w.t1;
import x0.b1;
import x0.k0;

/* loaded from: classes.dex */
public final class c0 extends s implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* renamed from: b, reason: collision with root package name */
    public final Context f16179b;

    /* renamed from: c, reason: collision with root package name */
    public final k f16180c;

    /* renamed from: d, reason: collision with root package name */
    public final h f16181d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f16182e;

    /* renamed from: f, reason: collision with root package name */
    public final int f16183f;

    /* renamed from: g, reason: collision with root package name */
    public final int f16184g;

    /* renamed from: h, reason: collision with root package name */
    public final m2 f16185h;

    /* renamed from: i, reason: collision with root package name */
    public final c2 f16186i;

    /* renamed from: j, reason: collision with root package name */
    public final q7.o f16187j;

    /* renamed from: k, reason: collision with root package name */
    public t f16188k;
    public View l;

    /* renamed from: m, reason: collision with root package name */
    public View f16189m;

    /* renamed from: n, reason: collision with root package name */
    public w f16190n;

    /* renamed from: p, reason: collision with root package name */
    public ViewTreeObserver f16191p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f16192q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public int f16193s;

    /* renamed from: t, reason: collision with root package name */
    public int f16194t = 0;

    /* renamed from: v, reason: collision with root package name */
    public boolean f16195v;

    public c0(int i10, Context context, View view, k kVar, boolean z) {
        int i11 = 2;
        this.f16186i = new c2(i11, this);
        this.f16187j = new q7.o(i11, this);
        this.f16179b = context;
        this.f16180c = kVar;
        this.f16182e = z;
        this.f16181d = new h(kVar, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.f16184g = i10;
        Resources resources = context.getResources();
        this.f16183f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.l = view;
        this.f16185h = new m2(context, i10);
        kVar.b(this, context);
    }

    @Override // v.x
    public final void a(k kVar, boolean z) {
        if (kVar != this.f16180c) {
            return;
        }
        dismiss();
        w wVar = this.f16190n;
        if (wVar != null) {
            wVar.a(kVar, z);
        }
    }

    @Override // v.b0
    public final boolean b() {
        return !this.f16192q && this.f16185h.B.isShowing();
    }

    @Override // v.x
    public final void c(w wVar) {
        this.f16190n = wVar;
    }

    @Override // v.x
    public final boolean d() {
        return false;
    }

    @Override // v.b0
    public final void dismiss() {
        if (b()) {
            this.f16185h.dismiss();
        }
    }

    @Override // v.x
    public final void g() {
        this.r = false;
        h hVar = this.f16181d;
        if (hVar != null) {
            hVar.notifyDataSetChanged();
        }
    }

    @Override // v.b0
    public final t1 h() {
        return this.f16185h.f17070c;
    }

    @Override // v.x
    public final boolean j(d0 d0Var) {
        if (d0Var.hasVisibleItems()) {
            View view = this.f16189m;
            v vVar = new v(this.f16184g, this.f16179b, view, d0Var, this.f16182e);
            w wVar = this.f16190n;
            vVar.f16297h = wVar;
            s sVar = vVar.f16298i;
            if (sVar != null) {
                sVar.c(wVar);
            }
            boolean zT = s.t(d0Var);
            vVar.f16296g = zT;
            s sVar2 = vVar.f16298i;
            if (sVar2 != null) {
                sVar2.n(zT);
            }
            vVar.f16299j = this.f16188k;
            this.f16188k = null;
            this.f16180c.c(false);
            m2 m2Var = this.f16185h;
            int width = m2Var.f17073f;
            int iN = m2Var.n();
            int i10 = this.f16194t;
            View view2 = this.l;
            WeakHashMap weakHashMap = b1.f17953a;
            if ((Gravity.getAbsoluteGravity(i10, k0.d(view2)) & 7) == 5) {
                width += this.l.getWidth();
            }
            if (!vVar.b()) {
                if (vVar.f16294e != null) {
                    vVar.d(width, iN, true, true);
                }
            }
            w wVar2 = this.f16190n;
            if (wVar2 != null) {
                wVar2.d(d0Var);
            }
            return true;
        }
        return false;
    }

    @Override // v.s
    public final void m(View view) {
        this.l = view;
    }

    @Override // v.s
    public final void n(boolean z) {
        this.f16181d.f16229c = z;
    }

    @Override // v.s
    public final void o(int i10) {
        this.f16194t = i10;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f16192q = true;
        this.f16180c.c(true);
        ViewTreeObserver viewTreeObserver = this.f16191p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f16191p = this.f16189m.getViewTreeObserver();
            }
            this.f16191p.removeGlobalOnLayoutListener(this.f16186i);
            this.f16191p = null;
        }
        this.f16189m.removeOnAttachStateChangeListener(this.f16187j);
        t tVar = this.f16188k;
        if (tVar != null) {
            tVar.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i10 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // v.s
    public final void p(int i10) {
        this.f16185h.f17073f = i10;
    }

    @Override // v.s
    public final void q(PopupWindow.OnDismissListener onDismissListener) {
        this.f16188k = (t) onDismissListener;
    }

    @Override // v.s
    public final void r(boolean z) {
        this.f16195v = z;
    }

    @Override // v.s
    public final void s(int i10) {
        this.f16185h.j(i10);
    }

    @Override // v.b0
    public final void show() {
        View view;
        if (b()) {
            return;
        }
        if (this.f16192q || (view = this.l) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.f16189m = view;
        m2 m2Var = this.f16185h;
        m2Var.B.setOnDismissListener(this);
        m2Var.f17082q = this;
        m2Var.A = true;
        m2Var.B.setFocusable(true);
        View view2 = this.f16189m;
        boolean z = this.f16191p == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f16191p = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f16186i);
        }
        view2.addOnAttachStateChangeListener(this.f16187j);
        m2Var.f17081p = view2;
        m2Var.l = this.f16194t;
        boolean z4 = this.r;
        Context context = this.f16179b;
        h hVar = this.f16181d;
        if (!z4) {
            this.f16193s = s.l(hVar, context, this.f16183f);
            this.r = true;
        }
        m2Var.q(this.f16193s);
        m2Var.B.setInputMethodMode(2);
        Rect rect = this.f16288a;
        m2Var.z = rect != null ? new Rect(rect) : null;
        m2Var.show();
        t1 t1Var = m2Var.f17070c;
        t1Var.setOnKeyListener(this);
        if (this.f16195v) {
            k kVar = this.f16180c;
            if (kVar.f16244m != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) t1Var, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(kVar.f16244m);
                }
                frameLayout.setEnabled(false);
                t1Var.addHeaderView(frameLayout, null, false);
            }
        }
        m2Var.o(hVar);
        m2Var.show();
    }

    @Override // v.s
    public final void k(k kVar) {
    }
}
