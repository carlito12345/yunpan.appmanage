package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a7.b(23);

    /* renamed from: a, reason: collision with root package name */
    public final p f3540a;

    /* renamed from: b, reason: collision with root package name */
    public final p f3541b;

    /* renamed from: c, reason: collision with root package name */
    public final d f3542c;

    /* renamed from: d, reason: collision with root package name */
    public final p f3543d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3544e;

    /* renamed from: f, reason: collision with root package name */
    public final int f3545f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3546g;

    public b(p pVar, p pVar2, d dVar, p pVar3, int i10) {
        Objects.requireNonNull(pVar, "start cannot be null");
        Objects.requireNonNull(pVar2, "end cannot be null");
        Objects.requireNonNull(dVar, "validator cannot be null");
        this.f3540a = pVar;
        this.f3541b = pVar2;
        this.f3543d = pVar3;
        this.f3544e = i10;
        this.f3542c = dVar;
        if (pVar3 != null && pVar.f3591a.compareTo(pVar3.f3591a) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (pVar3 != null && pVar3.f3591a.compareTo(pVar2.f3591a) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i10 < 0 || i10 > x.c(null).getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.f3546g = pVar.d(pVar2) + 1;
        this.f3545f = (pVar2.f3593c - pVar.f3593c) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f3540a.equals(bVar.f3540a) && this.f3541b.equals(bVar.f3541b) && qf.c.o(this.f3543d, bVar.f3543d) && this.f3544e == bVar.f3544e && this.f3542c.equals(bVar.f3542c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3540a, this.f3541b, this.f3543d, Integer.valueOf(this.f3544e), this.f3542c});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f3540a, 0);
        parcel.writeParcelable(this.f3541b, 0);
        parcel.writeParcelable(this.f3543d, 0);
        parcel.writeParcelable(this.f3542c, 0);
        parcel.writeInt(this.f3544e);
    }
}
