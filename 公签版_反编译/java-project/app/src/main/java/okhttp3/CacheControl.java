package okhttp3;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import da.b;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class CacheControl {
    String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, TimeUnit.SECONDS).build();

    public static final class Builder {
        boolean immutable;
        int maxAgeSeconds = -1;
        int maxStaleSeconds = -1;
        int minFreshSeconds = -1;
        boolean noCache;
        boolean noStore;
        boolean noTransform;
        boolean onlyIfCached;

        public CacheControl build() {
            return new CacheControl(this);
        }

        public Builder immutable() {
            this.immutable = true;
            return this;
        }

        public Builder maxAge(int i10, TimeUnit timeUnit) {
            if (i10 < 0) {
                throw new IllegalArgumentException(b.a(i10, "maxAge < 0: "));
            }
            long seconds = timeUnit.toSeconds(i10);
            this.maxAgeSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }

        public Builder maxStale(int i10, TimeUnit timeUnit) {
            if (i10 < 0) {
                throw new IllegalArgumentException(b.a(i10, "maxStale < 0: "));
            }
            long seconds = timeUnit.toSeconds(i10);
            this.maxStaleSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }

        public Builder minFresh(int i10, TimeUnit timeUnit) {
            if (i10 < 0) {
                throw new IllegalArgumentException(b.a(i10, "minFresh < 0: "));
            }
            long seconds = timeUnit.toSeconds(i10);
            this.minFreshSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }

        public Builder noCache() {
            this.noCache = true;
            return this;
        }

        public Builder noStore() {
            this.noStore = true;
            return this;
        }

        public Builder noTransform() {
            this.noTransform = true;
            return this;
        }

        public Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }
    }

    private CacheControl(boolean z, boolean z4, int i10, int i11, boolean z10, boolean z11, boolean z12, int i12, int i13, boolean z13, boolean z14, boolean z15, String str) {
        this.noCache = z;
        this.noStore = z4;
        this.maxAgeSeconds = i10;
        this.sMaxAgeSeconds = i11;
        this.isPrivate = z10;
        this.isPublic = z11;
        this.mustRevalidate = z12;
        this.maxStaleSeconds = i12;
        this.minFreshSeconds = i13;
        this.onlyIfCached = z13;
        this.noTransform = z14;
        this.immutable = z15;
        this.headerValue = str;
    }

    private String headerValue() {
        StringBuilder sb2 = new StringBuilder();
        if (this.noCache) {
            sb2.append("no-cache, ");
        }
        if (this.noStore) {
            sb2.append("no-store, ");
        }
        if (this.maxAgeSeconds != -1) {
            sb2.append("max-age=");
            sb2.append(this.maxAgeSeconds);
            sb2.append(", ");
        }
        if (this.sMaxAgeSeconds != -1) {
            sb2.append("s-maxage=");
            sb2.append(this.sMaxAgeSeconds);
            sb2.append(", ");
        }
        if (this.isPrivate) {
            sb2.append("private, ");
        }
        if (this.isPublic) {
            sb2.append("public, ");
        }
        if (this.mustRevalidate) {
            sb2.append("must-revalidate, ");
        }
        if (this.maxStaleSeconds != -1) {
            sb2.append("max-stale=");
            sb2.append(this.maxStaleSeconds);
            sb2.append(", ");
        }
        if (this.minFreshSeconds != -1) {
            sb2.append("min-fresh=");
            sb2.append(this.minFreshSeconds);
            sb2.append(", ");
        }
        if (this.onlyIfCached) {
            sb2.append("only-if-cached, ");
        }
        if (this.noTransform) {
            sb2.append("no-transform, ");
        }
        if (this.immutable) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            return "";
        }
        sb2.delete(sb2.length() - 2, sb2.length());
        return sb2.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CacheControl parse(Headers headers) {
        int i10;
        int iSkipUntil;
        String strTrim;
        Headers headers2 = headers;
        int size = headers.size();
        int i11 = 0;
        boolean z = true;
        String str = null;
        boolean z4 = false;
        boolean z10 = false;
        int seconds = -1;
        int seconds2 = -1;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        int seconds3 = -1;
        int seconds4 = -1;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        while (i11 < size) {
            String strName = headers2.name(i11);
            String strValue = headers2.value(i11);
            if (strName.equalsIgnoreCase(HttpHeaders.CACHE_CONTROL)) {
                if (str == null) {
                    str = strValue;
                }
                for (i10 = 0; i10 < strValue.length(); i10 = iSkipUntil) {
                    int iSkipUntil2 = okhttp3.internal.http.HttpHeaders.skipUntil(strValue, i10, "=,;");
                    String strTrim2 = strValue.substring(i10, iSkipUntil2).trim();
                    if (iSkipUntil2 == strValue.length() || strValue.charAt(iSkipUntil2) == ',' || strValue.charAt(iSkipUntil2) == ';') {
                        iSkipUntil = iSkipUntil2 + 1;
                        strTrim = null;
                    } else {
                        int iSkipWhitespace = okhttp3.internal.http.HttpHeaders.skipWhitespace(strValue, iSkipUntil2 + 1);
                        if (iSkipWhitespace >= strValue.length() || strValue.charAt(iSkipWhitespace) != '\"') {
                            iSkipUntil = okhttp3.internal.http.HttpHeaders.skipUntil(strValue, iSkipWhitespace, ",;");
                            strTrim = strValue.substring(iSkipWhitespace, iSkipUntil).trim();
                        } else {
                            int i12 = iSkipWhitespace + 1;
                            int iSkipUntil3 = okhttp3.internal.http.HttpHeaders.skipUntil(strValue, i12, "\"");
                            strTrim = strValue.substring(i12, iSkipUntil3);
                            iSkipUntil = iSkipUntil3 + 1;
                        }
                    }
                    if ("no-cache".equalsIgnoreCase(strTrim2)) {
                        z4 = true;
                    } else if ("no-store".equalsIgnoreCase(strTrim2)) {
                        z10 = true;
                    } else if ("max-age".equalsIgnoreCase(strTrim2)) {
                        seconds = okhttp3.internal.http.HttpHeaders.parseSeconds(strTrim, -1);
                    } else if ("s-maxage".equalsIgnoreCase(strTrim2)) {
                        seconds2 = okhttp3.internal.http.HttpHeaders.parseSeconds(strTrim, -1);
                    } else if ("private".equalsIgnoreCase(strTrim2)) {
                        z11 = true;
                    } else if ("public".equalsIgnoreCase(strTrim2)) {
                        z12 = true;
                    } else if ("must-revalidate".equalsIgnoreCase(strTrim2)) {
                        z13 = true;
                    } else if ("max-stale".equalsIgnoreCase(strTrim2)) {
                        seconds3 = okhttp3.internal.http.HttpHeaders.parseSeconds(strTrim, Integer.MAX_VALUE);
                    } else if ("min-fresh".equalsIgnoreCase(strTrim2)) {
                        seconds4 = okhttp3.internal.http.HttpHeaders.parseSeconds(strTrim, -1);
                    } else if ("only-if-cached".equalsIgnoreCase(strTrim2)) {
                        z14 = true;
                    } else if ("no-transform".equalsIgnoreCase(strTrim2)) {
                        z15 = true;
                    } else if ("immutable".equalsIgnoreCase(strTrim2)) {
                        z16 = true;
                    }
                }
                i11++;
                headers2 = headers;
            } else if (!strName.equalsIgnoreCase("Pragma")) {
                i11++;
                headers2 = headers;
            }
            z = false;
            while (i10 < strValue.length()) {
            }
            i11++;
            headers2 = headers;
        }
        return new CacheControl(z4, z10, seconds, seconds2, z11, z12, z13, seconds3, seconds4, z14, z15, z16, !z ? null : str);
    }

    public boolean immutable() {
        return this.immutable;
    }

    public boolean isPrivate() {
        return this.isPrivate;
    }

    public boolean isPublic() {
        return this.isPublic;
    }

    public int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public boolean noCache() {
        return this.noCache;
    }

    public boolean noStore() {
        return this.noStore;
    }

    public boolean noTransform() {
        return this.noTransform;
    }

    public boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        String strHeaderValue = headerValue();
        this.headerValue = strHeaderValue;
        return strHeaderValue;
    }

    public CacheControl(Builder builder) {
        this.noCache = builder.noCache;
        this.noStore = builder.noStore;
        this.maxAgeSeconds = builder.maxAgeSeconds;
        this.sMaxAgeSeconds = -1;
        this.isPrivate = false;
        this.isPublic = false;
        this.mustRevalidate = false;
        this.maxStaleSeconds = builder.maxStaleSeconds;
        this.minFreshSeconds = builder.minFreshSeconds;
        this.onlyIfCached = builder.onlyIfCached;
        this.noTransform = builder.noTransform;
        this.immutable = builder.immutable;
    }
}
