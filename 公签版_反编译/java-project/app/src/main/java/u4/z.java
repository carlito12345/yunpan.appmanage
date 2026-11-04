package u4;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class z extends f0 {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f15414f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f15415g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(f fVar, int i10) {
        super("proto_ids", fVar, 4);
        this.f15414f = i10;
        switch (i10) {
            case 1:
                super("string_ids", fVar, 4);
                this.f15415g = new TreeMap();
                break;
            case 2:
                super("type_ids", fVar, 4);
                this.f15415g = new TreeMap();
                break;
            case 3:
                super(null, fVar, 4);
                m mVar = new m();
                mVar.g(0);
                this.f15415g = Collections.singletonList(mVar);
                break;
            default:
                this.f15415g = new TreeMap();
                break;
        }
    }

    @Override // u4.a0
    public final Collection c() {
        switch (this.f15414f) {
            case 0:
                return ((TreeMap) this.f15415g).values();
            case 1:
                return ((TreeMap) this.f15415g).values();
            case 2:
                return ((TreeMap) this.f15415g).values();
            default:
                return (List) this.f15415g;
        }
    }

    @Override // u4.f0
    public final void k() {
        switch (this.f15414f) {
            case 0:
                Iterator it = ((TreeMap) this.f15415g).values().iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    ((y) it.next()).g(i10);
                    i10++;
                }
                break;
            case 1:
                Iterator it2 = ((TreeMap) this.f15415g).values().iterator();
                int i11 = 0;
                while (it2.hasNext()) {
                    ((c0) it2.next()).g(i11);
                    i11++;
                }
                break;
            case 2:
                Iterator it3 = ((TreeMap) this.f15415g).values().iterator();
                int i12 = 0;
                while (it3.hasNext()) {
                    ((d0) it3.next()).g(i12);
                    i12++;
                }
                break;
        }
    }

    public int l(x4.t tVar) {
        if (tVar == null) {
            throw new NullPointerException("string == null");
        }
        f();
        c0 c0Var = (c0) ((TreeMap) this.f15415g).get(tVar);
        if (c0Var != null) {
            return c0Var.e();
        }
        throw new IllegalArgumentException("not found");
    }

    public int m(x4.u uVar) {
        if (uVar != null) {
            return n(uVar.f18142a);
        }
        throw new NullPointerException("type == null");
    }

    public int n(y4.c cVar) {
        if (cVar == null) {
            throw new NullPointerException("type == null");
        }
        f();
        d0 d0Var = (d0) ((TreeMap) this.f15415g).get(cVar);
        if (d0Var != null) {
            return d0Var.e();
        }
        throw new IllegalArgumentException("not found: " + cVar);
    }

    public void o(x4.t tVar) {
        c0 c0Var = new c0(tVar);
        synchronized (this) {
            g();
            if (((c0) ((TreeMap) this.f15415g).get(tVar)) != null) {
                return;
            }
            ((TreeMap) this.f15415g).put(tVar, c0Var);
        }
    }

    public synchronized void p(x4.u uVar) {
        if (uVar == null) {
            throw new NullPointerException("type == null");
        }
        g();
        y4.c cVar = uVar.f18142a;
        if (((d0) ((TreeMap) this.f15415g).get(cVar)) == null) {
            ((TreeMap) this.f15415g).put(cVar, new d0(uVar));
        }
    }

    public synchronized void q(y4.c cVar) {
        if (cVar == null) {
            throw new NullPointerException("type == null");
        }
        g();
        if (((d0) ((TreeMap) this.f15415g).get(cVar)) == null) {
            ((TreeMap) this.f15415g).put(cVar, new d0(new x4.u(cVar)));
        }
    }

    private final void r() {
    }
}
