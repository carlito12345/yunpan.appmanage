package ph;

import j$.util.Objects;
import java.util.Arrays;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class a implements Map.Entry, Cloneable {

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f12697d = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};

    /* renamed from: e, reason: collision with root package name */
    public static final Pattern f12698e = Pattern.compile("[^-a-zA-Z0-9_:.]+");

    /* renamed from: f, reason: collision with root package name */
    public static final Pattern f12699f = Pattern.compile("[\\x00-\\x1f\\x7f-\\x9f \"'/=]+");

    /* renamed from: a, reason: collision with root package name */
    public final String f12700a;

    /* renamed from: b, reason: collision with root package name */
    public String f12701b;

    /* renamed from: c, reason: collision with root package name */
    public c f12702c;

    public a(String str, String str2, c cVar) {
        nh.b.d0(str);
        String strTrim = str.trim();
        nh.b.b0(strTrim);
        this.f12700a = strTrim;
        this.f12701b = str2;
        this.f12702c = cVar;
    }

    public static String a(int i10, String str) {
        if (i10 == 2 && !d(str)) {
            String strReplaceAll = f12698e.matcher(str).replaceAll("_");
            if (d(strReplaceAll)) {
                return strReplaceAll;
            }
            return null;
        }
        if (i10 != 1 || c(str)) {
            return str;
        }
        String strReplaceAll2 = f12699f.matcher(str).replaceAll("_");
        if (c(strReplaceAll2)) {
            return strReplaceAll2;
        }
        return null;
    }

    public static void b(String str, String str2, oh.a aVar, g gVar) {
        aVar.b(str);
        if (gVar.f12714f == 1) {
            if (str2 == null) {
                return;
            }
            if ((str2.isEmpty() || str2.equalsIgnoreCase(str)) && Arrays.binarySearch(f12697d, oh.a.c(str)) >= 0) {
                return;
            }
        }
        aVar.b("=\"");
        if (str2 == null) {
            str2 = "";
        }
        n.c(aVar, str2, gVar, 2);
        aVar.a('\"');
    }

    public static boolean c(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt <= 31 || ((cCharAt >= 127 && cCharAt <= 159) || cCharAt == ' ' || cCharAt == '\"' || cCharAt == '\'' || cCharAt == '/' || cCharAt == '=')) {
                return false;
            }
        }
        return true;
    }

    public static boolean d(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        char cCharAt = str.charAt(0);
        if ((cCharAt < 'a' || cCharAt > 'z') && !((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == '_' || cCharAt == ':')) {
            return false;
        }
        for (int i10 = 1; i10 < length; i10++) {
            char cCharAt2 = str.charAt(i10);
            if ((cCharAt2 < 'a' || cCharAt2 > 'z') && ((cCharAt2 < 'A' || cCharAt2 > 'Z') && !((cCharAt2 >= '0' && cCharAt2 <= '9') || cCharAt2 == '-' || cCharAt2 == '_' || cCharAt2 == ':' || cCharAt2 == '.'))) {
                return false;
            }
        }
        return true;
    }

    public final Object clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e7) {
            throw new RuntimeException(e7);
        }
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return Objects.equals(this.f12700a, aVar.f12700a) && Objects.equals(this.f12701b, aVar.f12701b);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f12700a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        String str = this.f12701b;
        return str == null ? "" : str;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return Objects.hash(this.f12700a, this.f12701b);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        String str;
        int iG;
        String str2 = (String) obj;
        String strD = this.f12701b;
        c cVar = this.f12702c;
        if (cVar != null && (iG = cVar.g((str = this.f12700a))) != -1) {
            strD = this.f12702c.d(str);
            this.f12702c.f12708c[iG] = str2;
        }
        this.f12701b = str2;
        return strD == null ? "" : strD;
    }

    public final String toString() {
        StringBuilder sbB = oh.f.b();
        oh.a aVarE = oh.a.e(sbB);
        g gVar = new g();
        String str = this.f12701b;
        String strA = a(gVar.f12714f, this.f12700a);
        if (strA != null) {
            b(strA, str, aVarE, gVar);
        }
        return oh.f.l(sbB);
    }
}
