package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class q extends BaseAdapter {

    /* renamed from: d, reason: collision with root package name */
    public static final int f3598d = x.c(null).getMaximum(4);

    /* renamed from: e, reason: collision with root package name */
    public static final int f3599e = (x.c(null).getMaximum(7) + x.c(null).getMaximum(5)) - 1;

    /* renamed from: a, reason: collision with root package name */
    public final p f3600a;

    /* renamed from: b, reason: collision with root package name */
    public c f3601b;

    /* renamed from: c, reason: collision with root package name */
    public final b f3602c;

    public q(p pVar, b bVar) {
        this.f3600a = pVar;
        this.f3602c = bVar;
        throw null;
    }

    public final int a() {
        int firstDayOfWeek = this.f3602c.f3544e;
        p pVar = this.f3600a;
        Calendar calendar = pVar.f3591a;
        int i10 = calendar.get(7);
        if (firstDayOfWeek <= 0) {
            firstDayOfWeek = calendar.getFirstDayOfWeek();
        }
        int i11 = i10 - firstDayOfWeek;
        return i11 < 0 ? i11 + pVar.f3594d : i11;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i10) {
        if (i10 < a() || i10 > c()) {
            return null;
        }
        int iA = (i10 - a()) + 1;
        Calendar calendarA = x.a(this.f3600a.f3591a);
        calendarA.set(5, iA);
        return Long.valueOf(calendarA.getTimeInMillis());
    }

    public final int c() {
        return (a() + this.f3600a.f3595e) - 1;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return f3599e;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        return i10 / this.f3600a.f3594d;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005d  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.f3601b == null) {
            this.f3601b = new c(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        int iA = i10 - a();
        if (iA >= 0) {
            p pVar = this.f3600a;
            if (iA >= pVar.f3595e) {
                textView.setVisibility(8);
                textView.setEnabled(false);
            } else {
                textView.setTag(pVar);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(iA + 1)));
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        }
        if (getItem(i10) == null || textView == null) {
            return textView;
        }
        textView.getContext();
        x.b().getTimeInMillis();
        throw null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
