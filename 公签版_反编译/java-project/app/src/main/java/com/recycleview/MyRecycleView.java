package com.recycleview;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class MyRecycleView extends RecyclerView {

    /* renamed from: a, reason: collision with root package name */
    public int f3769a;

    public MyRecycleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setDescendantFocusability(131072);
        setFocusable(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (view != null) {
            this.f3769a = getChildViewHolder(view).getBindingAdapterPosition();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i10, Rect rect) {
        getLayoutManager().findViewByPosition(this.f3769a).requestFocus();
        return false;
    }
}
