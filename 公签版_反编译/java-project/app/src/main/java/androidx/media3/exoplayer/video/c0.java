package androidx.media3.exoplayer.video;

import androidx.media3.exoplayer.video.VideoFrameReleaseHelper;

/* loaded from: classes.dex */
public final /* synthetic */ class c0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1857a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1858b;

    public /* synthetic */ c0(int i10, Object obj) {
        this.f1857a = i10;
        this.f1858b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1857a) {
            case 0:
                ((VideoFrameReleaseHelper.VSyncSamplerV33) this.f1858b).lambda$onVsync$0();
                break;
            case 1:
                ((d) this.f1858b).f1866h.s();
                break;
            default:
                v vVar = (v) this.f1858b;
                vVar.f1978m--;
                break;
        }
    }
}
