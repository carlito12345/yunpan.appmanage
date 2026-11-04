package v;

import android.widget.PopupWindow;

/* loaded from: classes.dex */
public final class t implements PopupWindow.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f16289a;

    public t(v vVar) {
        this.f16289a = vVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f16289a.c();
    }
}
