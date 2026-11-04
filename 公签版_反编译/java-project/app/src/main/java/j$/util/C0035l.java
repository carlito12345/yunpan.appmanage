package j$.util;

import java.util.NoSuchElementException;

/* renamed from: j$.util.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0035l {

    /* renamed from: c, reason: collision with root package name */
    private static final C0035l f9166c = new C0035l();

    /* renamed from: a, reason: collision with root package name */
    private final boolean f9167a;

    /* renamed from: b, reason: collision with root package name */
    private final double f9168b;

    private C0035l() {
        this.f9167a = false;
        this.f9168b = Double.NaN;
    }

    public static C0035l a() {
        return f9166c;
    }

    private C0035l(double d10) {
        this.f9167a = true;
        this.f9168b = d10;
    }

    public static C0035l d(double d10) {
        return new C0035l(d10);
    }

    public final double b() {
        if (!this.f9167a) {
            throw new NoSuchElementException("No value present");
        }
        return this.f9168b;
    }

    public final boolean c() {
        return this.f9167a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0035l)) {
            return false;
        }
        C0035l c0035l = (C0035l) obj;
        boolean z = this.f9167a;
        if (z && c0035l.f9167a) {
            if (Double.compare(this.f9168b, c0035l.f9168b) == 0) {
                return true;
            }
        } else if (z == c0035l.f9167a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (!this.f9167a) {
            return 0;
        }
        long jDoubleToLongBits = Double.doubleToLongBits(this.f9168b);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public final String toString() {
        if (this.f9167a) {
            return "OptionalDouble[" + this.f9168b + "]";
        }
        return "OptionalDouble.empty";
    }
}
