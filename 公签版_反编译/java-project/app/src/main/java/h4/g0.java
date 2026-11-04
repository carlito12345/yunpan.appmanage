package h4;

import android.graphics.Matrix;
import android.view.View;

/* loaded from: classes.dex */
public class g0 extends f0 {

    /* renamed from: g, reason: collision with root package name */
    public static boolean f6434g = true;

    /* renamed from: h, reason: collision with root package name */
    public static boolean f6435h = true;

    @Override // gf.g
    public void J(View view, Matrix matrix) {
        if (f6434g) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f6434g = false;
            }
        }
    }

    @Override // gf.g
    public void K(View view, Matrix matrix) {
        if (f6435h) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                f6435h = false;
            }
        }
    }
}
