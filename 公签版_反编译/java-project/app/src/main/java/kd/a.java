package kd;

import id.e;
import vc.f;

/* loaded from: classes.dex */
public final class a extends id.c implements id.a {
    public final int A;
    public byte[] B;

    /* renamed from: y, reason: collision with root package name */
    public byte f10232y;
    public byte z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(f fVar) {
        super(fVar, 16);
        byte[] bArr = e.f8677a;
        wc.a aVar = (wc.a) fVar;
        this.A = (Math.min(aVar.f17839h0, aVar.f17845k0) - 72) & (-8);
        this.B = bArr;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        rd.a.e(41L, bArr, i10);
        bArr[i10 + 2] = this.f10232y;
        bArr[i10 + 3] = this.z;
        rd.a.f(this.A, bArr, i10 + 4);
        long j10 = 0;
        rd.a.f(j10, bArr, i10 + 16);
        rd.a.f(j10, bArr, i10 + 20);
        System.arraycopy(this.B, 0, bArr, i10 + 24, 16);
        rd.a.e(0L, bArr, i10 + 8);
        rd.a.f(0L, bArr, i10 + 12);
        return (i10 + 40) - i10;
    }

    @Override // id.c
    public final id.d q0(vc.b bVar) {
        return new b(bVar.e(), this.f10232y, this.z);
    }

    @Override // ad.c
    public final int size() {
        return id.b.o0(104, 0);
    }

    @Override // id.a
    public final void w(byte[] bArr) {
        this.B = bArr;
    }
}
