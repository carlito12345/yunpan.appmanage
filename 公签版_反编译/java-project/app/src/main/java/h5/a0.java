package h5;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import ua.i8;

/* loaded from: classes.dex */
public final class a0 implements g, com.bumptech.glide.load.data.d {

    /* renamed from: a, reason: collision with root package name */
    public final j f6514a;

    /* renamed from: b, reason: collision with root package name */
    public final h f6515b;

    /* renamed from: c, reason: collision with root package name */
    public int f6516c;

    /* renamed from: d, reason: collision with root package name */
    public int f6517d = -1;

    /* renamed from: e, reason: collision with root package name */
    public f5.f f6518e;

    /* renamed from: f, reason: collision with root package name */
    public List f6519f;

    /* renamed from: g, reason: collision with root package name */
    public int f6520g;

    /* renamed from: h, reason: collision with root package name */
    public volatile l5.p f6521h;

    /* renamed from: i, reason: collision with root package name */
    public File f6522i;

    /* renamed from: j, reason: collision with root package name */
    public b0 f6523j;

    public a0(h hVar, j jVar) {
        this.f6515b = hVar;
        this.f6514a = jVar;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void B(Object obj) {
        this.f6514a.a(this.f6518e, obj, this.f6521h.f10606c, f5.a.RESOURCE_DISK_CACHE, this.f6523j);
    }

    @Override // h5.g
    public final boolean b() {
        List list;
        ArrayList arrayListA = this.f6515b.a();
        boolean z = false;
        if (arrayListA.isEmpty()) {
            return false;
        }
        h hVar = this.f6515b;
        com.bumptech.glide.k kVarB = hVar.f6559c.b();
        Class<?> cls = hVar.f6560d.getClass();
        Class cls2 = hVar.f6563g;
        Class cls3 = hVar.f6567k;
        i8 i8Var = kVarB.f3342h;
        a6.o oVar = (a6.o) ((AtomicReference) i8Var.f15741b).getAndSet(null);
        if (oVar == null) {
            oVar = new a6.o(cls, cls2, cls3);
        } else {
            oVar.f442a = cls;
            oVar.f443b = cls2;
            oVar.f444c = cls3;
        }
        synchronized (((a0.e) i8Var.f15742c)) {
            list = (List) ((a0.e) i8Var.f15742c).get(oVar);
        }
        ((AtomicReference) i8Var.f15741b).set(oVar);
        List list2 = list;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = kVarB.f3335a.a(cls).iterator();
            while (it.hasNext()) {
                Iterator it2 = kVarB.f3337c.s((Class) it.next(), cls2).iterator();
                while (it2.hasNext()) {
                    Class cls4 = (Class) it2.next();
                    if (!kVarB.f3340f.m(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            kVarB.f3342h.u(cls, cls2, cls3, Collections.unmodifiableList(arrayList));
            list2 = arrayList;
        }
        if (list2.isEmpty()) {
            if (File.class.equals(this.f6515b.f6567k)) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f6515b.f6560d.getClass() + " to " + this.f6515b.f6567k);
        }
        while (true) {
            List list3 = this.f6519f;
            if (list3 != null && this.f6520g < list3.size()) {
                this.f6521h = null;
                while (!z && this.f6520g < this.f6519f.size()) {
                    List list4 = this.f6519f;
                    int i10 = this.f6520g;
                    this.f6520g = i10 + 1;
                    l5.q qVar = (l5.q) list4.get(i10);
                    File file = this.f6522i;
                    h hVar2 = this.f6515b;
                    this.f6521h = qVar.b(file, hVar2.f6561e, hVar2.f6562f, hVar2.f6565i);
                    if (this.f6521h != null && this.f6515b.c(this.f6521h.f10606c.a()) != null) {
                        this.f6521h.f10606c.d(this.f6515b.f6570o, this);
                        z = true;
                    }
                }
                return z;
            }
            int i11 = this.f6517d + 1;
            this.f6517d = i11;
            if (i11 >= list2.size()) {
                int i12 = this.f6516c + 1;
                this.f6516c = i12;
                if (i12 >= arrayListA.size()) {
                    return false;
                }
                this.f6517d = 0;
            }
            f5.f fVar = (f5.f) arrayListA.get(this.f6516c);
            Class cls5 = (Class) list2.get(this.f6517d);
            f5.m mVarE = this.f6515b.e(cls5);
            h hVar3 = this.f6515b;
            this.f6523j = new b0(hVar3.f6559c.f3318a, fVar, hVar3.f6569n, hVar3.f6561e, hVar3.f6562f, mVarE, cls5, hVar3.f6565i);
            File fileY = hVar3.f6564h.a().y(this.f6523j);
            this.f6522i = fileY;
            if (fileY != null) {
                this.f6518e = fVar;
                this.f6519f = this.f6515b.f6559c.b().g(fileY);
                this.f6520g = 0;
            }
        }
    }

    @Override // h5.g
    public final void cancel() {
        l5.p pVar = this.f6521h;
        if (pVar != null) {
            pVar.f10606c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void i(Exception exc) {
        this.f6514a.c(this.f6523j, exc, this.f6521h.f10606c, f5.a.RESOURCE_DISK_CACHE);
    }
}
