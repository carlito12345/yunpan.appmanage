package j$.util;

import java.util.NoSuchElementException;

/* renamed from: j$.util.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0037n {

    /* renamed from: c, reason: collision with root package name */
    private static final C0037n f9172c = new C0037n();

    /* renamed from: a, reason: collision with root package name */
    private final boolean f9173a;

    /* renamed from: b, reason: collision with root package name */
    private final long f9174b;

    private C0037n() {
        this.f9173a = false;
        this.f9174b = 0L;
    }

    public static C0037n a() {
        return f9172c;
    }

    private C0037n(long j10) {
        this.f9173a = true;
        this.f9174b = j10;
    }

    public static C0037n d(long j10) {
        return new C0037n(j10);
    }

    public final long b() {
        if (!this.f9173a) {
            throw new NoSuchElementException("No value present");
        }
        return this.f9174b;
    }

    public final boolean c() {
        return this.f9173a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0037n)) {
            return false;
        }
        C0037n c0037n = (C0037n) obj;
        boolean z = this.f9173a;
        if (z && c0037n.f9173a) {
            if (this.f9174b == c0037n.f9174b) {
                return true;
            }
        } else if (z == c0037n.f9173a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (!this.f9173a) {
            return 0;
        }
        long j10 = this.f9174b;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public final String toString() {
        if (this.f9173a) {
            return "OptionalLong[" + this.f9174b + "]";
        }
        return "OptionalLong.empty";
    }
}
