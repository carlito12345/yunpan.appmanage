package l5;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class g implements f5.f {

    /* renamed from: b, reason: collision with root package name */
    public final k f10584b;

    /* renamed from: c, reason: collision with root package name */
    public final URL f10585c;

    /* renamed from: d, reason: collision with root package name */
    public final String f10586d;

    /* renamed from: e, reason: collision with root package name */
    public String f10587e;

    /* renamed from: f, reason: collision with root package name */
    public URL f10588f;

    /* renamed from: g, reason: collision with root package name */
    public volatile byte[] f10589g;

    /* renamed from: h, reason: collision with root package name */
    public int f10590h;

    public g(URL url) {
        k kVar = h.f10591a;
        a6.h.c(url, "Argument must not be null");
        this.f10585c = url;
        this.f10586d = null;
        a6.h.c(kVar, "Argument must not be null");
        this.f10584b = kVar;
    }

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        if (this.f10589g == null) {
            this.f10589g = c().getBytes(f5.f.f5618a);
        }
        messageDigest.update(this.f10589g);
    }

    public final String c() {
        String str = this.f10586d;
        if (str != null) {
            return str;
        }
        URL url = this.f10585c;
        a6.h.c(url, "Argument must not be null");
        return url.toString();
    }

    public final URL d() {
        if (this.f10588f == null) {
            if (TextUtils.isEmpty(this.f10587e)) {
                String string = this.f10586d;
                if (TextUtils.isEmpty(string)) {
                    URL url = this.f10585c;
                    a6.h.c(url, "Argument must not be null");
                    string = url.toString();
                }
                this.f10587e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$");
            }
            this.f10588f = new URL(this.f10587e);
        }
        return this.f10588f;
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return c().equals(gVar.c()) && this.f10584b.equals(gVar.f10584b);
    }

    @Override // f5.f
    public final int hashCode() {
        if (this.f10590h == 0) {
            int iHashCode = c().hashCode();
            this.f10590h = iHashCode;
            this.f10590h = this.f10584b.f10594b.hashCode() + (iHashCode * 31);
        }
        return this.f10590h;
    }

    public final String toString() {
        return c();
    }

    public g(String str) {
        k kVar = h.f10591a;
        this.f10585c = null;
        if (!TextUtils.isEmpty(str)) {
            this.f10586d = str;
            a6.h.c(kVar, "Argument must not be null");
            this.f10584b = kVar;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }
}
