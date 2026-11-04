package u0;

import a0.m;
import a0.t;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final m f15171a = new m(16);

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadPoolExecutor f15172b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f15173c;

    /* renamed from: d, reason: collision with root package name */
    public static final t f15174d;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new h5.a(1));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f15172b = threadPoolExecutor;
        f15173c = new Object();
        f15174d = new t(0);
    }

    public static e a(String str, Context context, kf.b bVar, int i10) throws Throwable {
        m mVar = f15171a;
        Typeface typeface = (Typeface) mVar.a(str);
        if (typeface != null) {
            return new e(typeface);
        }
        try {
            d3.g gVarA = b.a(context, bVar);
            int i11 = 1;
            g[] gVarArr = (g[]) gVarA.f4437c;
            int i12 = gVarA.f4436b;
            if (i12 != 0) {
                i11 = i12 != 1 ? -3 : -2;
            } else if (gVarArr != null && gVarArr.length != 0) {
                int length = gVarArr.length;
                i11 = 0;
                int i13 = 0;
                while (true) {
                    if (i13 >= length) {
                        break;
                    }
                    int i14 = gVarArr[i13].f15179e;
                    if (i14 == 0) {
                        i13++;
                    } else if (i14 >= 0) {
                        i11 = i14;
                    }
                }
            }
            if (i11 != 0) {
                return new e(i11);
            }
            Typeface typefaceV = p0.g.f12547a.v(context, gVarArr, i10);
            if (typefaceV == null) {
                return new e(-3);
            }
            mVar.c(str, typefaceV);
            return new e(typefaceV);
        } catch (PackageManager.NameNotFoundException unused) {
            return new e(-1);
        }
    }
}
