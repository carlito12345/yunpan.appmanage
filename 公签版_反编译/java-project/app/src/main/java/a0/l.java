package a0;

import java.util.ConcurrentModificationException;

/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f37a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f38b = new Object();

    public static final void a(f fVar, int i10) {
        ue.d.e(fVar, "<this>");
        fVar.f20a = new int[i10];
        fVar.f21b = new Object[i10];
    }

    public static final int b(f fVar, Object obj, int i10) {
        ue.d.e(fVar, "<this>");
        int i11 = fVar.f22c;
        if (i11 == 0) {
            return -1;
        }
        try {
            int iA = b0.a.a(fVar.f22c, i10, fVar.f20a);
            if (iA < 0 || ue.d.a(obj, fVar.f21b[iA])) {
                return iA;
            }
            int i12 = iA + 1;
            while (i12 < i11 && fVar.f20a[i12] == i10) {
                if (ue.d.a(obj, fVar.f21b[i12])) {
                    return i12;
                }
                i12++;
            }
            for (int i13 = iA - 1; i13 >= 0 && fVar.f20a[i13] == i10; i13--) {
                if (ue.d.a(obj, fVar.f21b[i13])) {
                    return i13;
                }
            }
            return i12 ^ (-1);
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }
}
