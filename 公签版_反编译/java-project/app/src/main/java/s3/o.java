package s3;

import l2.j0;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final j0 f14166a;

    /* renamed from: b, reason: collision with root package name */
    public long f14167b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14168c;

    /* renamed from: d, reason: collision with root package name */
    public int f14169d;

    /* renamed from: e, reason: collision with root package name */
    public long f14170e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f14171f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14172g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f14173h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f14174i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14175j;

    /* renamed from: k, reason: collision with root package name */
    public long f14176k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f14177m;

    public o(j0 j0Var) {
        this.f14166a = j0Var;
    }

    public final void a(int i10) {
        long j10 = this.l;
        if (j10 != -9223372036854775807L) {
            long j11 = this.f14167b;
            long j12 = this.f14176k;
            if (j11 == j12) {
                return;
            }
            boolean z = this.f14177m;
            this.f14166a.b(j10, z ? 1 : 0, (int) (j11 - j12), i10, null);
        }
    }
}
