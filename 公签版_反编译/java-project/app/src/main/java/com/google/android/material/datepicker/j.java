package com.google.android.material.datepicker;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.os.Build;
import android.text.format.DateUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.d2;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class j extends d2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f3562a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialButton f3563b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f3564c;

    public j(k kVar, t tVar, MaterialButton materialButton) {
        this.f3564c = kVar;
        this.f3562a = tVar;
        this.f3563b = materialButton;
    }

    @Override // androidx.recyclerview.widget.d2
    public final void a(RecyclerView recyclerView, int i10) {
        if (i10 == 0) {
            recyclerView.announceForAccessibility(this.f3563b.getText());
        }
    }

    @Override // androidx.recyclerview.widget.d2
    public final void b(RecyclerView recyclerView, int i10, int i11) {
        String dateTime;
        k kVar = this.f3564c;
        int iFindFirstVisibleItemPosition = i10 < 0 ? ((LinearLayoutManager) kVar.f3571h.getLayoutManager()).findFirstVisibleItemPosition() : ((LinearLayoutManager) kVar.f3571h.getLayoutManager()).findLastVisibleItemPosition();
        b bVar = this.f3562a.f3607d;
        Calendar calendarA = x.a(bVar.f3540a.f3591a);
        calendarA.add(2, iFindFirstVisibleItemPosition);
        kVar.f3567d = new p(calendarA);
        Calendar calendarA2 = x.a(bVar.f3540a.f3591a);
        calendarA2.add(2, iFindFirstVisibleItemPosition);
        calendarA2.set(5, 1);
        Calendar calendarA3 = x.a(calendarA2);
        calendarA3.get(2);
        calendarA3.get(1);
        calendarA3.getMaximum(7);
        calendarA3.getActualMaximum(5);
        calendarA3.getTimeInMillis();
        long timeInMillis = calendarA3.getTimeInMillis();
        if (Build.VERSION.SDK_INT >= 24) {
            Locale locale = Locale.getDefault();
            AtomicReference atomicReference = x.f3611a;
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
            instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
            instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
            dateTime = instanceForSkeleton.format(new Date(timeInMillis));
        } else {
            dateTime = DateUtils.formatDateTime(null, timeInMillis, 8228);
        }
        this.f3563b.setText(dateTime);
    }
}
