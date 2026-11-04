package pd;

import id.d;

/* loaded from: classes.dex */
public final class b extends id.c {
    public final long A;
    public final int B;

    /* renamed from: y, reason: collision with root package name */
    public final byte[] f12668y;
    public final int z;

    public b(vc.b bVar, int i10, int i11, long j10, byte[] bArr) {
        super(bVar.e(), 1);
        this.B = i10;
        this.z = i11;
        this.A = j10;
        this.f12668y = bArr;
    }

    @Override // id.b
    public final boolean g0(id.b bVar) {
        bVar.f(-1L);
        return super.g0(bVar);
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        rd.a.e(25L, bArr, i10);
        bArr[i10 + 2] = (byte) 0;
        bArr[i10 + 3] = (byte) this.B;
        rd.a.f(this.z, bArr, i10 + 4);
        rd.a.f(0L, bArr, i10 + 8);
        int i11 = i10 + 12;
        int i12 = i10 + 14;
        byte[] bArr2 = this.f12668y;
        rd.a.e(bArr2 != null ? bArr2.length : 0L, bArr, i12);
        rd.a.g(this.A, bArr, i10 + 16);
        int i13 = i10 + 24;
        rd.a.e(i13 - this.f8658d, bArr, i11);
        int iK0 = k0(i13) + i13;
        if (bArr2 != null) {
            System.arraycopy(bArr2, 0, bArr, iK0, bArr2.length);
            iK0 += bArr2.length;
        }
        return iK0 - i10;
    }

    @Override // id.c
    public final d q0(vc.b bVar) {
        return new c(bVar.e());
    }

    @Override // ad.c
    public final int size() {
        byte[] bArr = this.f12668y;
        return id.b.o0((bArr != null ? bArr.length : 0) + 88, 0);
    }
}
