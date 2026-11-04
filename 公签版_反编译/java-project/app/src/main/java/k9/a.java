package k9;

import android.text.TextUtils;
import j$.util.DesugarTimeZone;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class a implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final TimeZone f10202b = DesugarTimeZone.getTimeZone("GMT");

    /* renamed from: c, reason: collision with root package name */
    public static String f10203c;

    /* renamed from: d, reason: collision with root package name */
    public static String f10204d;

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f10205a = new LinkedHashMap();

    public static long a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM y HH:mm:ss 'GMT'", Locale.US);
        simpleDateFormat.setTimeZone(f10202b);
        return simpleDateFormat.parse(str).getTime();
    }

    public final void b(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.f10205a.put(str, str2);
    }

    public final String toString() {
        return "HttpHeaders{headersMap=" + this.f10205a + '}';
    }
}
