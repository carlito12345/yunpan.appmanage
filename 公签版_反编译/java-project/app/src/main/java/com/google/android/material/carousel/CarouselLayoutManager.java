package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g2;
import androidx.recyclerview.widget.l2;
import androidx.recyclerview.widget.n2;
import ub.a;
import z6.b;
import z6.c;
import z6.d;
import z6.e;
import z6.g;

/* loaded from: classes.dex */
public class CarouselLayoutManager extends RecyclerView.LayoutManager implements l2 {

    /* renamed from: a, reason: collision with root package name */
    public e f3513a;

    /* renamed from: b, reason: collision with root package name */
    public final View.OnLayoutChangeListener f3514b;

    public CarouselLayoutManager() {
        new g();
        new b();
        this.f3514b = new a(3, this);
        requestLayout();
        setOrientation(0);
    }

    public final boolean a() {
        return this.f3513a.f19443a == 0;
    }

    public final boolean b() {
        return a() && getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollHorizontally() {
        return a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        return !a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollExtent(n2 n2Var) {
        getChildCount();
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollOffset(n2 n2Var) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollRange(n2 n2Var) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.l2
    public final PointF computeScrollVectorForPosition(int i10) {
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollExtent(n2 n2Var) {
        getChildCount();
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollOffset(n2 n2Var) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollRange(n2 n2Var) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void getDecoratedBoundsWithMargins(View view, Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        rect.centerY();
        if (a()) {
            rect.centerX();
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void measureChildWithMargins(View view, int i10, int i11) {
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        requestLayout();
        recyclerView.addOnLayoutChangeListener(this.f3514b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onDetachedFromWindow(RecyclerView recyclerView, g2 g2Var) {
        super.onDetachedFromWindow(recyclerView, g2Var);
        recyclerView.removeOnLayoutChangeListener(this.f3514b);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0041  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View onFocusSearchFailed(View view, int i10, g2 g2Var, n2 n2Var) {
        char c7;
        if (getChildCount() == 0) {
            return null;
        }
        int i11 = this.f3513a.f19443a;
        if (i10 == 1) {
            c7 = 65535;
        } else if (i10 == 2) {
            c7 = 1;
        } else if (i10 == 17) {
            if (i11 == 0) {
                if (b()) {
                }
            }
            c7 = 0;
        } else if (i10 != 33) {
            if (i10 == 66) {
                if (i11 == 0) {
                    if (b()) {
                    }
                }
                c7 = 0;
            } else if (i10 != 130 || i11 != 1) {
                c7 = 0;
            }
        } else if (i11 == 1) {
        }
        if (c7 == 0) {
            return null;
        }
        if (c7 == 65535) {
            if (getPosition(view) == 0) {
                return null;
            }
            int position = getPosition(getChildAt(0)) - 1;
            if (position < 0 || position >= getItemCount()) {
                return getChildAt(b() ? getChildCount() - 1 : 0);
            }
            this.f3513a.d();
            throw null;
        }
        if (getPosition(view) == getItemCount() - 1) {
            return null;
        }
        int position2 = getPosition(getChildAt(getChildCount() - 1)) + 1;
        if (position2 < 0 || position2 >= getItemCount()) {
            return getChildAt(b() ? 0 : getChildCount() - 1);
        }
        this.f3513a.d();
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(getPosition(getChildAt(0)));
            accessibilityEvent.setToIndex(getPosition(getChildAt(getChildCount() - 1)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsAdded(recyclerView, i10, i11);
        getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsRemoved(recyclerView, i10, i11);
        getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(g2 g2Var, n2 n2Var) {
        if (n2Var.b() > 0) {
            if ((a() ? getWidth() : getHeight()) > 0.0f) {
                b();
                measureChildWithMargins(g2Var.d(0), 0, 0);
                throw null;
            }
        }
        removeAndRecycleAllViews(g2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(n2 n2Var) {
        super.onLayoutCompleted(n2Var);
        if (getChildCount() == 0) {
            return;
        }
        getPosition(getChildAt(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z4) {
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i10, g2 g2Var, n2 n2Var) {
        if (!a() || getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        measureChildWithMargins(g2Var.d(0), 0, 0);
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void scrollToPosition(int i10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int i10, g2 g2Var, n2 n2Var) {
        if (!canScrollVertically() || getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        measureChildWithMargins(g2Var.d(0), 0, 0);
        throw null;
    }

    public final void setOrientation(int i10) {
        e dVar;
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException(da.b.a(i10, "invalid orientation:"));
        }
        assertNotInLayoutOrScroll(null);
        e eVar = this.f3513a;
        if (eVar == null || i10 != eVar.f19443a) {
            if (i10 == 0) {
                dVar = new d(this);
            } else {
                if (i10 != 1) {
                    throw new IllegalArgumentException("invalid orientation");
                }
                dVar = new c(this);
            }
            this.f3513a = dVar;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, n2 n2Var, int i10) {
        z6.a aVar = new z6.a(this, recyclerView.getContext());
        aVar.setTargetPosition(i10);
        startSmoothScroll(aVar);
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        new b();
        this.f3514b = new a(3, this);
        new g();
        requestLayout();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q6.a.f13032c);
            typedArrayObtainStyledAttributes.getInt(0, 0);
            requestLayout();
            setOrientation(typedArrayObtainStyledAttributes.getInt(0, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
