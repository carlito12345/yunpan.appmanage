package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;

/* loaded from: classes.dex */
class MediaBrowserCompat$ItemReceiver extends c.d {
    @Override // c.d
    public final void a(int i, Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(android.support.v4.media.session.a.class.getClassLoader());
        }
        if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
            throw null;
        }
        Parcelable parcelable = bundle.getParcelable("media_item");
        if (parcelable != null && !(parcelable instanceof MediaBrowserCompat$MediaItem)) {
            throw null;
        }
        throw null;
    }
}
