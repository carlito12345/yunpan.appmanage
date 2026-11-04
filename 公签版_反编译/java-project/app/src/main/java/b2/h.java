package b2;

import android.os.Build;

/* loaded from: classes.dex */
public abstract class h implements x1.a {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f2533a;

    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    static {
        boolean z;
        if ("Amazon".equals(Build.MANUFACTURER)) {
            String str = Build.MODEL;
            z = "AFTM".equals(str) || "AFTB".equals(str);
        }
        f2533a = z;
    }
}
