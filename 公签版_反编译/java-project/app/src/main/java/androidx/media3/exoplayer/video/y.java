package androidx.media3.exoplayer.video;

/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1982a;

    /* renamed from: b, reason: collision with root package name */
    public long f1983b;

    /* renamed from: c, reason: collision with root package name */
    public long f1984c;

    public /* synthetic */ y(long j10, long j11, int i10) {
        this.f1982a = i10;
        this.f1983b = j10;
        this.f1984c = j11;
    }

    public String toString() {
        switch (this.f1982a) {
            case 2:
                return "BindPair binding input " + this.f1983b + " to output " + this.f1984c;
            default:
                return super.toString();
        }
    }

    public y() {
        this.f1982a = 0;
        this.f1983b = -9223372036854775807L;
        this.f1984c = -9223372036854775807L;
    }
}
