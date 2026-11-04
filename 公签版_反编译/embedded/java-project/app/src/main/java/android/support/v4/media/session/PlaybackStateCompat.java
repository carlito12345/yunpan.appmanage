package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.d;
import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new d(8);

    /* renamed from: a, reason: collision with root package name */
    public final int f41a;

    /* renamed from: b, reason: collision with root package name */
    public final long f42b;

    /* renamed from: c, reason: collision with root package name */
    public final long f43c;

    /* renamed from: d, reason: collision with root package name */
    public final float f44d;

    /* renamed from: e, reason: collision with root package name */
    public final long f45e;

    /* renamed from: f, reason: collision with root package name */
    public final int f46f;
    public final CharSequence g;
    public final long h;
    public final ArrayList i;
    public final long j;
    public final Bundle k;

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new b();

        /* renamed from: a, reason: collision with root package name */
        public final String f47a;

        /* renamed from: b, reason: collision with root package name */
        public final CharSequence f48b;

        /* renamed from: c, reason: collision with root package name */
        public final int f49c;

        /* renamed from: d, reason: collision with root package name */
        public final Bundle f50d;

        public CustomAction(Parcel parcel) {
            this.f47a = parcel.readString();
            this.f48b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f49c = parcel.readInt();
            this.f50d = parcel.readBundle(a.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f48b) + ", mIcon=" + this.f49c + ", mExtras=" + this.f50d;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f47a);
            TextUtils.writeToParcel(this.f48b, parcel, i);
            parcel.writeInt(this.f49c);
            parcel.writeBundle(this.f50d);
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f41a = parcel.readInt();
        this.f42b = parcel.readLong();
        this.f44d = parcel.readFloat();
        this.h = parcel.readLong();
        this.f43c = parcel.readLong();
        this.f45e = parcel.readLong();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.j = parcel.readLong();
        this.k = parcel.readBundle(a.class.getClassLoader());
        this.f46f = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "PlaybackState {state=" + this.f41a + ", position=" + this.f42b + ", buffered position=" + this.f43c + ", speed=" + this.f44d + ", updated=" + this.h + ", actions=" + this.f45e + ", error code=" + this.f46f + ", error message=" + this.g + ", custom actions=" + this.i + ", active item id=" + this.j + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f41a);
        parcel.writeLong(this.f42b);
        parcel.writeFloat(this.f44d);
        parcel.writeLong(this.h);
        parcel.writeLong(this.f43c);
        parcel.writeLong(this.f45e);
        TextUtils.writeToParcel(this.g, parcel, i);
        parcel.writeTypedList(this.i);
        parcel.writeLong(this.j);
        parcel.writeBundle(this.k);
        parcel.writeInt(this.f46f);
    }
}
