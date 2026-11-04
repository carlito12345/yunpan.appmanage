package qd;

import id.d;
import j$.nio.charset.StandardCharsets;
import vc.f;

/* loaded from: classes.dex */
public final class a extends id.c {

    /* renamed from: y, reason: collision with root package name */
    public final String f13186y;

    public a(String str, f fVar) {
        super(fVar, 3);
        this.f13186y = str;
    }

    @Override // id.b
    public final boolean g0(id.b bVar) {
        bVar.n0(-1);
        return super.g0(bVar);
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        rd.a.e(9L, bArr, i10);
        rd.a.e(0, bArr, i10 + 2);
        byte[] bytes = this.f13186y.getBytes(StandardCharsets.UTF_16LE);
        rd.a.e(bytes.length, bArr, i10 + 6);
        int i11 = i10 + 8;
        rd.a.e(i11 - this.f8658d, bArr, i10 + 4);
        System.arraycopy(bytes, 0, bArr, i11, bytes.length);
        return (i11 + bytes.length) - i10;
    }

    @Override // id.c
    public final d q0(vc.b bVar) {
        return new b(bVar.e());
    }

    @Override // ad.c
    public final int size() {
        return id.b.o0((this.f13186y.length() * 2) + 72, 0);
    }
}
