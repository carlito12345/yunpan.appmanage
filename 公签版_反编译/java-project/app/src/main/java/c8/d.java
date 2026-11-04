package c8;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes.dex */
public final class d implements z7.b0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2893a;

    /* renamed from: b, reason: collision with root package name */
    public final com.bumptech.glide.manager.s f2894b;

    public /* synthetic */ d(com.bumptech.glide.manager.s sVar, int i10) {
        this.f2893a = i10;
        this.f2894b = sVar;
    }

    @Override // z7.b0
    public final z7.a0 a(z7.m mVar, g8.a aVar) {
        Class cls;
        Type[] actualTypeArguments;
        com.bumptech.glide.manager.s sVar = this.f2894b;
        cls = Object.class;
        switch (this.f2893a) {
            case 0:
                Class cls2 = aVar.f6121a;
                if (!Collection.class.isAssignableFrom(cls2)) {
                    return null;
                }
                Type type = aVar.f6122b;
                if (type instanceof WildcardType) {
                    type = ((WildcardType) type).getUpperBounds()[0];
                }
                b8.h.b(Collection.class.isAssignableFrom(cls2));
                Type typeK = b8.h.k(type, cls2, b8.h.g(type, cls2, Collection.class), new HashMap());
                cls = typeK instanceof ParameterizedType ? ((ParameterizedType) typeK).getActualTypeArguments()[0] : Object.class;
                return new c(new b0(mVar, mVar.c(new g8.a(cls)), cls), sVar.d(aVar, false));
            default:
                Class cls3 = aVar.f6121a;
                if (!Map.class.isAssignableFrom(cls3)) {
                    return null;
                }
                if (Properties.class.isAssignableFrom(cls3)) {
                    actualTypeArguments = new Type[]{String.class, String.class};
                } else {
                    Type type2 = aVar.f6122b;
                    if (type2 instanceof WildcardType) {
                        type2 = ((WildcardType) type2).getUpperBounds()[0];
                    }
                    b8.h.b(Map.class.isAssignableFrom(cls3));
                    Type typeK2 = b8.h.k(type2, cls3, b8.h.g(type2, cls3, Map.class), new HashMap());
                    actualTypeArguments = typeK2 instanceof ParameterizedType ? ((ParameterizedType) typeK2).getActualTypeArguments() : new Type[]{cls, cls};
                }
                Type type3 = actualTypeArguments[0];
                Type type4 = actualTypeArguments[1];
                return new p(this, new b0(mVar, (type3 == Boolean.TYPE || type3 == Boolean.class) ? f1.f2897c : mVar.c(new g8.a(type3)), type3), new b0(mVar, mVar.c(new g8.a(type4)), type4), sVar.d(aVar, false));
        }
    }
}
