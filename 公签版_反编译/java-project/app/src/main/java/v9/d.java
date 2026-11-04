package v9;

import ua.g5;
import ua.g8;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16687a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f16688b;

    public /* synthetic */ d(e eVar, int i10) {
        this.f16687a = i10;
        this.f16688b = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16687a) {
            case 0:
                e eVar = this.f16688b;
                eVar.getClass();
                g5 g5Var = new g5(15, eVar);
                i iVarB = c.b();
                if (iVarB == null) {
                    u9.d.f15554a.execute(new g8(5, g5Var));
                    break;
                } else {
                    iVarB.N(eVar);
                    break;
                }
            default:
                this.f16688b.m0();
                break;
        }
    }
}
