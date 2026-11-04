package fi;

import yh.h;

/* loaded from: classes3.dex */
public final class b extends a {

    /* renamed from: n, reason: collision with root package name */
    public final byte[] f5896n;

    /* renamed from: o, reason: collision with root package name */
    public int f5897o;

    public b(yh.b bVar) {
        byte[] bArrA = bVar.a(65531);
        this.f5896n = bArrA;
        this.f5897o = bArrA.length;
    }

    @Override // fi.a
    public final void q0() throws h {
        int i10 = this.l;
        if (((-16777216) & i10) == 0) {
            try {
                int i11 = this.f5895m << 8;
                byte[] bArr = this.f5896n;
                int i12 = this.f5897o;
                this.f5897o = i12 + 1;
                this.f5895m = i11 | (bArr[i12] & 255);
                this.l = i10 << 8;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new h();
            }
        }
    }
}
