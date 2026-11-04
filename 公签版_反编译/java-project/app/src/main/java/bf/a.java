package bf;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f2815a;

    static {
        Charset charsetForName = Charset.forName(HTTP.UTF_8);
        ue.d.d(charsetForName, "forName(...)");
        f2815a = charsetForName;
        ue.d.d(Charset.forName(HTTP.UTF_16), "forName(...)");
        ue.d.d(Charset.forName("UTF-16BE"), "forName(...)");
        ue.d.d(Charset.forName("UTF-16LE"), "forName(...)");
        ue.d.d(Charset.forName("US-ASCII"), "forName(...)");
        ue.d.d(Charset.forName("ISO-8859-1"), "forName(...)");
    }
}
