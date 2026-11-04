package c8;

/* loaded from: classes.dex */
public final class i implements z7.b0 {
    @Override // z7.b0
    public final z7.a0 a(z7.m mVar, g8.a aVar) {
        Class superclass = aVar.f6121a;
        if (!Enum.class.isAssignableFrom(superclass) || superclass == Enum.class) {
            return null;
        }
        if (!superclass.isEnum()) {
            superclass = superclass.getSuperclass();
        }
        return new j(superclass);
    }
}
