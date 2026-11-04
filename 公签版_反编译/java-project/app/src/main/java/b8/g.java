package b8;

import j$.util.Objects;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

/* loaded from: classes.dex */
public final class g implements WildcardType, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Type f2627a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f2628b;

    public g(Type[] typeArr, Type[] typeArr2) {
        h.b(typeArr2.length <= 1);
        h.b(typeArr.length == 1);
        if (typeArr2.length != 1) {
            Objects.requireNonNull(typeArr[0]);
            h.c(typeArr[0]);
            this.f2628b = null;
            this.f2627a = h.a(typeArr[0]);
            return;
        }
        Objects.requireNonNull(typeArr2[0]);
        h.c(typeArr2[0]);
        h.b(typeArr[0] == Object.class);
        this.f2628b = h.a(typeArr2[0]);
        this.f2627a = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && h.e(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.f2628b;
        return type != null ? new Type[]{type} : h.f2629a;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.f2627a};
    }

    public final int hashCode() {
        Type type = this.f2628b;
        return (type != null ? type.hashCode() + 31 : 1) ^ (this.f2627a.hashCode() + 31);
    }

    public final String toString() {
        Type type = this.f2628b;
        if (type != null) {
            return "? super " + h.l(type);
        }
        Type type2 = this.f2627a;
        if (type2 == Object.class) {
            return "?";
        }
        return "? extends " + h.l(type2);
    }
}
