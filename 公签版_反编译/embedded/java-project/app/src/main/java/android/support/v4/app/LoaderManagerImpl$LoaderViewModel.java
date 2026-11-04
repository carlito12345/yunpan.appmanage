package android.support.v4.app;

import android.support.v4.media.session.a;

/* loaded from: classes.dex */
class LoaderManagerImpl$LoaderViewModel extends a {
    public LoaderManagerImpl$LoaderViewModel() {
        int i;
        int i2 = 4;
        while (true) {
            i = 40;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (40 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 4;
        int[] iArr = new int[i4];
        Object[] objArr = new Object[i4];
    }
}
