package androidx.fragment.app;

/* loaded from: classes.dex */
public final class w0 {

    /* renamed from: b, reason: collision with root package name */
    public static final a0.t f1415b = new a0.t(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d1 f1416a;

    public w0(d1 d1Var) {
        this.f1416a = d1Var;
    }

    public static Class a(ClassLoader classLoader, String str) throws ClassNotFoundException {
        a0.t tVar = f1415b;
        a0.t tVar2 = (a0.t) tVar.get(classLoader);
        if (tVar2 == null) {
            tVar2 = new a0.t(0);
            tVar.put(classLoader, tVar2);
        }
        Class cls = (Class) tVar2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        tVar2.put(str, cls2);
        return cls2;
    }

    public static Class b(ClassLoader classLoader, String str) {
        try {
            return a(classLoader, str);
        } catch (ClassCastException e7) {
            throw new b0(0, g.b.A("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e7);
        } catch (ClassNotFoundException e10) {
            throw new b0(0, g.b.A("Unable to instantiate fragment ", str, ": make sure class name exists"), e10);
        }
    }
}
