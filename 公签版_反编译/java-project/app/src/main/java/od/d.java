package od;

/* loaded from: classes.dex */
public final class d implements b, c {

    /* renamed from: a, reason: collision with root package name */
    public int[] f11768a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f11769b;

    public d(int[] iArr, byte[] bArr) {
        this.f11768a = iArr;
        this.f11769b = bArr;
    }

    @Override // od.b, od.c
    public final int a() {
        return 1;
    }

    @Override // vc.j
    public final int c(int i10, byte[] bArr) {
        rd.a.e(this.f11768a != null ? r0.length : 0L, bArr, i10);
        rd.a.e(this.f11769b != null ? r0.length : 0L, bArr, i10 + 2);
        int length = i10 + 4;
        int[] iArr = this.f11768a;
        if (iArr != null) {
            for (int i11 : iArr) {
                rd.a.e(i11, bArr, length);
                length += 2;
            }
        }
        byte[] bArr2 = this.f11769b;
        if (bArr2 != null) {
            System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
            length += this.f11769b.length;
        }
        return length - i10;
    }

    @Override // vc.g
    public final int i(int i10, int i11, byte[] bArr) {
        int iA = rd.a.a(i10, bArr);
        int iA2 = rd.a.a(i10 + 2, bArr);
        int i12 = i10 + 4;
        this.f11768a = new int[iA];
        for (int i13 = 0; i13 < iA; i13++) {
            this.f11768a[i13] = rd.a.a(i12, bArr);
            i12 += 2;
        }
        byte[] bArr2 = new byte[iA2];
        this.f11769b = bArr2;
        System.arraycopy(bArr, i12, bArr2, 0, iA2);
        return (i12 + iA2) - i10;
    }

    @Override // vc.j
    public final int size() {
        int[] iArr = this.f11768a;
        int length = (iArr != null ? iArr.length * 2 : 0) + 4;
        byte[] bArr = this.f11769b;
        return length + (bArr != null ? bArr.length : 0);
    }

    public d() {
    }
}
