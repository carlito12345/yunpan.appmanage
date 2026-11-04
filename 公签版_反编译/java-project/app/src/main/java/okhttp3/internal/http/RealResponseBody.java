package okhttp3.internal.http;

import fg.k;
import okhttp3.MediaType;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public final class RealResponseBody extends ResponseBody {
    private final long contentLength;
    private final String contentTypeString;
    private final k source;

    public RealResponseBody(String str, long j10, k kVar) {
        this.contentTypeString = str;
        this.contentLength = j10;
        this.source = kVar;
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        String str = this.contentTypeString;
        if (str != null) {
            return MediaType.parse(str);
        }
        return null;
    }

    @Override // okhttp3.ResponseBody
    public k source() {
        return this.source;
    }
}
