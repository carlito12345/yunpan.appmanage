package v9;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final i[] f16683a = new i[1];

    /* renamed from: b, reason: collision with root package name */
    public static final i[] f16684b = new i[1];

    /* renamed from: c, reason: collision with root package name */
    public static boolean f16685c;

    /* renamed from: d, reason: collision with root package name */
    public static a f16686d;

    public static synchronized i a() {
        i iVarB;
        try {
            iVarB = b();
            if (iVarB == null) {
                if (f16685c) {
                    throw new u9.a();
                }
                f16685c = true;
                if (f16686d == null) {
                    f16686d = new a();
                }
                iVarB = f16686d.a();
                f16685c = false;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return iVarB;
    }

    public static i b() {
        i iVar;
        i[] iVarArr = f16683a;
        synchronized (iVarArr) {
            try {
                i[] iVarArr2 = f16684b;
                i iVar2 = iVarArr2[0];
                iVar = null;
                if (iVar2 != null && iVar2.f16702c < 0) {
                    iVarArr2[0] = null;
                    iVar2 = null;
                }
                if (iVar2 == null) {
                    i iVar3 = iVarArr[0];
                    if (iVar3 == null || iVar3.f16702c >= 0) {
                        iVar = iVar3;
                    } else {
                        iVarArr[0] = null;
                    }
                } else {
                    iVar = iVar2;
                }
            } finally {
            }
        }
        return iVar;
    }
}
