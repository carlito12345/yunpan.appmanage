package f8;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f5640a;

    /* renamed from: b, reason: collision with root package name */
    public static final g f5641b;

    /* renamed from: c, reason: collision with root package name */
    public static final g f5642c;

    /* renamed from: d, reason: collision with root package name */
    public static final a f5643d;

    /* renamed from: e, reason: collision with root package name */
    public static final c f5644e;

    /* renamed from: f, reason: collision with root package name */
    public static final e f5645f;

    static {
        boolean z;
        try {
            Class.forName("java.sql.Date");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        f5640a = z;
        if (z) {
            f5641b = new g(0);
            f5642c = new g(1);
            f5643d = b.f5633b;
            f5644e = d.f5635b;
            f5645f = f.f5637b;
            return;
        }
        f5641b = null;
        f5642c = null;
        f5643d = null;
        f5644e = null;
        f5645f = null;
    }
}
