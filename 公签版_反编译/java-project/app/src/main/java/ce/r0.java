package ce;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: classes.dex */
public class r0 extends IOException implements o, f, y1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f3160a;

    /* renamed from: b, reason: collision with root package name */
    public final Exception f3161b;

    /* JADX WARN: Illegal instructions before constructor call */
    public r0(int i10, boolean z) {
        String strA;
        if (z) {
            int i11 = 0;
            int i12 = 8;
            while (true) {
                if (i12 >= i11) {
                    int i13 = (i11 + i12) / 2;
                    int i14 = y1.f3236y0[i13];
                    if (i10 <= i14) {
                        if (i10 >= i14) {
                            strA = y1.f3237z0[i13];
                            break;
                        }
                        i12 = i13 - 1;
                    } else {
                        i11 = i13 + 1;
                    }
                } else {
                    strA = i10 + "";
                    break;
                }
            }
        } else {
            strA = a(i10);
        }
        super(strA);
        this.f3160a = z ? i10 : b(i10);
    }

    public static String a(int i10) {
        if (i10 == 0) {
            return "NT_STATUS_SUCCESS";
        }
        if ((i10 & (-1073741824)) == -1073741824) {
            int i11 = 1;
            int i12 = 61;
            while (i12 >= i11) {
                int i13 = (i11 + i12) / 2;
                int i14 = o.U[i13];
                if (i10 > i14) {
                    i11 = i13 + 1;
                } else {
                    if (i10 >= i14) {
                        return o.W[i13];
                    }
                    i12 = i13 - 1;
                }
            }
        } else {
            int i15 = 39;
            int i16 = 0;
            while (i15 >= i16) {
                int i17 = (i16 + i15) / 2;
                int i18 = f.J[i17][0];
                if (i10 > i18) {
                    i16 = i17 + 1;
                } else {
                    if (i10 >= i18) {
                        return f.Q[i17];
                    }
                    i15 = i17 - 1;
                }
            }
        }
        return "0x".concat(de.c.c(i10, 8));
    }

    public static int b(int i10) {
        if (((-1073741824) & i10) != 0) {
            return i10;
        }
        int i11 = 39;
        int i12 = 0;
        while (i11 >= i12) {
            int i13 = (i12 + i11) / 2;
            int[] iArr = f.J[i13];
            int i14 = iArr[0];
            if (i10 > i14) {
                i12 = i13 + 1;
            } else {
                if (i10 >= i14) {
                    return iArr[1];
                }
                i11 = i13 - 1;
            }
        }
        return -1073741823;
    }

    @Override // java.lang.Throwable
    public String toString() {
        Exception exc = this.f3161b;
        if (exc == null) {
            return super.toString();
        }
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        return super.toString() + SignParameters.NEW_LINE + stringWriter;
    }

    public r0() {
    }

    public r0(int i10) {
        super(a(i10));
        this.f3160a = b(i10);
        this.f3161b = null;
    }

    public r0(String str) {
        super(str);
        this.f3160a = -1073741823;
    }

    public r0(String str, Exception exc) {
        super(str);
        this.f3161b = exc;
        this.f3160a = -1073741823;
    }
}
