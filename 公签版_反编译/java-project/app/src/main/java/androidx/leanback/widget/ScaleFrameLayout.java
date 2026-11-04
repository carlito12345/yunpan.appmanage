package androidx.leanback.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class ScaleFrameLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public float f1546a;

    /* renamed from: b, reason: collision with root package name */
    public float f1547b;

    /* renamed from: c, reason: collision with root package name */
    public float f1548c;

    public ScaleFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1546a = 1.0f;
        this.f1547b = 1.0f;
        this.f1548c = 1.0f;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        view.setScaleX(this.f1548c);
        view.setScaleY(this.f1548c);
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z) {
        boolean zAddViewInLayout = super.addViewInLayout(view, i10, layoutParams, z);
        if (zAddViewInLayout) {
            view.setScaleX(this.f1548c);
            view.setScaleY(this.f1548c);
        }
        return zAddViewInLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00de  */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        int paddingLeft;
        int i14;
        int paddingRight;
        int paddingTop;
        int i15;
        int paddingBottom;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        ScaleFrameLayout scaleFrameLayout = this;
        int childCount = getChildCount();
        int layoutDirection = getLayoutDirection();
        float width = layoutDirection == 1 ? getWidth() - getPivotX() : getPivotX();
        if (scaleFrameLayout.f1546a != 1.0f) {
            int paddingLeft2 = getPaddingLeft();
            float f10 = scaleFrameLayout.f1546a;
            paddingLeft = paddingLeft2 + ((int) ((width - (width / f10)) + 0.5f));
            i14 = (int) ((((i12 - i10) - width) / f10) + width + 0.5f);
            paddingRight = getPaddingRight();
        } else {
            paddingLeft = getPaddingLeft();
            i14 = i12 - i10;
            paddingRight = getPaddingRight();
        }
        int i22 = i14 - paddingRight;
        float pivotY = getPivotY();
        if (scaleFrameLayout.f1547b != 1.0f) {
            int paddingTop2 = getPaddingTop();
            float f11 = scaleFrameLayout.f1547b;
            paddingTop = paddingTop2 + ((int) ((pivotY - (pivotY / f11)) + 0.5f));
            i15 = (int) ((((i13 - i11) - pivotY) / f11) + pivotY + 0.5f);
            paddingBottom = getPaddingBottom();
        } else {
            paddingTop = getPaddingTop();
            i15 = i13 - i11;
            paddingBottom = getPaddingBottom();
        }
        int i23 = i15 - paddingBottom;
        int i24 = 0;
        while (i24 < childCount) {
            View childAt = scaleFrameLayout.getChildAt(i24);
            if (childAt.getVisibility() != 8) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i25 = layoutParams.gravity;
                if (i25 == -1) {
                    i25 = 8388659;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i25, layoutDirection);
                int i26 = i25 & 112;
                int i27 = absoluteGravity & 7;
                if (i27 == 1) {
                    i16 = (((i22 - paddingLeft) - measuredWidth) / 2) + paddingLeft + layoutParams.leftMargin;
                    i17 = layoutParams.rightMargin;
                } else if (i27 != 5) {
                    i18 = layoutParams.leftMargin + paddingLeft;
                    if (i26 != 16) {
                        i19 = (((i23 - paddingTop) - measuredHeight) / 2) + paddingTop + layoutParams.topMargin;
                        i20 = layoutParams.bottomMargin;
                    } else if (i26 == 48 || i26 != 80) {
                        int i28 = layoutParams.topMargin;
                        i21 = i28 + paddingTop;
                        childAt.layout(i18, i21, measuredWidth + i18, measuredHeight + i21);
                        childAt.setPivotX(width - i18);
                        childAt.setPivotY(pivotY - i21);
                    } else {
                        i19 = i23 - measuredHeight;
                        i20 = layoutParams.bottomMargin;
                    }
                    i21 = i19 - i20;
                    childAt.layout(i18, i21, measuredWidth + i18, measuredHeight + i21);
                    childAt.setPivotX(width - i18);
                    childAt.setPivotY(pivotY - i21);
                } else {
                    i16 = i22 - measuredWidth;
                    i17 = layoutParams.rightMargin;
                }
                i18 = i16 - i17;
                if (i26 != 16) {
                }
                i21 = i19 - i20;
                childAt.layout(i18, i21, measuredWidth + i18, measuredHeight + i21);
                childAt.setPivotX(width - i18);
                childAt.setPivotY(pivotY - i21);
            }
            i24++;
            scaleFrameLayout = this;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        float f10 = this.f1546a;
        if (f10 == 1.0f && this.f1547b == 1.0f) {
            super.onMeasure(i10, i11);
            return;
        }
        if (f10 != 1.0f) {
            i10 = View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i10) / f10) + 0.5f), View.MeasureSpec.getMode(i10));
        }
        float f11 = this.f1547b;
        if (f11 != 1.0f) {
            i11 = View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i11) / f11) + 0.5f), View.MeasureSpec.getMode(i11));
        }
        super.onMeasure(i10, i11);
        setMeasuredDimension((int) ((getMeasuredWidth() * this.f1546a) + 0.5f), (int) ((getMeasuredHeight() * this.f1547b) + 0.5f));
    }

    public void setChildScale(float f10) {
        if (this.f1548c != f10) {
            this.f1548c = f10;
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                getChildAt(i10).setScaleX(f10);
                getChildAt(i10).setScaleY(f10);
            }
        }
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        throw new UnsupportedOperationException();
    }

    public void setLayoutScaleX(float f10) {
        if (f10 != this.f1546a) {
            this.f1546a = f10;
            requestLayout();
        }
    }

    public void setLayoutScaleY(float f10) {
        if (f10 != this.f1547b) {
            this.f1547b = f10;
            requestLayout();
        }
    }
}
