package f5;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.nio.charset.Charset;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public interface f {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f5618a = Charset.forName(HTTP.UTF_8);

    void b(MessageDigest messageDigest);

    boolean equals(Object obj);

    int hashCode();
}
