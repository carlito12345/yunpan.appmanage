package kg;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final long f10317a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10318b;

    public f(long j10, long j11) {
        if (j10 < 0) {
            throw new IllegalArgumentException("offset must not be negative");
        }
        if (j11 < 0) {
            throw new IllegalArgumentException("numbytes must not be negative");
        }
        this.f10317a = j10;
        this.f10318b = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return this.f10317a == fVar.f10317a && this.f10318b == fVar.f10318b;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f10317a), Long.valueOf(this.f10318b));
    }

    public final String toString() {
        return "TarArchiveStructSparse{offset=" + this.f10317a + ", numbytes=" + this.f10318b + '}';
    }
}
