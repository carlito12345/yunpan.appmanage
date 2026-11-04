package ch;

import ce.y1;
import java.io.IOException;

/* loaded from: classes.dex */
public final class a extends IOException implements xd.d, y1 {
    public /* synthetic */ a(String str) {
        super(str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(int i10) {
        String strConcat;
        int i11 = 0;
        int i12 = 9;
        while (true) {
            if (i12 >= i11) {
                int i13 = (i11 + i12) / 2;
                int i14 = xd.d.K0[i13];
                if (i10 <= i14) {
                    if (i10 >= i14) {
                        strConcat = xd.d.L0[i13];
                        break;
                    }
                    i12 = i13 - 1;
                } else {
                    i11 = i13 + 1;
                }
            } else {
                strConcat = "0x".concat(de.c.c(i10, 8));
                break;
            }
        }
        super(strConcat);
    }

    public a(int i10, IOException iOException, String str) {
        super(str + ", status code: " + i10, iOException);
    }

    public a() {
    }
}
