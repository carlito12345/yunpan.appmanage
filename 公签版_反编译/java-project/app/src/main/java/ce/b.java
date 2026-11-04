package ce;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final int f3010a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object[] f3011b;

    /* renamed from: c, reason: collision with root package name */
    public static int f3012c;

    static {
        int iC = wd.a.c(16, "jcifs.smb1.smb.maxBuffers");
        f3010a = iC;
        f3011b = new Object[iC];
        f3012c = 0;
    }

    public static byte[] a() {
        synchronized (f3011b) {
            try {
                if (f3012c > 0) {
                    for (int i10 = 0; i10 < f3010a; i10++) {
                        Object[] objArr = f3011b;
                        Object obj = objArr[i10];
                        if (obj != null) {
                            byte[] bArr = (byte[]) obj;
                            objArr[i10] = null;
                            f3012c--;
                            return bArr;
                        }
                    }
                }
                return new byte[65535];
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void b(i0 i0Var, j0 j0Var) {
        synchronized (f3011b) {
            i0Var.f3066h0 = a();
            j0Var.X = a();
        }
    }

    public static void c(byte[] bArr) {
        synchronized (f3011b) {
            try {
                if (f3012c < f3010a) {
                    for (int i10 = 0; i10 < f3010a; i10++) {
                        Object[] objArr = f3011b;
                        if (objArr[i10] == null) {
                            objArr[i10] = bArr;
                            f3012c++;
                            return;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
