package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a7.b(9);

    /* renamed from: a, reason: collision with root package name */
    public final int f742a;

    /* renamed from: b, reason: collision with root package name */
    public final long f743b;

    /* renamed from: c, reason: collision with root package name */
    public final long f744c;

    /* renamed from: d, reason: collision with root package name */
    public final float f745d;

    /* renamed from: e, reason: collision with root package name */
    public final long f746e;

    /* renamed from: f, reason: collision with root package name */
    public final int f747f;

    /* renamed from: g, reason: collision with root package name */
    public final CharSequence f748g;

    /* renamed from: h, reason: collision with root package name */
    public final long f749h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f750i;

    /* renamed from: j, reason: collision with root package name */
    public final long f751j;

    /* renamed from: k, reason: collision with root package name */
    public final Bundle f752k;

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new c();

        /* renamed from: a, reason: collision with root package name */
        public final String f753a;

        /* renamed from: b, reason: collision with root package name */
        public final CharSequence f754b;

        /* renamed from: c, reason: collision with root package name */
        public final int f755c;

        /* renamed from: d, reason: collision with root package name */
        public final Bundle f756d;

        public CustomAction(Parcel parcel) {
            this.f753a = parcel.readString();
            this.f754b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f755c = parcel.readInt();
            this.f756d = parcel.readBundle(b.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f754b) + ", mIcon=" + this.f755c + ", mExtras=" + this.f756d;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f753a);
            TextUtils.writeToParcel(this.f754b, parcel, i10);
            parcel.writeInt(this.f755c);
            parcel.writeBundle(this.f756d);
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f742a = parcel.readInt();
        this.f743b = parcel.readLong();
        this.f745d = parcel.readFloat();
        this.f749h = parcel.readLong();
        this.f744c = parcel.readLong();
        this.f746e = parcel.readLong();
        this.f748g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f750i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f751j = parcel.readLong();
        this.f752k = parcel.readBundle(b.class.getClassLoader());
        this.f747f = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("PlaybackState {state=");
        sb2.append(this.f742a);
        sb2.append(", position=");
        sb2.append(this.f743b);
        sb2.append(", buffered position=");
        sb2.append(this.f744c);
        sb2.append(", speed=");
        sb2.append(this.f745d);
        sb2.append(", updated=");
        sb2.append(this.f749h);
        sb2.append(", actions=");
        sb2.append(this.f746e);
        sb2.append(", error code=");
        sb2.append(this.f747f);
        sb2.append(", error message=");
        sb2.append(this.f748g);
        sb2.append(", custom actions=");
        sb2.append(this.f750i);
        sb2.append(", active item id=");
        return a.t(sb2, this.f751j, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f742a);
        parcel.writeLong(this.f743b);
        parcel.writeFloat(this.f745d);
        parcel.writeLong(this.f749h);
        parcel.writeLong(this.f744c);
        parcel.writeLong(this.f746e);
        TextUtils.writeToParcel(this.f748g, parcel, i10);
        parcel.writeTypedList(this.f750i);
        parcel.writeLong(this.f751j);
        parcel.writeBundle(this.f752k);
        parcel.writeInt(this.f747f);
    }
}
