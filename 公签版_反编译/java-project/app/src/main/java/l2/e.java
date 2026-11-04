package l2;

/* loaded from: classes.dex */
public final class e implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final g f10444a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10445b;

    /* renamed from: c, reason: collision with root package name */
    public final long f10446c;

    /* renamed from: d, reason: collision with root package name */
    public final long f10447d;

    /* renamed from: e, reason: collision with root package name */
    public final long f10448e;

    /* renamed from: f, reason: collision with root package name */
    public final long f10449f;

    public e(g gVar, long j10, long j11, long j12, long j13, long j14) {
        this.f10444a = gVar;
        this.f10445b = j10;
        this.f10446c = j11;
        this.f10447d = j12;
        this.f10448e = j13;
        this.f10449f = j14;
    }

    @Override // l2.c0
    public final boolean c() {
        return true;
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        d0 d0Var = new d0(j10, f.a(this.f10444a.d(j10), 0L, this.f10446c, this.f10447d, this.f10448e, this.f10449f));
        return new b0(d0Var, d0Var);
    }

    @Override // l2.c0
    public final long h() {
        return this.f10445b;
    }
}
