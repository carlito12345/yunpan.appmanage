package h4;

import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public abstract class d0 {

    /* renamed from: a, reason: collision with root package name */
    public static final gf.g f6422a;

    /* renamed from: b, reason: collision with root package name */
    public static final androidx.leanback.widget.a0 f6423b;

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            f6422a = new j0();
        } else if (i10 >= 23) {
            f6422a = new i0();
        } else if (i10 >= 22) {
            f6422a = new h0();
        } else if (i10 >= 21) {
            f6422a = new g0();
        } else if (i10 >= 19) {
            f6422a = new f0();
        } else {
            f6422a = new gf.g(27);
        }
        f6423b = new androidx.leanback.widget.a0(9);
        new androidx.leanback.widget.a0(10);
    }

    public static void a(View view, int i10, int i11, int i12, int i13) {
        f6422a.G(view, i10, i11, i12, i13);
    }
}
