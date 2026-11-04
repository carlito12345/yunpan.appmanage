package ph;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class r implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public q f12743a;

    /* renamed from: b, reason: collision with root package name */
    public q f12744b;

    /* renamed from: c, reason: collision with root package name */
    public q f12745c;

    /* renamed from: d, reason: collision with root package name */
    public q f12746d;

    /* renamed from: e, reason: collision with root package name */
    public q f12747e;

    /* renamed from: f, reason: collision with root package name */
    public final Class f12748f;

    public r(q qVar, Class cls) {
        nh.b.d0(qVar);
        this.f12748f = cls;
        if (cls.isInstance(qVar)) {
            this.f12744b = qVar;
        }
        this.f12745c = qVar;
        this.f12746d = qVar;
        this.f12743a = qVar;
        this.f12747e = qVar.u();
    }

    public final void a() {
        q qVar;
        if (this.f12744b != null) {
            return;
        }
        if (this.f12747e != null && this.f12745c.f12741a == null) {
            this.f12745c = this.f12746d;
        }
        q qVarU = this.f12745c;
        loop0: while (true) {
            qVar = null;
            if (qVarU.e() > 0) {
                qVarU = (q) qVarU.h().get(0);
            } else if (this.f12743a.equals(qVarU)) {
                qVarU = null;
            } else if (qVarU.n() != null) {
                qVarU = qVarU.n();
            } else {
                do {
                    qVarU = qVarU.u();
                    if (qVarU == null || this.f12743a.equals(qVarU)) {
                        break loop0;
                    }
                } while (qVarU.n() == null);
                qVarU = qVarU.n();
            }
            if (qVarU == null) {
                break;
            } else if (this.f12748f.isInstance(qVarU)) {
                qVar = qVarU;
                break;
            }
        }
        this.f12744b = qVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        a();
        return this.f12744b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        a();
        q qVar = this.f12744b;
        if (qVar == null) {
            throw new NoSuchElementException();
        }
        this.f12746d = this.f12745c;
        this.f12745c = qVar;
        this.f12747e = qVar.u();
        this.f12744b = null;
        return qVar;
    }

    @Override // java.util.Iterator
    public final void remove() {
        q qVar = this.f12745c;
        l lVar = qVar.f12741a;
        if (lVar != null) {
            lVar.x(qVar);
        }
    }
}
