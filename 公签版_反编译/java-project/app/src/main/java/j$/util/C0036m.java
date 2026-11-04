package j$.util;

import java.util.NoSuchElementException;

/* renamed from: j$.util.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0036m {

    /* renamed from: c, reason: collision with root package name */
    private static final C0036m f9169c = new C0036m();

    /* renamed from: a, reason: collision with root package name */
    private final boolean f9170a;

    /* renamed from: b, reason: collision with root package name */
    private final int f9171b;

    private C0036m() {
        this.f9170a = false;
        this.f9171b = 0;
    }

    public static C0036m a() {
        return f9169c;
    }

    private C0036m(int i10) {
        this.f9170a = true;
        this.f9171b = i10;
    }

    public static C0036m d(int i10) {
        return new C0036m(i10);
    }

    public final int b() {
        if (!this.f9170a) {
            throw new NoSuchElementException("No value present");
        }
        return this.f9171b;
    }

    public final boolean c() {
        return this.f9170a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0036m)) {
            return false;
        }
        C0036m c0036m = (C0036m) obj;
        boolean z = this.f9170a;
        if (z && c0036m.f9170a) {
            if (this.f9171b == c0036m.f9171b) {
                return true;
            }
        } else if (z == c0036m.f9170a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (this.f9170a) {
            return this.f9171b;
        }
        return 0;
    }

    public final String toString() {
        if (this.f9170a) {
            return "OptionalInt[" + this.f9171b + "]";
        }
        return "OptionalInt.empty";
    }
}
