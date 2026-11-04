package o5;

import android.os.Build;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: e, reason: collision with root package name */
    public static final boolean f11628e;

    /* renamed from: f, reason: collision with root package name */
    public static final boolean f11629f;

    /* renamed from: g, reason: collision with root package name */
    public static final File f11630g;

    /* renamed from: h, reason: collision with root package name */
    public static volatile v f11631h;

    /* renamed from: b, reason: collision with root package name */
    public int f11633b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11634c = true;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f11635d = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public final int f11632a = 20000;

    static {
        int i10 = Build.VERSION.SDK_INT;
        f11628e = i10 < 29;
        f11629f = i10 >= 28;
        f11630g = new File("/proc/self/fd");
    }

    public static v a() {
        if (f11631h == null) {
            synchronized (v.class) {
                try {
                    if (f11631h == null) {
                        f11631h = new v();
                    }
                } finally {
                }
            }
        }
        return f11631h;
    }

    public final int b() {
        if (Build.VERSION.SDK_INT == 28) {
            Iterator it = Arrays.asList("GM1900", "GM1901", "GM1903", "GM1911", "GM1915", "ONEPLUS A3000", "ONEPLUS A3010", "ONEPLUS A5010", "ONEPLUS A5000", "ONEPLUS A3003", "ONEPLUS A6000", "ONEPLUS A6003", "ONEPLUS A6010", "ONEPLUS A6013").iterator();
            while (it.hasNext()) {
                if (Build.MODEL.startsWith((String) it.next())) {
                    return 500;
                }
            }
        }
        return this.f11632a;
    }

    public final boolean c(int i10, int i11, boolean z, boolean z4) {
        boolean z10;
        if (!z || !f11629f) {
            return false;
        }
        if ((f11628e && !this.f11635d.get()) || z4 || i10 < 0 || i11 < 0) {
            return false;
        }
        synchronized (this) {
            try {
                int i12 = this.f11633b + 1;
                this.f11633b = i12;
                if (i12 >= 50) {
                    this.f11633b = 0;
                    this.f11634c = ((long) f11630g.list().length) < ((long) b());
                }
                z10 = this.f11634c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }
}
