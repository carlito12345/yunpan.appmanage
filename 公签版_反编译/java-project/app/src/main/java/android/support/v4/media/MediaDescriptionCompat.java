package android.support.v4.media;

import a2.d;
import a2.t0;
import a7.b;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new b(2);

    /* renamed from: a, reason: collision with root package name */
    public final String f721a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f722b;

    /* renamed from: c, reason: collision with root package name */
    public final CharSequence f723c;

    /* renamed from: d, reason: collision with root package name */
    public final CharSequence f724d;

    /* renamed from: e, reason: collision with root package name */
    public final Bitmap f725e;

    /* renamed from: f, reason: collision with root package name */
    public final Uri f726f;

    /* renamed from: g, reason: collision with root package name */
    public final Bundle f727g;

    /* renamed from: h, reason: collision with root package name */
    public final Uri f728h;

    /* renamed from: i, reason: collision with root package name */
    public Object f729i;

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f721a = str;
        this.f722b = charSequence;
        this.f723c = charSequence2;
        this.f724d = charSequence3;
        this.f725e = bitmap;
        this.f726f = uri;
        this.f727g = bundle;
        this.f728h = uri2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f722b) + ", " + ((Object) this.f723c) + ", " + ((Object) this.f724d);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = Build.VERSION.SDK_INT;
        Uri uri = this.f728h;
        Bundle bundle = this.f727g;
        Uri uri2 = this.f726f;
        Bitmap bitmap = this.f725e;
        CharSequence charSequence = this.f724d;
        CharSequence charSequence2 = this.f723c;
        CharSequence charSequence3 = this.f722b;
        String str = this.f721a;
        if (i11 < 21) {
            parcel.writeString(str);
            TextUtils.writeToParcel(charSequence3, parcel, i10);
            TextUtils.writeToParcel(charSequence2, parcel, i10);
            TextUtils.writeToParcel(charSequence, parcel, i10);
            parcel.writeParcelable(bitmap, i10);
            parcel.writeParcelable(uri2, i10);
            parcel.writeBundle(bundle);
            parcel.writeParcelable(uri, i10);
            return;
        }
        Object objBuild = this.f729i;
        if (objBuild == null && i11 >= 21) {
            Object objJ = d.j();
            t0.e(objJ).setMediaId(str);
            t0.e(objJ).setTitle(charSequence3);
            t0.e(objJ).setSubtitle(charSequence2);
            t0.e(objJ).setDescription(charSequence);
            t0.e(objJ).setIconBitmap(bitmap);
            t0.e(objJ).setIconUri(uri2);
            if (i11 < 23 && uri != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                    bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                }
                bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", uri);
            }
            t0.e(objJ).setExtras(bundle);
            if (i11 >= 23) {
                t0.e(objJ).setMediaUri(uri);
            }
            objBuild = t0.e(objJ).build();
            this.f729i = objBuild;
        }
        t0.g(objBuild).writeToParcel(parcel, i10);
    }

    public MediaDescriptionCompat(Parcel parcel) {
        this.f721a = parcel.readString();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f722b = (CharSequence) creator.createFromParcel(parcel);
        this.f723c = (CharSequence) creator.createFromParcel(parcel);
        this.f724d = (CharSequence) creator.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f725e = (Bitmap) parcel.readParcelable(classLoader);
        this.f726f = (Uri) parcel.readParcelable(classLoader);
        this.f727g = parcel.readBundle(classLoader);
        this.f728h = (Uri) parcel.readParcelable(classLoader);
    }
}
