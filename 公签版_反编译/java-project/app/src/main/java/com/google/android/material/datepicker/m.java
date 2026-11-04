package com.google.android.material.datepicker;

import android.view.View;
import x0.j2;

/* loaded from: classes.dex */
public final class m implements x0.x {

    /* renamed from: a, reason: collision with root package name */
    public final View f3577a;

    /* renamed from: b, reason: collision with root package name */
    public int f3578b;

    /* renamed from: c, reason: collision with root package name */
    public int f3579c;

    public m(View view) {
        this.f3577a = view;
    }

    @Override // x0.x
    public j2 z(View view, j2 j2Var) {
        int i10 = j2Var.f18006a.f(7).f12541b;
        View view2 = this.f3577a;
        int i11 = this.f3578b;
        if (i11 >= 0) {
            view2.getLayoutParams().height = i11 + i10;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        view2.setPadding(view2.getPaddingLeft(), this.f3579c + i10, view2.getPaddingRight(), view2.getPaddingBottom());
        return j2Var;
    }

    public m(View view, int i10, int i11) {
        this.f3578b = i10;
        this.f3577a = view;
        this.f3579c = i11;
    }
}
