package a2;

import android.media.AudioTrack;

/* loaded from: classes.dex */
public final class r0 {

    /* renamed from: a, reason: collision with root package name */
    public final q0 f282a;

    /* renamed from: b, reason: collision with root package name */
    public final int f283b;

    /* renamed from: c, reason: collision with root package name */
    public final a1.i f284c;

    /* renamed from: d, reason: collision with root package name */
    public int f285d;

    /* renamed from: e, reason: collision with root package name */
    public long f286e;

    /* renamed from: f, reason: collision with root package name */
    public long f287f;

    /* renamed from: g, reason: collision with root package name */
    public long f288g;

    /* renamed from: h, reason: collision with root package name */
    public long f289h;

    /* renamed from: i, reason: collision with root package name */
    public long f290i;

    public r0(AudioTrack audioTrack, a1.i iVar) {
        this.f282a = new q0(audioTrack);
        this.f283b = audioTrack.getSampleRate();
        this.f284c = iVar;
        a(0);
    }

    public final void a(int i10) {
        this.f285d = i10;
        if (i10 == 0) {
            this.f288g = 0L;
            this.f289h = -1L;
            this.f290i = -9223372036854775807L;
            this.f286e = System.nanoTime() / 1000;
            this.f287f = 10000L;
            return;
        }
        if (i10 == 1) {
            this.f287f = 10000L;
            return;
        }
        if (i10 == 2 || i10 == 3) {
            this.f287f = 10000000L;
        } else {
            if (i10 != 4) {
                throw new IllegalStateException();
            }
            this.f287f = 500000L;
        }
    }
}
