package w;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;

/* loaded from: classes.dex */
public final class m0 implements PopupWindow.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ua.c2 f17152a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n0 f17153b;

    public m0(n0 n0Var, ua.c2 c2Var) {
        this.f17153b = n0Var;
        this.f17152a = c2Var;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f17153b.K.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f17152a);
        }
    }
}
