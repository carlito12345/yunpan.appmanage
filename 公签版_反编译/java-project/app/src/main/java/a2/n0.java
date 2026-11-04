package a2;

/* loaded from: classes.dex */
public final class n0 extends Exception {
    public /* synthetic */ n0(String str) {
        super(str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public n0(long j10, long j11) {
        StringBuilder sbW = android.support.v4.media.session.a.w(j11, "Unexpected audio track timestamp discontinuity: expected ", ", got ");
        sbW.append(j10);
        super(sbW.toString());
    }
}
