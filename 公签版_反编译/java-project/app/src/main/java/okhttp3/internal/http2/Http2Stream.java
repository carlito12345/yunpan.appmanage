package okhttp3.internal.http2;

import fg.c0;
import fg.e;
import fg.i;
import fg.k;
import fg.x;
import fg.z;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Header;
import ta.q;

/* loaded from: classes.dex */
public final class Http2Stream {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    long bytesLeftInWriteWindow;
    final Http2Connection connection;
    ErrorCode errorCode;
    private boolean hasResponseHeaders;
    private Header.Listener headersListener;
    private final Deque<Headers> headersQueue;

    /* renamed from: id, reason: collision with root package name */
    final int f11811id;
    final StreamTimeout readTimeout;
    final FramingSink sink;
    private final FramingSource source;
    long unacknowledgedBytesRead = 0;
    final StreamTimeout writeTimeout;

    public final class FramingSink implements x {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final long EMIT_BUFFER_SIZE = 16384;
        boolean closed;
        boolean finished;
        private final i sendBuffer = new i();

        public FramingSink() {
        }

        private void emitFrame(boolean z) throws IOException {
            Http2Stream http2Stream;
            long jMin;
            Http2Stream http2Stream2;
            synchronized (Http2Stream.this) {
                Http2Stream.this.writeTimeout.enter();
                while (true) {
                    try {
                        http2Stream = Http2Stream.this;
                        if (http2Stream.bytesLeftInWriteWindow > 0 || this.finished || this.closed || http2Stream.errorCode != null) {
                            break;
                        } else {
                            http2Stream.waitForIo();
                        }
                    } finally {
                        Http2Stream.this.writeTimeout.exitAndThrowIfTimedOut();
                    }
                }
                http2Stream.writeTimeout.exitAndThrowIfTimedOut();
                Http2Stream.this.checkOutNotClosed();
                jMin = Math.min(Http2Stream.this.bytesLeftInWriteWindow, this.sendBuffer.f5853b);
                http2Stream2 = Http2Stream.this;
                http2Stream2.bytesLeftInWriteWindow -= jMin;
            }
            http2Stream2.writeTimeout.enter();
            try {
                Http2Stream http2Stream3 = Http2Stream.this;
                http2Stream3.connection.writeData(http2Stream3.f11811id, z && jMin == this.sendBuffer.f5853b, this.sendBuffer, jMin);
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override // fg.x, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            synchronized (Http2Stream.this) {
                try {
                    if (this.closed) {
                        return;
                    }
                    Http2Stream http2Stream = Http2Stream.this;
                    if (!http2Stream.sink.finished) {
                        if (this.sendBuffer.f5853b > 0) {
                            while (this.sendBuffer.f5853b > 0) {
                                emitFrame(true);
                            }
                        } else {
                            http2Stream.connection.writeData(http2Stream.f11811id, true, null, 0L);
                        }
                    }
                    synchronized (Http2Stream.this) {
                        this.closed = true;
                    }
                    Http2Stream.this.connection.flush();
                    Http2Stream.this.cancelStreamIfNecessary();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // fg.x, java.io.Flushable
        public void flush() throws IOException {
            synchronized (Http2Stream.this) {
                Http2Stream.this.checkOutNotClosed();
            }
            while (this.sendBuffer.f5853b > 0) {
                emitFrame(false);
                Http2Stream.this.connection.flush();
            }
        }

        @Override // fg.x
        public c0 timeout() {
            return Http2Stream.this.writeTimeout;
        }

        @Override // fg.x
        public void write(i iVar, long j10) throws IOException {
            this.sendBuffer.write(iVar, j10);
            while (this.sendBuffer.f5853b >= EMIT_BUFFER_SIZE) {
                emitFrame(false);
            }
        }
    }

    public final class FramingSource implements z {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        boolean closed;
        boolean finished;
        private final long maxByteCount;
        private final i receiveBuffer = new i();
        private final i readBuffer = new i();

        public FramingSource(long j10) {
            this.maxByteCount = j10;
        }

        private void updateConnectionFlowControl(long j10) {
            Http2Stream.this.connection.updateConnectionFlowControl(j10);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            long j10;
            ArrayList arrayList;
            Header.Listener listener;
            synchronized (Http2Stream.this) {
                try {
                    this.closed = true;
                    i iVar = this.readBuffer;
                    j10 = iVar.f5853b;
                    iVar.r();
                    if (Http2Stream.this.headersQueue.isEmpty() || Http2Stream.this.headersListener == null) {
                        arrayList = null;
                        listener = null;
                    } else {
                        arrayList = new ArrayList(Http2Stream.this.headersQueue);
                        Http2Stream.this.headersQueue.clear();
                        listener = Http2Stream.this.headersListener;
                    }
                    Http2Stream.this.notifyAll();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (j10 > 0) {
                updateConnectionFlowControl(j10);
            }
            Http2Stream.this.cancelStreamIfNecessary();
            if (listener != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    listener.onHeaders((Headers) it.next());
                }
            }
        }

        @Override // fg.z
        public long read(i iVar, long j10) throws StreamResetException {
            ErrorCode errorCode;
            long j11;
            Headers headers;
            Header.Listener listener;
            if (j10 < 0) {
                throw new IllegalArgumentException(q.j(j10, "byteCount < 0: "));
            }
            while (true) {
                synchronized (Http2Stream.this) {
                    try {
                        Http2Stream.this.readTimeout.enter();
                        try {
                            Http2Stream http2Stream = Http2Stream.this;
                            errorCode = http2Stream.errorCode;
                            if (errorCode == null) {
                                errorCode = null;
                            }
                            if (!this.closed) {
                                if (http2Stream.headersQueue.isEmpty() || Http2Stream.this.headersListener == null) {
                                    i iVar2 = this.readBuffer;
                                    long j12 = iVar2.f5853b;
                                    if (j12 > 0) {
                                        j11 = iVar2.read(iVar, Math.min(j10, j12));
                                        Http2Stream http2Stream2 = Http2Stream.this;
                                        long j13 = http2Stream2.unacknowledgedBytesRead + j11;
                                        http2Stream2.unacknowledgedBytesRead = j13;
                                        if (errorCode == null && j13 >= http2Stream2.connection.okHttpSettings.getInitialWindowSize() / 2) {
                                            Http2Stream http2Stream3 = Http2Stream.this;
                                            http2Stream3.connection.writeWindowUpdateLater(http2Stream3.f11811id, http2Stream3.unacknowledgedBytesRead);
                                            Http2Stream.this.unacknowledgedBytesRead = 0L;
                                        }
                                        headers = null;
                                        listener = null;
                                        if (headers == null || listener == null) {
                                            break;
                                        }
                                        listener.onHeaders(headers);
                                    } else if (this.finished || errorCode != null) {
                                        headers = null;
                                        listener = null;
                                    } else {
                                        Http2Stream.this.waitForIo();
                                        Http2Stream.this.readTimeout.exitAndThrowIfTimedOut();
                                    }
                                } else {
                                    headers = (Headers) Http2Stream.this.headersQueue.removeFirst();
                                    listener = Http2Stream.this.headersListener;
                                }
                                j11 = -1;
                                if (headers == null) {
                                    break;
                                }
                                break;
                                break;
                            }
                            throw new IOException("stream closed");
                        } finally {
                            Http2Stream.this.readTimeout.exitAndThrowIfTimedOut();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (j11 != -1) {
                updateConnectionFlowControl(j11);
                return j11;
            }
            if (errorCode == null) {
                return -1L;
            }
            throw new StreamResetException(errorCode);
        }

        public void receive(k kVar, long j10) throws EOFException {
            boolean z;
            boolean z4;
            long j11;
            while (j10 > 0) {
                synchronized (Http2Stream.this) {
                    z = this.finished;
                    z4 = this.readBuffer.f5853b + j10 > this.maxByteCount;
                }
                if (z4) {
                    kVar.skip(j10);
                    Http2Stream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    kVar.skip(j10);
                    return;
                }
                long j12 = kVar.read(this.receiveBuffer, j10);
                if (j12 == -1) {
                    throw new EOFException();
                }
                j10 -= j12;
                synchronized (Http2Stream.this) {
                    try {
                        if (this.closed) {
                            i iVar = this.receiveBuffer;
                            j11 = iVar.f5853b;
                            iVar.r();
                        } else {
                            i iVar2 = this.readBuffer;
                            boolean z10 = iVar2.f5853b == 0;
                            iVar2.writeAll(this.receiveBuffer);
                            if (z10) {
                                Http2Stream.this.notifyAll();
                            }
                            j11 = 0;
                        }
                    } finally {
                    }
                }
                if (j11 > 0) {
                    updateConnectionFlowControl(j11);
                }
            }
        }

        @Override // fg.z
        public c0 timeout() {
            return Http2Stream.this.readTimeout;
        }
    }

    public class StreamTimeout extends e {
        public StreamTimeout() {
        }

        public void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override // fg.e
        public IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // fg.e
        public void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
            Http2Stream.this.connection.sendDegradedPingLater();
        }
    }

    public Http2Stream(int i10, Http2Connection http2Connection, boolean z, boolean z4, Headers headers) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.headersQueue = arrayDeque;
        this.readTimeout = new StreamTimeout();
        this.writeTimeout = new StreamTimeout();
        this.errorCode = null;
        if (http2Connection == null) {
            throw new NullPointerException("connection == null");
        }
        this.f11811id = i10;
        this.connection = http2Connection;
        this.bytesLeftInWriteWindow = http2Connection.peerSettings.getInitialWindowSize();
        FramingSource framingSource = new FramingSource(http2Connection.okHttpSettings.getInitialWindowSize());
        this.source = framingSource;
        FramingSink framingSink = new FramingSink();
        this.sink = framingSink;
        framingSource.finished = z4;
        framingSink.finished = z;
        if (headers != null) {
            arrayDeque.add(headers);
        }
        if (isLocallyInitiated() && headers != null) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        }
        if (!isLocallyInitiated() && headers == null) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    private boolean closeInternal(ErrorCode errorCode) {
        synchronized (this) {
            try {
                if (this.errorCode != null) {
                    return false;
                }
                if (this.source.finished && this.sink.finished) {
                    return false;
                }
                this.errorCode = errorCode;
                notifyAll();
                this.connection.removeStream(this.f11811id);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void addBytesToWriteWindow(long j10) {
        this.bytesLeftInWriteWindow += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void cancelStreamIfNecessary() {
        boolean z;
        boolean zIsOpen;
        synchronized (this) {
            try {
                FramingSource framingSource = this.source;
                if (framingSource.finished || !framingSource.closed) {
                    z = false;
                } else {
                    FramingSink framingSink = this.sink;
                    if (framingSink.finished || framingSink.closed) {
                        z = true;
                    }
                }
                zIsOpen = isOpen();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z) {
            close(ErrorCode.CANCEL);
        } else {
            if (zIsOpen) {
                return;
            }
            this.connection.removeStream(this.f11811id);
        }
    }

    public void checkOutNotClosed() throws IOException {
        FramingSink framingSink = this.sink;
        if (framingSink.closed) {
            throw new IOException("stream closed");
        }
        if (framingSink.finished) {
            throw new IOException("stream finished");
        }
        if (this.errorCode != null) {
            throw new StreamResetException(this.errorCode);
        }
    }

    public void close(ErrorCode errorCode) {
        if (closeInternal(errorCode)) {
            this.connection.writeSynReset(this.f11811id, errorCode);
        }
    }

    public void closeLater(ErrorCode errorCode) {
        if (closeInternal(errorCode)) {
            this.connection.writeSynResetLater(this.f11811id, errorCode);
        }
    }

    public Http2Connection getConnection() {
        return this.connection;
    }

    public synchronized ErrorCode getErrorCode() {
        return this.errorCode;
    }

    public int getId() {
        return this.f11811id;
    }

    public x getSink() {
        synchronized (this) {
            try {
                if (!this.hasResponseHeaders && !isLocallyInitiated()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.sink;
    }

    public z getSource() {
        return this.source;
    }

    public boolean isLocallyInitiated() {
        return this.connection.client == ((this.f11811id & 1) == 1);
    }

    public synchronized boolean isOpen() {
        try {
            if (this.errorCode != null) {
                return false;
            }
            FramingSource framingSource = this.source;
            if (framingSource.finished || framingSource.closed) {
                FramingSink framingSink = this.sink;
                if (framingSink.finished || framingSink.closed) {
                    if (this.hasResponseHeaders) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public c0 readTimeout() {
        return this.readTimeout;
    }

    public void receiveData(k kVar, int i10) throws EOFException {
        this.source.receive(kVar, i10);
    }

    public void receiveFin() {
        boolean zIsOpen;
        synchronized (this) {
            this.source.finished = true;
            zIsOpen = isOpen();
            notifyAll();
        }
        if (zIsOpen) {
            return;
        }
        this.connection.removeStream(this.f11811id);
    }

    public void receiveHeaders(List<Header> list) {
        boolean zIsOpen;
        synchronized (this) {
            this.hasResponseHeaders = true;
            this.headersQueue.add(Util.toHeaders(list));
            zIsOpen = isOpen();
            notifyAll();
        }
        if (zIsOpen) {
            return;
        }
        this.connection.removeStream(this.f11811id);
    }

    public synchronized void receiveRstStream(ErrorCode errorCode) {
        if (this.errorCode == null) {
            this.errorCode = errorCode;
            notifyAll();
        }
    }

    public synchronized void setHeadersListener(Header.Listener listener) {
        this.headersListener = listener;
        if (!this.headersQueue.isEmpty() && listener != null) {
            notifyAll();
        }
    }

    public synchronized Headers takeHeaders() {
        this.readTimeout.enter();
        while (this.headersQueue.isEmpty() && this.errorCode == null) {
            try {
                waitForIo();
            } catch (Throwable th2) {
                this.readTimeout.exitAndThrowIfTimedOut();
                throw th2;
            }
        }
        this.readTimeout.exitAndThrowIfTimedOut();
        if (this.headersQueue.isEmpty()) {
            throw new StreamResetException(this.errorCode);
        }
        return this.headersQueue.removeFirst();
    }

    public void waitForIo() throws InterruptedException, InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public void writeHeaders(List<Header> list, boolean z) {
        boolean z4;
        boolean z10;
        boolean z11;
        if (list == null) {
            throw new NullPointerException("headers == null");
        }
        synchronized (this) {
            z4 = true;
            try {
                this.hasResponseHeaders = true;
                if (z) {
                    z10 = false;
                    z11 = false;
                } else {
                    this.sink.finished = true;
                    z10 = true;
                    z11 = true;
                }
            } finally {
            }
        }
        if (!z10) {
            synchronized (this.connection) {
                if (this.connection.bytesLeftInWriteWindow != 0) {
                    z4 = false;
                }
            }
            z10 = z4;
        }
        this.connection.writeSynReply(this.f11811id, z11, list);
        if (z10) {
            this.connection.flush();
        }
    }

    public c0 writeTimeout() {
        return this.writeTimeout;
    }
}
