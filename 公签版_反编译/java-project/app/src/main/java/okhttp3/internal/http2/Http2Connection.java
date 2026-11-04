package okhttp3.internal.http2;

import fg.e0;
import fg.i;
import fg.j;
import fg.k;
import fg.l;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.Protocol;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.platform.Platform;

/* loaded from: classes.dex */
public final class Http2Connection implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int AWAIT_PING = 3;
    static final int DEGRADED_PING = 2;
    static final long DEGRADED_PONG_TIMEOUT_NS = 1000000000;
    static final int INTERVAL_PING = 1;
    static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    private static final ExecutorService listenerExecutor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp Http2Connection", true));
    long bytesLeftInWriteWindow;
    final boolean client;
    final Set<Integer> currentPushRequests;
    final String hostname;
    int lastGoodStreamId;
    final Listener listener;
    int nextStreamId;
    final Settings peerSettings;
    private final ExecutorService pushExecutor;
    final PushObserver pushObserver;
    final ReaderRunnable readerRunnable;
    private boolean shutdown;
    final Socket socket;
    final Http2Writer writer;
    private final ScheduledExecutorService writerExecutor;
    final Map<Integer, Http2Stream> streams = new LinkedHashMap();
    private long intervalPingsSent = 0;
    private long intervalPongsReceived = 0;
    private long degradedPingsSent = 0;
    private long degradedPongsReceived = 0;
    private long awaitPingsSent = 0;
    private long awaitPongsReceived = 0;
    private long degradedPongDeadlineNs = 0;
    long unacknowledgedBytesRead = 0;
    Settings okHttpSettings = new Settings();

    public final class IntervalPingRunnable extends NamedRunnable {
        public IntervalPingRunnable() {
            super("OkHttp %s ping", Http2Connection.this.hostname);
        }

        @Override // okhttp3.internal.NamedRunnable
        public void execute() {
            boolean z;
            synchronized (Http2Connection.this) {
                if (Http2Connection.this.intervalPongsReceived < Http2Connection.this.intervalPingsSent) {
                    z = true;
                } else {
                    Http2Connection.access$208(Http2Connection.this);
                    z = false;
                }
            }
            if (z) {
                Http2Connection.this.failConnection();
            } else {
                Http2Connection.this.writePing(false, 1, 0);
            }
        }
    }

    public static abstract class Listener {
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection.Listener.1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(Http2Stream http2Stream) {
                http2Stream.close(ErrorCode.REFUSED_STREAM);
            }
        };

        public void onSettings(Http2Connection http2Connection) {
        }

        public abstract void onStream(Http2Stream http2Stream);
    }

    public final class PingRunnable extends NamedRunnable {
        final int payload1;
        final int payload2;
        final boolean reply;

        public PingRunnable(boolean z, int i10, int i11) {
            super("OkHttp %s ping %08x%08x", Http2Connection.this.hostname, Integer.valueOf(i10), Integer.valueOf(i11));
            this.reply = z;
            this.payload1 = i10;
            this.payload2 = i11;
        }

        @Override // okhttp3.internal.NamedRunnable
        public void execute() {
            Http2Connection.this.writePing(this.reply, this.payload1, this.payload2);
        }
    }

    public Http2Connection(Builder builder) {
        Settings settings = new Settings();
        this.peerSettings = settings;
        this.currentPushRequests = new LinkedHashSet();
        this.pushObserver = builder.pushObserver;
        boolean z = builder.client;
        this.client = z;
        this.listener = builder.listener;
        int i10 = z ? 1 : 2;
        this.nextStreamId = i10;
        if (z) {
            this.nextStreamId = i10 + 2;
        }
        if (z) {
            this.okHttpSettings.set(7, 16777216);
        }
        String str = builder.hostname;
        this.hostname = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, Util.threadFactory(Util.format("OkHttp %s Writer", str), false));
        this.writerExecutor = scheduledThreadPoolExecutor;
        if (builder.pingIntervalMillis != 0) {
            IntervalPingRunnable intervalPingRunnable = new IntervalPingRunnable();
            int i11 = builder.pingIntervalMillis;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(intervalPingRunnable, i11, i11, TimeUnit.MILLISECONDS);
        }
        this.pushExecutor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(Util.format("OkHttp %s Push Observer", str), true));
        settings.set(7, 65535);
        settings.set(5, 16384);
        this.bytesLeftInWriteWindow = settings.getInitialWindowSize();
        this.socket = builder.socket;
        this.writer = new Http2Writer(builder.sink, z);
        this.readerRunnable = new ReaderRunnable(new Http2Reader(builder.source, z));
    }

    public static /* synthetic */ long access$108(Http2Connection http2Connection) {
        long j10 = http2Connection.intervalPongsReceived;
        http2Connection.intervalPongsReceived = 1 + j10;
        return j10;
    }

    public static /* synthetic */ long access$208(Http2Connection http2Connection) {
        long j10 = http2Connection.intervalPingsSent;
        http2Connection.intervalPingsSent = 1 + j10;
        return j10;
    }

    public static /* synthetic */ long access$608(Http2Connection http2Connection) {
        long j10 = http2Connection.degradedPongsReceived;
        http2Connection.degradedPongsReceived = 1 + j10;
        return j10;
    }

    public static /* synthetic */ long access$708(Http2Connection http2Connection) {
        long j10 = http2Connection.awaitPongsReceived;
        http2Connection.awaitPongsReceived = 1 + j10;
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failConnection() {
        try {
            ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
            close(errorCode, errorCode);
        } catch (IOException unused) {
        }
    }

    private synchronized void pushExecutorExecute(NamedRunnable namedRunnable) {
        if (!this.shutdown) {
            this.pushExecutor.execute(namedRunnable);
        }
    }

    public synchronized void awaitPong() {
        while (this.awaitPongsReceived < this.awaitPingsSent) {
            wait();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    public void flush() {
        this.writer.flush();
    }

    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    public synchronized Http2Stream getStream(int i10) {
        return this.streams.get(Integer.valueOf(i10));
    }

    public synchronized boolean isHealthy(long j10) {
        if (this.shutdown) {
            return false;
        }
        if (this.degradedPongsReceived < this.degradedPingsSent) {
            if (j10 >= this.degradedPongDeadlineNs) {
                return false;
            }
        }
        return true;
    }

    public synchronized int maxConcurrentStreams() {
        return this.peerSettings.getMaxConcurrentStreams(Integer.MAX_VALUE);
    }

    public Http2Stream newStream(List<Header> list, boolean z) {
        return newStream(0, list, z);
    }

    public synchronized int openStreamCount() {
        return this.streams.size();
    }

    public void pushDataLater(final int i10, k kVar, final int i11, final boolean z) throws IOException {
        final i iVar = new i();
        long j10 = i11;
        kVar.F(j10);
        kVar.read(iVar, j10);
        if (iVar.f5853b == j10) {
            pushExecutorExecute(new NamedRunnable("OkHttp %s Push Data[%s]", new Object[]{this.hostname, Integer.valueOf(i10)}) { // from class: okhttp3.internal.http2.Http2Connection.6
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        boolean zOnData = Http2Connection.this.pushObserver.onData(i10, iVar, i11, z);
                        if (zOnData) {
                            Http2Connection.this.writer.rstStream(i10, ErrorCode.CANCEL);
                        }
                        if (zOnData || z) {
                            synchronized (Http2Connection.this) {
                                Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i10));
                            }
                        }
                    } catch (IOException unused) {
                    }
                }
            });
            return;
        }
        throw new IOException(iVar.f5853b + " != " + i11);
    }

    public void pushHeadersLater(final int i10, final List<Header> list, final boolean z) {
        try {
            pushExecutorExecute(new NamedRunnable("OkHttp %s Push Headers[%s]", new Object[]{this.hostname, Integer.valueOf(i10)}) { // from class: okhttp3.internal.http2.Http2Connection.5
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    boolean zOnHeaders = Http2Connection.this.pushObserver.onHeaders(i10, list, z);
                    if (zOnHeaders) {
                        try {
                            Http2Connection.this.writer.rstStream(i10, ErrorCode.CANCEL);
                        } catch (IOException unused) {
                            return;
                        }
                    }
                    if (zOnHeaders || z) {
                        synchronized (Http2Connection.this) {
                            Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i10));
                        }
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
        }
    }

    public void pushRequestLater(final int i10, final List<Header> list) {
        synchronized (this) {
            try {
                if (this.currentPushRequests.contains(Integer.valueOf(i10))) {
                    writeSynResetLater(i10, ErrorCode.PROTOCOL_ERROR);
                    return;
                }
                this.currentPushRequests.add(Integer.valueOf(i10));
                try {
                    pushExecutorExecute(new NamedRunnable("OkHttp %s Push Request[%s]", new Object[]{this.hostname, Integer.valueOf(i10)}) { // from class: okhttp3.internal.http2.Http2Connection.4
                        @Override // okhttp3.internal.NamedRunnable
                        public void execute() {
                            if (Http2Connection.this.pushObserver.onRequest(i10, list)) {
                                try {
                                    Http2Connection.this.writer.rstStream(i10, ErrorCode.CANCEL);
                                    synchronized (Http2Connection.this) {
                                        Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i10));
                                    }
                                } catch (IOException unused) {
                                }
                            }
                        }
                    });
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void pushResetLater(final int i10, final ErrorCode errorCode) {
        pushExecutorExecute(new NamedRunnable("OkHttp %s Push Reset[%s]", new Object[]{this.hostname, Integer.valueOf(i10)}) { // from class: okhttp3.internal.http2.Http2Connection.7
            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                Http2Connection.this.pushObserver.onReset(i10, errorCode);
                synchronized (Http2Connection.this) {
                    Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i10));
                }
            }
        });
    }

    public Http2Stream pushStream(int i10, List<Header> list, boolean z) {
        if (this.client) {
            throw new IllegalStateException("Client cannot push requests.");
        }
        return newStream(i10, list, z);
    }

    public boolean pushedStream(int i10) {
        return i10 != 0 && (i10 & 1) == 0;
    }

    public synchronized Http2Stream removeStream(int i10) {
        Http2Stream http2StreamRemove;
        http2StreamRemove = this.streams.remove(Integer.valueOf(i10));
        notifyAll();
        return http2StreamRemove;
    }

    public void sendDegradedPingLater() {
        synchronized (this) {
            try {
                long j10 = this.degradedPongsReceived;
                long j11 = this.degradedPingsSent;
                if (j10 < j11) {
                    return;
                }
                this.degradedPingsSent = j11 + 1;
                this.degradedPongDeadlineNs = System.nanoTime() + DEGRADED_PONG_TIMEOUT_NS;
                try {
                    this.writerExecutor.execute(new NamedRunnable("OkHttp %s ping", this.hostname) { // from class: okhttp3.internal.http2.Http2Connection.3
                        @Override // okhttp3.internal.NamedRunnable
                        public void execute() {
                            Http2Connection.this.writePing(false, 2, 0);
                        }
                    });
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setSettings(Settings settings) {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.shutdown) {
                    throw new ConnectionShutdownException();
                }
                this.okHttpSettings.merge(settings);
            }
            this.writer.settings(settings);
        }
    }

    public void shutdown(ErrorCode errorCode) {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.shutdown) {
                    return;
                }
                this.shutdown = true;
                this.writer.goAway(this.lastGoodStreamId, errorCode, Util.EMPTY_BYTE_ARRAY);
            }
        }
    }

    public void start() {
        start(true);
    }

    public synchronized void updateConnectionFlowControl(long j10) {
        long j11 = this.unacknowledgedBytesRead + j10;
        this.unacknowledgedBytesRead = j11;
        if (j11 >= this.okHttpSettings.getInitialWindowSize() / 2) {
            writeWindowUpdateLater(0, this.unacknowledgedBytesRead);
            this.unacknowledgedBytesRead = 0L;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0032, code lost:
    
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r3), r8.writer.maxDataLength());
        r6 = r3;
        r8.bytesLeftInWriteWindow -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void writeData(int i10, boolean z, i iVar, long j10) {
        int iMin;
        long j11;
        if (j10 == 0) {
            this.writer.data(z, i10, iVar, 0);
            return;
        }
        while (j10 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            long j12 = this.bytesLeftInWriteWindow;
                            if (j12 > 0) {
                                break;
                            } else {
                                if (!this.streams.containsKey(Integer.valueOf(i10))) {
                                    throw new IOException("stream closed");
                                }
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            j10 -= j11;
            this.writer.data(z && j10 == 0, i10, iVar, iMin);
        }
    }

    public void writePing(boolean z, int i10, int i11) {
        try {
            this.writer.ping(z, i10, i11);
        } catch (IOException unused) {
            failConnection();
        }
    }

    public void writePingAndAwaitPong() {
        writePing();
        awaitPong();
    }

    public void writeSynReply(int i10, boolean z, List<Header> list) {
        this.writer.synReply(z, i10, list);
    }

    public void writeSynReset(int i10, ErrorCode errorCode) {
        this.writer.rstStream(i10, errorCode);
    }

    public void writeSynResetLater(final int i10, final ErrorCode errorCode) {
        try {
            this.writerExecutor.execute(new NamedRunnable("OkHttp %s stream %d", new Object[]{this.hostname, Integer.valueOf(i10)}) { // from class: okhttp3.internal.http2.Http2Connection.1
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        Http2Connection.this.writeSynReset(i10, errorCode);
                    } catch (IOException unused) {
                        Http2Connection.this.failConnection();
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
        }
    }

    public void writeWindowUpdateLater(final int i10, final long j10) {
        try {
            this.writerExecutor.execute(new NamedRunnable("OkHttp Window Update %s stream %d", new Object[]{this.hostname, Integer.valueOf(i10)}) { // from class: okhttp3.internal.http2.Http2Connection.2
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        Http2Connection.this.writer.windowUpdate(i10, j10);
                    } catch (IOException unused) {
                        Http2Connection.this.failConnection();
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
        }
    }

    private Http2Stream newStream(int i10, List<Header> list, boolean z) {
        int i11;
        Http2Stream http2Stream;
        boolean z4;
        boolean z10 = !z;
        synchronized (this.writer) {
            try {
                synchronized (this) {
                    try {
                        if (this.nextStreamId > 1073741823) {
                            shutdown(ErrorCode.REFUSED_STREAM);
                        }
                        if (this.shutdown) {
                            throw new ConnectionShutdownException();
                        }
                        i11 = this.nextStreamId;
                        this.nextStreamId = i11 + 2;
                        http2Stream = new Http2Stream(i11, this, z10, false, null);
                        z4 = !z || this.bytesLeftInWriteWindow == 0 || http2Stream.bytesLeftInWriteWindow == 0;
                        if (http2Stream.isOpen()) {
                            this.streams.put(Integer.valueOf(i11), http2Stream);
                        }
                    } finally {
                    }
                }
                if (i10 == 0) {
                    this.writer.synStream(z10, i11, i10, list);
                } else {
                    if (this.client) {
                        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                    }
                    this.writer.pushPromise(i10, i11, list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z4) {
            this.writer.flush();
        }
        return http2Stream;
    }

    public void close(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        Http2Stream[] http2StreamArr = null;
        try {
            shutdown(errorCode);
            e = null;
        } catch (IOException e7) {
            e = e7;
        }
        synchronized (this) {
            try {
                if (!this.streams.isEmpty()) {
                    http2StreamArr = (Http2Stream[]) this.streams.values().toArray(new Http2Stream[this.streams.size()]);
                    this.streams.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.close(errorCode2);
                } catch (IOException e10) {
                    if (e != null) {
                        e = e10;
                    }
                }
            }
        }
        try {
            this.writer.close();
        } catch (IOException e11) {
            if (e == null) {
                e = e11;
            }
        }
        try {
            this.socket.close();
        } catch (IOException e12) {
            e = e12;
        }
        this.writerExecutor.shutdown();
        this.pushExecutor.shutdown();
        if (e != null) {
            throw e;
        }
    }

    public void start(boolean z) {
        if (z) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            if (this.okHttpSettings.getInitialWindowSize() != 65535) {
                this.writer.windowUpdate(0, r5 - 65535);
            }
        }
        new Thread(this.readerRunnable).start();
    }

    public static class Builder {
        boolean client;
        String hostname;
        int pingIntervalMillis;
        j sink;
        Socket socket;
        k source;
        Listener listener = Listener.REFUSE_INCOMING_STREAMS;
        PushObserver pushObserver = PushObserver.CANCEL;

        public Builder(boolean z) {
            this.client = z;
        }

        public Http2Connection build() {
            return new Http2Connection(this);
        }

        public Builder listener(Listener listener) {
            this.listener = listener;
            return this;
        }

        public Builder pingIntervalMillis(int i10) {
            this.pingIntervalMillis = i10;
            return this;
        }

        public Builder pushObserver(PushObserver pushObserver) {
            this.pushObserver = pushObserver;
            return this;
        }

        public Builder socket(Socket socket) {
            return socket(socket, ((InetSocketAddress) socket.getRemoteSocketAddress()).getHostName(), e0.c(e0.h(socket)), e0.b(e0.g(socket)));
        }

        public Builder socket(Socket socket, String str, k kVar, j jVar) {
            this.socket = socket;
            this.hostname = str;
            this.source = kVar;
            this.sink = jVar;
            return this;
        }
    }

    public void writePing() {
        synchronized (this) {
            this.awaitPingsSent++;
        }
        writePing(false, 3, 1330343787);
    }

    public class ReaderRunnable extends NamedRunnable implements Http2Reader.Handler {
        final Http2Reader reader;

        public ReaderRunnable(Http2Reader http2Reader) {
            super("OkHttp %s", Http2Connection.this.hostname);
            this.reader = http2Reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        public void applyAndAckSettings(boolean z, Settings settings) {
            Http2Stream[] http2StreamArr;
            long j10;
            synchronized (Http2Connection.this.writer) {
                synchronized (Http2Connection.this) {
                    try {
                        int initialWindowSize = Http2Connection.this.peerSettings.getInitialWindowSize();
                        if (z) {
                            Http2Connection.this.peerSettings.clear();
                        }
                        Http2Connection.this.peerSettings.merge(settings);
                        int initialWindowSize2 = Http2Connection.this.peerSettings.getInitialWindowSize();
                        http2StreamArr = null;
                        if (initialWindowSize2 == -1 || initialWindowSize2 == initialWindowSize) {
                            j10 = 0;
                        } else {
                            j10 = initialWindowSize2 - initialWindowSize;
                            if (!Http2Connection.this.streams.isEmpty()) {
                                http2StreamArr = (Http2Stream[]) Http2Connection.this.streams.values().toArray(new Http2Stream[Http2Connection.this.streams.size()]);
                            }
                        }
                    } finally {
                    }
                }
                try {
                    Http2Connection http2Connection = Http2Connection.this;
                    http2Connection.writer.applyAndAckSettings(http2Connection.peerSettings);
                } catch (IOException unused) {
                    Http2Connection.this.failConnection();
                }
            }
            if (http2StreamArr != null) {
                for (Http2Stream http2Stream : http2StreamArr) {
                    synchronized (http2Stream) {
                        http2Stream.addBytesToWriteWindow(j10);
                    }
                }
            }
            Http2Connection.listenerExecutor.execute(new NamedRunnable("OkHttp %s settings", Http2Connection.this.hostname) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.3
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    Http2Connection http2Connection2 = Http2Connection.this;
                    http2Connection2.listener.onSettings(http2Connection2);
                }
            });
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean z, int i10, k kVar, int i11) throws IOException {
            if (Http2Connection.this.pushedStream(i10)) {
                Http2Connection.this.pushDataLater(i10, kVar, i11, z);
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i10);
            if (stream == null) {
                Http2Connection.this.writeSynResetLater(i10, ErrorCode.PROTOCOL_ERROR);
                long j10 = i11;
                Http2Connection.this.updateConnectionFlowControl(j10);
                kVar.skip(j10);
                return;
            }
            stream.receiveData(kVar, i11);
            if (z) {
                stream.receiveFin();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // okhttp3.internal.NamedRunnable
        public void execute() throws Throwable {
            ErrorCode errorCode;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    try {
                        this.reader.readConnectionPreface(this);
                        while (this.reader.nextFrame(false, this)) {
                        }
                        ErrorCode errorCode3 = ErrorCode.NO_ERROR;
                        try {
                            errorCode2 = ErrorCode.CANCEL;
                            Http2Connection.this.close(errorCode3, errorCode2);
                            errorCode = errorCode3;
                        } catch (IOException unused) {
                            errorCode2 = ErrorCode.PROTOCOL_ERROR;
                            Http2Connection http2Connection = Http2Connection.this;
                            http2Connection.close(errorCode2, errorCode2);
                            errorCode = http2Connection;
                            Util.closeQuietly(this.reader);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            Http2Connection.this.close(errorCode, errorCode2);
                        } catch (IOException unused2) {
                        }
                        Util.closeQuietly(this.reader);
                        throw th;
                    }
                } catch (IOException unused3) {
                } catch (Throwable th3) {
                    th = th3;
                    errorCode = errorCode2;
                    Http2Connection.this.close(errorCode, errorCode2);
                    Util.closeQuietly(this.reader);
                    throw th;
                }
            } catch (IOException unused4) {
            }
            Util.closeQuietly(this.reader);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int i10, ErrorCode errorCode, l lVar) {
            Http2Stream[] http2StreamArr;
            lVar.g();
            synchronized (Http2Connection.this) {
                http2StreamArr = (Http2Stream[]) Http2Connection.this.streams.values().toArray(new Http2Stream[Http2Connection.this.streams.size()]);
                Http2Connection.this.shutdown = true;
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                if (http2Stream.getId() > i10 && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    Http2Connection.this.removeStream(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean z, int i10, int i11, List<Header> list) {
            if (Http2Connection.this.pushedStream(i10)) {
                Http2Connection.this.pushHeadersLater(i10, list, z);
                return;
            }
            synchronized (Http2Connection.this) {
                try {
                    Http2Stream stream = Http2Connection.this.getStream(i10);
                    if (stream != null) {
                        stream.receiveHeaders(list);
                        if (z) {
                            stream.receiveFin();
                            return;
                        }
                        return;
                    }
                    if (Http2Connection.this.shutdown) {
                        return;
                    }
                    Http2Connection http2Connection = Http2Connection.this;
                    if (i10 <= http2Connection.lastGoodStreamId) {
                        return;
                    }
                    if (i10 % 2 == http2Connection.nextStreamId % 2) {
                        return;
                    }
                    final Http2Stream http2Stream = new Http2Stream(i10, Http2Connection.this, false, z, Util.toHeaders(list));
                    Http2Connection http2Connection2 = Http2Connection.this;
                    http2Connection2.lastGoodStreamId = i10;
                    http2Connection2.streams.put(Integer.valueOf(i10), http2Stream);
                    Http2Connection.listenerExecutor.execute(new NamedRunnable("OkHttp %s stream %d", new Object[]{Http2Connection.this.hostname, Integer.valueOf(i10)}) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.1
                        @Override // okhttp3.internal.NamedRunnable
                        public void execute() {
                            try {
                                Http2Connection.this.listener.onStream(http2Stream);
                            } catch (IOException e7) {
                                Platform.get().log(4, "Http2Connection.Listener failure for " + Http2Connection.this.hostname, e7);
                                try {
                                    http2Stream.close(ErrorCode.PROTOCOL_ERROR);
                                } catch (IOException unused) {
                                }
                            }
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z, int i10, int i11) {
            if (!z) {
                try {
                    Http2Connection.this.writerExecutor.execute(Http2Connection.this.new PingRunnable(true, i10, i11));
                    return;
                } catch (RejectedExecutionException unused) {
                    return;
                }
            }
            synchronized (Http2Connection.this) {
                try {
                    if (i10 == 1) {
                        Http2Connection.access$108(Http2Connection.this);
                    } else if (i10 == 2) {
                        Http2Connection.access$608(Http2Connection.this);
                    } else if (i10 == 3) {
                        Http2Connection.access$708(Http2Connection.this);
                        Http2Connection.this.notifyAll();
                    }
                } finally {
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i10, int i11, int i12, boolean z) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int i10, int i11, List<Header> list) {
            Http2Connection.this.pushRequestLater(i11, list);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int i10, ErrorCode errorCode) {
            if (Http2Connection.this.pushedStream(i10)) {
                Http2Connection.this.pushResetLater(i10, errorCode);
                return;
            }
            Http2Stream http2StreamRemoveStream = Http2Connection.this.removeStream(i10);
            if (http2StreamRemoveStream != null) {
                http2StreamRemoveStream.receiveRstStream(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(final boolean z, final Settings settings) {
            try {
                Http2Connection.this.writerExecutor.execute(new NamedRunnable("OkHttp %s ACK Settings", new Object[]{Http2Connection.this.hostname}) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.2
                    @Override // okhttp3.internal.NamedRunnable
                    public void execute() {
                        ReaderRunnable.this.applyAndAckSettings(z, settings);
                    }
                });
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i10, long j10) {
            if (i10 == 0) {
                synchronized (Http2Connection.this) {
                    Http2Connection http2Connection = Http2Connection.this;
                    http2Connection.bytesLeftInWriteWindow += j10;
                    http2Connection.notifyAll();
                }
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i10);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j10);
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int i10, String str, l lVar, String str2, int i11, long j10) {
        }
    }
}
