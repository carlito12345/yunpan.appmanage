package h5;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: b, reason: collision with root package name */
    public static final l f6606b = new l(0);

    /* renamed from: c, reason: collision with root package name */
    public static final l f6607c = new l(1);

    /* renamed from: d, reason: collision with root package name */
    public static final l f6608d = new l(2);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6609a;

    public l(int i10) {
        this.f6609a = i10;
    }

    public final boolean a(f5.a aVar) {
        switch (this.f6609a) {
            case 0:
                break;
            case 1:
                if (aVar == f5.a.DATA_DISK_CACHE || aVar == f5.a.MEMORY_CACHE) {
                }
                break;
            default:
                if (aVar == f5.a.REMOTE) {
                }
                break;
        }
        return false;
    }
}
