package i6;

import android.os.Bundle;
import android.os.RemoteException;
import com.yunpan.appmanage.ui.ActivityTextDesaysvVds;
import j6.c;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import l6.d;
import l6.f;
import l6.g;
import l6.h;
import ua.x4;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static volatile a f8636b;

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f8637a = new CopyOnWriteArrayList();

    public static a a() {
        if (f8636b == null) {
            synchronized (a.class) {
                try {
                    if (f8636b == null) {
                        f8636b = new a();
                    }
                } finally {
                }
            }
        }
        return f8636b;
    }

    public static void e(x4 x4Var, int[] iArr) {
        Bundle bundle = new Bundle();
        bundle.putIntArray("CMD_ID_ARRAY", iArr);
        k6.a aVarA = k6.a.a();
        m6.a aVar = new m6.a(bundle);
        f fVar = aVarA.f10178a;
        fVar.getClass();
        int i10 = aVar.f10894a;
        if (i10 == 0) {
            p000if.a.n0("invalid event");
            return;
        }
        if (x4Var == null) {
            p000if.a.n0("invalid callback");
            return;
        }
        d dVarB = fVar.b(i10 >> 16);
        if (dVarB != null) {
            p000if.a.o0("service=" + dVarB.f10638c.f10670g.name() + "; event=327684");
            if (!dVarB.f10638c.f10664a) {
                p000if.a.n0("service not install! name=" + dVarB.f10638c.f10670g.name());
                return;
            }
            if (dVarB.f10640e == null) {
                p000if.a.o0("service unbind");
                if (dVarB.f10638c.f10665b) {
                    p000if.a.o0("system service! name=" + dVarB.f10638c.f10670g.name());
                }
                dVarB.a();
            }
            try {
                c cVar = dVarB.f10640e;
                if (cVar != null) {
                    ((j6.a) cVar).k(aVar, x4Var);
                    return;
                }
            } catch (RemoteException e7) {
                p000if.a.n0("VDBus unbind error!!!");
                e7.printStackTrace();
            }
            synchronized (dVarB.f10651q) {
                Iterator it = dVarB.f10651q.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    l6.c cVar2 = (l6.c) it.next();
                    if (aVar == cVar2.f10635b && x4Var == cVar2.f10634a) {
                        dVarB.f10651q.remove(cVar2);
                        break;
                    }
                }
                dVarB.f10651q.add(new l6.c(aVar, x4Var));
            }
        }
    }

    public static void f(x4 x4Var) {
        k6.a aVarA = k6.a.a();
        m6.a aVar = new m6.a(new Bundle());
        f fVar = aVarA.f10178a;
        if (x4Var == null) {
            fVar.getClass();
            p000if.a.n0("invalid callback");
            return;
        }
        fVar.getClass();
        d dVarB = fVar.b(aVar.f10894a >> 16);
        if (dVarB != null) {
            StringBuilder sb2 = new StringBuilder("service=");
            g gVar = dVarB.f10638c;
            sb2.append(gVar.f10670g.name());
            sb2.append("; event=327684");
            p000if.a.o0(sb2.toString());
            if (!gVar.f10664a) {
                p000if.a.n0("service not install! name=" + gVar.f10670g.name());
                return;
            }
            try {
                c cVar = dVarB.f10640e;
                if (cVar != null) {
                    ((j6.a) cVar).l(aVar, x4Var);
                }
            } catch (RemoteException e7) {
                p000if.a.n0("VDBus unbind error!!!");
                e7.printStackTrace();
            }
        }
    }

    public final void b(ActivityTextDesaysvVds activityTextDesaysvVds) {
        k6.a.a().b(activityTextDesaysvVds);
        f fVar = k6.a.a().f10178a;
        fVar.getClass();
        d dVarB = fVar.b(5);
        if (dVarB != null) {
            p000if.a.o0("service=" + dVarB.f10638c.f10670g.name());
            synchronized (dVarB.l) {
                try {
                    if (!dVarB.l.contains(this)) {
                        dVarB.l.add(this);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (dVarB.f10640e != null) {
                c(dVarB.f10638c.f10670g);
            }
        }
        f fVar2 = k6.a.a().f10178a;
        fVar2.getClass();
        d dVarB2 = fVar2.b(5);
        if (dVarB2 != null) {
            dVarB2.a();
        }
    }

    public final void c(h hVar) {
        if (hVar != null) {
            hVar.toString();
        }
        if (hVar == h.CAR_INFO) {
            synchronized (this.f8637a) {
                try {
                    if (this.f8637a.size() > 0) {
                        if (this.f8637a.get(0) != null) {
                            throw new ClassCastException();
                        }
                        throw null;
                    }
                } finally {
                }
            }
        }
    }

    public final void d(h hVar) {
        if (hVar != null) {
            hVar.toString();
        }
        if (hVar == h.CAR_INFO) {
            synchronized (this.f8637a) {
                try {
                    if (this.f8637a.size() > 0) {
                        if (this.f8637a.get(0) != null) {
                            throw new ClassCastException();
                        }
                        throw null;
                    }
                } finally {
                }
            }
        }
    }
}
