package c8;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public final class a implements z7.b0 {
    @Override // z7.b0
    public final z7.a0 a(z7.m mVar, g8.a aVar) {
        Type type = aVar.f6122b;
        boolean z = type instanceof GenericArrayType;
        if (!z && (!(type instanceof Class) || !((Class) type).isArray())) {
            return null;
        }
        Type genericComponentType = z ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
        return new b(mVar, mVar.c(new g8.a(genericComponentType)), b8.h.h(genericComponentType));
    }
}
