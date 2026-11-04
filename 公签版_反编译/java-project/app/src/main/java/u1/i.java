package u1;

import android.os.Handler;
import android.os.Message;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15231a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15232b;

    public /* synthetic */ i(int i10, Object obj) {
        this.f15231a = i10;
        this.f15232b = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f15231a) {
            case 0:
                m mVar = (m) this.f15232b;
                k kVar = mVar.f15245c;
                kVar.getClass();
                Iterator it = mVar.f15246d.iterator();
                while (it.hasNext()) {
                    l lVar = (l) it.next();
                    if (!lVar.f15242d && lVar.f15241c) {
                        r1.n nVarB = lVar.f15240b.b();
                        lVar.f15240b = new h5.d0(1);
                        lVar.f15241c = false;
                        kVar.h(lVar.f15239a, nVarB);
                    }
                    b0 b0Var = mVar.f15244b;
                    b0Var.getClass();
                    if (b0Var.f15188a.hasMessages(1)) {
                        break;
                    }
                }
                break;
            default:
                x xVar = (x) this.f15232b;
                xVar.getClass();
                int i10 = message.what;
                if (i10 == 1) {
                    xVar.f15309g.a();
                    break;
                } else if (i10 == 2) {
                    xVar.f15310h.a();
                    break;
                } else if (i10 == 3) {
                    xVar.f15311i.a();
                    break;
                } else if (i10 == 4) {
                    xVar.f15312j.a();
                    break;
                }
                break;
        }
        return true;
    }
}
