package okhttp3.internal.http2;

import fg.e0;
import fg.l;
import okhttp3.Headers;
import okhttp3.internal.Util;

/* loaded from: classes.dex */
public final class Header {
    public static final l PSEUDO_PREFIX;
    public static final l RESPONSE_STATUS;
    public static final String RESPONSE_STATUS_UTF8 = ":status";
    public static final l TARGET_AUTHORITY;
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";
    public static final l TARGET_METHOD;
    public static final String TARGET_METHOD_UTF8 = ":method";
    public static final l TARGET_PATH;
    public static final String TARGET_PATH_UTF8 = ":path";
    public static final l TARGET_SCHEME;
    public static final String TARGET_SCHEME_UTF8 = ":scheme";
    final int hpackSize;
    public final l name;
    public final l value;

    public interface Listener {
        void onHeaders(Headers headers);
    }

    static {
        l lVar = l.f5854d;
        PSEUDO_PREFIX = e0.e(":");
        RESPONSE_STATUS = e0.e(RESPONSE_STATUS_UTF8);
        TARGET_METHOD = e0.e(TARGET_METHOD_UTF8);
        TARGET_PATH = e0.e(TARGET_PATH_UTF8);
        TARGET_SCHEME = e0.e(TARGET_SCHEME_UTF8);
        TARGET_AUTHORITY = e0.e(TARGET_AUTHORITY_UTF8);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(l lVar, String str) {
        this(lVar, e0.e(str));
        l lVar2 = l.f5854d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return this.name.equals(header.name) && this.value.equals(header.value);
    }

    public int hashCode() {
        return this.value.hashCode() + ((this.name.hashCode() + 527) * 31);
    }

    public String toString() {
        return Util.format("%s: %s", this.name.q(), this.value.q());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(String str, String str2) {
        this(e0.e(str), e0.e(str2));
        l lVar = l.f5854d;
    }

    public Header(l lVar, l lVar2) {
        this.name = lVar;
        this.value = lVar2;
        this.hpackSize = lVar2.g() + lVar.g() + 32;
    }
}
