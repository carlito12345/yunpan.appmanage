package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m1;
import com.yunpan.appmanage.R;
import java.util.Locale;

/* loaded from: classes.dex */
public final class z extends m1 {

    /* renamed from: d, reason: collision with root package name */
    public final k f3613d;

    public z(k kVar) {
        this.f3613d = kVar;
    }

    @Override // androidx.recyclerview.widget.m1
    public final int b() {
        return this.f3613d.f3566c.f3545f;
    }

    @Override // androidx.recyclerview.widget.m1
    public final void g(RecyclerView.ViewHolder viewHolder, int i10) {
        k kVar = this.f3613d;
        int i11 = kVar.f3566c.f3540a.f3593c + i10;
        String str = String.format(Locale.getDefault(), "%d", Integer.valueOf(i11));
        TextView textView = ((y) viewHolder).f3612a;
        textView.setText(str);
        Context context = textView.getContext();
        textView.setContentDescription(x.b().get(1) == i11 ? String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i11)) : String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i11)));
        c cVar = kVar.f3569f;
        if (x.b().get(1) == i11) {
            gf.g gVar = cVar.f3548b;
        } else {
            gf.g gVar2 = cVar.f3547a;
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.m1
    public final RecyclerView.ViewHolder i(int i10, ViewGroup viewGroup) {
        return new y((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
