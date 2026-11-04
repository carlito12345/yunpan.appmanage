package okhttp3;

import fg.c0;
import fg.d;
import fg.j;
import fg.l;
import fg.r;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.util.logging.Logger;
import okhttp3.internal.Util;

/* loaded from: classes.dex */
public abstract class RequestBody {
    public static RequestBody create(MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        if (mediaType != null) {
            Charset charset2 = mediaType.charset();
            if (charset2 == null) {
                mediaType = MediaType.parse(mediaType + "; charset=utf-8");
            } else {
                charset = charset2;
            }
        }
        return create(mediaType, str.getBytes(charset));
    }

    public long contentLength() {
        return -1L;
    }

    public abstract MediaType contentType();

    public abstract void writeTo(j jVar);

    public static RequestBody create(final MediaType mediaType, final l lVar) {
        return new RequestBody() { // from class: okhttp3.RequestBody.1
            @Override // okhttp3.RequestBody
            public long contentLength() {
                return lVar.g();
            }

            @Override // okhttp3.RequestBody
            public MediaType contentType() {
                return mediaType;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(j jVar) {
                jVar.write(lVar);
            }
        };
    }

    public static RequestBody create(MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr, 0, bArr.length);
    }

    public static RequestBody create(final MediaType mediaType, final byte[] bArr, final int i10, final int i11) {
        if (bArr != null) {
            Util.checkOffsetAndCount(bArr.length, i10, i11);
            return new RequestBody() { // from class: okhttp3.RequestBody.2
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return i11;
                }

                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(j jVar) {
                    jVar.write(bArr, i10, i11);
                }
            };
        }
        throw new NullPointerException("content == null");
    }

    public static RequestBody create(final MediaType mediaType, final File file) {
        if (file != null) {
            return new RequestBody() { // from class: okhttp3.RequestBody.3
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return file.length();
                }

                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(j jVar) throws Throwable {
                    d dVar;
                    d dVar2 = null;
                    try {
                        File file2 = file;
                        Logger logger = r.f5868a;
                        ue.d.e(file2, "<this>");
                        dVar = new d(new FileInputStream(file2), c0.NONE);
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        jVar.writeAll(dVar);
                        Util.closeQuietly(dVar);
                    } catch (Throwable th3) {
                        th = th3;
                        dVar2 = dVar;
                        Util.closeQuietly(dVar2);
                        throw th;
                    }
                }
            };
        }
        throw new NullPointerException("file == null");
    }
}
