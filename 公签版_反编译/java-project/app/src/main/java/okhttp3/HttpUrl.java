package okhttp3;

import android.support.v4.media.session.a;
import da.b;
import fg.i;
import java.io.EOFException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import okhttp3.internal.Util;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public final class HttpUrl {
    static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    static final String FRAGMENT_ENCODE_SET = "";
    static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";
    static final String QUERY_COMPONENT_ENCODE_SET = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";
    static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";
    static final String QUERY_COMPONENT_REENCODE_SET = " \"'<>#&=";
    static final String QUERY_ENCODE_SET = " \"'<>#";
    static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    private final String fragment;
    final String host;
    private final String password;
    private final List<String> pathSegments;
    final int port;
    private final List<String> queryNamesAndValues;
    final String scheme;
    private final String url;
    private final String username;

    public HttpUrl(Builder builder) {
        this.scheme = builder.scheme;
        this.username = percentDecode(builder.encodedUsername, false);
        this.password = percentDecode(builder.encodedPassword, false);
        this.host = builder.host;
        this.port = builder.effectivePort();
        this.pathSegments = percentDecode(builder.encodedPathSegments, false);
        List<String> list = builder.encodedQueryNamesAndValues;
        this.queryNamesAndValues = list != null ? percentDecode(list, true) : null;
        String str = builder.encodedFragment;
        this.fragment = str != null ? percentDecode(str, false) : null;
        this.url = builder.toString();
    }

    public static String canonicalize(String str, int i10, int i11, String str2, boolean z, boolean z4, boolean z10, boolean z11, Charset charset) throws EOFException {
        int iCharCount = i10;
        while (iCharCount < i11) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt == 127 || (iCodePointAt >= 128 && z11)) {
                i iVar = new i();
                iVar.d0(i10, iCharCount, str);
                canonicalize(iVar, str, iCharCount, i11, str2, z, z4, z10, z11, charset);
                return iVar.Q();
            }
            if (str2.indexOf(iCodePointAt) != -1 || ((iCodePointAt == 37 && (!z || (z4 && !percentEncoded(str, iCharCount, i11)))) || (iCodePointAt == 43 && z10))) {
                i iVar2 = new i();
                iVar2.d0(i10, iCharCount, str);
                canonicalize(iVar2, str, iCharCount, i11, str2, z, z4, z10, z11, charset);
                return iVar2.Q();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i10, i11);
    }

    public static int defaultPort(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public static HttpUrl get(String str) {
        return new Builder().parse(null, str).build();
    }

    public static void namesAndValuesToQueryString(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            String str = list.get(i10);
            String str2 = list.get(i10 + 1);
            if (i10 > 0) {
                sb2.append('&');
            }
            sb2.append(str);
            if (str2 != null) {
                sb2.append('=');
                sb2.append(str2);
            }
        }
    }

    public static HttpUrl parse(String str) {
        try {
            return get(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static void pathSegmentsToString(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append('/');
            sb2.append(list.get(i10));
        }
    }

    public static String percentDecode(String str, boolean z) {
        return percentDecode(str, 0, str.length(), z);
    }

    public static boolean percentEncoded(String str, int i10, int i11) {
        int i12 = i10 + 2;
        return i12 < i11 && str.charAt(i10) == '%' && Util.decodeHexDigit(str.charAt(i10 + 1)) != -1 && Util.decodeHexDigit(str.charAt(i12)) != -1;
    }

    public static List<String> queryStringToNamesAndValues(String str) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 <= str.length()) {
            int iIndexOf = str.indexOf(38, i10);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i10);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i10, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i10, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i10 = iIndexOf + 1;
        }
        return arrayList;
    }

    public String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        return this.url.substring(this.url.indexOf(35) + 1);
    }

    public String encodedPassword() {
        if (this.password.isEmpty()) {
            return "";
        }
        return this.url.substring(this.url.indexOf(58, this.scheme.length() + 3) + 1, this.url.indexOf(64));
    }

    public String encodedPath() {
        int iIndexOf = this.url.indexOf(47, this.scheme.length() + 3);
        String str = this.url;
        return this.url.substring(iIndexOf, Util.delimiterOffset(str, iIndexOf, str.length(), "?#"));
    }

    public List<String> encodedPathSegments() {
        int iIndexOf = this.url.indexOf(47, this.scheme.length() + 3);
        String str = this.url;
        int iDelimiterOffset = Util.delimiterOffset(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iDelimiterOffset) {
            int i10 = iIndexOf + 1;
            int iDelimiterOffset2 = Util.delimiterOffset(this.url, i10, iDelimiterOffset, '/');
            arrayList.add(this.url.substring(i10, iDelimiterOffset2));
            iIndexOf = iDelimiterOffset2;
        }
        return arrayList;
    }

    public String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int iIndexOf = this.url.indexOf(63) + 1;
        String str = this.url;
        return this.url.substring(iIndexOf, Util.delimiterOffset(str, iIndexOf, str.length(), '#'));
    }

    public String encodedUsername() {
        if (this.username.isEmpty()) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        return this.url.substring(length, Util.delimiterOffset(str, length, str.length(), ":@"));
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).url.equals(this.url);
    }

    public String fragment() {
        return this.fragment;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String host() {
        return this.host;
    }

    public boolean isHttps() {
        return this.scheme.equals("https");
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.scheme = this.scheme;
        builder.encodedUsername = encodedUsername();
        builder.encodedPassword = encodedPassword();
        builder.host = this.host;
        builder.port = this.port != defaultPort(this.scheme) ? this.port : -1;
        builder.encodedPathSegments.clear();
        builder.encodedPathSegments.addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.encodedFragment = encodedFragment();
        return builder;
    }

    public String password() {
        return this.password;
    }

    public List<String> pathSegments() {
        return this.pathSegments;
    }

    public int pathSize() {
        return this.pathSegments.size();
    }

    public int port() {
        return this.port;
    }

    public String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        namesAndValuesToQueryString(sb2, this.queryNamesAndValues);
        return sb2.toString();
    }

    public String queryParameter(String str) {
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            if (str.equals(this.queryNamesAndValues.get(i10))) {
                return this.queryNamesAndValues.get(i10 + 1);
            }
        }
        return null;
    }

    public String queryParameterName(int i10) {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.get(i10 * 2);
        }
        throw new IndexOutOfBoundsException();
    }

    public Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = this.queryNamesAndValues.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            linkedHashSet.add(this.queryNamesAndValues.get(i10));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public String queryParameterValue(int i10) {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.get((i10 * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    public List<String> queryParameterValues(String str) {
        if (this.queryNamesAndValues == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = this.queryNamesAndValues.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            if (str.equals(this.queryNamesAndValues.get(i10))) {
                arrayList.add(this.queryNamesAndValues.get(i10 + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int querySize() {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public String redact() {
        return newBuilder("/...").username("").password("").build().toString();
    }

    public HttpUrl resolve(String str) {
        Builder builderNewBuilder = newBuilder(str);
        if (builderNewBuilder != null) {
            return builderNewBuilder.build();
        }
        return null;
    }

    public String scheme() {
        return this.scheme;
    }

    public String toString() {
        return this.url;
    }

    public String topPrivateDomain() {
        if (Util.verifyAsIpAddress(this.host)) {
            return null;
        }
        return PublicSuffixDatabase.get().getEffectiveTldPlusOne(this.host);
    }

    public URI uri() {
        String string = newBuilder().reencodeForUri().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e7) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e7);
            }
        }
    }

    public URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e7) {
            throw new RuntimeException(e7);
        }
    }

    public String username() {
        return this.username;
    }

    public static final class Builder {
        static final String INVALID_HOST = "Invalid URL host";
        String encodedFragment;
        final List<String> encodedPathSegments;
        List<String> encodedQueryNamesAndValues;
        String host;
        String scheme;
        String encodedUsername = "";
        String encodedPassword = "";
        int port = -1;

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.encodedPathSegments = arrayList;
            arrayList.add("");
        }

        private static String canonicalizeHost(String str, int i10, int i11) {
            return Util.canonicalizeHost(HttpUrl.percentDecode(str, i10, i11, false));
        }

        private boolean isDot(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean isDotDot(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private static int parsePort(String str, int i10, int i11) throws NumberFormatException {
            int i12;
            try {
                i12 = Integer.parseInt(HttpUrl.canonicalize(str, i10, i11, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (i12 <= 0 || i12 > 65535) {
                return -1;
            }
            return i12;
        }

        private void pop() {
            if (!this.encodedPathSegments.remove(r0.size() - 1).isEmpty() || this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            } else {
                this.encodedPathSegments.set(r0.size() - 1, "");
            }
        }

        private static int portColonOffset(String str, int i10, int i11) {
            while (i10 < i11) {
                char cCharAt = str.charAt(i10);
                if (cCharAt == ':') {
                    return i10;
                }
                if (cCharAt == '[') {
                    do {
                        i10++;
                        if (i10 < i11) {
                        }
                    } while (str.charAt(i10) != ']');
                }
                i10++;
            }
            return i11;
        }

        private void push(String str, int i10, int i11, boolean z, boolean z4) throws EOFException {
            String strCanonicalize = HttpUrl.canonicalize(str, i10, i11, HttpUrl.PATH_SEGMENT_ENCODE_SET, z4, false, false, true, null);
            if (isDot(strCanonicalize)) {
                return;
            }
            if (isDotDot(strCanonicalize)) {
                pop();
                return;
            }
            if (this.encodedPathSegments.get(r11.size() - 1).isEmpty()) {
                this.encodedPathSegments.set(r11.size() - 1, strCanonicalize);
            } else {
                this.encodedPathSegments.add(strCanonicalize);
            }
            if (z) {
                this.encodedPathSegments.add("");
            }
        }

        private void removeAllCanonicalQueryParameters(String str) {
            for (int size = this.encodedQueryNamesAndValues.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.encodedQueryNamesAndValues.get(size))) {
                    this.encodedQueryNamesAndValues.remove(size + 1);
                    this.encodedQueryNamesAndValues.remove(size);
                    if (this.encodedQueryNamesAndValues.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
            }
        }

        private void resolvePath(String str, int i10, int i11) throws EOFException {
            if (i10 == i11) {
                return;
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.encodedPathSegments.clear();
                this.encodedPathSegments.add("");
                i10++;
            } else {
                List<String> list = this.encodedPathSegments;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i12 = i10;
                if (i12 >= i11) {
                    return;
                }
                i10 = Util.delimiterOffset(str, i12, i11, "/\\");
                boolean z = i10 < i11;
                push(str, i12, i10, z, true);
                if (z) {
                    i10++;
                }
            }
        }

        private static int schemeDelimiterOffset(String str, int i10, int i11) {
            if (i11 - i10 < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i10);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i10++;
                    if (i10 >= i11) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i10);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i10;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private static int slashCount(String str, int i10, int i11) {
            int i12 = 0;
            while (i10 < i11) {
                char cCharAt = str.charAt(i10);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i12++;
                i10++;
            }
            return i12;
        }

        public Builder addEncodedPathSegment(String str) throws EOFException {
            if (str == null) {
                throw new NullPointerException("encodedPathSegment == null");
            }
            push(str, 0, str.length(), false, true);
            return this;
        }

        public Builder addEncodedPathSegments(String str) {
            if (str != null) {
                return addPathSegments(str, true);
            }
            throw new NullPointerException("encodedPathSegments == null");
        }

        public Builder addEncodedQueryParameter(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true));
            this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true) : null);
            return this;
        }

        public Builder addPathSegment(String str) throws EOFException {
            if (str == null) {
                throw new NullPointerException("pathSegment == null");
            }
            push(str, 0, str.length(), false, false);
            return this;
        }

        public Builder addPathSegments(String str) {
            if (str != null) {
                return addPathSegments(str, false);
            }
            throw new NullPointerException("pathSegments == null");
        }

        public Builder addQueryParameter(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, true));
            this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, true) : null);
            return this;
        }

        public HttpUrl build() {
            if (this.scheme == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.host != null) {
                return new HttpUrl(this);
            }
            throw new IllegalStateException("host == null");
        }

        public int effectivePort() {
            int i10 = this.port;
            return i10 != -1 ? i10 : HttpUrl.defaultPort(this.scheme);
        }

        public Builder encodedFragment(String str) {
            this.encodedFragment = str != null ? HttpUrl.canonicalize(str, "", true, false, false, false) : null;
            return this;
        }

        public Builder encodedPassword(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPassword == null");
            }
            this.encodedPassword = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        public Builder encodedPath(String str) throws EOFException {
            if (str == null) {
                throw new NullPointerException("encodedPath == null");
            }
            if (!str.startsWith("/")) {
                throw new IllegalArgumentException("unexpected encodedPath: ".concat(str));
            }
            resolvePath(str, 0, str.length());
            return this;
        }

        public Builder encodedQuery(String str) {
            this.encodedQueryNamesAndValues = str != null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public Builder encodedUsername(String str) {
            if (str == null) {
                throw new NullPointerException("encodedUsername == null");
            }
            this.encodedUsername = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        public Builder fragment(String str) {
            this.encodedFragment = str != null ? HttpUrl.canonicalize(str, "", false, false, false, false) : null;
            return this;
        }

        public Builder host(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String strCanonicalizeHost = canonicalizeHost(str, 0, str.length());
            if (strCanonicalizeHost == null) {
                throw new IllegalArgumentException("unexpected host: ".concat(str));
            }
            this.host = strCanonicalizeHost;
            return this;
        }

        public Builder parse(HttpUrl httpUrl, String str) throws NumberFormatException, EOFException {
            int iDelimiterOffset;
            int i10;
            int iSkipLeadingAsciiWhitespace = Util.skipLeadingAsciiWhitespace(str, 0, str.length());
            int iSkipTrailingAsciiWhitespace = Util.skipTrailingAsciiWhitespace(str, iSkipLeadingAsciiWhitespace, str.length());
            int iSchemeDelimiterOffset = schemeDelimiterOffset(str, iSkipLeadingAsciiWhitespace, iSkipTrailingAsciiWhitespace);
            if (iSchemeDelimiterOffset != -1) {
                if (str.regionMatches(true, iSkipLeadingAsciiWhitespace, "https:", 0, 6)) {
                    this.scheme = "https";
                    iSkipLeadingAsciiWhitespace += 6;
                } else {
                    if (!str.regionMatches(true, iSkipLeadingAsciiWhitespace, "http:", 0, 5)) {
                        throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str.substring(0, iSchemeDelimiterOffset) + "'");
                    }
                    this.scheme = "http";
                    iSkipLeadingAsciiWhitespace += 5;
                }
            } else {
                if (httpUrl == null) {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
                }
                this.scheme = httpUrl.scheme;
            }
            int iSlashCount = slashCount(str, iSkipLeadingAsciiWhitespace, iSkipTrailingAsciiWhitespace);
            char c7 = '?';
            char c10 = '#';
            if (iSlashCount >= 2 || httpUrl == null || !httpUrl.scheme.equals(this.scheme)) {
                int i11 = iSkipLeadingAsciiWhitespace + iSlashCount;
                boolean z = false;
                boolean z4 = false;
                while (true) {
                    iDelimiterOffset = Util.delimiterOffset(str, i11, iSkipTrailingAsciiWhitespace, "@/\\?#");
                    char cCharAt = iDelimiterOffset != iSkipTrailingAsciiWhitespace ? str.charAt(iDelimiterOffset) : (char) 65535;
                    if (cCharAt == 65535 || cCharAt == c10 || cCharAt == '/' || cCharAt == '\\' || cCharAt == c7) {
                        break;
                    }
                    if (cCharAt == '@') {
                        if (z) {
                            i10 = iDelimiterOffset;
                            this.encodedPassword += "%40" + HttpUrl.canonicalize(str, i11, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        } else {
                            int iDelimiterOffset2 = Util.delimiterOffset(str, i11, iDelimiterOffset, ':');
                            i10 = iDelimiterOffset;
                            String strCanonicalize = HttpUrl.canonicalize(str, i11, iDelimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z4) {
                                strCanonicalize = a.u(new StringBuilder(), this.encodedUsername, "%40", strCanonicalize);
                            }
                            this.encodedUsername = strCanonicalize;
                            if (iDelimiterOffset2 != i10) {
                                this.encodedPassword = HttpUrl.canonicalize(str, iDelimiterOffset2 + 1, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z = true;
                            }
                            z4 = true;
                        }
                        i11 = i10 + 1;
                    }
                    c7 = '?';
                    c10 = '#';
                }
                int iPortColonOffset = portColonOffset(str, i11, iDelimiterOffset);
                int i12 = iPortColonOffset + 1;
                if (i12 < iDelimiterOffset) {
                    this.host = canonicalizeHost(str, i11, iPortColonOffset);
                    int port = parsePort(str, i12, iDelimiterOffset);
                    this.port = port;
                    if (port == -1) {
                        throw new IllegalArgumentException("Invalid URL port: \"" + str.substring(i12, iDelimiterOffset) + '\"');
                    }
                } else {
                    this.host = canonicalizeHost(str, i11, iPortColonOffset);
                    this.port = HttpUrl.defaultPort(this.scheme);
                }
                if (this.host == null) {
                    throw new IllegalArgumentException("Invalid URL host: \"" + str.substring(i11, iPortColonOffset) + '\"');
                }
                iSkipLeadingAsciiWhitespace = iDelimiterOffset;
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host;
                this.port = httpUrl.port;
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (iSkipLeadingAsciiWhitespace == iSkipTrailingAsciiWhitespace || str.charAt(iSkipLeadingAsciiWhitespace) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
            }
            int iDelimiterOffset3 = Util.delimiterOffset(str, iSkipLeadingAsciiWhitespace, iSkipTrailingAsciiWhitespace, "?#");
            resolvePath(str, iSkipLeadingAsciiWhitespace, iDelimiterOffset3);
            if (iDelimiterOffset3 < iSkipTrailingAsciiWhitespace && str.charAt(iDelimiterOffset3) == '?') {
                int iDelimiterOffset4 = Util.delimiterOffset(str, iDelimiterOffset3, iSkipTrailingAsciiWhitespace, '#');
                this.encodedQueryNamesAndValues = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, iDelimiterOffset3 + 1, iDelimiterOffset4, HttpUrl.QUERY_ENCODE_SET, true, false, true, true, null));
                iDelimiterOffset3 = iDelimiterOffset4;
            }
            if (iDelimiterOffset3 < iSkipTrailingAsciiWhitespace && str.charAt(iDelimiterOffset3) == '#') {
                this.encodedFragment = HttpUrl.canonicalize(str, 1 + iDelimiterOffset3, iSkipTrailingAsciiWhitespace, "", true, false, false, false, null);
            }
            return this;
        }

        public Builder password(String str) {
            if (str == null) {
                throw new NullPointerException("password == null");
            }
            this.encodedPassword = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public Builder port(int i10) {
            if (i10 <= 0 || i10 > 65535) {
                throw new IllegalArgumentException(b.a(i10, "unexpected port: "));
            }
            this.port = i10;
            return this;
        }

        public Builder query(String str) {
            this.encodedQueryNamesAndValues = str != null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, HttpUrl.QUERY_ENCODE_SET, false, false, true, true)) : null;
            return this;
        }

        public Builder reencodeForUri() {
            int size = this.encodedPathSegments.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.encodedPathSegments.set(i10, HttpUrl.canonicalize(this.encodedPathSegments.get(i10), HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, true));
            }
            List<String> list = this.encodedQueryNamesAndValues;
            if (list != null) {
                int size2 = list.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    String str = this.encodedQueryNamesAndValues.get(i11);
                    if (str != null) {
                        this.encodedQueryNamesAndValues.set(i11, HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, true));
                    }
                }
            }
            String str2 = this.encodedFragment;
            if (str2 != null) {
                this.encodedFragment = HttpUrl.canonicalize(str2, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, false);
            }
            return this;
        }

        public Builder removeAllEncodedQueryParameters(String str) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true));
            return this;
        }

        public Builder removeAllQueryParameters(String str) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, true));
            return this;
        }

        public Builder removePathSegment(int i10) {
            this.encodedPathSegments.remove(i10);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            }
            return this;
        }

        public Builder scheme(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.scheme = "http";
            } else {
                if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: ".concat(str));
                }
                this.scheme = "https";
            }
            return this;
        }

        public Builder setEncodedPathSegment(int i10, String str) throws EOFException {
            if (str == null) {
                throw new NullPointerException("encodedPathSegment == null");
            }
            String strCanonicalize = HttpUrl.canonicalize(str, 0, str.length(), HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, false, true, null);
            this.encodedPathSegments.set(i10, strCanonicalize);
            if (isDot(strCanonicalize) || isDotDot(strCanonicalize)) {
                throw new IllegalArgumentException("unexpected path segment: ".concat(str));
            }
            return this;
        }

        public Builder setEncodedQueryParameter(String str, String str2) {
            removeAllEncodedQueryParameters(str);
            addEncodedQueryParameter(str, str2);
            return this;
        }

        public Builder setPathSegment(int i10, String str) throws EOFException {
            if (str == null) {
                throw new NullPointerException("pathSegment == null");
            }
            String strCanonicalize = HttpUrl.canonicalize(str, 0, str.length(), HttpUrl.PATH_SEGMENT_ENCODE_SET, false, false, false, true, null);
            if (isDot(strCanonicalize) || isDotDot(strCanonicalize)) {
                throw new IllegalArgumentException("unexpected path segment: ".concat(str));
            }
            this.encodedPathSegments.set(i10, strCanonicalize);
            return this;
        }

        public Builder setQueryParameter(String str, String str2) {
            removeAllQueryParameters(str);
            addQueryParameter(str, str2);
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            String str = this.scheme;
            if (str != null) {
                sb2.append(str);
                sb2.append("://");
            } else {
                sb2.append("//");
            }
            if (!this.encodedUsername.isEmpty() || !this.encodedPassword.isEmpty()) {
                sb2.append(this.encodedUsername);
                if (!this.encodedPassword.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.encodedPassword);
                }
                sb2.append('@');
            }
            String str2 = this.host;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb2.append('[');
                    sb2.append(this.host);
                    sb2.append(']');
                } else {
                    sb2.append(this.host);
                }
            }
            if (this.port != -1 || this.scheme != null) {
                int iEffectivePort = effectivePort();
                String str3 = this.scheme;
                if (str3 == null || iEffectivePort != HttpUrl.defaultPort(str3)) {
                    sb2.append(':');
                    sb2.append(iEffectivePort);
                }
            }
            HttpUrl.pathSegmentsToString(sb2, this.encodedPathSegments);
            if (this.encodedQueryNamesAndValues != null) {
                sb2.append('?');
                HttpUrl.namesAndValuesToQueryString(sb2, this.encodedQueryNamesAndValues);
            }
            if (this.encodedFragment != null) {
                sb2.append('#');
                sb2.append(this.encodedFragment);
            }
            return sb2.toString();
        }

        public Builder username(String str) {
            if (str == null) {
                throw new NullPointerException("username == null");
            }
            this.encodedUsername = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        private Builder addPathSegments(String str, boolean z) throws EOFException {
            int i10 = 0;
            do {
                int iDelimiterOffset = Util.delimiterOffset(str, i10, str.length(), "/\\");
                push(str, i10, iDelimiterOffset, iDelimiterOffset < str.length(), z);
                i10 = iDelimiterOffset + 1;
            } while (i10 <= str.length());
            return this;
        }
    }

    public static HttpUrl get(URL url) {
        return parse(url.toString());
    }

    private List<String> percentDecode(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            String str = list.get(i10);
            arrayList.add(str != null ? percentDecode(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static HttpUrl get(URI uri) {
        return parse(uri.toString());
    }

    public static String percentDecode(String str, int i10, int i11, boolean z) {
        for (int i12 = i10; i12 < i11; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt == '%' || (cCharAt == '+' && z)) {
                i iVar = new i();
                iVar.d0(i10, i12, str);
                percentDecode(iVar, str, i12, i11, z);
                return iVar.Q();
            }
        }
        return str.substring(i10, i11);
    }

    public static void canonicalize(i iVar, String str, int i10, int i11, String str2, boolean z, boolean z4, boolean z10, boolean z11, Charset charset) throws EOFException {
        i iVar2 = null;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z10) {
                    iVar.e0(z ? Marker.ANY_NON_NULL_MARKER : "%2B");
                } else if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z11) && str2.indexOf(iCodePointAt) == -1 && (iCodePointAt != 37 || (z && (!z4 || percentEncoded(str, i10, i11)))))) {
                    iVar.f0(iCodePointAt);
                } else {
                    if (iVar2 == null) {
                        iVar2 = new i();
                    }
                    if (charset != null && !charset.equals(Util.UTF_8)) {
                        iVar2.c0(str, i10, Character.charCount(iCodePointAt) + i10, charset);
                    } else {
                        iVar2.f0(iCodePointAt);
                    }
                    while (!iVar2.j()) {
                        byte b10 = iVar2.readByte();
                        iVar.W(37);
                        char[] cArr = HEX_DIGITS;
                        iVar.W(cArr[((b10 & 255) >> 4) & 15]);
                        iVar.W(cArr[b10 & 15]);
                    }
                }
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    public Builder newBuilder(String str) {
        try {
            return new Builder().parse(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void percentDecode(i iVar, String str, int i10, int i11, boolean z) {
        int i12;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (iCodePointAt == 37 && (i12 = i10 + 2) < i11) {
                int iDecodeHexDigit = Util.decodeHexDigit(str.charAt(i10 + 1));
                int iDecodeHexDigit2 = Util.decodeHexDigit(str.charAt(i12));
                if (iDecodeHexDigit != -1 && iDecodeHexDigit2 != -1) {
                    iVar.W((iDecodeHexDigit << 4) + iDecodeHexDigit2);
                    i10 = i12;
                }
            } else if (iCodePointAt == 43 && z) {
                iVar.W(32);
            } else {
                iVar.f0(iCodePointAt);
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    public static String canonicalize(String str, String str2, boolean z, boolean z4, boolean z10, boolean z11, Charset charset) {
        return canonicalize(str, 0, str.length(), str2, z, z4, z10, z11, charset);
    }

    public static String canonicalize(String str, String str2, boolean z, boolean z4, boolean z10, boolean z11) {
        return canonicalize(str, 0, str.length(), str2, z, z4, z10, z11, null);
    }
}
