package x4;

/* loaded from: classes.dex */
public abstract class a implements b5.h, Comparable {
    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int compareTo(a aVar) {
        Class<?> cls = getClass();
        Class<?> cls2 = aVar.getClass();
        return cls != cls2 ? cls.getName().compareTo(cls2.getName()) : c(aVar);
    }

    public abstract int c(a aVar);

    public abstract String d();
}
