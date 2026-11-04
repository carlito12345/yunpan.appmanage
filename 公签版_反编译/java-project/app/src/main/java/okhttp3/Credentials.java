package okhttp3;

import fg.l;
import g.b;
import java.nio.charset.Charset;
import okhttp3.internal.Util;
import ue.d;

/* loaded from: classes.dex */
public final class Credentials {
    private Credentials() {
    }

    public static String basic(String str, String str2) {
        return basic(str, str2, Util.ISO_8859_1);
    }

    public static String basic(String str, String str2, Charset charset) {
        String strK = b.k(str, ":", str2);
        l lVar = l.f5854d;
        d.e(strK, "<this>");
        d.e(charset, "charset");
        byte[] bytes = strK.getBytes(charset);
        d.d(bytes, "this as java.lang.String).getBytes(charset)");
        return da.b.c("Basic ", new l(bytes).a());
    }
}
