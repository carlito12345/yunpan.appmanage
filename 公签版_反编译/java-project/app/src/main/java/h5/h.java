package h5;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f6557a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f6558b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public com.bumptech.glide.f f6559c;

    /* renamed from: d, reason: collision with root package name */
    public Object f6560d;

    /* renamed from: e, reason: collision with root package name */
    public int f6561e;

    /* renamed from: f, reason: collision with root package name */
    public int f6562f;

    /* renamed from: g, reason: collision with root package name */
    public Class f6563g;

    /* renamed from: h, reason: collision with root package name */
    public a6.i f6564h;

    /* renamed from: i, reason: collision with root package name */
    public f5.i f6565i;

    /* renamed from: j, reason: collision with root package name */
    public a6.d f6566j;

    /* renamed from: k, reason: collision with root package name */
    public Class f6567k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f6568m;

    /* renamed from: n, reason: collision with root package name */
    public f5.f f6569n;

    /* renamed from: o, reason: collision with root package name */
    public com.bumptech.glide.i f6570o;

    /* renamed from: p, reason: collision with root package name */
    public l f6571p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f6572q;
    public boolean r;

    public final ArrayList a() {
        boolean z = this.f6568m;
        ArrayList arrayList = this.f6558b;
        if (!z) {
            this.f6568m = true;
            arrayList.clear();
            ArrayList arrayListB = b();
            int size = arrayListB.size();
            for (int i10 = 0; i10 < size; i10++) {
                l5.p pVar = (l5.p) arrayListB.get(i10);
                if (!arrayList.contains(pVar.f10604a)) {
                    arrayList.add(pVar.f10604a);
                }
                int i11 = 0;
                while (true) {
                    List list = pVar.f10605b;
                    if (i11 < list.size()) {
                        if (!arrayList.contains(list.get(i11))) {
                            arrayList.add(list.get(i11));
                        }
                        i11++;
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList b() {
        boolean z = this.l;
        ArrayList arrayList = this.f6557a;
        if (!z) {
            this.l = true;
            arrayList.clear();
            List listG = this.f6559c.b().g(this.f6560d);
            int size = listG.size();
            for (int i10 = 0; i10 < size; i10++) {
                l5.p pVarB = ((l5.q) listG.get(i10)).b(this.f6560d, this.f6561e, this.f6562f, this.f6565i);
                if (pVarB != null) {
                    arrayList.add(pVarB);
                }
            }
        }
        return arrayList;
    }

    public final x c(Class cls) {
        x xVar;
        com.bumptech.glide.k kVarB = this.f6559c.b();
        Class cls2 = this.f6563g;
        Class cls3 = this.f6567k;
        v5.b bVar = kVarB.f3343i;
        a6.o oVar = (a6.o) bVar.f16628b.getAndSet(null);
        if (oVar == null) {
            oVar = new a6.o();
        }
        oVar.f442a = cls;
        oVar.f443b = cls2;
        oVar.f444c = cls3;
        synchronized (bVar.f16627a) {
            xVar = (x) bVar.f16627a.get(oVar);
        }
        bVar.f16628b.set(oVar);
        kVarB.f3343i.getClass();
        if (v5.b.f16626c.equals(xVar)) {
            return null;
        }
        if (xVar != null) {
            return xVar;
        }
        ArrayList arrayListE = kVarB.e(cls, cls2, cls3);
        x xVar2 = arrayListE.isEmpty() ? null : new x(cls, cls2, cls3, arrayListE, kVarB.f3344j);
        kVarB.f3343i.a(cls, cls2, cls3, xVar2);
        return xVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        r1 = r3.f16625b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final f5.c d(Object obj) {
        f5.c cVar;
        ag.c cVar2 = this.f6559c.b().f3336b;
        Class<?> cls = obj.getClass();
        synchronized (cVar2) {
            Iterator it = cVar2.f665a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    cVar = null;
                    break;
                }
                v5.a aVar = (v5.a) it.next();
                if (aVar.f16624a.isAssignableFrom(cls)) {
                    break;
                }
            }
        }
        if (cVar != null) {
            return cVar;
        }
        throw new com.bumptech.glide.j(obj.getClass(), 3);
    }

    public final f5.m e(Class cls) {
        f5.m mVar = (f5.m) this.f6566j.get(cls);
        if (mVar == null) {
            Iterator it = ((b8.l) this.f6566j.entrySet()).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    mVar = (f5.m) entry.getValue();
                    break;
                }
            }
        }
        if (mVar != null) {
            return mVar;
        }
        if (this.f6566j.isEmpty() && this.f6572q) {
            throw new IllegalArgumentException(android.support.v4.media.session.a.r("Missing transformation for ", cls, ". If you wish to ignore unknown resource types, use the optional transformation methods."));
        }
        return n5.d.f11306b;
    }
}
