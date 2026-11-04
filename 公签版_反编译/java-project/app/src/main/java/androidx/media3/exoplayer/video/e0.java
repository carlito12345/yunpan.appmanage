package androidx.media3.exoplayer.video;

import ua.t6;

/* loaded from: classes.dex */
public final /* synthetic */ class e0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1888a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a2.j0 f1889b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f1890c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1891d;

    public /* synthetic */ e0(a2.j0 j0Var, int i10, long j10) {
        this.f1889b = j0Var;
        this.f1891d = i10;
        this.f1890c = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f1891d;
        long j10 = this.f1890c;
        a2.j0 j0Var = this.f1889b;
        int i11 = this.f1888a;
        j0Var.getClass();
        switch (i11) {
            case 0:
                String str = u1.f0.f15206a;
                z1.e eVar = j0Var.f196c.f18808a.f18866t;
                z1.a aVarJ = eVar.J((f2.c0) eVar.f19343d.f2702e);
                eVar.N(aVarJ, 1018, new t6(aVarJ, i10, j10));
                break;
            default:
                String str2 = u1.f0.f15206a;
                z1.e eVar2 = j0Var.f196c.f18808a.f18866t;
                z1.a aVarJ2 = eVar2.J((f2.c0) eVar2.f19343d.f2702e);
                eVar2.N(aVarJ2, 1021, new t6(aVarJ2, j10, i10));
                break;
        }
    }

    public /* synthetic */ e0(a2.j0 j0Var, long j10, int i10) {
        this.f1889b = j0Var;
        this.f1890c = j10;
        this.f1891d = i10;
    }
}
