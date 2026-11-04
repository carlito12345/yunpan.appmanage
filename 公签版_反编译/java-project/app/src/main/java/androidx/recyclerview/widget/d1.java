package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class d1 extends f1 {
    public d1(RecyclerView.LayoutManager layoutManager) {
        super(layoutManager);
    }

    @Override // androidx.recyclerview.widget.f1
    public final int b(View view) {
        return this.f2111a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }

    @Override // androidx.recyclerview.widget.f1
    public final int c(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return this.f2111a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    @Override // androidx.recyclerview.widget.f1
    public final int d(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return this.f2111a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.f1
    public final int e(View view) {
        return this.f2111a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    @Override // androidx.recyclerview.widget.f1
    public final int f() {
        return this.f2111a.getWidth();
    }

    @Override // androidx.recyclerview.widget.f1
    public final int g() {
        RecyclerView.LayoutManager layoutManager = this.f2111a;
        return layoutManager.getWidth() - layoutManager.getPaddingRight();
    }

    @Override // androidx.recyclerview.widget.f1
    public final int h() {
        return this.f2111a.getPaddingRight();
    }

    @Override // androidx.recyclerview.widget.f1
    public final int i() {
        return this.f2111a.getWidthMode();
    }

    @Override // androidx.recyclerview.widget.f1
    public final int j() {
        return this.f2111a.getHeightMode();
    }

    @Override // androidx.recyclerview.widget.f1
    public final int k() {
        return this.f2111a.getPaddingLeft();
    }

    @Override // androidx.recyclerview.widget.f1
    public final int l() {
        RecyclerView.LayoutManager layoutManager = this.f2111a;
        return (layoutManager.getWidth() - layoutManager.getPaddingLeft()) - layoutManager.getPaddingRight();
    }

    @Override // androidx.recyclerview.widget.f1
    public final int n(View view) {
        RecyclerView.LayoutManager layoutManager = this.f2111a;
        Rect rect = this.f2113c;
        layoutManager.getTransformedBoundingBox(view, true, rect);
        return rect.right;
    }

    @Override // androidx.recyclerview.widget.f1
    public final int o(View view) {
        RecyclerView.LayoutManager layoutManager = this.f2111a;
        Rect rect = this.f2113c;
        layoutManager.getTransformedBoundingBox(view, true, rect);
        return rect.left;
    }

    @Override // androidx.recyclerview.widget.f1
    public final void p(int i10) {
        this.f2111a.offsetChildrenHorizontal(i10);
    }
}
