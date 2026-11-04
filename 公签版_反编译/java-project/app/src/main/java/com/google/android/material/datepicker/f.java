package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3554a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f3555b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f3556c;

    public /* synthetic */ f(k kVar, t tVar, int i10) {
        this.f3554a = i10;
        this.f3556c = kVar;
        this.f3555b = tVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f3554a) {
            case 0:
                k kVar = this.f3556c;
                int iFindLastVisibleItemPosition = ((LinearLayoutManager) kVar.f3571h.getLayoutManager()).findLastVisibleItemPosition() - 1;
                if (iFindLastVisibleItemPosition >= 0) {
                    Calendar calendarA = x.a(this.f3555b.f3607d.f3540a.f3591a);
                    calendarA.add(2, iFindLastVisibleItemPosition);
                    kVar.g(new p(calendarA));
                    break;
                }
                break;
            default:
                k kVar2 = this.f3556c;
                int iFindFirstVisibleItemPosition = ((LinearLayoutManager) kVar2.f3571h.getLayoutManager()).findFirstVisibleItemPosition() + 1;
                if (iFindFirstVisibleItemPosition < kVar2.f3571h.getAdapter().b()) {
                    Calendar calendarA2 = x.a(this.f3555b.f3607d.f3540a.f3591a);
                    calendarA2.add(2, iFindFirstVisibleItemPosition);
                    kVar2.g(new p(calendarA2));
                    break;
                }
                break;
        }
    }
}
