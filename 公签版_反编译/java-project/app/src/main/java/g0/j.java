package g0;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class j extends o {
    public j(f0.d dVar) {
        super(dVar);
    }

    @Override // g0.d
    public final void a(d dVar) {
        f0.a aVar = (f0.a) this.f5971b;
        int i10 = aVar.s0;
        f fVar = this.f5977h;
        Iterator it = fVar.l.iterator();
        int i11 = 0;
        int i12 = -1;
        while (it.hasNext()) {
            int i13 = ((f) it.next()).f5953g;
            if (i12 == -1 || i13 < i12) {
                i12 = i13;
            }
            if (i11 < i13) {
                i11 = i13;
            }
        }
        if (i10 == 0 || i10 == 2) {
            fVar.d(i12 + aVar.f5048u0);
        } else {
            fVar.d(i11 + aVar.f5048u0);
        }
    }

    @Override // g0.o
    public final void d() {
        f0.d dVar = this.f5971b;
        if (dVar instanceof f0.a) {
            f fVar = this.f5977h;
            fVar.f5948b = true;
            f0.a aVar = (f0.a) dVar;
            int i10 = aVar.s0;
            boolean z = aVar.f5047t0;
            int i11 = 0;
            if (i10 == 0) {
                fVar.f5951e = 4;
                while (i11 < aVar.f5154r0) {
                    f0.d dVar2 = aVar.f5153q0[i11];
                    if (z || dVar2.f5088g0 != 8) {
                        f fVar2 = dVar2.f5081d.f5977h;
                        fVar2.f5957k.add(fVar);
                        fVar.l.add(fVar2);
                    }
                    i11++;
                }
                m(this.f5971b.f5081d.f5977h);
                m(this.f5971b.f5081d.f5978i);
                return;
            }
            if (i10 == 1) {
                fVar.f5951e = 5;
                while (i11 < aVar.f5154r0) {
                    f0.d dVar3 = aVar.f5153q0[i11];
                    if (z || dVar3.f5088g0 != 8) {
                        f fVar3 = dVar3.f5081d.f5978i;
                        fVar3.f5957k.add(fVar);
                        fVar.l.add(fVar3);
                    }
                    i11++;
                }
                m(this.f5971b.f5081d.f5977h);
                m(this.f5971b.f5081d.f5978i);
                return;
            }
            if (i10 == 2) {
                fVar.f5951e = 6;
                while (i11 < aVar.f5154r0) {
                    f0.d dVar4 = aVar.f5153q0[i11];
                    if (z || dVar4.f5088g0 != 8) {
                        f fVar4 = dVar4.f5083e.f5977h;
                        fVar4.f5957k.add(fVar);
                        fVar.l.add(fVar4);
                    }
                    i11++;
                }
                m(this.f5971b.f5083e.f5977h);
                m(this.f5971b.f5083e.f5978i);
                return;
            }
            if (i10 != 3) {
                return;
            }
            fVar.f5951e = 7;
            while (i11 < aVar.f5154r0) {
                f0.d dVar5 = aVar.f5153q0[i11];
                if (z || dVar5.f5088g0 != 8) {
                    f fVar5 = dVar5.f5083e.f5978i;
                    fVar5.f5957k.add(fVar);
                    fVar.l.add(fVar5);
                }
                i11++;
            }
            m(this.f5971b.f5083e.f5977h);
            m(this.f5971b.f5083e.f5978i);
        }
    }

    @Override // g0.o
    public final void e() {
        f0.d dVar = this.f5971b;
        if (dVar instanceof f0.a) {
            int i10 = ((f0.a) dVar).s0;
            f fVar = this.f5977h;
            if (i10 == 0 || i10 == 1) {
                dVar.Y = fVar.f5953g;
            } else {
                dVar.Z = fVar.f5953g;
            }
        }
    }

    @Override // g0.o
    public final void f() {
        this.f5972c = null;
        this.f5977h.c();
    }

    @Override // g0.o
    public final boolean k() {
        return false;
    }

    public final void m(f fVar) {
        f fVar2 = this.f5977h;
        fVar2.f5957k.add(fVar);
        fVar.l.add(fVar2);
    }
}
