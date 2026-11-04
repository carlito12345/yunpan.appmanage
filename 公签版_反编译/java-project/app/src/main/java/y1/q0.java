package y1;

import android.util.Pair;

/* loaded from: classes.dex */
public final /* synthetic */ class q0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18792a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s0 f18793b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Pair f18794c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ f2.t f18795d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f2.y f18796e;

    public /* synthetic */ q0(s0 s0Var, Pair pair, f2.t tVar, f2.y yVar, int i10) {
        this.f18792a = i10;
        this.f18793b = s0Var;
        this.f18794c = pair;
        this.f18795d = tVar;
        this.f18796e = yVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f18792a) {
            case 0:
                z1.e eVar = (z1.e) this.f18793b.f18807b.f10961i;
                Pair pair = this.f18794c;
                eVar.w(((Integer) pair.first).intValue(), (f2.c0) pair.second, this.f18795d, this.f18796e);
                break;
            default:
                z1.e eVar2 = (z1.e) this.f18793b.f18807b.f10961i;
                Pair pair2 = this.f18794c;
                eVar2.s(((Integer) pair2.first).intValue(), (f2.c0) pair2.second, this.f18795d, this.f18796e);
                break;
        }
    }
}
