package u0;

import a0.t;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class d implements w0.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15167a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15168b;

    public /* synthetic */ d(int i10, Object obj) {
        this.f15167a = i10;
        this.f15168b = obj;
    }

    @Override // w0.a
    public final void accept(Object obj) {
        switch (this.f15167a) {
            case 0:
                e eVar = (e) obj;
                if (eVar == null) {
                    eVar = new e(-3);
                }
                ((kf.d) this.f15168b).K(eVar);
                return;
            default:
                e eVar2 = (e) obj;
                synchronized (f.f15173c) {
                    try {
                        t tVar = f.f15174d;
                        ArrayList arrayList = (ArrayList) tVar.get((String) this.f15168b);
                        if (arrayList == null) {
                            return;
                        }
                        tVar.remove((String) this.f15168b);
                        for (int i10 = 0; i10 < arrayList.size(); i10++) {
                            ((w0.a) arrayList.get(i10)).accept(eVar2);
                        }
                        return;
                    } finally {
                    }
                }
        }
    }
}
