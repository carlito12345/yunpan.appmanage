package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new d(1);

    /* renamed from: a, reason: collision with root package name */
    public final String f16a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f17b;

    /* renamed from: c, reason: collision with root package name */
    public final CharSequence f18c;

    /* renamed from: d, reason: collision with root package name */
    public final CharSequence f19d;

    /* renamed from: e, reason: collision with root package name */
    public final Bitmap f20e;

    /* renamed from: f, reason: collision with root package name */
    public final Uri f21f;
    public final Bundle g;
    public final Uri h;
    public Object i;

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f16a = str;
        this.f17b = charSequence;
        this.f18c = charSequence2;
        this.f19d = charSequence3;
        this.f20e = bitmap;
        this.f21f = uri;
        this.g = bundle;
        this.h = uri2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f17b) + ", " + ((Object) this.f18c) + ", " + ((Object) this.f19d);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Object objBuild = this.i;
        if (objBuild == null) {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f16a);
            builder.setTitle(this.f17b);
            builder.setSubtitle(this.f18c);
            builder.setDescription(this.f19d);
            builder.setIconBitmap(this.f20e);
            builder.setIconUri(this.f21f);
            builder.setExtras(this.g);
            builder.setMediaUri(this.h);
            objBuild = builder.build();
            this.i = objBuild;
        }
        ((MediaDescription) objBuild).writeToParcel(parcel, i);
    }
}
