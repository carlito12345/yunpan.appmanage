package androidx.media3.exoplayer.video;

import android.view.Surface;

/* loaded from: classes.dex */
public final class g extends d2.p {
    public g(IllegalStateException illegalStateException, d2.q qVar, Surface surface) {
        super(illegalStateException, qVar);
        System.identityHashCode(surface);
        if (surface != null) {
            surface.isValid();
        }
    }
}
