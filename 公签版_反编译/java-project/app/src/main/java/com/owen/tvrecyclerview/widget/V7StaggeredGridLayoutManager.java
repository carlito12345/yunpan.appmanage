package com.owen.tvrecyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class V7StaggeredGridLayoutManager extends androidx.recyclerview.widget.StaggeredGridLayoutManager {
    public V7StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10, 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z4) {
        return recyclerView instanceof TvRecyclerView ? recyclerView.requestChildRectangleOnScreen(view, rect, z) : super.requestChildRectangleOnScreen(recyclerView, view, rect, z, z4);
    }

    public V7StaggeredGridLayoutManager(int i10, int i11) {
        super(i10, i11);
    }
}
