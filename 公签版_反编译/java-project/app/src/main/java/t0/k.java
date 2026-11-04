package t0;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
public final class k implements l {

    /* renamed from: c, reason: collision with root package name */
    public static final Locale[] f14637c = new Locale[0];

    /* renamed from: a, reason: collision with root package name */
    public final Locale[] f14638a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14639b;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        j.b("en-Latn");
    }

    public k(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f14638a = f14637c;
            this.f14639b = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < localeArr.length; i10++) {
            Locale locale = localeArr[i10];
            if (locale == null) {
                throw new NullPointerException(g.b.i("list[", i10, "] is null"));
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                sb2.append(locale2.getLanguage());
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    sb2.append('-');
                    sb2.append(locale2.getCountry());
                }
                if (i10 < localeArr.length - 1) {
                    sb2.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f14638a = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f14639b = sb2.toString();
    }

    @Override // t0.l
    public final String a() {
        return this.f14639b;
    }

    @Override // t0.l
    public final Object b() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        Locale[] localeArr = ((k) obj).f14638a;
        Locale[] localeArr2 = this.f14638a;
        if (localeArr2.length != localeArr.length) {
            return false;
        }
        for (int i10 = 0; i10 < localeArr2.length; i10++) {
            if (!localeArr2[i10].equals(localeArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // t0.l
    public final Locale get(int i10) {
        if (i10 >= 0) {
            Locale[] localeArr = this.f14638a;
            if (i10 < localeArr.length) {
                return localeArr[i10];
            }
        }
        return null;
    }

    public final int hashCode() {
        int iHashCode = 1;
        for (Locale locale : this.f14638a) {
            iHashCode = (iHashCode * 31) + locale.hashCode();
        }
        return iHashCode;
    }

    @Override // t0.l
    public final boolean isEmpty() {
        return this.f14638a.length == 0;
    }

    @Override // t0.l
    public final int size() {
        return this.f14638a.length;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("[");
        int i10 = 0;
        while (true) {
            Locale[] localeArr = this.f14638a;
            if (i10 >= localeArr.length) {
                sb2.append("]");
                return sb2.toString();
            }
            sb2.append(localeArr[i10]);
            if (i10 < localeArr.length - 1) {
                sb2.append(',');
            }
            i10++;
        }
    }
}
