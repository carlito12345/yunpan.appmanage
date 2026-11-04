package a9;

import java.util.Vector;

/* loaded from: classes.dex */
public abstract class d extends b {

    /* renamed from: b, reason: collision with root package name */
    public static final Vector f477b = new Vector();

    public static void e(int i10, f0 f0Var) {
        synchronized (f477b) {
            g(f0Var, "localhost", i10);
            g(f0Var, null, i10);
        }
    }

    public static void f(f0 f0Var) {
        int[] iArr;
        int i10;
        int i11;
        Vector vector = f477b;
        synchronized (vector) {
            try {
                iArr = new int[vector.size()];
                int i12 = 0;
                i11 = 0;
                while (true) {
                    Vector vector2 = f477b;
                    if (i12 >= vector2.size()) {
                        break;
                    }
                    ((c) vector2.elementAt(i12)).getClass();
                    if (f0Var == null) {
                        iArr[i11] = 0;
                        i11++;
                    }
                    i12++;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        for (i10 = 0; i10 < i11; i10++) {
            e(iArr[i10], f0Var);
        }
    }

    public static c g(f0 f0Var, String str, int i10) {
        c cVar;
        synchronized (f477b) {
            int i11 = 0;
            while (true) {
                try {
                    Vector vector = f477b;
                    if (i11 >= vector.size()) {
                        return null;
                    }
                    cVar = (c) vector.elementAt(i11);
                    cVar.getClass();
                    if (f0Var == null && (i10 == 0 || i10 == 0)) {
                        break;
                    }
                    i11++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (str == null) {
                return cVar;
            }
            throw null;
        }
    }
}
