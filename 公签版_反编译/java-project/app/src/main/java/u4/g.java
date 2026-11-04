package u4;

/* loaded from: classes.dex */
public final class g extends x {

    /* renamed from: e, reason: collision with root package name */
    public final x4.c f15368e;

    /* renamed from: f, reason: collision with root package name */
    public byte[] f15369f;

    public g(x4.c cVar) {
        super(1, -1);
        this.f15368e = cVar;
        this.f15369f = null;
    }

    @Override // u4.p
    public final void a(f fVar) {
        kf.d.k(fVar, this.f15368e);
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_ENCODED_ARRAY_ITEM;
    }

    @Override // u4.x
    public final int e(x xVar) {
        return this.f15368e.compareTo(((g) xVar).f15368e);
    }

    public final int hashCode() {
        return this.f15368e.hashCode();
    }

    @Override // u4.x
    public final void i(w wVar, int i10) {
        b5.b bVar = new b5.b();
        new kf.d(wVar.f15324b, bVar).S(this.f15368e, false);
        int i11 = bVar.f2555c;
        byte[] bArr = new byte[i11];
        System.arraycopy(bVar.f2554b, 0, bArr, 0, i11);
        this.f15369f = bArr;
        j(i11);
    }

    @Override // u4.x
    public final void k(f fVar, b5.b bVar) {
        if (!bVar.d()) {
            bVar.h(this.f15369f);
            return;
        }
        bVar.b(0, g() + " encoded array");
        new kf.d(fVar, bVar).S(this.f15368e, true);
    }
}
