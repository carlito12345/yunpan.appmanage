package t7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class k implements e {

    /* renamed from: a, reason: collision with root package name */
    public static final g f14831a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ k[] f14832b;

    static {
        g gVar = new g();
        f14831a = gVar;
        f14832b = new k[]{gVar, new k() { // from class: t7.h
            @Override // t7.e
            public final boolean apply(Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.alwaysFalse()";
            }
        }, new k() { // from class: t7.i
            @Override // t7.e
            public final boolean apply(Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.isNull()";
            }
        }, new k() { // from class: t7.j
            @Override // t7.e
            public final boolean apply(Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.notNull()";
            }
        }};
    }

    public k(String str, int i10) {
    }

    public static k valueOf(String str) {
        return (k) Enum.valueOf(k.class, str);
    }

    public static k[] values() {
        return (k[]) f14832b.clone();
    }
}
