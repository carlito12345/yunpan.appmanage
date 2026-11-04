package bh;

import java.util.function.Supplier;

/* loaded from: classes.dex */
public final class b extends Number implements Comparable, Supplier {

    /* renamed from: a, reason: collision with root package name */
    public long f2817a;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j10 = this.f2817a;
        long j11 = ((b) obj).f2817a;
        if (j10 == j11) {
            return 0;
        }
        return j10 < j11 ? -1 : 1;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return this.f2817a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof b) && this.f2817a == ((b) obj).f2817a;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return this.f2817a;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f2817a);
    }

    public final int hashCode() {
        long j10 = this.f2817a;
        return (int) (j10 ^ (j10 >>> 32));
    }

    @Override // java.lang.Number
    public final int intValue() {
        return (int) this.f2817a;
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.f2817a;
    }

    public final String toString() {
        return String.valueOf(this.f2817a);
    }
}
