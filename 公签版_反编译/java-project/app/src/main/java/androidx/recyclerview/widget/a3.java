package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a3 {

    /* renamed from: a, reason: collision with root package name */
    public int[] f2028a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f2029b;

    public final void a(z2 z2Var) {
        if (this.f2029b == null) {
            this.f2029b = new ArrayList();
        }
        int size = this.f2029b.size();
        for (int i10 = 0; i10 < size; i10++) {
            z2 z2Var2 = (z2) this.f2029b.get(i10);
            if (z2Var2.f2386a == z2Var.f2386a) {
                this.f2029b.remove(i10);
            }
            if (z2Var2.f2386a >= z2Var.f2386a) {
                this.f2029b.add(i10, z2Var);
                return;
            }
        }
        this.f2029b.add(z2Var);
    }

    public final void b() {
        int[] iArr = this.f2028a;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f2029b = null;
    }

    public final void c(int i10) {
        int[] iArr = this.f2028a;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i10, 10) + 1];
            this.f2028a = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i10 >= iArr.length) {
            int length = iArr.length;
            while (length <= i10) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f2028a = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = this.f2028a;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public final void d(int i10) {
        ArrayList arrayList = this.f2029b;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((z2) this.f2029b.get(size)).f2386a >= i10) {
                    this.f2029b.remove(size);
                }
            }
        }
        g(i10);
    }

    public final z2 e(int i10, int i11, int i12) {
        ArrayList arrayList = this.f2029b;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        for (int i13 = 0; i13 < size; i13++) {
            z2 z2Var = (z2) this.f2029b.get(i13);
            int i14 = z2Var.f2386a;
            if (i14 >= i11) {
                return null;
            }
            if (i14 >= i10 && (i12 == 0 || z2Var.f2387b == i12 || z2Var.f2389d)) {
                return z2Var;
            }
        }
        return null;
    }

    public final z2 f(int i10) {
        ArrayList arrayList = this.f2029b;
        if (arrayList == null) {
            return null;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            z2 z2Var = (z2) this.f2029b.get(size);
            if (z2Var.f2386a == i10) {
                return z2Var;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int g(int i10) {
        int i11;
        int[] iArr = this.f2028a;
        if (iArr == null || i10 >= iArr.length) {
            return -1;
        }
        if (this.f2029b != null) {
            z2 z2VarF = f(i10);
            if (z2VarF != null) {
                this.f2029b.remove(z2VarF);
            }
            int size = this.f2029b.size();
            int i12 = 0;
            while (true) {
                if (i12 >= size) {
                    i12 = -1;
                    break;
                }
                if (((z2) this.f2029b.get(i12)).f2386a >= i10) {
                    break;
                }
                i12++;
            }
            if (i12 != -1) {
                z2 z2Var = (z2) this.f2029b.get(i12);
                this.f2029b.remove(i12);
                i11 = z2Var.f2386a;
            } else {
                i11 = -1;
            }
        }
        if (i11 == -1) {
            int[] iArr2 = this.f2028a;
            Arrays.fill(iArr2, i10, iArr2.length, -1);
            return this.f2028a.length;
        }
        int iMin = Math.min(i11 + 1, this.f2028a.length);
        Arrays.fill(this.f2028a, i10, iMin, -1);
        return iMin;
    }

    public final void h(int i10, int i11) {
        int[] iArr = this.f2028a;
        if (iArr == null || i10 >= iArr.length) {
            return;
        }
        int i12 = i10 + i11;
        c(i12);
        int[] iArr2 = this.f2028a;
        System.arraycopy(iArr2, i10, iArr2, i12, (iArr2.length - i10) - i11);
        Arrays.fill(this.f2028a, i10, i12, -1);
        ArrayList arrayList = this.f2029b;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            z2 z2Var = (z2) this.f2029b.get(size);
            int i13 = z2Var.f2386a;
            if (i13 >= i10) {
                z2Var.f2386a = i13 + i11;
            }
        }
    }

    public final void i(int i10, int i11) {
        int[] iArr = this.f2028a;
        if (iArr == null || i10 >= iArr.length) {
            return;
        }
        int i12 = i10 + i11;
        c(i12);
        int[] iArr2 = this.f2028a;
        System.arraycopy(iArr2, i12, iArr2, i10, (iArr2.length - i10) - i11);
        int[] iArr3 = this.f2028a;
        Arrays.fill(iArr3, iArr3.length - i11, iArr3.length, -1);
        ArrayList arrayList = this.f2029b;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            z2 z2Var = (z2) this.f2029b.get(size);
            int i13 = z2Var.f2386a;
            if (i13 >= i10) {
                if (i13 < i12) {
                    this.f2029b.remove(size);
                } else {
                    z2Var.f2386a = i13 - i11;
                }
            }
        }
    }
}
