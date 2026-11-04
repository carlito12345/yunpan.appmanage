package h4;

import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class i0 extends h0 {

    /* renamed from: j, reason: collision with root package name */
    public static boolean f6439j = true;

    @Override // gf.g
    public void I(int i10, View view) {
        if (Build.VERSION.SDK_INT == 28) {
            super.I(i10, view);
        } else if (f6439j) {
            try {
                view.setTransitionVisibility(i10);
            } catch (NoSuchMethodError unused) {
                f6439j = false;
            }
        }
    }
}
