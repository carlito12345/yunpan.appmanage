package y1;

import android.media.MediaFormat;

/* loaded from: classes.dex */
public final class u implements androidx.media3.exoplayer.video.x, k2.a, x0 {

    /* renamed from: a, reason: collision with root package name */
    public androidx.media3.exoplayer.video.x f18812a;

    /* renamed from: b, reason: collision with root package name */
    public k2.a f18813b;

    /* renamed from: c, reason: collision with root package name */
    public androidx.media3.exoplayer.video.x f18814c;

    /* renamed from: d, reason: collision with root package name */
    public k2.a f18815d;

    @Override // k2.a
    public final void a(long j10, float[] fArr) {
        k2.a aVar = this.f18815d;
        if (aVar != null) {
            aVar.a(j10, fArr);
        }
        k2.a aVar2 = this.f18813b;
        if (aVar2 != null) {
            aVar2.a(j10, fArr);
        }
    }

    @Override // k2.a
    public final void b() {
        k2.a aVar = this.f18815d;
        if (aVar != null) {
            aVar.b();
        }
        k2.a aVar2 = this.f18813b;
        if (aVar2 != null) {
            aVar2.b();
        }
    }

    @Override // androidx.media3.exoplayer.video.x
    public final void c(long j10, long j11, r1.p pVar, MediaFormat mediaFormat) {
        androidx.media3.exoplayer.video.x xVar = this.f18814c;
        if (xVar != null) {
            xVar.c(j10, j11, pVar, mediaFormat);
        }
        androidx.media3.exoplayer.video.x xVar2 = this.f18812a;
        if (xVar2 != null) {
            xVar2.c(j10, j11, pVar, mediaFormat);
        }
    }

    @Override // y1.x0
    public final void d(int i10, Object obj) {
        if (i10 == 7) {
            this.f18812a = (androidx.media3.exoplayer.video.x) obj;
            return;
        }
        if (i10 == 8) {
            this.f18813b = (k2.a) obj;
            return;
        }
        if (i10 != 10000) {
            return;
        }
        k2.k kVar = (k2.k) obj;
        if (kVar == null) {
            this.f18814c = null;
            this.f18815d = null;
        } else {
            this.f18814c = kVar.getVideoFrameMetadataListener();
            this.f18815d = kVar.getCameraMotionListener();
        }
    }
}
