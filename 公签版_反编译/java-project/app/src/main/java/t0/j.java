package t0;

import android.os.Build;
import java.util.Locale;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: b, reason: collision with root package name */
    public static final j f14635b = a(new Locale[0]);

    /* renamed from: a, reason: collision with root package name */
    public final l f14636a;

    public j(l lVar) {
        this.f14636a = lVar;
    }

    public static j a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? new j(new m(i.a(localeArr))) : new j(new k(localeArr));
    }

    public static Locale b(String str) {
        if (str.contains("-")) {
            String[] strArrSplit = str.split("-", -1);
            if (strArrSplit.length > 2) {
                return new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
            }
            if (strArrSplit.length > 1) {
                return new Locale(strArrSplit[0], strArrSplit[1]);
            }
            if (strArrSplit.length == 1) {
                return new Locale(strArrSplit[0]);
            }
        } else {
            if (!str.contains("_")) {
                return new Locale(str);
            }
            String[] strArrSplit2 = str.split("_", -1);
            if (strArrSplit2.length > 2) {
                return new Locale(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2]);
            }
            if (strArrSplit2.length > 1) {
                return new Locale(strArrSplit2[0], strArrSplit2[1]);
            }
            if (strArrSplit2.length == 1) {
                return new Locale(strArrSplit2[0]);
            }
        }
        throw new IllegalArgumentException(g.b.A("Can not parse language tag: [", str, "]"));
    }

    public static j c(String str) {
        if (str == null || str.isEmpty()) {
            return f14635b;
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i10 = 0; i10 < length; i10++) {
            localeArr[i10] = Build.VERSION.SDK_INT >= 21 ? h.a(strArrSplit[i10]) : b(strArrSplit[i10]);
        }
        return a(localeArr);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof j) {
            if (this.f14636a.equals(((j) obj).f14636a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f14636a.hashCode();
    }

    public final String toString() {
        return this.f14636a.toString();
    }
}
