package lg;

import j$.nio.charset.StandardCharsets;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f10728a = 0;

    static {
        Charset charsetDefaultCharset = StandardCharsets.UTF_8;
        int i10 = sg.a.f14562a;
        if (charsetDefaultCharset == null) {
            charsetDefaultCharset = Charset.defaultCharset();
        }
        new a(charsetDefaultCharset);
    }
}
