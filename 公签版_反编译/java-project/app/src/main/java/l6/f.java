package l6;

import a2.w0;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.ui.ActivityTextDesaysvVds;
import ha.j2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ThreadPoolExecutor;
import w4.k;
import w4.l;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final int f10656a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10657b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10658c;

    /* renamed from: d, reason: collision with root package name */
    public Object f10659d;

    /* renamed from: e, reason: collision with root package name */
    public Object f10660e;

    /* renamed from: f, reason: collision with root package name */
    public Object f10661f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f10662g;

    /* renamed from: h, reason: collision with root package name */
    public Object f10663h;

    public f() {
        this.f10660e = null;
        this.f10658c = false;
        this.f10661f = null;
        this.f10662g = new ArrayList();
        this.f10663h = new HashMap();
        new HashMap();
        new HashMap();
        new ArrayList();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        this.f10656a = iAvailableProcessors + 1;
        this.f10657b = (iAvailableProcessors * 2) + 1;
        new e();
        new u(12, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static l c(w4.f fVar, k kVar) {
        l lVarH = fVar.f17461d;
        int i10 = fVar.f17458a.f17471a;
        if (i10 != 14 && i10 != 16) {
            switch (i10) {
            }
        } else if (lVarH.f2559b.length == 2 && kVar.f17466a == ((k) lVarH.d(1)).f17466a) {
            lVarH = l.h((k) lVarH.d(1), (k) lVarH.d(0));
        }
        if (kVar == null) {
            return lVarH;
        }
        int length = lVarH.f2559b.length;
        l lVar = new l(length + 1);
        int i11 = 0;
        while (i11 < length) {
            int i12 = i11 + 1;
            lVar.e(i12, lVarH.d(i11));
            i11 = i12;
        }
        lVar.e(0, kVar);
        if (!lVarH.f2570a) {
            lVar.f2570a = false;
        }
        return lVar;
    }

    public void a(g gVar, d dVar) {
        ArrayList arrayList = (ArrayList) this.f10662g;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((String) it.next()).equals(gVar.f10668e)) {
                    p000if.a.o0("service=" + dVar.f10638c.f10670g.name());
                    dVar.f10644i = true;
                    it.remove();
                    return;
                }
            }
        }
    }

    public d b(int i10) {
        d dVar;
        synchronized (((HashMap) this.f10663h)) {
            dVar = (d) ((HashMap) this.f10663h).get(Integer.valueOf(i10));
        }
        return dVar == null ? d(i10) : dVar;
    }

    public d d(int i10) {
        ArrayList arrayList = (ArrayList) this.f10661f;
        if (arrayList == null) {
            p000if.a.n0("VDRouter isnot inited!!!Please call VDBus.getDefault().init() first");
            return null;
        }
        synchronized (arrayList) {
            Iterator it = ((ArrayList) this.f10661f).iterator();
            while (it.hasNext()) {
                g gVar = (g) it.next();
                if (gVar.f10670g.f10691a == i10) {
                    p000if.a.o0("service=" + gVar.f10670g.name());
                    d dVar = new d((ActivityTextDesaysvVds) this.f10660e, gVar, (ThreadPoolExecutor) this.f10659d);
                    synchronized (((HashMap) this.f10663h)) {
                        ((HashMap) this.f10663h).put(Integer.valueOf(i10), dVar);
                    }
                    it.remove();
                    a(gVar, dVar);
                    return dVar;
                }
            }
            return null;
        }
    }

    public f(s4.a aVar, int i10, j2 j2Var) {
        this.f10659d = aVar;
        this.f10660e = new s4.a(aVar);
        this.f10657b = i10;
        this.f10663h = null;
        boolean[] zArr = {true};
        w4.b bVar = (w4.b) aVar.f14293b;
        if (bVar.f17448d == -1) {
            androidx.leanback.widget.i iVar = new androidx.leanback.widget.i();
            int length = bVar.f2559b.length;
            for (int i11 = 0; i11 < length; i11++) {
                w4.g gVar = ((w4.a) bVar.d(i11)).f17444b;
                int length2 = gVar.f2559b.length;
                for (int i12 = 0; i12 < length2; i12++) {
                    ((w4.f) gVar.d(i12)).b(iVar);
                }
            }
            bVar.f17448d = iVar.f1647b;
        }
        a0.h hVar = new a0.h(zArr, bVar.f17448d, i10);
        int length3 = bVar.f2559b.length;
        for (int i13 = 0; i13 < length3; i13++) {
            w4.g gVar2 = ((w4.a) bVar.d(i13)).f17444b;
            int length4 = gVar2.f2559b.length;
            for (int i14 = 0; i14 < length4; i14++) {
                ((w4.f) gVar2.d(i14)).b(hVar);
            }
        }
        this.f10658c = zArr[0];
        Object[] objArr = bVar.f2559b;
        int length5 = objArr.length * 3;
        int length6 = 0;
        for (Object obj : objArr) {
            w4.a aVar2 = (w4.a) obj;
            if (aVar2 != null) {
                length6 += aVar2.f17444b.f2559b.length;
            }
        }
        int i15 = length5 + length6;
        if (bVar.f17448d == -1) {
            androidx.leanback.widget.i iVar2 = new androidx.leanback.widget.i();
            int length7 = bVar.f2559b.length;
            for (int i16 = 0; i16 < length7; i16++) {
                w4.g gVar3 = ((w4.a) bVar.d(i16)).f17444b;
                int length8 = gVar3.f2559b.length;
                for (int i17 = 0; i17 < length8; i17++) {
                    ((w4.f) gVar3.d(i17)).b(iVar2);
                }
            }
            bVar.f17448d = iVar2.f1647b;
        }
        int i18 = bVar.f17448d + (this.f10658c ? 0 : this.f10657b);
        this.f10656a = i18;
        kf.d dVar = new kf.d(j2Var, i15, length5, i18, i10);
        this.f10661f = dVar;
        this.f10662g = new w0(this, dVar);
    }
}
