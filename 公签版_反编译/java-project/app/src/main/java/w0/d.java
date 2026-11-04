package w0;

/* loaded from: classes.dex */
public final class d extends d0.d {

    /* renamed from: c, reason: collision with root package name */
    public final Object f17345c;

    public d(int i10) {
        super(i10);
        this.f17345c = new Object();
    }

    @Override // d0.d
    public final Object a() {
        Object objA;
        synchronized (this.f17345c) {
            objA = super.a();
        }
        return objA;
    }

    @Override // d0.d
    public final boolean c(Object obj) {
        boolean zC;
        synchronized (this.f17345c) {
            zC = super.c(obj);
        }
        return zC;
    }
}
