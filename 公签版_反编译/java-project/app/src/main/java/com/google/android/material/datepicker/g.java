package com.google.android.material.datepicker;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n2;

/* loaded from: classes.dex */
public final class g extends LinearLayoutManager {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3557a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f3558b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(k kVar, int i10, int i11) {
        super(i10, false);
        this.f3558b = kVar;
        this.f3557a = i11;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void calculateExtraLayoutSpace(n2 n2Var, int[] iArr) {
        int i10 = this.f3557a;
        k kVar = this.f3558b;
        if (i10 == 0) {
            iArr[0] = kVar.f3571h.getWidth();
            iArr[1] = kVar.f3571h.getWidth();
        } else {
            iArr[0] = kVar.f3571h.getHeight();
            iArr[1] = kVar.f3571h.getHeight();
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, n2 n2Var, int i10) {
        v vVar = new v(recyclerView.getContext());
        vVar.setTargetPosition(i10);
        startSmoothScroll(vVar);
    }
}
