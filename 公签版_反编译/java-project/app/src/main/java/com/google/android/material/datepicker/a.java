package com.google.android.material.datepicker;

import java.util.Calendar;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: f, reason: collision with root package name */
    public static final long f3533f;

    /* renamed from: g, reason: collision with root package name */
    public static final long f3534g;

    /* renamed from: a, reason: collision with root package name */
    public final long f3535a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3536b;

    /* renamed from: c, reason: collision with root package name */
    public Long f3537c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3538d;

    /* renamed from: e, reason: collision with root package name */
    public final d f3539e;

    static {
        p pVarA = p.a(1900, 0);
        Calendar calendarC = x.c(null);
        calendarC.setTimeInMillis(pVarA.f3596f);
        f3533f = x.a(calendarC).getTimeInMillis();
        p pVarA2 = p.a(2100, 11);
        Calendar calendarC2 = x.c(null);
        calendarC2.setTimeInMillis(pVarA2.f3596f);
        f3534g = x.a(calendarC2).getTimeInMillis();
    }

    public a(b bVar) {
        this.f3535a = f3533f;
        this.f3536b = f3534g;
        this.f3539e = new d(Long.MIN_VALUE);
        this.f3535a = bVar.f3540a.f3596f;
        this.f3536b = bVar.f3541b.f3596f;
        this.f3537c = Long.valueOf(bVar.f3543d.f3596f);
        this.f3538d = bVar.f3544e;
        this.f3539e = bVar.f3542c;
    }
}
