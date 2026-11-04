package com.google.android.material.datepicker;

import android.graphics.Canvas;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n2;
import androidx.recyclerview.widget.v1;

/* loaded from: classes.dex */
public final class h extends v1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f3559a;

    public h(k kVar) {
        this.f3559a = kVar;
        x.c(null);
        x.c(null);
    }

    @Override // androidx.recyclerview.widget.v1
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, n2 n2Var) {
        if ((recyclerView.getAdapter() instanceof z) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            this.f3559a.getClass();
            throw null;
        }
    }
}
