package com.yunpan.appmanage.carsdk;

/* loaded from: classes.dex */
public final /* synthetic */ class i0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3839a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f3840b;

    public /* synthetic */ i0(f fVar, int i10) {
        this.f3839a = i10;
        this.f3840b = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3839a) {
            case 0:
                k0 k0Var = (k0) this.f3840b.f3803b;
                k0Var.f3847c = null;
                k0Var.f3848d = null;
                s sVar = (s) k0Var.f3852h;
                if (sVar != null) {
                    switch (sVar.f3889a) {
                        case 0:
                            try {
                                sVar.f3890b.o();
                            } catch (Throwable unused) {
                            }
                            try {
                                sVar.f3890b.n();
                            } catch (Throwable unused2) {
                            }
                            sVar.f3890b.f3907g.clear();
                            sVar.f3890b.f3908h.clear();
                            sVar.f3890b.f3905e = null;
                            sVar.f3890b.f3906f = null;
                            break;
                        default:
                            try {
                                sVar.f3890b.o();
                            } catch (Throwable unused3) {
                            }
                            try {
                                sVar.f3890b.n();
                            } catch (Throwable unused4) {
                            }
                            sVar.f3890b.f3907g.clear();
                            sVar.f3890b.f3908h.clear();
                            sVar.f3890b.f3905e = null;
                            sVar.f3890b.f3906f = null;
                            break;
                    }
                }
                break;
            default:
                k0 k0Var2 = (k0) this.f3840b.f3803b;
                try {
                    k0Var2.f3847c = k0.g(k0Var2.f3846b, "getCarManager", "property");
                    k0Var2.f3848d = k0.g(k0Var2.f3846b, "getCarManager", "audio");
                    s sVar2 = (s) k0Var2.f3852h;
                    if (sVar2 != null) {
                        try {
                            switch (sVar2.f3889a) {
                                case 0:
                                    x xVar = sVar2.f3890b;
                                    xVar.k();
                                    xVar.j();
                                    break;
                                default:
                                    x xVar2 = sVar2.f3890b;
                                    xVar2.k();
                                    xVar2.j();
                                    break;
                            }
                        } catch (Throwable unused5) {
                            return;
                        }
                    }
                    break;
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    return;
                }
        }
    }
}
