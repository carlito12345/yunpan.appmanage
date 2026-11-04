package okhttp3;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import fg.e0;
import fg.i;
import fg.j;
import fg.l;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import okhttp3.Headers;
import okhttp3.internal.Util;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
public final class MultipartBody extends RequestBody {
    private final l boundary;
    private long contentLength = -1;
    private final MediaType contentType;
    private final MediaType originalType;
    private final List<Part> parts;
    public static final MediaType MIXED = MediaType.get("multipart/mixed");
    public static final MediaType ALTERNATIVE = MediaType.get("multipart/alternative");
    public static final MediaType DIGEST = MediaType.get("multipart/digest");
    public static final MediaType PARALLEL = MediaType.get("multipart/parallel");
    public static final MediaType FORM = MediaType.get("multipart/form-data");
    private static final byte[] COLONSPACE = {58, HebrewProber.SPACE};
    private static final byte[] CRLF = {13, 10};
    private static final byte[] DASHDASH = {45, 45};

    public static final class Builder {
        private final l boundary;
        private final List<Part> parts;
        private MediaType type;

        public Builder() {
            this(UUID.randomUUID().toString());
        }

        public Builder addFormDataPart(String str, String str2) {
            return addPart(Part.createFormData(str, str2));
        }

        public Builder addPart(RequestBody requestBody) {
            return addPart(Part.create(requestBody));
        }

        public MultipartBody build() {
            if (this.parts.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            return new MultipartBody(this.boundary, this.type, this.parts);
        }

        public Builder setType(MediaType mediaType) {
            if (mediaType == null) {
                throw new NullPointerException("type == null");
            }
            if (mediaType.type().equals("multipart")) {
                this.type = mediaType;
                return this;
            }
            throw new IllegalArgumentException("multipart != " + mediaType);
        }

        public Builder(String str) {
            this.type = MultipartBody.MIXED;
            this.parts = new ArrayList();
            l lVar = l.f5854d;
            this.boundary = e0.e(str);
        }

        public Builder addFormDataPart(String str, String str2, RequestBody requestBody) {
            return addPart(Part.createFormData(str, str2, requestBody));
        }

        public Builder addPart(Headers headers, RequestBody requestBody) {
            return addPart(Part.create(headers, requestBody));
        }

        public Builder addPart(Part part) {
            if (part != null) {
                this.parts.add(part);
                return this;
            }
            throw new NullPointerException("part == null");
        }
    }

    public static final class Part {
        final RequestBody body;
        final Headers headers;

        private Part(Headers headers, RequestBody requestBody) {
            this.headers = headers;
            this.body = requestBody;
        }

        public static Part create(RequestBody requestBody) {
            return create(null, requestBody);
        }

        public static Part createFormData(String str, String str2) {
            return createFormData(str, null, RequestBody.create((MediaType) null, str2));
        }

        public RequestBody body() {
            return this.body;
        }

        public Headers headers() {
            return this.headers;
        }

        public static Part create(Headers headers, RequestBody requestBody) {
            if (requestBody == null) {
                throw new NullPointerException("body == null");
            }
            if (headers != null && headers.get("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (headers == null || headers.get("Content-Length") == null) {
                return new Part(headers, requestBody);
            }
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }

        public static Part createFormData(String str, String str2, RequestBody requestBody) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            StringBuilder sb2 = new StringBuilder("form-data; name=");
            MultipartBody.appendQuotedString(sb2, str);
            if (str2 != null) {
                sb2.append("; filename=");
                MultipartBody.appendQuotedString(sb2, str2);
            }
            return create(new Headers.Builder().addUnsafeNonAscii(HttpHeaders.CONTENT_DISPOSITION, sb2.toString()).build(), requestBody);
        }
    }

    public MultipartBody(l lVar, MediaType mediaType, List<Part> list) {
        this.boundary = lVar;
        this.originalType = mediaType;
        this.contentType = MediaType.get(mediaType + "; boundary=" + lVar.q());
        this.parts = Util.immutableList(list);
    }

    public static StringBuilder appendQuotedString(StringBuilder sb2, String str) {
        sb2.append('\"');
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '\n') {
                sb2.append("%0A");
            } else if (cCharAt == '\r') {
                sb2.append("%0D");
            } else if (cCharAt != '\"') {
                sb2.append(cCharAt);
            } else {
                sb2.append("%22");
            }
        }
        sb2.append('\"');
        return sb2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long writeOrCountBytes(j jVar, boolean z) throws EOFException {
        i iVar;
        if (z) {
            jVar = new i();
            iVar = jVar;
        } else {
            iVar = 0;
        }
        int size = this.parts.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            Part part = this.parts.get(i10);
            Headers headers = part.headers;
            RequestBody requestBody = part.body;
            jVar.write(DASHDASH);
            jVar.write(this.boundary);
            jVar.write(CRLF);
            if (headers != null) {
                int size2 = headers.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    jVar.writeUtf8(headers.name(i11)).write(COLONSPACE).writeUtf8(headers.value(i11)).write(CRLF);
                }
            }
            MediaType mediaTypeContentType = requestBody.contentType();
            if (mediaTypeContentType != null) {
                jVar.writeUtf8("Content-Type: ").writeUtf8(mediaTypeContentType.toString()).write(CRLF);
            }
            long jContentLength = requestBody.contentLength();
            if (jContentLength != -1) {
                jVar.writeUtf8("Content-Length: ").writeDecimalLong(jContentLength).write(CRLF);
            } else if (z) {
                iVar.r();
                return -1L;
            }
            byte[] bArr = CRLF;
            jVar.write(bArr);
            if (z) {
                j10 += jContentLength;
            } else {
                requestBody.writeTo(jVar);
            }
            jVar.write(bArr);
        }
        byte[] bArr2 = DASHDASH;
        jVar.write(bArr2);
        jVar.write(this.boundary);
        jVar.write(bArr2);
        jVar.write(CRLF);
        if (!z) {
            return j10;
        }
        long j11 = j10 + iVar.f5853b;
        iVar.r();
        return j11;
    }

    public String boundary() {
        return this.boundary.q();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws EOFException {
        long j10 = this.contentLength;
        if (j10 != -1) {
            return j10;
        }
        long jWriteOrCountBytes = writeOrCountBytes(null, true);
        this.contentLength = jWriteOrCountBytes;
        return jWriteOrCountBytes;
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.contentType;
    }

    public Part part(int i10) {
        return this.parts.get(i10);
    }

    public List<Part> parts() {
        return this.parts;
    }

    public int size() {
        return this.parts.size();
    }

    public MediaType type() {
        return this.originalType;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(j jVar) throws EOFException {
        writeOrCountBytes(jVar, false);
    }
}
