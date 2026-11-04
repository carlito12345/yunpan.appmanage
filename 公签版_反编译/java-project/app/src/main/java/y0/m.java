package y0;

import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final Object f18547a;

    public m(Object obj) {
        this.f18547a = obj;
    }

    public static m a(int i10, int i11, int i12, int i13, boolean z) {
        int i14 = Build.VERSION.SDK_INT;
        return i14 >= 21 ? new m(AccessibilityNodeInfo.CollectionItemInfo.obtain(i10, i11, i12, i13, false, z)) : i14 >= 19 ? new m(AccessibilityNodeInfo.CollectionItemInfo.obtain(i10, i11, i12, i13, false)) : new m(null);
    }
}
