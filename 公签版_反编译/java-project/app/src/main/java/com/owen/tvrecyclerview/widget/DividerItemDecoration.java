package com.owen.tvrecyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.v1;
import com.owen.tvrecyclerview.BaseLayoutManager;
import w9.a;

/* loaded from: classes.dex */
public class DividerItemDecoration extends v1 {
    private final Drawable mHorizontalDivider;
    private final ItemSpacingOffsets mItemSpacing;
    private final Drawable mVerticalDivider;

    public DividerItemDecoration(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private static ItemSpacingOffsets createSpacing(Drawable drawable, Drawable drawable2) {
        ItemSpacingOffsets itemSpacingOffsets = new ItemSpacingOffsets(drawable2 != null ? drawable2.getIntrinsicHeight() : 0, drawable != null ? drawable.getIntrinsicWidth() : 0);
        itemSpacingOffsets.setAddSpacingAtEnd(true);
        return itemSpacingOffsets;
    }

    @Override // androidx.recyclerview.widget.v1
    public void getItemOffsets(Rect rect, int i10, RecyclerView recyclerView) {
        this.mItemSpacing.getItemOffsets(rect, i10, recyclerView);
    }

    @Override // androidx.recyclerview.widget.v1
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        BaseLayoutManager baseLayoutManager;
        BaseLayoutManager baseLayoutManager2 = (BaseLayoutManager) recyclerView.getLayoutManager();
        int width = recyclerView.getWidth() - recyclerView.getPaddingRight();
        int height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
        int childCount = recyclerView.getChildCount();
        int i10 = 0;
        while (i10 < childCount) {
            View childAt = recyclerView.getChildAt(i10);
            int decoratedLeft = baseLayoutManager2.getDecoratedLeft(childAt);
            int decoratedTop = baseLayoutManager2.getDecoratedTop(childAt);
            int decoratedRight = baseLayoutManager2.getDecoratedRight(childAt);
            int decoratedBottom = baseLayoutManager2.getDecoratedBottom(childAt);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int bottom = (decoratedBottom - childAt.getBottom()) - marginLayoutParams.bottomMargin;
            if (bottom <= 0 || decoratedBottom >= height) {
                baseLayoutManager = baseLayoutManager2;
            } else {
                int i11 = decoratedBottom - bottom;
                baseLayoutManager = baseLayoutManager2;
                this.mHorizontalDivider.setBounds(decoratedLeft, i11, decoratedRight, this.mHorizontalDivider.getIntrinsicHeight() + i11);
                this.mHorizontalDivider.draw(canvas);
            }
            int right = (decoratedRight - childAt.getRight()) - marginLayoutParams.rightMargin;
            if (right > 0 && decoratedRight < width) {
                int i12 = decoratedRight - right;
                this.mVerticalDivider.setBounds(i12, decoratedTop, this.mVerticalDivider.getIntrinsicWidth() + i12, decoratedBottom);
                this.mVerticalDivider.draw(canvas);
            }
            i10++;
            baseLayoutManager2 = baseLayoutManager;
        }
    }

    public DividerItemDecoration(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f17649c, i10, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            this.mHorizontalDivider = drawable;
            this.mVerticalDivider = drawable;
        } else {
            this.mVerticalDivider = typedArrayObtainStyledAttributes.getDrawable(2);
            this.mHorizontalDivider = typedArrayObtainStyledAttributes.getDrawable(1);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.mItemSpacing = createSpacing(this.mVerticalDivider, this.mHorizontalDivider);
    }

    public DividerItemDecoration(Drawable drawable) {
        this(drawable, drawable);
    }

    public DividerItemDecoration(Drawable drawable, Drawable drawable2) {
        this.mVerticalDivider = drawable;
        this.mHorizontalDivider = drawable2;
        this.mItemSpacing = createSpacing(drawable, drawable2);
    }
}
