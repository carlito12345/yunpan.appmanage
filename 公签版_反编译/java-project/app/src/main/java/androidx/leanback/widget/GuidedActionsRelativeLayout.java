package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
class GuidedActionsRelativeLayout extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public final float f1491a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1492b;

    public GuidedActionsRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1492b = false;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(n1.a.f11244a);
        float f10 = typedArrayObtainStyledAttributes.getFloat(45, 40.0f);
        typedArrayObtainStyledAttributes.recycle();
        this.f1491a = f10;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        this.f1492b = false;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        View viewFindViewById;
        int size = View.MeasureSpec.getSize(i11);
        if (size > 0 && (viewFindViewById = findViewById(R.id.guidedactions_sub_list)) != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
            if (marginLayoutParams.topMargin < 0 && !this.f1492b) {
                this.f1492b = true;
            }
            if (this.f1492b) {
                marginLayoutParams.topMargin = (int) ((this.f1491a * size) / 100.0f);
            }
        }
        super.onMeasure(i10, i11);
    }
}
