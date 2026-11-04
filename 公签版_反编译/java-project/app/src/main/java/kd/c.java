package kd;

import vc.f;

/* loaded from: classes.dex */
public final class c extends id.c implements id.a {
    public byte A;
    public dd.c B;

    /* renamed from: y, reason: collision with root package name */
    public byte[] f10233y;
    public byte z;

    public c(f fVar, byte[] bArr) {
        super(fVar, 17);
        this.f10233y = bArr;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        rd.a.e(33L, bArr, i10);
        bArr[i10 + 2] = this.z;
        bArr[i10 + 3] = this.A;
        rd.a.f(0, bArr, i10 + 12);
        System.arraycopy(this.f10233y, 0, bArr, i10 + 16, 16);
        rd.a.e(r2 - this.f8658d, bArr, i10 + 8);
        rd.a.g(this.B.f4591b, bArr, i10 + 32);
        rd.a.f(8, bArr, i10 + 4);
        return (i10 + 40) - i10;
    }

    @Override // id.c
    public final id.d q0(vc.b bVar) {
        return new d(bVar.e(), 0);
    }

    @Override // ad.c
    public final int size() {
        this.B.getClass();
        return id.b.o0(104, 0);
    }

    @Override // id.a
    public final void w(byte[] bArr) {
        this.f10233y = bArr;
    }
}
