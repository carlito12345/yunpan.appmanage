package eg;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.File;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f4973a = File.separator;

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f4974b;

    /* renamed from: c, reason: collision with root package name */
    public static final Charset f4975c;

    static {
        Charset charsetForName = Charset.forName(HTTP.UTF_8);
        f4974b = charsetForName;
        f4975c = charsetForName;
    }
}
