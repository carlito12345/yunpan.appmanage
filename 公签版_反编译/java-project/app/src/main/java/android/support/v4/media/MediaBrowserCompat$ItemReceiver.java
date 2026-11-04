package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.b;
import j.d;

/* loaded from: classes.dex */
class MediaBrowserCompat$ItemReceiver extends d {
    @Override // j.d
    public final void a(int i10, Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(b.class.getClassLoader());
        }
        if (i10 != 0 || bundle == null || !bundle.containsKey("media_item")) {
            throw null;
        }
        Parcelable parcelable = bundle.getParcelable("media_item");
        if (parcelable != null && !(parcelable instanceof MediaBrowserCompat$MediaItem)) {
            throw null;
        }
        throw null;
    }
}
