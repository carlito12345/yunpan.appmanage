package d2;

/* loaded from: classes.dex */
public final class s extends Exception {

    /* renamed from: a, reason: collision with root package name */
    public final String f4305a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4306b;

    /* renamed from: c, reason: collision with root package name */
    public final q f4307c;

    /* renamed from: d, reason: collision with root package name */
    public final String f4308d;

    public s(r1.p pVar, y yVar, boolean z, int i10) {
        this("Decoder init failed: [" + i10 + "], " + pVar, yVar, pVar.f13523o, z, null, "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_" + (i10 < 0 ? "neg_" : "") + Math.abs(i10));
    }

    public s(String str, Throwable th2, String str2, boolean z, q qVar, String str3) {
        super(str, th2);
        this.f4305a = str2;
        this.f4306b = z;
        this.f4307c = qVar;
        this.f4308d = str3;
    }
}
