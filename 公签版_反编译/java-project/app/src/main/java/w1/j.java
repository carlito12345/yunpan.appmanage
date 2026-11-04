package w1;

import android.net.Uri;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f17366h = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Uri f17367a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17368b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f17369c;

    /* renamed from: d, reason: collision with root package name */
    public final Map f17370d;

    /* renamed from: e, reason: collision with root package name */
    public final long f17371e;

    /* renamed from: f, reason: collision with root package name */
    public final long f17372f;

    /* renamed from: g, reason: collision with root package name */
    public final int f17373g;

    static {
        r1.z.a("media3.datasource");
    }

    public j(Uri uri, int i10, byte[] bArr, Map map, long j10, long j11, int i11) {
        a9.o.k(j10 >= 0);
        a9.o.k(j10 >= 0);
        a9.o.k(j11 > 0 || j11 == -1);
        uri.getClass();
        this.f17367a = uri;
        this.f17368b = i10;
        this.f17369c = (bArr == null || bArr.length == 0) ? null : bArr;
        this.f17370d = Collections.unmodifiableMap(new HashMap(map));
        this.f17371e = j10;
        this.f17372f = j11;
        this.f17373g = i11;
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("DataSpec[");
        int i10 = this.f17368b;
        if (i10 == 1) {
            str = "GET";
        } else if (i10 == 2) {
            str = "POST";
        } else {
            if (i10 != 3) {
                throw new IllegalStateException();
            }
            str = "HEAD";
        }
        sb2.append(str);
        sb2.append(" ");
        sb2.append(this.f17367a);
        sb2.append(", ");
        sb2.append(this.f17371e);
        sb2.append(", ");
        sb2.append(this.f17372f);
        sb2.append(", null, ");
        return android.support.v4.media.session.a.s(sb2, this.f17373g, "]");
    }
}
