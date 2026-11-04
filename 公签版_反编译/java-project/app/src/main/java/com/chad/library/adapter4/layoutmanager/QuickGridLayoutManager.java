package com.chad.library.adapter4.layoutmanager;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g2;
import androidx.recyclerview.widget.j0;
import androidx.recyclerview.widget.m1;
import g6.a;
import ue.d;

/* loaded from: classes.dex */
public class QuickGridLayoutManager extends GridLayoutManager {

    /* renamed from: a, reason: collision with root package name */
    public final a f3432a;

    /* renamed from: b, reason: collision with root package name */
    public m1 f3433b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickGridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        d.e(context, "context");
        a aVar = new a(this);
        this.f3432a = aVar;
        aVar.f6055c = getSpanSizeLookup();
        super.setSpanSizeLookup(aVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAdapterChanged(m1 m1Var, m1 m1Var2) {
        this.f3433b = m1Var2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f3433b = recyclerView != null ? recyclerView.getAdapter() : null;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onDetachedFromWindow(RecyclerView recyclerView, g2 g2Var) {
        super.onDetachedFromWindow(recyclerView, g2Var);
        this.f3433b = null;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager
    public final void setSpanSizeLookup(j0 j0Var) {
        this.f3432a.f6055c = j0Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickGridLayoutManager(Context context, int i10) {
        super(i10);
        d.e(context, "context");
        a aVar = new a(this);
        this.f3432a = aVar;
        aVar.f6055c = getSpanSizeLookup();
        super.setSpanSizeLookup(aVar);
    }
}
