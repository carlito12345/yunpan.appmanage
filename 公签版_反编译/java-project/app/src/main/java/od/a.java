package od;

/* loaded from: classes.dex */
public final class a implements b, c {

    /* renamed from: a, reason: collision with root package name */
    public int[] f11767a;

    public a(int[] iArr) {
        this.f11767a = iArr;
    }

    @Override // od.b, od.c
    public final int a() {
        return 2;
    }

    @Override // vc.j
    public final int c(int i10, byte[] bArr) {
        rd.a.e(this.f11767a != null ? r0.length : 0L, bArr, i10);
        int i11 = i10 + 2;
        int[] iArr = this.f11767a;
        if (iArr != null) {
            for (int i12 : iArr) {
                rd.a.e(i12, bArr, i11);
                i11 += 2;
            }
        }
        return i11 - i10;
    }

    @Override // vc.g
    public final int i(int i10, int i11, byte[] bArr) {
        int iA = rd.a.a(i10, bArr);
        int i12 = i10 + 2;
        this.f11767a = new int[iA];
        for (int i13 = 0; i13 < iA; i13++) {
            this.f11767a[i13] = rd.a.a(i12, bArr);
            i12 += 2;
        }
        return i12 - i10;
    }

    @Override // vc.j
    public final int size() {
        int[] iArr = this.f11767a;
        return (iArr != null ? iArr.length * 2 : 0) + 4;
    }

    public a() {
    }
}
