package ce;

/* loaded from: classes.dex */
public final class p1 implements i {

    /* renamed from: a, reason: collision with root package name */
    public long f3109a;

    /* renamed from: b, reason: collision with root package name */
    public long f3110b;

    /* renamed from: c, reason: collision with root package name */
    public int f3111c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3112d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3113e;

    @Override // ce.i
    public final long a() {
        return 0L;
    }

    @Override // ce.i
    public final int getAttributes() {
        return 0;
    }

    @Override // ce.i
    public final long getLastWriteTime() {
        return 0L;
    }

    @Override // ce.i
    public final long getSize() {
        return this.f3110b;
    }

    public final String toString() {
        return new String("SmbQueryInfoStandard[allocationSize=" + this.f3109a + ",endOfFile=" + this.f3110b + ",numberOfLinks=" + this.f3111c + ",deletePending=" + this.f3112d + ",directory=" + this.f3113e + "]");
    }
}
