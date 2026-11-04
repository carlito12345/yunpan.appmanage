package okhttp3;

import com.hsae.autosdk.core.NoConst;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpDate;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.bouncycastle.jcajce.provider.digest.a;

/* loaded from: classes.dex */
public final class Cookie {
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;
    private final String name;
    private final String path;
    private final boolean persistent;
    private final boolean secure;
    private final String value;
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public static final class Builder {
        String domain;
        boolean hostOnly;
        boolean httpOnly;
        String name;
        boolean persistent;
        boolean secure;
        String value;
        long expiresAt = HttpDate.MAX_DATE;
        String path = "/";

        public Cookie build() {
            return new Cookie(this);
        }

        public Builder domain(String str) {
            return domain(str, false);
        }

        public Builder expiresAt(long j10) {
            if (j10 <= 0) {
                j10 = Long.MIN_VALUE;
            }
            if (j10 > HttpDate.MAX_DATE) {
                j10 = 253402300799999L;
            }
            this.expiresAt = j10;
            this.persistent = true;
            return this;
        }

        public Builder hostOnlyDomain(String str) {
            return domain(str, true);
        }

        public Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        public Builder name(String str) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("name is not trimmed");
            }
            this.name = str;
            return this;
        }

        public Builder path(String str) {
            if (!str.startsWith("/")) {
                throw new IllegalArgumentException("path must start with '/'");
            }
            this.path = str;
            return this;
        }

        public Builder secure() {
            this.secure = true;
            return this;
        }

        public Builder value(String str) {
            if (str == null) {
                throw new NullPointerException("value == null");
            }
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("value is not trimmed");
            }
            this.value = str;
            return this;
        }

        private Builder domain(String str, boolean z) {
            if (str == null) {
                throw new NullPointerException("domain == null");
            }
            String strCanonicalizeHost = Util.canonicalizeHost(str);
            if (strCanonicalizeHost == null) {
                throw new IllegalArgumentException("unexpected domain: ".concat(str));
            }
            this.domain = strCanonicalizeHost;
            this.hostOnly = z;
            return this;
        }
    }

    private Cookie(String str, String str2, long j10, String str3, String str4, boolean z, boolean z4, boolean z10, boolean z11) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j10;
        this.domain = str3;
        this.path = str4;
        this.secure = z;
        this.httpOnly = z4;
        this.hostOnly = z10;
        this.persistent = z11;
    }

    private static int dateCharacterOffset(String str, int i10, int i11, boolean z) {
        while (i10 < i11) {
            char cCharAt = str.charAt(i10);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z)) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    private static boolean domainMatch(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.verifyAsIpAddress(str);
    }

    public static Cookie parse(HttpUrl httpUrl, String str) {
        return parse(System.currentTimeMillis(), httpUrl, str);
    }

    public static List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
        List<String> listValues = headers.values("Set-Cookie");
        int size = listValues.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            Cookie cookie = parse(httpUrl, listValues.get(i10));
            if (cookie != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(cookie);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    private static String parseDomain(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        String strCanonicalizeHost = Util.canonicalizeHost(str);
        if (strCanonicalizeHost != null) {
            return strCanonicalizeHost;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static long parseExpires(String str, int i10, int i11) throws NumberFormatException {
        int iDateCharacterOffset = dateCharacterOffset(str, i10, i11, false);
        Matcher matcher = TIME_PATTERN.matcher(str);
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        int iIndexOf = -1;
        int i15 = -1;
        int i16 = -1;
        while (iDateCharacterOffset < i11) {
            int iDateCharacterOffset2 = dateCharacterOffset(str, iDateCharacterOffset + 1, i11, true);
            matcher.region(iDateCharacterOffset, iDateCharacterOffset2);
            if (i13 == -1 && matcher.usePattern(TIME_PATTERN).matches()) {
                i13 = Integer.parseInt(matcher.group(1));
                i15 = Integer.parseInt(matcher.group(2));
                i16 = Integer.parseInt(matcher.group(3));
            } else if (i14 == -1 && matcher.usePattern(DAY_OF_MONTH_PATTERN).matches()) {
                i14 = Integer.parseInt(matcher.group(1));
            } else if (iIndexOf == -1) {
                Pattern pattern = MONTH_PATTERN;
                if (matcher.usePattern(pattern).matches()) {
                    iIndexOf = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                } else if (i12 == -1 && matcher.usePattern(YEAR_PATTERN).matches()) {
                    i12 = Integer.parseInt(matcher.group(1));
                }
            }
            iDateCharacterOffset = dateCharacterOffset(str, iDateCharacterOffset2 + 1, i11, false);
        }
        if (i12 >= 70 && i12 <= 99) {
            i12 += 1900;
        }
        if (i12 >= 0 && i12 <= 69) {
            i12 += NoConst.MIN_HEARTBEAT_INTERVAL;
        }
        if (i12 < 1601) {
            throw new IllegalArgumentException();
        }
        if (iIndexOf == -1) {
            throw new IllegalArgumentException();
        }
        if (i14 < 1 || i14 > 31) {
            throw new IllegalArgumentException();
        }
        if (i13 < 0 || i13 > 23) {
            throw new IllegalArgumentException();
        }
        if (i15 < 0 || i15 > 59) {
            throw new IllegalArgumentException();
        }
        if (i16 < 0 || i16 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i12);
        gregorianCalendar.set(2, iIndexOf - 1);
        gregorianCalendar.set(5, i14);
        gregorianCalendar.set(11, i13);
        gregorianCalendar.set(12, i15);
        gregorianCalendar.set(13, i16);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    private static long parseMaxAge(String str) throws NumberFormatException {
        try {
            long j10 = Long.parseLong(str);
            if (j10 <= 0) {
                return Long.MIN_VALUE;
            }
            return j10;
        } catch (NumberFormatException e7) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e7;
        }
    }

    private static boolean pathMatch(HttpUrl httpUrl, String str) {
        String strEncodedPath = httpUrl.encodedPath();
        if (strEncodedPath.equals(str)) {
            return true;
        }
        if (strEncodedPath.startsWith(str)) {
            return str.endsWith("/") || strEncodedPath.charAt(str.length()) == '/';
        }
        return false;
    }

    public String domain() {
        return this.domain;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        return cookie.name.equals(this.name) && cookie.value.equals(this.value) && cookie.domain.equals(this.domain) && cookie.path.equals(this.path) && cookie.expiresAt == this.expiresAt && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly;
    }

    public long expiresAt() {
        return this.expiresAt;
    }

    public int hashCode() {
        int iC = a.c(a.c(a.c(a.c(527, 31, this.name), 31, this.value), 31, this.domain), 31, this.path);
        long j10 = this.expiresAt;
        return ((((((((iC + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (!this.secure ? 1 : 0)) * 31) + (!this.httpOnly ? 1 : 0)) * 31) + (!this.persistent ? 1 : 0)) * 31) + (!this.hostOnly ? 1 : 0);
    }

    public boolean hostOnly() {
        return this.hostOnly;
    }

    public boolean httpOnly() {
        return this.httpOnly;
    }

    public boolean matches(HttpUrl httpUrl) {
        if ((this.hostOnly ? httpUrl.host().equals(this.domain) : domainMatch(httpUrl.host(), this.domain)) && pathMatch(httpUrl, this.path)) {
            return !this.secure || httpUrl.isHttps();
        }
        return false;
    }

    public String name() {
        return this.name;
    }

    public String path() {
        return this.path;
    }

    public boolean persistent() {
        return this.persistent;
    }

    public boolean secure() {
        return this.secure;
    }

    public String toString() {
        return toString(false);
    }

    public String value() {
        return this.value;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00c1 A[PHI: r0
  0x00c1: PHI (r0v15 long) = (r0v2 long), (r0v5 long) binds: [B:41:0x00bf, B:52:0x00e2] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Cookie parse(long j10, HttpUrl httpUrl, String str) throws NumberFormatException {
        long j11;
        Cookie cookie;
        String str2;
        String strSubstring;
        int length = str.length();
        char c7 = ';';
        int iDelimiterOffset = Util.delimiterOffset(str, 0, length, ';');
        char c10 = '=';
        int iDelimiterOffset2 = Util.delimiterOffset(str, 0, iDelimiterOffset, '=');
        if (iDelimiterOffset2 == iDelimiterOffset) {
            return null;
        }
        String strTrimSubstring = Util.trimSubstring(str, 0, iDelimiterOffset2);
        if (strTrimSubstring.isEmpty() || Util.indexOfControlOrNonAscii(strTrimSubstring) != -1) {
            return null;
        }
        String strTrimSubstring2 = Util.trimSubstring(str, iDelimiterOffset2 + 1, iDelimiterOffset);
        if (Util.indexOfControlOrNonAscii(strTrimSubstring2) != -1) {
            return null;
        }
        int i10 = iDelimiterOffset + 1;
        String str3 = null;
        String domain = null;
        long maxAge = -1;
        long expires = 253402300799999L;
        boolean z = false;
        boolean z4 = false;
        boolean z10 = true;
        boolean z11 = false;
        while (i10 < length) {
            int iDelimiterOffset3 = Util.delimiterOffset(str, i10, length, c7);
            int iDelimiterOffset4 = Util.delimiterOffset(str, i10, iDelimiterOffset3, c10);
            String strTrimSubstring3 = Util.trimSubstring(str, i10, iDelimiterOffset4);
            String strTrimSubstring4 = iDelimiterOffset4 < iDelimiterOffset3 ? Util.trimSubstring(str, iDelimiterOffset4 + 1, iDelimiterOffset3) : "";
            if (strTrimSubstring3.equalsIgnoreCase("expires")) {
                try {
                    expires = parseExpires(strTrimSubstring4, 0, strTrimSubstring4.length());
                    z11 = true;
                } catch (NumberFormatException | IllegalArgumentException unused) {
                }
            } else if (strTrimSubstring3.equalsIgnoreCase("max-age")) {
                maxAge = parseMaxAge(strTrimSubstring4);
                z11 = true;
            } else if (strTrimSubstring3.equalsIgnoreCase("domain")) {
                domain = parseDomain(strTrimSubstring4);
                z10 = false;
            } else if (strTrimSubstring3.equalsIgnoreCase("path")) {
                str3 = strTrimSubstring4;
            } else if (strTrimSubstring3.equalsIgnoreCase("secure")) {
                z = true;
            } else if (strTrimSubstring3.equalsIgnoreCase("httponly")) {
                z4 = true;
            }
            i10 = iDelimiterOffset3 + 1;
            c7 = ';';
            c10 = '=';
        }
        long j12 = Long.MIN_VALUE;
        if (maxAge != Long.MIN_VALUE) {
            if (maxAge != -1) {
                j12 = j10 + (maxAge <= 9223372036854775L ? maxAge * 1000 : Long.MAX_VALUE);
                j11 = (j12 < j10 || j12 > HttpDate.MAX_DATE) ? 253402300799999L : j12;
            } else {
                j11 = expires;
            }
        }
        String strHost = httpUrl.host();
        if (domain == null) {
            str2 = strHost;
            cookie = null;
        } else {
            if (!domainMatch(strHost, domain)) {
                return null;
            }
            cookie = null;
            str2 = domain;
        }
        if (strHost.length() != str2.length() && PublicSuffixDatabase.get().getEffectiveTldPlusOne(str2) == null) {
            return cookie;
        }
        if (str3 == null || !str3.startsWith("/")) {
            String strEncodedPath = httpUrl.encodedPath();
            int iLastIndexOf = strEncodedPath.lastIndexOf(47);
            strSubstring = iLastIndexOf != 0 ? strEncodedPath.substring(0, iLastIndexOf) : "/";
        } else {
            strSubstring = str3;
        }
        return new Cookie(strTrimSubstring, strTrimSubstring2, j11, str2, strSubstring, z, z4, z10, z11);
    }

    public String toString(boolean z) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.name);
        sb2.append('=');
        sb2.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                sb2.append("; max-age=0");
            } else {
                sb2.append("; expires=");
                sb2.append(HttpDate.format(new Date(this.expiresAt)));
            }
        }
        if (!this.hostOnly) {
            sb2.append("; domain=");
            if (z) {
                sb2.append(".");
            }
            sb2.append(this.domain);
        }
        sb2.append("; path=");
        sb2.append(this.path);
        if (this.secure) {
            sb2.append("; secure");
        }
        if (this.httpOnly) {
            sb2.append("; httponly");
        }
        return sb2.toString();
    }

    public Cookie(Builder builder) {
        String str = builder.name;
        if (str != null) {
            String str2 = builder.value;
            if (str2 != null) {
                String str3 = builder.domain;
                if (str3 != null) {
                    this.name = str;
                    this.value = str2;
                    this.expiresAt = builder.expiresAt;
                    this.domain = str3;
                    this.path = builder.path;
                    this.secure = builder.secure;
                    this.httpOnly = builder.httpOnly;
                    this.persistent = builder.persistent;
                    this.hostOnly = builder.hostOnly;
                    return;
                }
                throw new NullPointerException("builder.domain == null");
            }
            throw new NullPointerException("builder.value == null");
        }
        throw new NullPointerException("builder.name == null");
    }
}
