package x4;

/* loaded from: classes.dex */
public abstract class m extends n {

    /* renamed from: a, reason: collision with root package name */
    public final long f18127a;

    public m(long j10) {
        this.f18127a = j10;
    }

    @Override // x4.a
    public final int c(a aVar) {
        long j10 = ((m) aVar).f18127a;
        long j11 = this.f18127a;
        if (j11 < j10) {
            return -1;
        }
        return j11 > j10 ? 1 : 0;
    }

    @Override // x4.n
    public final boolean e() {
        long j10 = this.f18127a;
        return ((long) ((int) j10)) == j10;
    }

    public final boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            if (this.f18127a == ((m) obj).f18127a) {
                return true;
            }
        }
        return false;
    }

    @Override // x4.n
    public final int f() {
        return (int) this.f18127a;
    }

    @Override // x4.n
    public final long g() {
        return this.f18127a;
    }

    public final int hashCode() {
        long j10 = this.f18127a;
        return ((int) j10) ^ ((int) (j10 >> 32));
    }
}
