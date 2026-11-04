package u4;

import java.util.Collection;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class v extends t {

    /* renamed from: f, reason: collision with root package name */
    public final TreeMap f15401f;

    public v(f fVar) {
        super("method_ids", fVar);
        this.f15401f = new TreeMap();
    }

    @Override // u4.a0
    public final Collection c() {
        return this.f15401f.values();
    }

    public final int l(x4.q qVar) {
        if (qVar == null) {
            throw new NullPointerException("ref == null");
        }
        f();
        u uVar = (u) this.f15401f.get(qVar);
        if (uVar != null) {
            return uVar.e();
        }
        throw new IllegalArgumentException("not found");
    }

    public final synchronized void m(x4.q qVar) {
        if (qVar == null) {
            throw new NullPointerException("method == null");
        }
        g();
        if (((u) this.f15401f.get(qVar)) == null) {
            this.f15401f.put(qVar, new u(qVar));
        }
    }
}
