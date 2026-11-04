package y3;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public static final c0.h f18917a = new c0.h();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f18918b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static s9.a f18919c = null;

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? g.a(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static s9.a b(int i10, boolean z, boolean z4) {
        s9.a aVar = new s9.a(28, false);
        f18919c = aVar;
        c0.h hVar = f18917a;
        hVar.getClass();
        if (c0.g.f2837f.g(hVar, null, aVar)) {
            c0.g.b(hVar);
        }
        return f18919c;
    }

    public static void c(Context context, boolean z) {
        h hVarA;
        int i10;
        if (z || f18919c == null) {
            synchronized (f18918b) {
                if (!z) {
                    try {
                        if (f18919c != null) {
                            return;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                int i11 = Build.VERSION.SDK_INT;
                int i12 = 0;
                if (i11 >= 28 && i11 != 30) {
                    File file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                    long length = file.length();
                    boolean z4 = file.exists() && length > 0;
                    File file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                    long length2 = file2.length();
                    boolean z10 = file2.exists() && length2 > 0;
                    try {
                        long jA = a(context);
                        File file3 = new File(context.getFilesDir(), "profileInstalled");
                        if (file3.exists()) {
                            try {
                                hVarA = h.a(file3);
                            } catch (IOException unused) {
                                b(131072, z4, z10);
                                return;
                            }
                        } else {
                            hVarA = null;
                        }
                        if (hVarA != null && hVarA.f18915c == jA && (i10 = hVarA.f18914b) != 2) {
                            i12 = i10;
                        } else if (z4) {
                            i12 = 1;
                        } else if (z10) {
                            i12 = 2;
                        }
                        if (z && z10 && i12 != 1) {
                            i12 = 2;
                        }
                        if (hVarA != null && hVarA.f18914b == 2 && i12 == 1 && length < hVarA.f18916d) {
                            i12 = 3;
                        }
                        h hVar = new h(1, i12, jA, length2);
                        if (hVarA == null || !hVarA.equals(hVar)) {
                            try {
                                hVar.b(file3);
                            } catch (IOException unused2) {
                                i12 = 196608;
                            }
                        }
                        b(i12, z4, z10);
                        return;
                    } catch (PackageManager.NameNotFoundException unused3) {
                        b(65536, z4, z10);
                        return;
                    }
                }
                b(262144, false, false);
            }
        }
    }
}
