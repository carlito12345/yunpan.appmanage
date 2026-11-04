package h5;

import a2.g1;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final Class f6601a;

    /* renamed from: b, reason: collision with root package name */
    public final List f6602b;

    /* renamed from: c, reason: collision with root package name */
    public final t5.a f6603c;

    /* renamed from: d, reason: collision with root package name */
    public final v3.f f6604d;

    /* renamed from: e, reason: collision with root package name */
    public final String f6605e;

    public k(Class cls, Class cls2, Class cls3, List list, t5.a aVar, v3.f fVar) {
        this.f6601a = cls;
        this.f6602b = list;
        this.f6603c = aVar;
        this.f6604d = fVar;
        this.f6605e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final z a(int i10, int i11, g1 g1Var, com.bumptech.glide.load.data.g gVar, f5.i iVar) {
        z zVarA;
        f5.m mVar;
        int iF;
        boolean z;
        boolean z4;
        boolean z10;
        boolean z11;
        f5.f eVar;
        v3.f fVar = this.f6604d;
        List list = (List) fVar.l();
        try {
            z zVarB = b(gVar, i10, i11, iVar, list);
            fVar.L(list);
            j jVar = (j) g1Var.f176c;
            jVar.getClass();
            Class<?> cls = zVarB.get().getClass();
            f5.a aVar = f5.a.RESOURCE_DISK_CACHE;
            f5.a aVar2 = (f5.a) g1Var.f175b;
            h hVar = jVar.f6580a;
            f5.l lVarH = null;
            if (aVar2 != aVar) {
                f5.m mVarE = hVar.e(cls);
                zVarA = mVarE.a(jVar.f6587h, zVarB, jVar.l, jVar.f6591m);
                mVar = mVarE;
            } else {
                zVarA = zVarB;
                mVar = null;
            }
            if (!zVarB.equals(zVarA)) {
                zVarB.recycle();
            }
            if (hVar.f6559c.b().f3338d.h(zVarA.a()) != null) {
                com.bumptech.glide.k kVarB = hVar.f6559c.b();
                kVarB.getClass();
                lVarH = kVarB.f3338d.h(zVarA.a());
                if (lVarH == null) {
                    throw new com.bumptech.glide.j(zVarA.a(), 2);
                }
                iF = lVarH.f(jVar.f6593p);
            } else {
                iF = 3;
            }
            f5.f fVar2 = jVar.f6598w;
            ArrayList arrayListB = hVar.b();
            int size = arrayListB.size();
            int i12 = 0;
            while (true) {
                if (i12 >= size) {
                    z = false;
                    break;
                }
                if (((l5.p) arrayListB.get(i12)).f10604a.equals(fVar2)) {
                    z = true;
                    break;
                }
                i12++;
            }
            switch (jVar.f6592n.f6609a) {
                default:
                    if (((!z && aVar2 == f5.a.DATA_DISK_CACHE) || aVar2 == f5.a.LOCAL) && iF == 2) {
                        z4 = true;
                        break;
                    }
                    break;
                case 0:
                case 1:
                    z4 = false;
                    break;
            }
            if (z4) {
                if (lVarH == null) {
                    throw new com.bumptech.glide.j(zVarA.get().getClass(), 2);
                }
                int iC = d0.f.c(iF);
                if (iC == 0) {
                    z10 = true;
                    z11 = false;
                    eVar = new e(jVar.f6598w, jVar.f6588i);
                } else {
                    if (iC != 1) {
                        throw new IllegalArgumentException("Unknown strategy: ".concat(iF != 1 ? iF != 2 ? iF != 3 ? "null" : "NONE" : "TRANSFORMED" : "SOURCE"));
                    }
                    z10 = true;
                    eVar = new b0(hVar.f6559c.f3318a, jVar.f6598w, jVar.f6588i, jVar.l, jVar.f6591m, mVar, cls, jVar.f6593p);
                    z11 = false;
                }
                y yVar = (y) y.f6674e.l();
                yVar.f6678d = z11;
                yVar.f6677c = z10;
                yVar.f6676b = zVarA;
                v3.f fVar3 = jVar.f6585f;
                fVar3.f16474b = eVar;
                fVar3.f16475c = lVarH;
                fVar3.f16476d = yVar;
                zVarA = yVar;
            }
            return this.f6603c.c(zVarA, iVar);
        } catch (Throwable th2) {
            fVar.L(list);
            throw th2;
        }
    }

    public final z b(com.bumptech.glide.load.data.g gVar, int i10, int i11, f5.i iVar, List list) throws v {
        List list2 = this.f6602b;
        int size = list2.size();
        z zVarA = null;
        for (int i12 = 0; i12 < size; i12++) {
            f5.k kVar = (f5.k) list2.get(i12);
            try {
                if (kVar.b(gVar.d(), iVar)) {
                    zVarA = kVar.a(gVar.d(), i10, i11, iVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e7) {
                if (Log.isLoggable("DecodePath", 2) && kVar != null) {
                    kVar.toString();
                }
                list.add(e7);
            }
            if (zVarA != null) {
                break;
            }
        }
        if (zVarA != null) {
            return zVarA;
        }
        throw new v(this.f6605e, new ArrayList(list));
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f6601a + ", decoders=" + this.f6602b + ", transcoder=" + this.f6603c + '}';
    }
}
