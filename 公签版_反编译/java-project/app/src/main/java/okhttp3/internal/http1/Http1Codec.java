package okhttp3.internal.http1;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import fg.c0;
import fg.e0;
import fg.i;
import fg.j;
import fg.k;
import fg.o;
import fg.x;
import fg.z;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import ta.q;
import ue.d;

/* loaded from: classes.dex */
public final class Http1Codec implements HttpCodec {
    private static final int HEADER_LIMIT = 262144;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    final OkHttpClient client;
    final j sink;
    final k source;
    final StreamAllocation streamAllocation;
    int state = 0;
    private long headerLimit = 262144;

    public abstract class AbstractSource implements z {
        protected long bytesRead;
        protected boolean closed;
        protected final o timeout;

        private AbstractSource() {
            this.timeout = new o(Http1Codec.this.source.timeout());
            this.bytesRead = 0L;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public abstract /* synthetic */ void close();

        public final void endOfInput(boolean z, IOException iOException) {
            Http1Codec http1Codec = Http1Codec.this;
            int i10 = http1Codec.state;
            if (i10 == 6) {
                return;
            }
            if (i10 != 5) {
                throw new IllegalStateException("state: " + Http1Codec.this.state);
            }
            http1Codec.detachTimeout(this.timeout);
            Http1Codec http1Codec2 = Http1Codec.this;
            http1Codec2.state = 6;
            StreamAllocation streamAllocation = http1Codec2.streamAllocation;
            if (streamAllocation != null) {
                streamAllocation.streamFinished(!z, http1Codec2, this.bytesRead, iOException);
            }
        }

        @Override // fg.z
        public long read(i iVar, long j10) throws IOException {
            try {
                long j11 = Http1Codec.this.source.read(iVar, j10);
                if (j11 > 0) {
                    this.bytesRead += j11;
                }
                return j11;
            } catch (IOException e7) {
                endOfInput(false, e7);
                throw e7;
            }
        }

        @Override // fg.z
        public c0 timeout() {
            return this.timeout;
        }
    }

    public final class ChunkedSink implements x {
        private boolean closed;
        private final o timeout;

        public ChunkedSink() {
            this.timeout = new o(Http1Codec.this.sink.timeout());
        }

        @Override // fg.x, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public synchronized void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1Codec.this.sink.writeUtf8("0\r\n\r\n");
            Http1Codec.this.detachTimeout(this.timeout);
            Http1Codec.this.state = 3;
        }

        @Override // fg.x, java.io.Flushable
        public synchronized void flush() {
            if (this.closed) {
                return;
            }
            Http1Codec.this.sink.flush();
        }

        @Override // fg.x
        public c0 timeout() {
            return this.timeout;
        }

        @Override // fg.x
        public void write(i iVar, long j10) {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            if (j10 == 0) {
                return;
            }
            Http1Codec.this.sink.writeHexadecimalUnsignedLong(j10);
            Http1Codec.this.sink.writeUtf8("\r\n");
            Http1Codec.this.sink.write(iVar, j10);
            Http1Codec.this.sink.writeUtf8("\r\n");
        }
    }

    public class ChunkedSource extends AbstractSource {
        private static final long NO_CHUNK_YET = -1;
        private long bytesRemainingInChunk;
        private boolean hasMoreChunks;
        private final HttpUrl url;

        public ChunkedSource(HttpUrl httpUrl) {
            super();
            this.bytesRemainingInChunk = -1L;
            this.hasMoreChunks = true;
            this.url = httpUrl;
        }

        private void readChunkSize() throws ProtocolException {
            if (this.bytesRemainingInChunk != -1) {
                Http1Codec.this.source.z();
            }
            try {
                this.bytesRemainingInChunk = Http1Codec.this.source.H();
                String strTrim = Http1Codec.this.source.z().trim();
                if (this.bytesRemainingInChunk < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + strTrim + "\"");
                }
                if (this.bytesRemainingInChunk == 0) {
                    this.hasMoreChunks = false;
                    HttpHeaders.receiveHeaders(Http1Codec.this.client.cookieJar(), this.url, Http1Codec.this.readHeaders());
                    endOfInput(true, null);
                }
            } catch (NumberFormatException e7) {
                throw new ProtocolException(e7.getMessage());
            }
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            if (this.hasMoreChunks && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                endOfInput(false, null);
            }
            this.closed = true;
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, fg.z
        public long read(i iVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException(q.j(j10, "byteCount < 0: "));
            }
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            if (!this.hasMoreChunks) {
                return -1L;
            }
            long j11 = this.bytesRemainingInChunk;
            if (j11 == 0 || j11 == -1) {
                readChunkSize();
                if (!this.hasMoreChunks) {
                    return -1L;
                }
            }
            long j12 = super.read(iVar, Math.min(j10, this.bytesRemainingInChunk));
            if (j12 != -1) {
                this.bytesRemainingInChunk -= j12;
                return j12;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            endOfInput(false, protocolException);
            throw protocolException;
        }
    }

    public final class FixedLengthSink implements x {
        private long bytesRemaining;
        private boolean closed;
        private final o timeout;

        public FixedLengthSink(long j10) {
            this.timeout = new o(Http1Codec.this.sink.timeout());
            this.bytesRemaining = j10;
        }

        @Override // fg.x, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws ProtocolException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            if (this.bytesRemaining > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            Http1Codec.this.detachTimeout(this.timeout);
            Http1Codec.this.state = 3;
        }

        @Override // fg.x, java.io.Flushable
        public void flush() {
            if (this.closed) {
                return;
            }
            Http1Codec.this.sink.flush();
        }

        @Override // fg.x
        public c0 timeout() {
            return this.timeout;
        }

        @Override // fg.x
        public void write(i iVar, long j10) throws ProtocolException {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            Util.checkOffsetAndCount(iVar.f5853b, 0L, j10);
            if (j10 <= this.bytesRemaining) {
                Http1Codec.this.sink.write(iVar, j10);
                this.bytesRemaining -= j10;
            } else {
                throw new ProtocolException("expected " + this.bytesRemaining + " bytes but received " + j10);
            }
        }
    }

    public class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;

        public FixedLengthSource(long j10) {
            super();
            this.bytesRemaining = j10;
            if (j10 == 0) {
                endOfInput(true, null);
            }
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            if (this.bytesRemaining != 0 && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                endOfInput(false, null);
            }
            this.closed = true;
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, fg.z
        public long read(i iVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException(q.j(j10, "byteCount < 0: "));
            }
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            long j11 = this.bytesRemaining;
            if (j11 == 0) {
                return -1L;
            }
            long j12 = super.read(iVar, Math.min(j11, j10));
            if (j12 == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                endOfInput(false, protocolException);
                throw protocolException;
            }
            long j13 = this.bytesRemaining - j12;
            this.bytesRemaining = j13;
            if (j13 == 0) {
                endOfInput(true, null);
            }
            return j12;
        }
    }

    public class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;

        public UnknownLengthSource() {
            super();
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            if (!this.inputExhausted) {
                endOfInput(false, null);
            }
            this.closed = true;
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, fg.z
        public long read(i iVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException(q.j(j10, "byteCount < 0: "));
            }
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            if (this.inputExhausted) {
                return -1L;
            }
            long j11 = super.read(iVar, j10);
            if (j11 != -1) {
                return j11;
            }
            this.inputExhausted = true;
            endOfInput(true, null);
            return -1L;
        }
    }

    public Http1Codec(OkHttpClient okHttpClient, StreamAllocation streamAllocation, k kVar, j jVar) {
        this.client = okHttpClient;
        this.streamAllocation = streamAllocation;
        this.source = kVar;
        this.sink = jVar;
    }

    private String readHeaderLine() {
        String strL = this.source.l(this.headerLimit);
        this.headerLimit -= strL.length();
        return strL;
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void cancel() throws IOException {
        RealConnection realConnectionConnection = this.streamAllocation.connection();
        if (realConnectionConnection != null) {
            realConnectionConnection.cancel();
        }
    }

    @Override // okhttp3.internal.http.HttpCodec
    public x createRequestBody(Request request, long j10) {
        if (HTTP.CHUNK_CODING.equalsIgnoreCase(request.header(HTTP.TRANSFER_ENCODING))) {
            return newChunkedSink();
        }
        if (j10 != -1) {
            return newFixedLengthSink(j10);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public void detachTimeout(o oVar) {
        c0 c0Var = oVar.f5858a;
        c0 c0Var2 = c0.NONE;
        d.e(c0Var2, "delegate");
        oVar.f5858a = c0Var2;
        c0Var.clearDeadline();
        c0Var.clearTimeout();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void finishRequest() {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void flushRequest() {
        this.sink.flush();
    }

    public boolean isClosed() {
        return this.state == 6;
    }

    public x newChunkedSink() {
        if (this.state == 1) {
            this.state = 2;
            return new ChunkedSink();
        }
        throw new IllegalStateException("state: " + this.state);
    }

    public z newChunkedSource(HttpUrl httpUrl) {
        if (this.state == 4) {
            this.state = 5;
            return new ChunkedSource(httpUrl);
        }
        throw new IllegalStateException("state: " + this.state);
    }

    public x newFixedLengthSink(long j10) {
        if (this.state == 1) {
            this.state = 2;
            return new FixedLengthSink(j10);
        }
        throw new IllegalStateException("state: " + this.state);
    }

    public z newFixedLengthSource(long j10) {
        if (this.state == 4) {
            this.state = 5;
            return new FixedLengthSource(j10);
        }
        throw new IllegalStateException("state: " + this.state);
    }

    public z newUnknownLengthSource() throws IOException {
        if (this.state != 4) {
            throw new IllegalStateException("state: " + this.state);
        }
        StreamAllocation streamAllocation = this.streamAllocation;
        if (streamAllocation == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.state = 5;
        streamAllocation.noNewStreams();
        return new UnknownLengthSource();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public ResponseBody openResponseBody(Response response) {
        StreamAllocation streamAllocation = this.streamAllocation;
        streamAllocation.eventListener.responseBodyStart(streamAllocation.call);
        String strHeader = response.header("Content-Type");
        if (!HttpHeaders.hasBody(response)) {
            return new RealResponseBody(strHeader, 0L, e0.c(newFixedLengthSource(0L)));
        }
        if (HTTP.CHUNK_CODING.equalsIgnoreCase(response.header(HTTP.TRANSFER_ENCODING))) {
            return new RealResponseBody(strHeader, -1L, e0.c(newChunkedSource(response.request().url())));
        }
        long jContentLength = HttpHeaders.contentLength(response);
        return jContentLength != -1 ? new RealResponseBody(strHeader, jContentLength, e0.c(newFixedLengthSource(jContentLength))) : new RealResponseBody(strHeader, -1L, e0.c(newUnknownLengthSource()));
    }

    public Headers readHeaders() {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String headerLine = readHeaderLine();
            if (headerLine.length() == 0) {
                return builder.build();
            }
            Internal.instance.addLenient(builder, headerLine);
        }
    }

    @Override // okhttp3.internal.http.HttpCodec
    public Response.Builder readResponseHeaders(boolean z) throws NumberFormatException, IOException {
        int i10 = this.state;
        if (i10 != 1 && i10 != 3) {
            throw new IllegalStateException("state: " + this.state);
        }
        try {
            StatusLine statusLine = StatusLine.parse(readHeaderLine());
            Response.Builder builderHeaders = new Response.Builder().protocol(statusLine.protocol).code(statusLine.code).message(statusLine.message).headers(readHeaders());
            if (z && statusLine.code == 100) {
                return null;
            }
            if (statusLine.code == 100) {
                this.state = 3;
                return builderHeaders;
            }
            this.state = 4;
            return builderHeaders;
        } catch (EOFException e7) {
            IOException iOException = new IOException("unexpected end of stream on " + this.streamAllocation);
            iOException.initCause(e7);
            throw iOException;
        }
    }

    public void writeRequest(Headers headers, String str) {
        if (this.state != 0) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.sink.writeUtf8(str).writeUtf8("\r\n");
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.sink.writeUtf8(headers.name(i10)).writeUtf8(": ").writeUtf8(headers.value(i10)).writeUtf8("\r\n");
        }
        this.sink.writeUtf8("\r\n");
        this.state = 1;
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void writeRequestHeaders(Request request) {
        writeRequest(request.headers(), RequestLine.get(request, this.streamAllocation.connection().route().proxy().type()));
    }
}
