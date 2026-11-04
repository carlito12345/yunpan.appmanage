package com.google.android.material.datepicker;

import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import x0.b1;
import x0.g0;

/* loaded from: classes.dex */
public final class s extends RecyclerView.ViewHolder {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f3605a;

    /* renamed from: b, reason: collision with root package name */
    public final MaterialCalendarGridView f3606b;

    public s(LinearLayout linearLayout, boolean z) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.f3605a = textView;
        WeakHashMap weakHashMap = b1.f17953a;
        new g0(2).f(textView, Boolean.TRUE);
        this.f3606b = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z) {
            return;
        }
        textView.setVisibility(8);
    }
}
