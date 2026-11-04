package h4;

import android.graphics.Matrix;
import android.view.View;

/* loaded from: classes.dex */
public final class j0 extends i0 {
    @Override // h4.f0, gf.g
    public final float C(View view) {
        return view.getTransitionAlpha();
    }

    @Override // h4.h0, gf.g
    public final void G(View view, int i10, int i11, int i12, int i13) {
        view.setLeftTopRightBottom(i10, i11, i12, i13);
    }

    @Override // h4.f0, gf.g
    public final void H(View view, float f10) {
        view.setTransitionAlpha(f10);
    }

    @Override // h4.i0, gf.g
    public final void I(int i10, View view) {
        view.setTransitionVisibility(i10);
    }

    @Override // h4.g0, gf.g
    public final void J(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // h4.g0, gf.g
    public final void K(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
