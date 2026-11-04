package androidx.recyclerview.widget;

import android.util.SparseIntArray;

/* loaded from: classes.dex */
public abstract class j0 {

    /* renamed from: a, reason: collision with root package name */
    public final SparseIntArray f2161a = new SparseIntArray();

    /* renamed from: b, reason: collision with root package name */
    public final SparseIntArray f2162b = new SparseIntArray();

    public final int a(int i10, int i11) {
        int iC = c(i10);
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            int iC2 = c(i14);
            i12 += iC2;
            if (i12 == i11) {
                i13++;
                i12 = 0;
            } else if (i12 > i11) {
                i13++;
                i12 = iC2;
            }
        }
        return i12 + iC > i11 ? i13 + 1 : i13;
    }

    public int b(int i10, int i11) {
        int iC = c(i10);
        if (iC == i11) {
            return 0;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            int iC2 = c(i13);
            i12 += iC2;
            if (i12 == i11) {
                i12 = 0;
            } else if (i12 > i11) {
                i12 = iC2;
            }
        }
        if (iC + i12 <= i11) {
            return i12;
        }
        return 0;
    }

    public abstract int c(int i10);

    public final void d() {
        this.f2161a.clear();
    }
}
