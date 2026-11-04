package u4;

/* loaded from: classes.dex */
public final class b0 extends x {

    /* renamed from: e, reason: collision with root package name */
    public final x4.t f15335e;

    public b0(x4.t tVar) {
        super(1, com.bumptech.glide.c.l0(tVar.f18136a.length()) + tVar.f18137b.f515b + 1);
        this.f15335e = tVar;
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_STRING_DATA_ITEM;
    }

    @Override // u4.x
    public final int e(x xVar) {
        return this.f15335e.compareTo(((b0) xVar).f15335e);
    }

    @Override // u4.x
    public final void k(f fVar, b5.b bVar) {
        x4.t tVar = this.f15335e;
        a9.p pVar = tVar.f18137b;
        int length = tVar.f18136a.length();
        if (bVar.d()) {
            bVar.b(com.bumptech.glide.c.l0(length), "utf16_size: ".concat(qf.c.f0(length)));
            bVar.b(pVar.f515b + 1, tVar.e());
        }
        bVar.m(length);
        int i10 = pVar.f515b;
        int i11 = bVar.f2555c;
        int i12 = i10 + i11;
        if (bVar.f2553a) {
            bVar.f(i12);
        } else if (i12 > bVar.f2554b.length) {
            b5.b.g();
            throw null;
        }
        byte[] bArr = bVar.f2554b;
        int length2 = bArr.length - i11;
        int i13 = pVar.f515b;
        if (length2 < i13) {
            throw new IndexOutOfBoundsException("(out.length - offset) < size()");
        }
        System.arraycopy(pVar.f514a, 0, bArr, i11, i13);
        bVar.f2555c = i12;
        bVar.i(0);
    }

    @Override // u4.p
    public final void a(f fVar) {
    }
}
