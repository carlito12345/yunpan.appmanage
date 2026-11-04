package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.d;
import e.b;
import e.c;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new d(10);

    /* renamed from: a, reason: collision with root package name */
    public final c f51a;

    public ParcelImpl(Parcel parcel) {
        this.f51a = new b(parcel).f();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        new b(parcel).i(this.f51a);
    }
}
