package b3;

import java.util.Collections;
import java.util.List;
import u1.q;

/* loaded from: classes.dex */
public final class a extends b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2534a;

    /* renamed from: b, reason: collision with root package name */
    public final long f2535b;

    /* renamed from: c, reason: collision with root package name */
    public final long f2536c;

    public a(long j10, long j11, int i10) {
        this.f2534a = i10;
        switch (i10) {
            case 2:
                this.f2535b = j10;
                this.f2536c = j11;
                break;
            default:
                this.f2535b = j11;
                this.f2536c = j10;
                break;
        }
    }

    public static long d(long j10, q qVar) {
        long jB = qVar.B();
        if ((128 & jB) != 0) {
            return 8589934591L & ((((jB & 1) << 32) | qVar.D()) + j10);
        }
        return -9223372036854775807L;
    }

    @Override // b3.b
    public final String toString() {
        switch (this.f2534a) {
            case 0:
                StringBuilder sb2 = new StringBuilder("SCTE-35 PrivateCommand { ptsAdjustment=");
                sb2.append(this.f2535b);
                sb2.append(", identifier= ");
                return android.support.v4.media.session.a.t(sb2, this.f2536c, " }");
            case 1:
                StringBuilder sb3 = new StringBuilder("SCTE-35 SpliceInsertCommand { programSplicePts=");
                sb3.append(this.f2535b);
                sb3.append(", programSplicePlaybackPositionUs= ");
                return android.support.v4.media.session.a.t(sb3, this.f2536c, " }");
            default:
                StringBuilder sb4 = new StringBuilder("SCTE-35 TimeSignalCommand { ptsTime=");
                sb4.append(this.f2535b);
                sb4.append(", playbackPositionUs= ");
                return android.support.v4.media.session.a.t(sb4, this.f2536c, " }");
        }
    }

    public a(long j10, long j11, List list) {
        this.f2534a = 1;
        this.f2535b = j10;
        this.f2536c = j11;
        Collections.unmodifiableList(list);
    }
}
