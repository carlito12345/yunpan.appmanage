package com.google.android.material.datepicker;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class p implements Comparable, Parcelable {
    public static final Parcelable.Creator<p> CREATOR = new a7.b(25);

    /* renamed from: a, reason: collision with root package name */
    public final Calendar f3591a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3592b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3593c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3594d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3595e;

    /* renamed from: f, reason: collision with root package name */
    public final long f3596f;

    /* renamed from: g, reason: collision with root package name */
    public String f3597g;

    public p(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarA = x.a(calendar);
        this.f3591a = calendarA;
        this.f3592b = calendarA.get(2);
        this.f3593c = calendarA.get(1);
        this.f3594d = calendarA.getMaximum(7);
        this.f3595e = calendarA.getActualMaximum(5);
        this.f3596f = calendarA.getTimeInMillis();
    }

    public static p a(int i10, int i11) {
        Calendar calendarC = x.c(null);
        calendarC.set(1, i10);
        calendarC.set(2, i11);
        return new p(calendarC);
    }

    public static p b(long j10) {
        Calendar calendarC = x.c(null);
        calendarC.setTimeInMillis(j10);
        return new p(calendarC);
    }

    public final String c() {
        String dateTime;
        if (this.f3597g == null) {
            long timeInMillis = this.f3591a.getTimeInMillis();
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
            this.f3597g = dateTime;
        }
        return this.f3597g;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f3591a.compareTo(((p) obj).f3591a);
    }

    public final int d(p pVar) {
        if (!(this.f3591a instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (pVar.f3592b - this.f3592b) + ((pVar.f3593c - this.f3593c) * 12);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f3592b == pVar.f3592b && this.f3593c == pVar.f3593c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3592b), Integer.valueOf(this.f3593c)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f3593c);
        parcel.writeInt(this.f3592b);
    }
}
