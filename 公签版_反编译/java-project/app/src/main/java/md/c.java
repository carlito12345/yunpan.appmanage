package md;

import vc.g;

/* loaded from: classes.dex */
public final class c implements g {

    /* renamed from: a, reason: collision with root package name */
    public int f11193a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f11194b = new byte[16];

    /* renamed from: c, reason: collision with root package name */
    public int f11195c;

    /* renamed from: d, reason: collision with root package name */
    public int f11196d;

    @Override // vc.g
    public final int i(int i10, int i11, byte[] bArr) {
        this.f11193a = rd.a.b(i10, bArr);
        System.arraycopy(bArr, i10 + 4, this.f11194b, 0, 16);
        this.f11195c = rd.a.a(i10 + 20, bArr);
        this.f11196d = rd.a.a(i10 + 22, bArr);
        return (i10 + 24) - i10;
    }
}
