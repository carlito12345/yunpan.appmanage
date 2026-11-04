package androidx.versionedparcelable;

import a7.b;
import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import j4.c;
import java.lang.reflect.InvocationTargetException;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new b(27);

    /* renamed from: a, reason: collision with root package name */
    public final c f2442a;

    public ParcelImpl(Parcel parcel) {
        this.f2442a = new j4.b(parcel).h();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        new j4.b(parcel).k(this.f2442a);
    }
}
