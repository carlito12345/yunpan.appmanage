package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
public final class r implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendarGridView f3603a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f3604b;

    public r(t tVar, MaterialCalendarGridView materialCalendarGridView) {
        this.f3604b = tVar;
        this.f3603a = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        MaterialCalendarGridView materialCalendarGridView = this.f3603a;
        q qVarA = materialCalendarGridView.a();
        if (i10 < qVarA.a() || i10 > qVarA.c()) {
            return;
        }
        if (materialCalendarGridView.a().getItem(i10).longValue() >= ((k) this.f3604b.f3608e.f76b).f3566c.f3542c.f3549a) {
            throw null;
        }
    }
}
