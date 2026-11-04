package h4;

import android.view.View;

/* loaded from: classes.dex */
public class h0 extends g0 {

    /* renamed from: i, reason: collision with root package name */
    public static boolean f6438i = true;

    @Override // gf.g
    public void G(View view, int i10, int i11, int i12, int i13) {
        if (f6438i) {
            try {
                view.setLeftTopRightBottom(i10, i11, i12, i13);
            } catch (NoSuchMethodError unused) {
                f6438i = false;
            }
        }
    }
}
