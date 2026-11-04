package g3;

import a2.g1;
import f2.u0;
import l2.j0;
import u1.q;

/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: b, reason: collision with root package name */
    public j0 f6023b;

    /* renamed from: c, reason: collision with root package name */
    public u0 f6024c;

    /* renamed from: d, reason: collision with root package name */
    public g f6025d;

    /* renamed from: e, reason: collision with root package name */
    public long f6026e;

    /* renamed from: f, reason: collision with root package name */
    public long f6027f;

    /* renamed from: g, reason: collision with root package name */
    public long f6028g;

    /* renamed from: h, reason: collision with root package name */
    public int f6029h;

    /* renamed from: i, reason: collision with root package name */
    public int f6030i;

    /* renamed from: k, reason: collision with root package name */
    public long f6032k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f6033m;

    /* renamed from: a, reason: collision with root package name */
    public final e f6022a = new e();

    /* renamed from: j, reason: collision with root package name */
    public g1 f6031j = new g1(15, false);

    public void a(long j10) {
        this.f6028g = j10;
    }

    public abstract long b(q qVar);

    public abstract boolean c(q qVar, long j10, g1 g1Var);

    public void d(boolean z) {
        if (z) {
            this.f6031j = new g1(15, false);
            this.f6027f = 0L;
            this.f6029h = 0;
        } else {
            this.f6029h = 1;
        }
        this.f6026e = -1L;
        this.f6028g = 0L;
    }
}
