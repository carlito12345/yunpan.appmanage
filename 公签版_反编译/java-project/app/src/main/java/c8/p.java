package c8;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class p extends z7.a0 {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f2936a;

    /* renamed from: b, reason: collision with root package name */
    public final b0 f2937b;

    /* renamed from: c, reason: collision with root package name */
    public final b8.o f2938c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d f2939d;

    public p(d dVar, b0 b0Var, b0 b0Var2, b8.o oVar) {
        this.f2939d = dVar;
        this.f2936a = b0Var;
        this.f2937b = b0Var2;
        this.f2938c = oVar;
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        int iE0 = aVar.e0();
        if (iE0 == 9) {
            aVar.a0();
            return null;
        }
        Map map = (Map) this.f2938c.c();
        if (iE0 == 1) {
            aVar.r();
            while (aVar.R()) {
                aVar.r();
                Object objB = this.f2936a.f2888b.b(aVar);
                if (map.put(objB, this.f2937b.f2888b.b(aVar)) != null) {
                    throw new z7.q("duplicate key: " + objB);
                }
                aVar.L();
            }
            aVar.L();
        } else {
            aVar.A();
            while (aVar.R()) {
                m7.e.f10902c.getClass();
                if (aVar instanceof o) {
                    o oVar = (o) aVar;
                    oVar.o0(5);
                    Map.Entry entry = (Map.Entry) ((Iterator) oVar.s0()).next();
                    oVar.u0(entry.getValue());
                    oVar.u0(new z7.t((String) entry.getKey()));
                } else {
                    int iK = aVar.f6688g;
                    if (iK == 0) {
                        iK = aVar.K();
                    }
                    if (iK == 13) {
                        aVar.f6688g = 9;
                    } else if (iK == 12) {
                        aVar.f6688g = 8;
                    } else {
                        if (iK != 14) {
                            throw aVar.n0("a name");
                        }
                        aVar.f6688g = 10;
                    }
                }
                Object objB2 = this.f2936a.f2888b.b(aVar);
                if (map.put(objB2, this.f2937b.f2888b.b(aVar)) != null) {
                    throw new z7.q("duplicate key: " + objB2);
                }
            }
            aVar.M();
        }
        return map;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        Map map = (Map) obj;
        if (map == null) {
            bVar.P();
            return;
        }
        this.f2939d.getClass();
        b0 b0Var = this.f2937b;
        bVar.J();
        for (Map.Entry entry : map.entrySet()) {
            bVar.N(String.valueOf(entry.getKey()));
            b0Var.c(bVar, entry.getValue());
        }
        bVar.M();
    }
}
