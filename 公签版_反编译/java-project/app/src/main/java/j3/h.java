package j3;

/* loaded from: classes.dex */
public final class h extends i3.g implements Comparable {

    /* renamed from: k, reason: collision with root package name */
    public long f9733k;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        h hVar = (h) obj;
        if (c(4) == hVar.c(4)) {
            long j10 = this.f18089g - hVar.f18089g;
            if (j10 == 0) {
                j10 = this.f9733k - hVar.f9733k;
                if (j10 == 0) {
                    return 0;
                }
            }
            if (j10 <= 0) {
                return -1;
            }
        } else if (!c(4)) {
            return -1;
        }
        return 1;
    }
}
