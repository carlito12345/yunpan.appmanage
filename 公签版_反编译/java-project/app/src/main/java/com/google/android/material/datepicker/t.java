package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m1;
import com.yunpan.appmanage.R;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class t extends m1 {

    /* renamed from: d, reason: collision with root package name */
    public final b f3607d;

    /* renamed from: e, reason: collision with root package name */
    public final a1.i f3608e;

    /* renamed from: f, reason: collision with root package name */
    public final int f3609f;

    public t(ContextThemeWrapper contextThemeWrapper, b bVar, a1.i iVar) {
        p pVar = bVar.f3540a;
        p pVar2 = bVar.f3543d;
        if (pVar.f3591a.compareTo(pVar2.f3591a) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (pVar2.f3591a.compareTo(bVar.f3541b.f3591a) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f3609f = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * q.f3598d) + (n.k(contextThemeWrapper, android.R.attr.windowFullscreen) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f3607d = bVar;
        this.f3608e = iVar;
        if (this.f2188a.a()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.f2189b = true;
    }

    @Override // androidx.recyclerview.widget.m1
    public final int b() {
        return this.f3607d.f3546g;
    }

    @Override // androidx.recyclerview.widget.m1
    public final long c(int i10) {
        Calendar calendarA = x.a(this.f3607d.f3540a.f3591a);
        calendarA.add(2, i10);
        calendarA.set(5, 1);
        Calendar calendarA2 = x.a(calendarA);
        calendarA2.get(2);
        calendarA2.get(1);
        calendarA2.getMaximum(7);
        calendarA2.getActualMaximum(5);
        calendarA2.getTimeInMillis();
        return calendarA2.getTimeInMillis();
    }

    @Override // androidx.recyclerview.widget.m1
    public final void g(RecyclerView.ViewHolder viewHolder, int i10) {
        s sVar = (s) viewHolder;
        b bVar = this.f3607d;
        Calendar calendarA = x.a(bVar.f3540a.f3591a);
        calendarA.add(2, i10);
        p pVar = new p(calendarA);
        sVar.f3605a.setText(pVar.c());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) sVar.f3606b.findViewById(R.id.month_grid);
        if (materialCalendarGridView.a() == null || !pVar.equals(materialCalendarGridView.a().f3600a)) {
            new q(pVar, bVar);
            throw null;
        }
        materialCalendarGridView.invalidate();
        materialCalendarGridView.a().getClass();
        throw null;
    }

    @Override // androidx.recyclerview.widget.m1
    public final RecyclerView.ViewHolder i(int i10, ViewGroup viewGroup) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!n.k(viewGroup.getContext(), android.R.attr.windowFullscreen)) {
            return new s(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f3609f));
        return new s(linearLayout, true);
    }
}
