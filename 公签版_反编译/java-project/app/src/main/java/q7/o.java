package q7;

import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import v.c0;
import x0.b1;

/* loaded from: classes.dex */
public final class o implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13089a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13090b;

    public /* synthetic */ o(int i10, Object obj) {
        this.f13089a = i10;
        this.f13090b = obj;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        AccessibilityManager accessibilityManager;
        switch (this.f13089a) {
            case 0:
                p pVar = (p) this.f13090b;
                if (pVar.f13109w != null && (accessibilityManager = pVar.f13108v) != null && b1.l(pVar)) {
                    y0.d dVar = pVar.f13109w;
                    if (Build.VERSION.SDK_INT >= 19) {
                        y0.c.a(accessibilityManager, dVar);
                        break;
                    }
                }
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        switch (this.f13089a) {
            case 0:
                p pVar = (p) this.f13090b;
                y0.d dVar = pVar.f13109w;
                if (dVar != null && (accessibilityManager = pVar.f13108v) != null && Build.VERSION.SDK_INT >= 19) {
                    y0.c.b(accessibilityManager, dVar);
                    break;
                }
                break;
            case 1:
                v.e eVar = (v.e) this.f13090b;
                ViewTreeObserver viewTreeObserver = eVar.z;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        eVar.z = view.getViewTreeObserver();
                    }
                    eVar.z.removeGlobalOnLayoutListener(eVar.f16206i);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
            default:
                c0 c0Var = (c0) this.f13090b;
                ViewTreeObserver viewTreeObserver2 = c0Var.f16191p;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        c0Var.f16191p = view.getViewTreeObserver();
                    }
                    c0Var.f16191p.removeGlobalOnLayoutListener(c0Var.f16186i);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
        }
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }
}
