package a2;

import android.os.Build;

/* loaded from: classes.dex */
public abstract class p1 {

    /* renamed from: a, reason: collision with root package name */
    public static final u7.j0 f271a;

    static {
        u7.j0 j0VarJ;
        if (Build.VERSION.SDK_INT < 32) {
            j0VarJ = u7.j0.j(4, 12, 252, 6396, 4);
        } else {
            int i10 = u7.j0.f15482c;
            Object[] objArr = new Object[18];
            objArr[0] = 12;
            objArr[1] = 252;
            objArr[2] = 6396;
            objArr[3] = 4;
            objArr[4] = 3145980;
            objArr[5] = 82172;
            System.arraycopy(new Integer[]{737532, 9126140, 33904892, 202070268, 744444, 67108860, 743676, 3152124, 88316, 81980, 205215996, 3890172}, 0, objArr, 6, 12);
            j0VarJ = u7.j0.j(18, objArr);
        }
        f271a = j0VarJ;
    }
}
