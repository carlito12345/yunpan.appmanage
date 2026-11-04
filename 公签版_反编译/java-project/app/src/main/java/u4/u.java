package u4;

import java.util.TreeMap;

/* loaded from: classes.dex */
public final class u extends s {
    public u(x4.q qVar) {
        super(qVar);
    }

    @Override // u4.p
    public final void a(f fVar) {
        fVar.f15359f.p(this.f15377b);
        fVar.f15358e.o(this.f15400c.f18130b.f18133a);
        y4.a aVar = ((x4.q) this.f15400c).f18131c;
        z zVar = fVar.f15360g;
        synchronized (zVar) {
            if (aVar == null) {
                throw new NullPointerException("prototype == null");
            }
            zVar.g();
            if (((y) ((TreeMap) zVar.f15415g).get(aVar)) == null) {
                ((TreeMap) zVar.f15415g).put(aVar, new y(aVar));
            }
        }
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_METHOD_ID_ITEM;
    }

    @Override // u4.s
    public final int h(f fVar) {
        z zVar = fVar.f15360g;
        y4.a aVar = ((x4.q) this.f15400c).f18131c;
        if (aVar == null) {
            zVar.getClass();
            throw new NullPointerException("prototype == null");
        }
        zVar.f();
        y yVar = (y) ((TreeMap) zVar.f15415g).get(aVar);
        if (yVar != null) {
            return yVar.e();
        }
        throw new IllegalArgumentException("not found");
    }

    @Override // u4.s
    public final String i() {
        return "proto_idx";
    }
}
