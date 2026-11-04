package d2;

import android.media.LoudnessCodecController;
import android.media.MediaCodec;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class k implements LoudnessCodecController.OnLoudnessCodecUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v3.f f4290a;

    public k(v3.f fVar) {
        this.f4290a = fVar;
    }

    public final Bundle onLoudnessCodecUpdate(MediaCodec mediaCodec, Bundle bundle) {
        ((l) this.f4290a.f16475c).getClass();
        return bundle;
    }
}
