package androidx.activity;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.l0;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public class n extends Dialog implements androidx.lifecycle.t, x, b4.g {

    /* renamed from: a, reason: collision with root package name */
    public androidx.lifecycle.v f819a;

    /* renamed from: b, reason: collision with root package name */
    public final b4.f f820b;

    /* renamed from: c, reason: collision with root package name */
    public final w f821c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(Context context, int i10) {
        super(context, i10);
        ue.d.e(context, "context");
        this.f820b = new b4.f(this);
        this.f821c = new w(new a2.h(6, this));
    }

    public static void b(n nVar) {
        ue.d.e(nVar, "this$0");
        super.onBackPressed();
    }

    @Override // androidx.activity.x
    public final w a() {
        return this.f821c;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ue.d.e(view, "view");
        d();
        super.addContentView(view, layoutParams);
    }

    public final androidx.lifecycle.v c() {
        androidx.lifecycle.v vVar = this.f819a;
        if (vVar != null) {
            return vVar;
        }
        androidx.lifecycle.v vVar2 = new androidx.lifecycle.v(this);
        this.f819a = vVar2;
        return vVar2;
    }

    public final void d() {
        Window window = getWindow();
        ue.d.b(window);
        View decorView = window.getDecorView();
        ue.d.d(decorView, "window!!.decorView");
        l0.h(decorView, this);
        Window window2 = getWindow();
        ue.d.b(window2);
        View decorView2 = window2.getDecorView();
        ue.d.d(decorView2, "window!!.decorView");
        decorView2.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        Window window3 = getWindow();
        ue.d.b(window3);
        View decorView3 = window3.getDecorView();
        ue.d.d(decorView3, "window!!.decorView");
        nh.b.j0(decorView3, this);
    }

    @Override // androidx.lifecycle.t
    public final androidx.lifecycle.o getLifecycle() {
        return c();
    }

    @Override // b4.g
    public final b4.e getSavedStateRegistry() {
        return this.f820b.f2550b;
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.f821c.b();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            ue.d.d(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            w wVar = this.f821c;
            wVar.getClass();
            wVar.f872e = onBackInvokedDispatcher;
            wVar.c(wVar.f874g);
        }
        this.f820b.b(bundle);
        c().e(androidx.lifecycle.m.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        ue.d.d(bundleOnSaveInstanceState, "super.onSaveInstanceState()");
        this.f820b.c(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        c().e(androidx.lifecycle.m.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        c().e(androidx.lifecycle.m.ON_DESTROY);
        this.f819a = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i10) {
        d();
        super.setContentView(i10);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        ue.d.e(view, "view");
        d();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ue.d.e(view, "view");
        d();
        super.setContentView(view, layoutParams);
    }
}
