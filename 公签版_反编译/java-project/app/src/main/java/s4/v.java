package s4;

/* loaded from: classes.dex */
public final class v extends l {

    /* renamed from: e, reason: collision with root package name */
    public final f f14409e;

    public v(j jVar, w4.p pVar, w4.l lVar, f fVar) {
        super(jVar, pVar, lVar);
        if (fVar == null) {
            throw new NullPointerException("target == null");
        }
        this.f14409e = fVar;
    }

    @Override // s4.h
    public final String a() {
        f fVar = this.f14409e;
        return fVar == null ? "????" : fVar.f();
    }

    @Override // s4.h
    public final h i(j jVar) {
        return new v(jVar, this.f14308c, this.f14309d, this.f14409e);
    }

    @Override // s4.h
    public final h k(w4.l lVar) {
        return new v(this.f14307b, this.f14308c, lVar, this.f14409e);
    }

    public final int m() {
        return this.f14409e.e() - e();
    }

    public final boolean n() {
        return this.f14306a >= 0 && this.f14409e.f14306a >= 0;
    }

    public final v o(f fVar) {
        j jVar;
        j jVar2 = this.f14307b;
        switch (jVar2.f14311a) {
            case 50:
                jVar = k.Q;
                break;
            case 51:
                jVar = k.P;
                break;
            case 52:
                jVar = k.S;
                break;
            case 53:
                jVar = k.R;
                break;
            case 54:
                jVar = k.U;
                break;
            case 55:
                jVar = k.T;
                break;
            case 56:
                jVar = k.W;
                break;
            case 57:
                jVar = k.V;
                break;
            case 58:
                jVar = k.Y;
                break;
            case 59:
                jVar = k.X;
                break;
            case 60:
                jVar = k.f14317a0;
                break;
            case 61:
                jVar = k.Z;
                break;
            default:
                throw new IllegalArgumentException("bogus opcode: " + jVar2);
        }
        return new v(jVar, this.f14308c, this.f14309d, fVar);
    }
}
