package y1;

import java.util.Locale;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public int f18587a;

    /* renamed from: b, reason: collision with root package name */
    public int f18588b;

    /* renamed from: c, reason: collision with root package name */
    public int f18589c;

    /* renamed from: d, reason: collision with root package name */
    public int f18590d;

    /* renamed from: e, reason: collision with root package name */
    public int f18591e;

    /* renamed from: f, reason: collision with root package name */
    public int f18592f;

    /* renamed from: g, reason: collision with root package name */
    public int f18593g;

    /* renamed from: h, reason: collision with root package name */
    public int f18594h;

    /* renamed from: i, reason: collision with root package name */
    public int f18595i;

    /* renamed from: j, reason: collision with root package name */
    public int f18596j;

    /* renamed from: k, reason: collision with root package name */
    public long f18597k;
    public int l;

    public final String toString() {
        int i10 = this.f18587a;
        int i11 = this.f18588b;
        int i12 = this.f18589c;
        int i13 = this.f18590d;
        int i14 = this.f18591e;
        int i15 = this.f18592f;
        int i16 = this.f18593g;
        int i17 = this.f18594h;
        int i18 = this.f18595i;
        int i19 = this.f18596j;
        long j10 = this.f18597k;
        int i20 = this.l;
        String str = u1.f0.f15206a;
        Locale locale = Locale.US;
        StringBuilder sbO = ta.q.o(i10, i11, "DecoderCounters {\n decoderInits=", ",\n decoderReleases=", "\n queuedInputBuffers=");
        sbO.append(i12);
        sbO.append("\n skippedInputBuffers=");
        sbO.append(i13);
        sbO.append("\n renderedOutputBuffers=");
        sbO.append(i14);
        sbO.append("\n skippedOutputBuffers=");
        sbO.append(i15);
        sbO.append("\n droppedBuffers=");
        sbO.append(i16);
        sbO.append("\n droppedInputBuffers=");
        sbO.append(i17);
        sbO.append("\n maxConsecutiveDroppedBuffers=");
        sbO.append(i18);
        sbO.append("\n droppedToKeyframeEvents=");
        sbO.append(i19);
        sbO.append("\n totalVideoFrameProcessingOffsetUs=");
        sbO.append(j10);
        sbO.append("\n videoFrameProcessingOffsetCount=");
        sbO.append(i20);
        sbO.append("\n}");
        return sbO.toString();
    }
}
