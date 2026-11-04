package ue;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final h f16110a;

    static {
        h hVar = null;
        try {
            hVar = (h) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (hVar == null) {
            hVar = new h();
        }
        f16110a = hVar;
    }
}
