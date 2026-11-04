package g0;

/* loaded from: classes.dex */
public final class i extends o {
    public i(f0.h hVar) {
        super(hVar);
        hVar.f5081d.f();
        hVar.f5083e.f();
        this.f5975f = hVar.f5151u0;
    }

    @Override // g0.d
    public final void a(d dVar) {
        f fVar = this.f5977h;
        if (fVar.f5949c && !fVar.f5956j) {
            fVar.d((int) ((((f) fVar.l.get(0)).f5953g * ((f0.h) this.f5971b).f5148q0) + 0.5f));
        }
    }

    @Override // g0.o
    public final void d() {
        f0.d dVar = this.f5971b;
        f0.h hVar = (f0.h) dVar;
        int i10 = hVar.f5149r0;
        int i11 = hVar.s0;
        int i12 = hVar.f5151u0;
        f fVar = this.f5977h;
        if (i12 == 1) {
            if (i10 != -1) {
                fVar.l.add(dVar.T.f5081d.f5977h);
                this.f5971b.T.f5081d.f5977h.f5957k.add(fVar);
                fVar.f5952f = i10;
            } else if (i11 != -1) {
                fVar.l.add(dVar.T.f5081d.f5978i);
                this.f5971b.T.f5081d.f5978i.f5957k.add(fVar);
                fVar.f5952f = -i11;
            } else {
                fVar.f5948b = true;
                fVar.l.add(dVar.T.f5081d.f5978i);
                this.f5971b.T.f5081d.f5978i.f5957k.add(fVar);
            }
            m(this.f5971b.f5081d.f5977h);
            m(this.f5971b.f5081d.f5978i);
            return;
        }
        if (i10 != -1) {
            fVar.l.add(dVar.T.f5083e.f5977h);
            this.f5971b.T.f5083e.f5977h.f5957k.add(fVar);
            fVar.f5952f = i10;
        } else if (i11 != -1) {
            fVar.l.add(dVar.T.f5083e.f5978i);
            this.f5971b.T.f5083e.f5978i.f5957k.add(fVar);
            fVar.f5952f = -i11;
        } else {
            fVar.f5948b = true;
            fVar.l.add(dVar.T.f5083e.f5978i);
            this.f5971b.T.f5083e.f5978i.f5957k.add(fVar);
        }
        m(this.f5971b.f5083e.f5977h);
        m(this.f5971b.f5083e.f5978i);
    }

    @Override // g0.o
    public final void e() {
        f0.d dVar = this.f5971b;
        int i10 = ((f0.h) dVar).f5151u0;
        f fVar = this.f5977h;
        if (i10 == 1) {
            dVar.Y = fVar.f5953g;
        } else {
            dVar.Z = fVar.f5953g;
        }
    }

    @Override // g0.o
    public final void f() {
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
