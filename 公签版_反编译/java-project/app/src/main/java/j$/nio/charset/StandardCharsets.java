package j$.nio.charset;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class StandardCharsets {
    public static final Charset US_ASCII = Charset.forName("US-ASCII");
    public static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
    public static final Charset UTF_8 = Charset.forName(HTTP.UTF_8);
    public static final Charset UTF_16BE = Charset.forName("UTF-16BE");
    public static final Charset UTF_16LE = Charset.forName("UTF-16LE");
    public static final Charset UTF_16 = Charset.forName(HTTP.UTF_16);
}
