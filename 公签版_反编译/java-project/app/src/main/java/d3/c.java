package d3;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class c implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final long f4363a;

    /* renamed from: b, reason: collision with root package name */
    public final long f4364b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4365c;

    public c(long j10, long j11, long j12) {
        this.f4363a = j10;
        this.f4364b = j11;
        this.f4365c = j12;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return (this.f4363a > ((c) obj).f4363a ? 1 : (this.f4363a == ((c) obj).f4363a ? 0 : -1));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f4363a == cVar.f4363a && this.f4364b == cVar.f4364b && this.f4365c == cVar.f4365c;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f4363a), Long.valueOf(this.f4364b), Long.valueOf(this.f4365c));
    }
}
