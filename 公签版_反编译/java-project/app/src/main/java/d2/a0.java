package d2;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* loaded from: classes.dex */
public final class a0 implements z {

    /* renamed from: a, reason: collision with root package name */
    public final int f4245a;

    /* renamed from: b, reason: collision with root package name */
    public MediaCodecInfo[] f4246b;

    public a0(boolean z, boolean z4, boolean z10) {
        this.f4245a = (z || z4 || z10) ? 1 : 0;
    }

    @Override // d2.z
    public final boolean c(MediaCodecInfo.CodecCapabilities codecCapabilities, String str) {
        return codecCapabilities.isFeatureRequired(str);
    }

    @Override // d2.z
    public final MediaCodecInfo d(int i10) {
        if (this.f4246b == null) {
            this.f4246b = new MediaCodecList(this.f4245a).getCodecInfos();
        }
        return this.f4246b[i10];
    }

    @Override // d2.z
    public final boolean i(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(str);
    }

    @Override // d2.z
    public final int r() {
        if (this.f4246b == null) {
            this.f4246b = new MediaCodecList(this.f4245a).getCodecInfos();
        }
        return this.f4246b.length;
    }

    @Override // d2.z
    public final boolean w() {
        return true;
    }
}
