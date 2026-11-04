package a0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public int[] f45a = new int[16];

    /* renamed from: b, reason: collision with root package name */
    public int f46b;

    public final void a(int i10) {
        int[] iArr = this.f45a;
        if (iArr.length < i10) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, Math.max(i10, (iArr.length * 3) / 2));
            ue.d.d(iArrCopyOf, "copyOf(...)");
            this.f45a = iArrCopyOf;
        }
    }

    public final int b(int i10) {
        if (i10 < 0 || i10 >= this.f46b) {
            throw new IndexOutOfBoundsException("Index must be between 0 and size");
        }
        return this.f45a[i10];
    }

    public final void c(int i10, int i11) {
        int i12;
        if (i10 < 0 || i10 > (i12 = this.f46b) || i11 < 0 || i11 > i12) {
            throw new IndexOutOfBoundsException("Index must be between 0 and size");
        }
        if (i11 < i10) {
            b0.a.c("The end index must be < start index");
            throw null;
        }
        if (i11 != i10) {
            if (i11 < i12) {
                int[] iArr = this.f45a;
                je.i.e0(i10, i11, iArr, iArr, i12);
            }
            this.f46b -= i11 - i10;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof n) {
            n nVar = (n) obj;
            int i10 = nVar.f46b;
            int i11 = this.f46b;
            if (i10 == i11) {
                int[] iArr = this.f45a;
                int[] iArr2 = nVar.f45a;
                ye.c cVar = i11 <= Integer.MIN_VALUE ? ye.c.f19149d : new ye.c(0, i11 - 1);
                int i12 = cVar.f19142a;
                int i13 = cVar.f19143b;
                if (i12 <= i13) {
                    while (iArr[i12] == iArr2[i12]) {
                        if (i12 != i13) {
                            i12++;
                        }
                    }
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int[] iArr = this.f45a;
        int i10 = this.f46b;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArr[i12] * 31;
        }
        return i11;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "[");
        int[] iArr = this.f45a;
        int i10 = this.f46b;
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                sb2.append((CharSequence) "]");
                break;
            }
            int i12 = iArr[i11];
            if (i11 == -1) {
                sb2.append((CharSequence) "...");
                break;
            }
            if (i11 != 0) {
                sb2.append((CharSequence) ", ");
            }
            sb2.append(i12);
            i11++;
        }
        String string = sb2.toString();
        ue.d.d(string, "toString(...)");
        return string;
    }
}
