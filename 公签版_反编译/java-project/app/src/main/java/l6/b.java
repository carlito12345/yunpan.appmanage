package l6;

import android.os.IBinder;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class b implements IBinder.DeathRecipient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f10633a;

    public b(d dVar) {
        this.f10633a = dVar;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        ArrayList arrayList;
        p000if.a.o0("service=" + this.f10633a.f10638c.f10670g.name());
        d dVar = this.f10633a;
        j6.c cVar = dVar.f10640e;
        if (cVar != null) {
            ((j6.a) cVar).f9768e.unlinkToDeath(dVar.f10641f, 0);
            this.f10633a.f10640e = null;
        }
        d dVar2 = this.f10633a;
        p000if.a.o0("service=" + dVar2.f10638c.f10670g.name());
        synchronized (dVar2.l) {
            arrayList = new ArrayList(dVar2.l);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            i6.a aVar = (i6.a) it.next();
            if (aVar != null) {
                try {
                    aVar.d(dVar2.f10638c.f10670g);
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
        }
        d dVar3 = this.f10633a;
        if (dVar3.f10638c.f10665b) {
            p000if.a.o0("system service! name=" + this.f10633a.f10638c.f10670g.name());
            this.f10633a.e();
            return;
        }
        if (dVar3.f10644i) {
            p000if.a.o0("keep bind service");
            this.f10633a.e();
        }
    }
}
