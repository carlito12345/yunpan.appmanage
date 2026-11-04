package id;

/* loaded from: classes.dex */
public abstract class c extends b implements ad.c, ad.e {

    /* renamed from: x, reason: collision with root package name */
    public d f8674x;

    public c(vc.f fVar, int i10) {
        super(fVar, i10);
    }

    @Override // ad.c
    public final boolean I() {
        return this.r != 0;
    }

    @Override // ad.b
    public final ad.d b() {
        return this.f8674x;
    }

    @Override // id.b, ad.b
    public final int c(int i10, byte[] bArr) {
        int iC = super.c(i10, bArr);
        int size = size();
        int i11 = this.f8657c;
        if (size == i11) {
            return iC;
        }
        throw new IllegalStateException(String.format("Wrong size calculation have %d expect %d", Integer.valueOf(size), Integer.valueOf(i11)));
    }

    @Override // ad.c
    public final ad.c e0() {
        c cVar = (c) this.f8673w;
        if (cVar != null) {
            this.f8673w = null;
            cVar.f8656b &= -5;
        }
        return cVar;
    }

    @Override // ad.c
    /* renamed from: getNext */
    public final ad.c h() {
        return (c) this.f8673w;
    }

    @Override // ad.c
    public final ad.c h() {
        return (c) this.f8673w;
    }

    public abstract d q0(vc.b bVar);

    @Override // ad.e
    /* renamed from: r0, reason: merged with bridge method [inline-methods] */
    public final d M(vc.b bVar) {
        d dVarQ0 = q0(bVar);
        dVarQ0.i(this.f8661g);
        s(dVarQ0);
        c cVar = (c) this.f8673w;
        if (cVar instanceof c) {
            dVarQ0.f8673w = cVar.M(bVar);
        }
        return dVarQ0;
    }

    @Override // ad.b
    public final void s(ad.d dVar) {
        if (dVar != null && !(dVar instanceof b)) {
            throw new IllegalArgumentException("Incompatible response");
        }
        this.f8674x = (d) dVar;
    }

    @Override // ad.c
    public final boolean u(ad.c cVar) {
        String simpleName = getClass().getSimpleName();
        wc.a aVar = (wc.a) this.f8662h;
        if (aVar.f17854p0 == null ? true : !r2.contains(simpleName)) {
            String simpleName2 = cVar.getClass().getSimpleName();
            if (aVar.f17854p0 == null ? true : !r0.contains(simpleName2)) {
                return true;
            }
        }
        return false;
    }

    @Override // ad.c
    public final void v(int i10) {
        this.f8665k = i10;
    }

    @Override // ad.c, ad.b
    public final he.d b() {
        return this.f8674x;
    }
}
