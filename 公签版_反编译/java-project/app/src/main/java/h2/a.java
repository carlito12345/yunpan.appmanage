package h2;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final long f6324a;

    /* renamed from: b, reason: collision with root package name */
    public final long f6325b;

    public a(long j10, long j11) {
        this.f6324a = j10;
        this.f6325b = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f6324a == aVar.f6324a && this.f6325b == aVar.f6325b;
    }

    public final int hashCode() {
        return (((int) this.f6324a) * 31) + ((int) this.f6325b);
    }
}
