package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

/* loaded from: classes.dex */
public final class g1 extends a1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h1 f2129a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g1(h1 h1Var, Context context) {
        super(context);
        this.f2129a = h1Var;
    }

    @Override // androidx.recyclerview.widget.a1
    public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // androidx.recyclerview.widget.a1
    public final int calculateTimeForScrolling(int i10) {
        return Math.min(100, super.calculateTimeForScrolling(i10));
    }

    @Override // androidx.recyclerview.widget.a1, androidx.recyclerview.widget.m2
    public final void onTargetFound(View view, n2 n2Var, k2 k2Var) {
        h1 h1Var = this.f2129a;
        int[] iArrB = h1Var.b(h1Var.f2341a.getLayoutManager(), view);
        int i10 = iArrB[0];
        int i11 = iArrB[1];
        int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i10), Math.abs(i11)));
        if (iCalculateTimeForDeceleration > 0) {
            DecelerateInterpolator decelerateInterpolator = this.mDecelerateInterpolator;
            k2Var.f2169a = i10;
            k2Var.f2170b = i11;
            k2Var.f2171c = iCalculateTimeForDeceleration;
            k2Var.f2173e = decelerateInterpolator;
            k2Var.f2174f = true;
        }
    }
}
