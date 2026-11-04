package b8;

import j$.util.Objects;
import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public final class e implements GenericArrayType, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Type f2623a;

    public e(Type type) {
        Objects.requireNonNull(type);
        this.f2623a = h.a(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && h.e(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.f2623a;
    }

    public final int hashCode() {
        return this.f2623a.hashCode();
    }

    public final String toString() {
        return h.l(this.f2623a) + "[]";
    }
}
