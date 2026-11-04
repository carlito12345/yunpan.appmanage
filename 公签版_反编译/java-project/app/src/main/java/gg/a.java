package gg;

import fg.i;
import java.io.EOFException;
import ue.d;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f6163a;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(bf.a.f2815a);
        d.d(bytes, "this as java.lang.String).getBytes(charset)");
        f6163a = bytes;
    }

    public static final String a(i iVar, long j10) throws EOFException {
        d.e(iVar, "<this>");
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (iVar.L(j11) == 13) {
                String strP = iVar.P(j11, bf.a.f2815a);
                iVar.skip(2L);
                return strP;
            }
        }
        String strP2 = iVar.P(j10, bf.a.f2815a);
        iVar.skip(1L);
        return strP2;
    }
}
