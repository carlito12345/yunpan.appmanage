package a2;

/* loaded from: classes.dex */
public final class m0 extends Exception {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f229a;

    /* JADX WARN: Illegal instructions before constructor call */
    public m0(int i10, int i11, int i12, int i13, r1.p pVar, boolean z, v vVar) {
        StringBuilder sbO = ta.q.o(i10, i11, "AudioTrack init failed 0 Config(", ", ", ", ");
        sbO.append(i12);
        sbO.append(", ");
        sbO.append(i13);
        sbO.append(") ");
        sbO.append(pVar);
        sbO.append(z ? " (recoverable)" : "");
        super(sbO.toString(), vVar);
        this.f229a = z;
    }
}
