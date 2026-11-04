package x0;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public final class o0 implements View.OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public j2 f18033a = null;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f18034b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x f18035c;

    public o0(View view, x xVar) {
        this.f18034b = view;
        this.f18035c = xVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        j2 j2VarH = j2.h(view, windowInsets);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 30) {
            p0.a(windowInsets, this.f18034b);
            if (j2VarH.equals(this.f18033a)) {
                return this.f18035c.z(view, j2VarH).g();
            }
        }
        this.f18033a = j2VarH;
        j2 j2VarZ = this.f18035c.z(view, j2VarH);
        if (i10 >= 30) {
            return j2VarZ.g();
        }
        b1.v(view);
        return j2VarZ.g();
    }
}
