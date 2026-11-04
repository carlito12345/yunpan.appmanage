package j1;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final long f9634a;

    /* renamed from: b, reason: collision with root package name */
    public final long f9635b;

    public e(long j10, long j11) {
        if (j11 == 0) {
            this.f9634a = 0L;
            this.f9635b = 1L;
        } else {
            this.f9634a = j10;
            this.f9635b = j11;
        }
    }

    public final String toString() {
        return this.f9634a + "/" + this.f9635b;
    }
}
