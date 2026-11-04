package nh;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import rh.v;

/* loaded from: classes3.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f11439a;

    static {
        Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");
        Charset charsetForName = Charset.forName(HTTP.UTF_8);
        f11439a = charsetForName;
        charsetForName.name();
        "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        v.R("meta[http-equiv=content-type], meta[charset]");
    }
}
