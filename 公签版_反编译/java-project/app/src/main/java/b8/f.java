package b8;

import j$.util.Objects;
import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class f implements ParameterizedType, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Type f2624a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f2625b;

    /* renamed from: c, reason: collision with root package name */
    public final Type[] f2626c;

    public f(Type type, Class cls, Type... typeArr) {
        Objects.requireNonNull(cls);
        if (type == null && !Modifier.isStatic(cls.getModifiers()) && cls.getDeclaringClass() != null) {
            throw new IllegalArgumentException("Must specify owner type for " + cls);
        }
        this.f2624a = type == null ? null : h.a(type);
        this.f2625b = h.a(cls);
        Type[] typeArr2 = (Type[]) typeArr.clone();
        this.f2626c = typeArr2;
        int length = typeArr2.length;
        for (int i10 = 0; i10 < length; i10++) {
            Objects.requireNonNull(this.f2626c[i10]);
            h.c(this.f2626c[i10]);
            Type[] typeArr3 = this.f2626c;
            typeArr3[i10] = h.a(typeArr3[i10]);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && h.e(this, (ParameterizedType) obj);
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return (Type[]) this.f2626c.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.f2624a;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f2625b;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.f2626c) ^ this.f2625b.hashCode();
        Type type = this.f2624a;
        return iHashCode ^ (type != null ? type.hashCode() : 0);
    }

    public final String toString() {
        Type[] typeArr = this.f2626c;
        int length = typeArr.length;
        Type type = this.f2625b;
        if (length == 0) {
            return h.l(type);
        }
        StringBuilder sb2 = new StringBuilder((length + 1) * 30);
        sb2.append(h.l(type));
        sb2.append("<");
        sb2.append(h.l(typeArr[0]));
        for (int i10 = 1; i10 < length; i10++) {
            sb2.append(", ");
            sb2.append(h.l(typeArr[i10]));
        }
        sb2.append(">");
        return sb2.toString();
    }
}
