package a4;

import android.os.Build;
import bf.h;
import java.util.Locale;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f374a;

    /* renamed from: b, reason: collision with root package name */
    public final String f375b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f376c;

    /* renamed from: d, reason: collision with root package name */
    public final int f377d;

    /* renamed from: e, reason: collision with root package name */
    public final String f378e;

    /* renamed from: f, reason: collision with root package name */
    public final int f379f;

    /* renamed from: g, reason: collision with root package name */
    public final int f380g;

    public a(int i10, int i11, String str, String str2, String str3, boolean z) {
        this.f374a = str;
        this.f375b = str2;
        this.f376c = z;
        this.f377d = i10;
        this.f378e = str3;
        this.f379f = i11;
        Locale locale = Locale.US;
        ue.d.d(locale, "US");
        String upperCase = str2.toUpperCase(locale);
        ue.d.d(upperCase, "this as java.lang.String).toUpperCase(locale)");
        this.f380g = h.N(upperCase, "INT") ? 3 : (h.N(upperCase, "CHAR") || h.N(upperCase, "CLOB") || h.N(upperCase, "TEXT")) ? 2 : h.N(upperCase, "BLOB") ? 5 : (h.N(upperCase, "REAL") || h.N(upperCase, "FLOA") || h.N(upperCase, "DOUB")) ? 4 : 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        int i10 = Build.VERSION.SDK_INT;
        int i11 = this.f377d;
        if (i10 < 20) {
            if ((i11 > 0) != (((a) obj).f377d > 0)) {
                return false;
            }
        } else if (i11 != ((a) obj).f377d) {
            return false;
        }
        a aVar = (a) obj;
        if (!this.f374a.equals(aVar.f374a) || this.f376c != aVar.f376c) {
            return false;
        }
        int i12 = aVar.f379f;
        String str = aVar.f378e;
        String str2 = this.f378e;
        int i13 = this.f379f;
        if (i13 == 1 && i12 == 2 && str2 != null && !d.b.o(str2, str)) {
            return false;
        }
        if (i13 != 2 || i12 != 1 || str == null || d.b.o(str, str2)) {
            return (i13 == 0 || i13 != i12 || (str2 == null ? str == null : d.b.o(str2, str))) && this.f380g == aVar.f380g;
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.f374a.hashCode() * 31) + this.f380g) * 31) + (this.f376c ? 1231 : 1237)) * 31) + this.f377d;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Column{name='");
        sb2.append(this.f374a);
        sb2.append("', type='");
        sb2.append(this.f375b);
        sb2.append("', affinity='");
        sb2.append(this.f380g);
        sb2.append("', notNull=");
        sb2.append(this.f376c);
        sb2.append(", primaryKeyPosition=");
        sb2.append(this.f377d);
        sb2.append(", defaultValue='");
        String str = this.f378e;
        if (str == null) {
            str = "undefined";
        }
        return g.b.l(str, "'}", sb2);
    }
}
