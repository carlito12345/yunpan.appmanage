package w;

import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public final class m3 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final v.a f17154a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n3 f17155b;

    public m3(n3 n3Var) {
        this.f17155b = n3Var;
        this.f17154a = new v.a(n3Var.f17162a.getContext(), n3Var.f17169h);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        n3 n3Var = this.f17155b;
        Window.Callback callback = n3Var.f17172k;
        if (callback == null || !n3Var.l) {
            return;
        }
        callback.onMenuItemSelected(0, this.f17154a);
    }
}
