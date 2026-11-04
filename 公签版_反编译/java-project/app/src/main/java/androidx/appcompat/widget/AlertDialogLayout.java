package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import ta.q;
import w.y1;
import w.z1;
import x0.b1;
import x0.j0;
import x0.k0;

/* loaded from: classes.dex */
public class AlertDialogLayout extends z1 {
    public AlertDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public static int l(View view) {
        WeakHashMap weakHashMap = b1.f17953a;
        int iD = j0.d(view);
        if (iD > 0) {
            return iD;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() == 1) {
                return l(viewGroup.getChildAt(0));
            }
        }
        return 0;
    }

    @Override // w.z1, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        int paddingLeft = getPaddingLeft();
        int i14 = i12 - i10;
        int paddingRight = i14 - getPaddingRight();
        int paddingRight2 = (i14 - paddingLeft) - getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        int i15 = gravity & 112;
        int i16 = gravity & 8388615;
        int paddingTop = i15 != 16 ? i15 != 80 ? getPaddingTop() : ((getPaddingTop() + i13) - i11) - measuredHeight : (((i13 - i11) - measuredHeight) / 2) + getPaddingTop();
        Drawable dividerDrawable = getDividerDrawable();
        int intrinsicHeight = dividerDrawable == null ? 0 : dividerDrawable.getIntrinsicHeight();
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt != null && childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight2 = childAt.getMeasuredHeight();
                y1 y1Var = (y1) childAt.getLayoutParams();
                int i18 = ((LinearLayout.LayoutParams) y1Var).gravity;
                if (i18 < 0) {
                    i18 = i16;
                }
                WeakHashMap weakHashMap = b1.f17953a;
                int absoluteGravity = Gravity.getAbsoluteGravity(i18, k0.d(this)) & 7;
                int iG = absoluteGravity != 1 ? absoluteGravity != 5 ? ((LinearLayout.LayoutParams) y1Var).leftMargin + paddingLeft : (paddingRight - measuredWidth) - ((LinearLayout.LayoutParams) y1Var).rightMargin : (q.g(paddingRight2, measuredWidth, 2, paddingLeft) + ((LinearLayout.LayoutParams) y1Var).leftMargin) - ((LinearLayout.LayoutParams) y1Var).rightMargin;
                if (k(i17)) {
                    paddingTop += intrinsicHeight;
                }
                int i19 = paddingTop + ((LinearLayout.LayoutParams) y1Var).topMargin;
                childAt.layout(iG, i19, measuredWidth + iG, i19 + measuredHeight2);
                paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) y1Var).bottomMargin + i19;
            }
        }
    }

    @Override // w.z1, android.view.View
    public final void onMeasure(int i10, int i11) {
        int iCombineMeasuredStates;
        int iL;
        int measuredHeight;
        int measuredHeight2;
        int childCount = getChildCount();
        View view = null;
        View view2 = null;
        View view3 = null;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                int id2 = childAt.getId();
                if (id2 == R.id.topPanel) {
                    view = childAt;
                } else if (id2 == R.id.buttonPanel) {
                    view2 = childAt;
                } else {
                    if ((id2 != R.id.contentPanel && id2 != R.id.customPanel) || view3 != null) {
                        super.onMeasure(i10, i11);
                        return;
                    }
                    view3 = childAt;
                }
            }
        }
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i10);
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (view != null) {
            view.measure(i10, 0);
            paddingBottom += view.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(0, view.getMeasuredState());
        } else {
            iCombineMeasuredStates = 0;
        }
        if (view2 != null) {
            view2.measure(i10, 0);
            iL = l(view2);
            measuredHeight = view2.getMeasuredHeight() - iL;
            paddingBottom += iL;
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
        } else {
            iL = 0;
            measuredHeight = 0;
        }
        if (view3 != null) {
            view3.measure(i10, mode == 0 ? 0 : View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingBottom), mode));
            measuredHeight2 = view3.getMeasuredHeight();
            paddingBottom += measuredHeight2;
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
        } else {
            measuredHeight2 = 0;
        }
        int i13 = size - paddingBottom;
        if (view2 != null) {
            int i14 = paddingBottom - iL;
            int iMin = Math.min(i13, measuredHeight);
            if (iMin > 0) {
                i13 -= iMin;
                iL += iMin;
            }
            view2.measure(i10, View.MeasureSpec.makeMeasureSpec(iL, 1073741824));
            paddingBottom = i14 + view2.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
        }
        if (view3 != null && i13 > 0) {
            view3.measure(i10, View.MeasureSpec.makeMeasureSpec(measuredHeight2 + i13, mode));
            paddingBottom = (paddingBottom - measuredHeight2) + view3.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
        }
        int iMax = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt2 = getChildAt(i15);
            if (childAt2.getVisibility() != 8) {
                iMax = Math.max(iMax, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(getPaddingRight() + getPaddingLeft() + iMax, i10, iCombineMeasuredStates), View.resolveSizeAndState(paddingBottom, i11, 0));
        if (mode2 != 1073741824) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt3 = getChildAt(i16);
                if (childAt3.getVisibility() != 8) {
                    y1 y1Var = (y1) childAt3.getLayoutParams();
                    if (((LinearLayout.LayoutParams) y1Var).width == -1) {
                        int i17 = ((LinearLayout.LayoutParams) y1Var).height;
                        ((LinearLayout.LayoutParams) y1Var).height = childAt3.getMeasuredHeight();
                        measureChildWithMargins(childAt3, iMakeMeasureSpec, 0, i11, 0);
                        ((LinearLayout.LayoutParams) y1Var).height = i17;
                    }
                }
            }
        }
    }
}
