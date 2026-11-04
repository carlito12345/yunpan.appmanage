package a9;

import java.util.Vector;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final Vector f475a = new Vector();

    public static void c(f0 f0Var) {
        b[] bVarArr;
        int i10;
        int i11;
        Vector vector = f475a;
        synchronized (vector) {
            bVarArr = new b[vector.size()];
            int i12 = 0;
            i11 = 0;
            while (true) {
                Vector vector2 = f475a;
                if (i12 >= vector2.size()) {
                    break;
                }
                try {
                    b bVar = (b) vector2.elementAt(i12);
                    bVar.getClass();
                    if (f0Var == null) {
                        int i13 = i11 + 1;
                        try {
                            bVarArr[i11] = bVar;
                        } catch (Exception unused) {
                        }
                        i11 = i13;
                    }
                } catch (Exception unused2) {
                }
                i12++;
            }
        }
        for (i10 = 0; i10 < i11; i10++) {
            bVarArr[i10].b();
        }
    }

    public static b d(int i10, f0 f0Var) {
        synchronized (f475a) {
            int i11 = 0;
            while (true) {
                try {
                    Vector vector = f475a;
                    if (i11 >= vector.size()) {
                        return null;
                    }
                    b bVar = (b) vector.elementAt(i11);
                    bVar.getClass();
                    if (i10 == 0 && f0Var == null) {
                        return bVar;
                    }
                    i11++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public abstract void a(long j10);

    public abstract void b();
}
