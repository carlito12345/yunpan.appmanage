package j$.util;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class Optional<T> {

    /* renamed from: b, reason: collision with root package name */
    private static final Optional f9017b = new Optional();

    /* renamed from: a, reason: collision with root package name */
    private final Object f9018a;

    private Optional() {
        this.f9018a = null;
    }

    public static Optional a() {
        return f9017b;
    }

    private Optional(Object obj) {
        this.f9018a = Objects.requireNonNull(obj);
    }

    public static Optional d(Object obj) {
        return new Optional(obj);
    }

    public final Object b() {
        Object obj = this.f9018a;
        if (obj != null) {
            return obj;
        }
        throw new NoSuchElementException("No value present");
    }

    public final boolean c() {
        return this.f9018a != null;
    }

    public T orElse(T t10) {
        T t11 = (T) this.f9018a;
        return t11 != null ? t11 : t10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Optional) {
            return Objects.equals(this.f9018a, ((Optional) obj).f9018a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f9018a);
    }

    public final String toString() {
        Object obj = this.f9018a;
        if (obj != null) {
            return String.format("Optional[%s]", obj);
        }
        return "Optional.empty";
    }
}
