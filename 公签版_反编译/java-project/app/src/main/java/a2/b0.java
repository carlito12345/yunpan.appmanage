package a2;

import ua.t6;

/* loaded from: classes.dex */
public final /* synthetic */ class b0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f100a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f101b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f102c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f103d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f104e;

    public /* synthetic */ b0(Object obj, String str, long j10, long j11, int i10) {
        this.f100a = i10;
        this.f104e = obj;
        this.f101b = str;
        this.f102c = j10;
        this.f103d = j11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f104e;
        int i10 = this.f100a;
        j0 j0Var = (j0) obj;
        j0Var.getClass();
        switch (i10) {
            case 0:
                String str = u1.f0.f15206a;
                z1.e eVar = j0Var.f196c.f18808a.f18866t;
                z1.a aVarM = eVar.M();
                eVar.N(aVarM, 1008, new z1.d(aVarM, this.f101b, this.f103d, this.f102c));
                break;
            default:
                String str2 = u1.f0.f15206a;
                z1.e eVar2 = j0Var.f196c.f18808a.f18866t;
                z1.a aVarM2 = eVar2.M();
                eVar2.N(aVarM2, 1016, new t6(aVarM2, this.f101b, this.f103d, this.f102c));
                break;
        }
    }
}
