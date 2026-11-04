package h4;

import android.os.Build;

/* loaded from: classes.dex */
public abstract class z {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f6510a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f6511b;

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f6512c;

    static {
        int i10 = Build.VERSION.SDK_INT;
        f6510a = i10 >= 19;
        f6511b = i10 >= 18;
        f6512c = i10 >= 28;
    }
}
