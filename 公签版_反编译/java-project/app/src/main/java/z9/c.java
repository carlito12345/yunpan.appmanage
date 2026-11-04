package z9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f19501a;

    static {
        try {
            f19501a = "host::\u0000".getBytes(HTTP.UTF_8);
        } catch (UnsupportedEncodingException unused) {
        }
    }
}
