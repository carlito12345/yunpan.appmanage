package u4;

import java.util.Collection;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class l extends t {

    /* renamed from: f, reason: collision with root package name */
    public final TreeMap f15376f;

    public l(f fVar) {
        super("field_ids", fVar);
        this.f15376f = new TreeMap();
    }

    @Override // u4.a0
    public final Collection c() {
        return this.f15376f.values();
    }

    public final int l(x4.h hVar) {
        if (hVar == null) {
            throw new NullPointerException("ref == null");
        }
        f();
        k kVar = (k) this.f15376f.get(hVar);
        if (kVar != null) {
            return kVar.e();
        }
        throw new IllegalArgumentException("not found");
    }

    public final synchronized void m(x4.h hVar) {
        if (hVar == null) {
            throw new NullPointerException("field == null");
        }
        g();
        if (((k) this.f15376f.get(hVar)) == null) {
            this.f15376f.put(hVar, new k(hVar));
        }
    }
}
