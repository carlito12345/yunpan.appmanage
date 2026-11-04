package j8;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class a implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f9792c = new int[0];

    /* renamed from: a, reason: collision with root package name */
    public int[] f9793a;

    /* renamed from: b, reason: collision with root package name */
    public int f9794b;

    public a() {
        this.f9794b = 0;
        this.f9793a = f9792c;
    }

    public final void a(boolean z) {
        c(this.f9794b + 1);
        if (z) {
            int[] iArr = this.f9793a;
            int i10 = this.f9794b;
            int i11 = i10 / 32;
            iArr[i11] = (1 << (i10 & 31)) | iArr[i11];
        }
        this.f9794b++;
    }

    public final void b(int i10, int i11) {
        if (i11 < 0 || i11 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        int i12 = this.f9794b;
        c(i12 + i11);
        for (int i13 = i11 - 1; i13 >= 0; i13--) {
            if (((1 << i13) & i10) != 0) {
                int[] iArr = this.f9793a;
                int i14 = i12 / 32;
                iArr[i14] = iArr[i14] | (1 << (i12 & 31));
            }
            i12++;
        }
        this.f9794b = i12;
    }

    public final void c(int i10) {
        if (i10 > this.f9793a.length * 32) {
            int[] iArr = new int[(((int) Math.ceil(i10 / 0.75f)) + 31) / 32];
            int[] iArr2 = this.f9793a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            this.f9793a = iArr;
        }
    }

    public final Object clone() {
        return new a((int[]) this.f9793a.clone(), this.f9794b);
    }

    public final boolean d(int i10) {
        return ((1 << (i10 & 31)) & this.f9793a[i10 / 32]) != 0;
    }

    public final int e() {
        return (this.f9794b + 7) / 8;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f9794b == aVar.f9794b && Arrays.equals(this.f9793a, aVar.f9793a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f9793a) + (this.f9794b * 31);
    }

    public final String toString() {
        int i10 = this.f9794b;
        StringBuilder sb2 = new StringBuilder((i10 / 8) + i10 + 1);
        for (int i11 = 0; i11 < this.f9794b; i11++) {
            if ((i11 & 7) == 0) {
                sb2.append(' ');
            }
            sb2.append(d(i11) ? 'X' : '.');
        }
        return sb2.toString();
    }

    public a(int[] iArr, int i10) {
        this.f9793a = iArr;
        this.f9794b = i10;
    }
}
