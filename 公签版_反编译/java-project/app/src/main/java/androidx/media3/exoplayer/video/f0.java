package androidx.media3.exoplayer.video;

import ua.g5;
import ua.t6;

/* loaded from: classes.dex */
public final /* synthetic */ class f0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a2.j0 f1897a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1898b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f1899c;

    public /* synthetic */ f0(a2.j0 j0Var, Object obj, long j10) {
        this.f1897a = j0Var;
        this.f1898b = obj;
        this.f1899c = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a2.j0 j0Var = this.f1897a;
        j0Var.getClass();
        String str = u1.f0.f15206a;
        y1.x xVar = j0Var.f196c.f18808a;
        z1.e eVar = xVar.f18866t;
        z1.a aVarM = eVar.M();
        long j10 = this.f1899c;
        Object obj = this.f1898b;
        eVar.N(aVarM, 26, new g5(aVarM, obj, j10));
        if (xVar.f18856h0 == obj) {
            xVar.f18861m.e(26, new t6(13));
        }
    }
}
