package com.owen.tvrecyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n2;

/* loaded from: classes.dex */
public class V7GridLayoutManager extends androidx.recyclerview.widget.GridLayoutManager {
    private int mExtraLayoutSpace;

    public V7GridLayoutManager(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10, 0);
        this.mExtraLayoutSpace = 500;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public int getExtraLayoutSpace(n2 n2Var) {
        return this.mExtraLayoutSpace;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z4) {
        return recyclerView instanceof TvRecyclerView ? recyclerView.requestChildRectangleOnScreen(view, rect, z) : super.requestChildRectangleOnScreen(recyclerView, view, rect, z, z4);
    }

    public void setExtraLayoutSpace(int i10) {
        this.mExtraLayoutSpace = i10;
    }

    public V7GridLayoutManager(Context context, int i10) {
        super(i10);
        this.mExtraLayoutSpace = 500;
    }

    public V7GridLayoutManager(Context context, int i10, int i11, boolean z) {
        super(i10, i11, z);
        this.mExtraLayoutSpace = 500;
    }
}
