package fc;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final e f5766a;

    static {
        try {
            e eVar = a.f5765a;
            if (eVar == null) {
                throw new NullPointerException("Scheduler Callable returned null");
            }
            f5766a = eVar;
        } catch (Throwable th2) {
            throw pc.c.a(th2);
        }
    }

    public static e a() {
        e eVar = f5766a;
        if (eVar != null) {
            return eVar;
        }
        throw new NullPointerException("scheduler == null");
    }
}
