package com.owen.tvrecyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.v1;
import w9.a;

/* loaded from: classes.dex */
public class SpacingItemDecoration extends v1 {
    protected int mHorizontalSpacing;
    protected final ItemSpacingOffsets mItemSpacing;
    protected int mVerticalSpacing;

    public SpacingItemDecoration(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.recyclerview.widget.v1
    public void getItemOffsets(Rect rect, int i10, RecyclerView recyclerView) {
        this.mItemSpacing.getItemOffsets(rect, i10, recyclerView);
        int i11 = rect.right;
    }

    public SpacingItemDecoration(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f17650d, i10, 0);
        this.mVerticalSpacing = Math.max(0, typedArrayObtainStyledAttributes.getInt(1, 0));
        this.mHorizontalSpacing = Math.max(0, typedArrayObtainStyledAttributes.getInt(0, 0));
        typedArrayObtainStyledAttributes.recycle();
        int i11 = this.mHorizontalSpacing;
        this.mItemSpacing = new ItemSpacingOffsets(i11, i11);
    }

    public SpacingItemDecoration(int i10, int i11) {
        this.mItemSpacing = new ItemSpacingOffsets(i10, i11);
    }
}
