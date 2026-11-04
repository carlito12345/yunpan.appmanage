package okhttp3;

import android.support.v4.media.session.a;
import fg.i;
import fg.k;
import fg.l;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import okhttp3.internal.Util;
import ta.q;
import ue.d;

/* loaded from: classes.dex */
public abstract class ResponseBody implements Closeable {
    private Reader reader;

    public static final class BomAwareReader extends Reader {
        private final Charset charset;
        private boolean closed;
        private Reader delegate;
        private final k source;

        public BomAwareReader(k kVar, Charset charset) {
            this.source = kVar;
            this.charset = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.closed = true;
            Reader reader = this.delegate;
            if (reader != null) {
                reader.close();
            } else {
                this.source.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i10, int i11) throws IOException {
            if (this.closed) {
                throw new IOException("Stream closed");
            }
            Reader reader = this.delegate;
            if (reader == null) {
                InputStreamReader inputStreamReader = new InputStreamReader(this.source.I(), Util.bomAwareCharset(this.source, this.charset));
                this.delegate = inputStreamReader;
                reader = inputStreamReader;
            }
            return reader.read(cArr, i10, i11);
        }
    }

    private Charset charset() {
        MediaType mediaTypeContentType = contentType();
        return mediaTypeContentType != null ? mediaTypeContentType.charset(Util.UTF_8) : Util.UTF_8;
    }

    public static ResponseBody create(MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        if (mediaType != null) {
            Charset charset2 = mediaType.charset();
            if (charset2 == null) {
                mediaType = MediaType.parse(mediaType + "; charset=utf-8");
            } else {
                charset = charset2;
            }
        }
        i iVar = new i();
        d.e(str, "string");
        d.e(charset, "charset");
        iVar.c0(str, 0, str.length(), charset);
        return create(mediaType, iVar.f5853b, iVar);
    }

    public final InputStream byteStream() {
        return source().I();
    }

    public final byte[] bytes() throws IOException {
        long jContentLength = contentLength();
        if (jContentLength > 2147483647L) {
            throw new IOException(q.j(jContentLength, "Cannot buffer entire body for content length: "));
        }
        k kVarSource = source();
        try {
            byte[] bArrI = kVarSource.i();
            Util.closeQuietly(kVarSource);
            if (jContentLength == -1 || jContentLength == bArrI.length) {
                return bArrI;
            }
            throw new IOException(a.s(a.w(jContentLength, "Content-Length (", ") and stream length ("), bArrI.length, ") disagree"));
        } catch (Throwable th2) {
            Util.closeQuietly(kVarSource);
            throw th2;
        }
    }

    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader != null) {
            return reader;
        }
        BomAwareReader bomAwareReader = new BomAwareReader(source(), charset());
        this.reader = bomAwareReader;
        return bomAwareReader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(source());
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract k source();

    public final String string() {
        k kVarSource = source();
        try {
            return kVarSource.t(Util.bomAwareCharset(kVarSource, charset()));
        } finally {
            Util.closeQuietly(kVarSource);
        }
    }

    public static ResponseBody create(MediaType mediaType, byte[] bArr) {
        i iVar = new i();
        iVar.U(bArr);
        return create(mediaType, bArr.length, iVar);
    }

    public static ResponseBody create(MediaType mediaType, l lVar) {
        i iVar = new i();
        iVar.T(lVar);
        return create(mediaType, lVar.g(), iVar);
    }

    public static ResponseBody create(final MediaType mediaType, final long j10, final k kVar) {
        if (kVar != null) {
            return new ResponseBody() { // from class: okhttp3.ResponseBody.1
                @Override // okhttp3.ResponseBody
                public long contentLength() {
                    return j10;
                }

                @Override // okhttp3.ResponseBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.ResponseBody
                public k source() {
                    return kVar;
                }
            };
        }
        throw new NullPointerException("source == null");
    }
}
