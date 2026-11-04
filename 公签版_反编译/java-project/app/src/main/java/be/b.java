package be;

import ae.g;
import java.net.UnknownHostException;

/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: f, reason: collision with root package name */
    public static final int f2798f;

    /* renamed from: g, reason: collision with root package name */
    public static final String f2799g;

    /* renamed from: d, reason: collision with root package name */
    public final String f2800d;

    /* renamed from: e, reason: collision with root package name */
    public final String f2801e;

    static {
        String strG;
        f2798f = (wd.a.a("jcifs.smb1.smb.client.useUnicode", true) ? 1 : 2) | 512;
        wd.a.d("jcifs.smb1.smb.client.domain");
        try {
            strG = g.f633m.g();
        } catch (UnknownHostException unused) {
            strG = null;
        }
        f2799g = strG;
    }

    public b(int i10, String str) {
        this.f2797a = i10 | f2798f;
        this.f2800d = str;
        this.f2801e = f2799g;
    }

    public final String toString() {
        String str = this.f2800d;
        String str2 = this.f2801e;
        StringBuilder sb2 = new StringBuilder("Type1Message[suppliedDomain=");
        if (str == null) {
            str = "null";
        }
        sb2.append(str);
        sb2.append(",suppliedWorkstation=");
        if (str2 == null) {
            str2 = "null";
        }
        sb2.append(str2);
        sb2.append(",flags=0x");
        sb2.append(de.c.c(this.f2797a, 8));
        sb2.append("]");
        return sb2.toString();
    }
}
