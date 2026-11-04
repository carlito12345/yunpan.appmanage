package x0;

import android.os.Build;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public final class v1 {

    /* renamed from: a, reason: collision with root package name */
    public u1 f18060a;

    public v1(int i10, Interpolator interpolator, long j10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 30) {
            this.f18060a = new t1(i10, interpolator, j10);
        } else if (i11 >= 21) {
            this.f18060a = new r1(i10, interpolator, j10);
        } else {
            this.f18060a = new u1(0, interpolator, j10);
        }
    }
}
