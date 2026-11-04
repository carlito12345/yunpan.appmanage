package a7;

import a2.t0;
import a7.b;
import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat$QueueItem;
import android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.ParcelableVolumeInfo;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.activity.result.i;
import androidx.fragment.app.a1;
import androidx.fragment.app.f1;
import androidx.fragment.app.i1;
import androidx.leanback.widget.p;
import androidx.recyclerview.widget.b3;
import androidx.recyclerview.widget.z0;
import androidx.recyclerview.widget.z2;
import androidx.versionedparcelable.ParcelImpl;
import b1.l;
import mb.q;
import mb.w;
import moe.shizuku.api.BinderContainer;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f451a;

    public /* synthetic */ b(int i10) {
        this.f451a = i10;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(final Parcel parcel) {
        Uri uri;
        switch (this.f451a) {
            case 0:
                return new c(parcel);
            case 1:
                return new Parcelable(parcel) { // from class: android.support.v4.media.MediaBrowserCompat$MediaItem
                    public static final Parcelable.Creator<MediaBrowserCompat$MediaItem> CREATOR = new b(1);

                    /* renamed from: a, reason: collision with root package name */
                    public final int f719a;

                    /* renamed from: b, reason: collision with root package name */
                    public final MediaDescriptionCompat f720b;

                    {
                        this.f719a = parcel.readInt();
                        this.f720b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                    }

                    @Override // android.os.Parcelable
                    public final int describeContents() {
                        return 0;
                    }

                    public final String toString() {
                        return "MediaItem{mFlags=" + this.f719a + ", mDescription=" + this.f720b + '}';
                    }

                    @Override // android.os.Parcelable
                    public final void writeToParcel(Parcel parcel2, int i10) {
                        parcel2.writeInt(this.f719a);
                        this.f720b.writeToParcel(parcel2, i10);
                    }
                };
            case 2:
                int i10 = Build.VERSION.SDK_INT;
                if (i10 < 21) {
                    return new MediaDescriptionCompat(parcel);
                }
                Object objCreateFromParcel = MediaDescription.CREATOR.createFromParcel(parcel);
                if (objCreateFromParcel == null || i10 < 21) {
                    return null;
                }
                String mediaId = t0.g(objCreateFromParcel).getMediaId();
                CharSequence title = t0.g(objCreateFromParcel).getTitle();
                CharSequence subtitle = t0.g(objCreateFromParcel).getSubtitle();
                CharSequence description = t0.g(objCreateFromParcel).getDescription();
                Bitmap iconBitmap = t0.g(objCreateFromParcel).getIconBitmap();
                Uri iconUri = t0.g(objCreateFromParcel).getIconUri();
                Bundle extras = t0.g(objCreateFromParcel).getExtras();
                if (extras != null) {
                    extras.setClassLoader(android.support.v4.media.session.b.class.getClassLoader());
                    uri = (Uri) extras.getParcelable("android.support.v4.media.description.MEDIA_URI");
                } else {
                    uri = null;
                }
                if (uri != null) {
                    if (extras.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") && extras.size() == 2) {
                        extras = null;
                    } else {
                        extras.remove("android.support.v4.media.description.MEDIA_URI");
                        extras.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                    }
                }
                MediaDescriptionCompat mediaDescriptionCompat = new MediaDescriptionCompat(mediaId, title, subtitle, description, iconBitmap, iconUri, extras, uri != null ? uri : i10 >= 23 ? t0.g(objCreateFromParcel).getMediaUri() : null);
                mediaDescriptionCompat.f729i = objCreateFromParcel;
                return mediaDescriptionCompat;
            case 3:
                return new MediaMetadataCompat(parcel);
            case 4:
                return new RatingCompat(parcel.readFloat(), parcel.readInt());
            case 5:
                return new Parcelable(parcel) { // from class: android.support.v4.media.session.MediaSessionCompat$QueueItem
                    public static final Parcelable.Creator<MediaSessionCompat$QueueItem> CREATOR = new a7.b(5);

                    /* renamed from: a, reason: collision with root package name */
                    public final MediaDescriptionCompat f733a;

                    /* renamed from: b, reason: collision with root package name */
                    public final long f734b;

                    {
                        this.f733a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                        this.f734b = parcel.readLong();
                    }

                    @Override // android.os.Parcelable
                    public final int describeContents() {
                        return 0;
                    }

                    public final String toString() {
                        StringBuilder sb2 = new StringBuilder("MediaSession.QueueItem {Description=");
                        sb2.append(this.f733a);
                        sb2.append(", Id=");
                        return a.t(sb2, this.f734b, " }");
                    }

                    @Override // android.os.Parcelable
                    public final void writeToParcel(Parcel parcel2, int i11) {
                        this.f733a.writeToParcel(parcel2, i11);
                        parcel2.writeLong(this.f734b);
                    }
                };
            case 6:
                return new Parcelable(parcel) { // from class: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper
                    public static final Parcelable.Creator<MediaSessionCompat$ResultReceiverWrapper> CREATOR = new a7.b(6);

                    /* renamed from: a, reason: collision with root package name */
                    public final ResultReceiver f735a;

                    {
                        this.f735a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
                    }

                    @Override // android.os.Parcelable
                    public final int describeContents() {
                        return 0;
                    }

                    @Override // android.os.Parcelable
                    public final void writeToParcel(Parcel parcel2, int i11) {
                        this.f735a.writeToParcel(parcel2, i11);
                    }
                };
            case 7:
                final Object parcelable = Build.VERSION.SDK_INT >= 21 ? parcel.readParcelable(null) : parcel.readStrongBinder();
                return new Parcelable(parcelable) { // from class: android.support.v4.media.session.MediaSessionCompat$Token
                    public static final Parcelable.Creator<MediaSessionCompat$Token> CREATOR = new a7.b(7);

                    /* renamed from: a, reason: collision with root package name */
                    public final Object f736a;

                    {
                        this.f736a = parcelable;
                    }

                    @Override // android.os.Parcelable
                    public final int describeContents() {
                        return 0;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (!(obj instanceof MediaSessionCompat$Token)) {
                            return false;
                        }
                        MediaSessionCompat$Token mediaSessionCompat$Token = (MediaSessionCompat$Token) obj;
                        Object obj2 = this.f736a;
                        if (obj2 == null) {
                            return mediaSessionCompat$Token.f736a == null;
                        }
                        Object obj3 = mediaSessionCompat$Token.f736a;
                        if (obj3 == null) {
                            return false;
                        }
                        return obj2.equals(obj3);
                    }

                    public final int hashCode() {
                        Object obj = this.f736a;
                        if (obj == null) {
                            return 0;
                        }
                        return obj.hashCode();
                    }

                    @Override // android.os.Parcelable
                    public final void writeToParcel(Parcel parcel2, int i11) {
                        int i12 = Build.VERSION.SDK_INT;
                        Object obj = this.f736a;
                        if (i12 >= 21) {
                            parcel2.writeParcelable((Parcelable) obj, i11);
                        } else {
                            parcel2.writeStrongBinder((IBinder) obj);
                        }
                    }
                };
            case 8:
                return new ParcelableVolumeInfo(parcel);
            case 9:
                return new PlaybackStateCompat(parcel);
            case 10:
                return new androidx.activity.result.a(parcel);
            case 11:
                ue.d.e(parcel, "inParcel");
                Parcelable parcelable2 = parcel.readParcelable(IntentSender.class.getClassLoader());
                ue.d.b(parcelable2);
                return new i((IntentSender) parcelable2, (Intent) parcel.readParcelable(Intent.class.getClassLoader()), parcel.readInt(), parcel.readInt());
            case 12:
                return new androidx.fragment.app.b(parcel);
            case 13:
                return new androidx.fragment.app.c(parcel);
            case 14:
                return new a1(parcel);
            case 15:
                return new f1(parcel);
            case 16:
                return new i1(parcel);
            case 17:
                return new p(parcel);
            case 18:
                return new z0(parcel);
            case 19:
                return new z2(parcel);
            case 20:
                return new b3(parcel);
            case 21:
                return new l(parcel);
            case 22:
                return new BinderContainer(parcel);
            case 23:
                return new com.google.android.material.datepicker.b((com.google.android.material.datepicker.p) parcel.readParcelable(com.google.android.material.datepicker.p.class.getClassLoader()), (com.google.android.material.datepicker.p) parcel.readParcelable(com.google.android.material.datepicker.p.class.getClassLoader()), (com.google.android.material.datepicker.d) parcel.readParcelable(com.google.android.material.datepicker.d.class.getClassLoader()), (com.google.android.material.datepicker.p) parcel.readParcelable(com.google.android.material.datepicker.p.class.getClassLoader()), parcel.readInt());
            case 24:
                return new com.google.android.material.datepicker.d(parcel.readLong());
            case 25:
                return com.google.android.material.datepicker.p.a(parcel.readInt(), parcel.readInt());
            case 26:
                return new j.d(parcel);
            case 27:
                return new ParcelImpl(parcel);
            case 28:
                return new m6.a(parcel);
            default:
                w wVar = new w();
                wVar.f11127c = parcel.readInt();
                wVar.f11130f = parcel.readInt();
                wVar.f11126b = parcel.readInt() > 0;
                for (int i11 = parcel.readInt(); i11 > 0; i11--) {
                    wVar.f11125a.add((q) parcel.readParcelable(w.class.getClassLoader()));
                }
                return wVar;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        switch (this.f451a) {
            case 0:
                return new c[i10];
            case 1:
                return new MediaBrowserCompat$MediaItem[i10];
            case 2:
                return new MediaDescriptionCompat[i10];
            case 3:
                return new MediaMetadataCompat[i10];
            case 4:
                return new RatingCompat[i10];
            case 5:
                return new MediaSessionCompat$QueueItem[i10];
            case 6:
                return new MediaSessionCompat$ResultReceiverWrapper[i10];
            case 7:
                return new MediaSessionCompat$Token[i10];
            case 8:
                return new ParcelableVolumeInfo[i10];
            case 9:
                return new PlaybackStateCompat[i10];
            case 10:
                return new androidx.activity.result.a[i10];
            case 11:
                return new i[i10];
            case 12:
                return new androidx.fragment.app.b[i10];
            case 13:
                return new androidx.fragment.app.c[i10];
            case 14:
                return new a1[i10];
            case 15:
                return new f1[i10];
            case 16:
                return new i1[i10];
            case 17:
                return new p[i10];
            case 18:
                return new z0[i10];
            case 19:
                return new z2[i10];
            case 20:
                return new b3[i10];
            case 21:
                return new l[i10];
            case 22:
                return new BinderContainer[i10];
            case 23:
                return new com.google.android.material.datepicker.b[i10];
            case 24:
                return new com.google.android.material.datepicker.d[i10];
            case 25:
                return new com.google.android.material.datepicker.p[i10];
            case 26:
                return new j.d[i10];
            case 27:
                return new ParcelImpl[i10];
            case 28:
                return new m6.a[i10];
            default:
                return new w[i10];
        }
    }
}
