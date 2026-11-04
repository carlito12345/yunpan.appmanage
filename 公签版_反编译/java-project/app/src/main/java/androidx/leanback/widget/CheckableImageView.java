package androidx.leanback.widget;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.ImageView;

/* loaded from: classes.dex */
class CheckableImageView extends ImageView implements Checkable {

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f1483b = {R.attr.state_checked};

    /* renamed from: a, reason: collision with root package name */
    public boolean f1484a;

    public CheckableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f1484a;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        if (this.f1484a) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1483b);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z) {
        if (this.f1484a != z) {
            this.f1484a = z;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f1484a);
    }
}
