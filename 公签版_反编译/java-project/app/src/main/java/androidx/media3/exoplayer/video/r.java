package androidx.media3.exoplayer.video;

import android.util.Base64;

/* loaded from: classes.dex */
public final /* synthetic */ class r implements t7.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1965a;

    @Override // t7.n
    public final Object get() {
        switch (this.f1965a) {
            case 0:
                try {
                    return Class.forName("androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
                } catch (Exception e7) {
                    throw new IllegalStateException(e7);
                }
            case 1:
                throw new IllegalStateException();
            case 2:
                return new y1.g();
            default:
                byte[] bArr = new byte[12];
                z1.g.f19357i.nextBytes(bArr);
                return Base64.encodeToString(bArr, 10);
        }
    }
}
