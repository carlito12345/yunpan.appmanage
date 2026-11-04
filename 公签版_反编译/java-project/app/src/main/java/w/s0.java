package w;

import android.graphics.Typeface;
import android.os.Build;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class s0 extends o0.b {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f17252h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f17253i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ WeakReference f17254j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ y0 f17255k;

    public s0(y0 y0Var, int i10, int i11, WeakReference weakReference) {
        this.f17255k = y0Var;
        this.f17252h = i10;
        this.f17253i = i11;
        this.f17254j = weakReference;
    }

    @Override // o0.b
    public final void i(Typeface typeface) {
        int i10;
        if (Build.VERSION.SDK_INT >= 28 && (i10 = this.f17252h) != -1) {
            typeface = x0.a(typeface, i10, (this.f17253i & 2) != 0);
        }
        y0 y0Var = this.f17255k;
        if (y0Var.f17315m) {
            y0Var.l = typeface;
            TextView textView = (TextView) this.f17254j.get();
            if (textView != null) {
                if (x0.b1.l(textView)) {
                    textView.post(new androidx.activity.f(textView, typeface, y0Var.f17313j, 4));
                } else {
                    textView.setTypeface(typeface, y0Var.f17313j);
                }
            }
        }
    }

    @Override // o0.b
    public final void h(int i10) {
    }
}
