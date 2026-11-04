package bh;

import java.util.function.Supplier;

/* loaded from: classes.dex */
public final class a extends Number implements Comparable, Supplier {

    /* renamed from: a, reason: collision with root package name */
    public int f2816a;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int i10 = this.f2816a;
        int i11 = ((a) obj).f2816a;
        if (i10 == i11) {
            return 0;
        }
        return i10 < i11 ? -1 : 1;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return this.f2816a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && this.f2816a == ((a) obj).f2816a;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return this.f2816a;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return Integer.valueOf(this.f2816a);
    }

    public final int hashCode() {
        return this.f2816a;
    }

    @Override // java.lang.Number
    public final int intValue() {
        return this.f2816a;
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.f2816a;
    }

    public final String toString() {
        return String.valueOf(this.f2816a);
    }
}
