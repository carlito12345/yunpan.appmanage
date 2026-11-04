package okhttp3.internal.ws;

import android.support.v4.media.session.a;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import fg.e0;
import fg.j;
import fg.k;
import fg.l;
import fg.s;
import g.b;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.ws.WebSocketReader;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import ta.q;

/* loaded from: classes.dex */
public final class RealWebSocket implements WebSocket, WebSocketReader.FrameCallback {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long CANCEL_AFTER_CLOSE_MILLIS = 60000;
    private static final long MAX_QUEUE_SIZE = 16777216;
    private static final List<Protocol> ONLY_HTTP1 = Collections.singletonList(Protocol.HTTP_1_1);
    private boolean awaitingPong;
    private Call call;
    private ScheduledFuture<?> cancelFuture;
    private boolean enqueuedClose;
    private ScheduledExecutorService executor;
    private boolean failed;
    private final String key;
    final WebSocketListener listener;
    private final Request originalRequest;
    private final long pingIntervalMillis;
    private long queueSize;
    private final Random random;
    private WebSocketReader reader;
    private String receivedCloseReason;
    private int receivedPingCount;
    private int receivedPongCount;
    private int sentPingCount;
    private Streams streams;
    private WebSocketWriter writer;
    private final Runnable writerRunnable;
    private final ArrayDeque<l> pongQueue = new ArrayDeque<>();
    private final ArrayDeque<Object> messageAndCloseQueue = new ArrayDeque<>();
    private int receivedCloseCode = -1;

    public final class CancelRunnable implements Runnable {
        public CancelRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RealWebSocket.this.cancel();
        }
    }

    public static final class Close {
        final long cancelAfterCloseMillis;
        final int code;
        final l reason;

        public Close(int i10, l lVar, long j10) {
            this.code = i10;
            this.reason = lVar;
            this.cancelAfterCloseMillis = j10;
        }
    }

    public static final class Message {
        final l data;
        final int formatOpcode;

        public Message(int i10, l lVar) {
            this.formatOpcode = i10;
            this.data = lVar;
        }
    }

    public final class PingRunnable implements Runnable {
        public PingRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            RealWebSocket.this.writePingFrame();
        }
    }

    public static abstract class Streams implements Closeable {
        public final boolean client;
        public final j sink;
        public final k source;

        public Streams(boolean z, k kVar, j jVar) {
            this.client = z;
            this.source = kVar;
            this.sink = jVar;
        }
    }

    public RealWebSocket(Request request, WebSocketListener webSocketListener, Random random, long j10) {
        if (!"GET".equals(request.method())) {
            throw new IllegalArgumentException("Request must be GET: " + request.method());
        }
        this.originalRequest = request;
        this.listener = webSocketListener;
        this.random = random;
        this.pingIntervalMillis = j10;
        byte[] bArr = new byte[16];
        random.nextBytes(bArr);
        this.key = l.l(bArr).a();
        this.writerRunnable = new Runnable() { // from class: okhttp3.internal.ws.RealWebSocket.1
            @Override // java.lang.Runnable
            public void run() throws IOException {
                do {
                    try {
                    } catch (IOException e7) {
                        RealWebSocket.this.failWebSocket(e7, null);
                        return;
                    }
                } while (RealWebSocket.this.writeOneFrame());
            }
        };
    }

    private void runWriter() {
        ScheduledExecutorService scheduledExecutorService = this.executor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.execute(this.writerRunnable);
        }
    }

    public void awaitTermination(int i10, TimeUnit timeUnit) throws InterruptedException {
        this.executor.awaitTermination(i10, timeUnit);
    }

    @Override // okhttp3.WebSocket
    public void cancel() {
        this.call.cancel();
    }

    public void checkResponse(Response response) throws ProtocolException {
        if (response.code() != 101) {
            throw new ProtocolException("Expected HTTP 101 response but was '" + response.code() + " " + response.message() + "'");
        }
        String strHeader = response.header(HTTP.CONN_DIRECTIVE);
        if (!"Upgrade".equalsIgnoreCase(strHeader)) {
            throw new ProtocolException(b.A("Expected 'Connection' header value 'Upgrade' but was '", strHeader, "'"));
        }
        String strHeader2 = response.header("Upgrade");
        if (!"websocket".equalsIgnoreCase(strHeader2)) {
            throw new ProtocolException(b.A("Expected 'Upgrade' header value 'websocket' but was '", strHeader2, "'"));
        }
        String strHeader3 = response.header("Sec-WebSocket-Accept");
        String strL = b.l(this.key, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11", new StringBuilder());
        l lVar = l.f5854d;
        String strA = e0.e(strL).f(McElieceCCA2KeyGenParameterSpec.SHA1).a();
        if (!strA.equals(strHeader3)) {
            throw new ProtocolException(q.l("Expected 'Sec-WebSocket-Accept' header value '", strA, "' but was '", strHeader3, "'"));
        }
    }

    @Override // okhttp3.WebSocket
    public boolean close(int i10, String str) {
        return close(i10, str, CANCEL_AFTER_CLOSE_MILLIS);
    }

    public void connect(OkHttpClient okHttpClient) {
        OkHttpClient okHttpClientBuild = okHttpClient.newBuilder().eventListener(EventListener.NONE).protocols(ONLY_HTTP1).build();
        final Request requestBuild = this.originalRequest.newBuilder().header("Upgrade", "websocket").header(HTTP.CONN_DIRECTIVE, "Upgrade").header("Sec-WebSocket-Key", this.key).header("Sec-WebSocket-Version", "13").build();
        Call callNewWebSocketCall = Internal.instance.newWebSocketCall(okHttpClientBuild, requestBuild);
        this.call = callNewWebSocketCall;
        callNewWebSocketCall.timeout().clearTimeout();
        this.call.enqueue(new Callback() { // from class: okhttp3.internal.ws.RealWebSocket.2
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) throws IOException {
                RealWebSocket.this.failWebSocket(iOException, null);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                try {
                    RealWebSocket.this.checkResponse(response);
                    StreamAllocation streamAllocation = Internal.instance.streamAllocation(call);
                    streamAllocation.noNewStreams();
                    Streams streamsNewWebSocketStreams = streamAllocation.connection().newWebSocketStreams(streamAllocation);
                    try {
                        RealWebSocket realWebSocket = RealWebSocket.this;
                        realWebSocket.listener.onOpen(realWebSocket, response);
                        RealWebSocket.this.initReaderAndWriter("OkHttp WebSocket " + requestBuild.url().redact(), streamsNewWebSocketStreams);
                        streamAllocation.connection().socket().setSoTimeout(0);
                        RealWebSocket.this.loopReader();
                    } catch (Exception e7) {
                        RealWebSocket.this.failWebSocket(e7, null);
                    }
                } catch (ProtocolException e10) {
                    RealWebSocket.this.failWebSocket(e10, response);
                    Util.closeQuietly(response);
                }
            }
        });
    }

    public void failWebSocket(Exception exc, Response response) throws IOException {
        synchronized (this) {
            try {
                if (this.failed) {
                    return;
                }
                this.failed = true;
                Streams streams = this.streams;
                this.streams = null;
                ScheduledFuture<?> scheduledFuture = this.cancelFuture;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                ScheduledExecutorService scheduledExecutorService = this.executor;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdown();
                }
                try {
                    this.listener.onFailure(this, exc, response);
                } finally {
                    Util.closeQuietly(streams);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void initReaderAndWriter(String str, Streams streams) {
        synchronized (this) {
            try {
                this.streams = streams;
                this.writer = new WebSocketWriter(streams.client, streams.sink, this.random);
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, Util.threadFactory(str, false));
                this.executor = scheduledThreadPoolExecutor;
                if (this.pingIntervalMillis != 0) {
                    PingRunnable pingRunnable = new PingRunnable();
                    long j10 = this.pingIntervalMillis;
                    scheduledThreadPoolExecutor.scheduleAtFixedRate(pingRunnable, j10, j10, TimeUnit.MILLISECONDS);
                }
                if (!this.messageAndCloseQueue.isEmpty()) {
                    runWriter();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.reader = new WebSocketReader(streams.client, streams.source, this);
    }

    public void loopReader() throws IOException {
        while (this.receivedCloseCode == -1) {
            this.reader.processNextFrame();
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadClose(int i10, String str) throws IOException {
        Streams streams;
        if (i10 == -1) {
            throw new IllegalArgumentException();
        }
        synchronized (this) {
            try {
                if (this.receivedCloseCode != -1) {
                    throw new IllegalStateException("already closed");
                }
                this.receivedCloseCode = i10;
                this.receivedCloseReason = str;
                streams = null;
                if (this.enqueuedClose && this.messageAndCloseQueue.isEmpty()) {
                    Streams streams2 = this.streams;
                    this.streams = null;
                    ScheduledFuture<?> scheduledFuture = this.cancelFuture;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.executor.shutdown();
                    streams = streams2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        try {
            this.listener.onClosing(this, i10, str);
            if (streams != null) {
                this.listener.onClosed(this, i10, str);
            }
        } finally {
            Util.closeQuietly(streams);
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(String str) {
        this.listener.onMessage(this, str);
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPing(l lVar) {
        try {
            if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
                this.pongQueue.add(lVar);
                runWriter();
                this.receivedPingCount++;
            }
        } finally {
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPong(l lVar) {
        this.receivedPongCount++;
        this.awaitingPong = false;
    }

    public synchronized boolean pong(l lVar) {
        try {
            if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
                this.pongQueue.add(lVar);
                runWriter();
                return true;
            }
            return false;
        } finally {
        }
    }

    public boolean processNextFrame() throws IOException {
        try {
            this.reader.processNextFrame();
            return this.receivedCloseCode == -1;
        } catch (Exception e7) {
            failWebSocket(e7, null);
            return false;
        }
    }

    @Override // okhttp3.WebSocket
    public synchronized long queueSize() {
        return this.queueSize;
    }

    public synchronized int receivedPingCount() {
        return this.receivedPingCount;
    }

    public synchronized int receivedPongCount() {
        return this.receivedPongCount;
    }

    @Override // okhttp3.WebSocket
    public Request request() {
        return this.originalRequest;
    }

    @Override // okhttp3.WebSocket
    public boolean send(String str) {
        if (str == null) {
            throw new NullPointerException("text == null");
        }
        l lVar = l.f5854d;
        return send(e0.e(str), 1);
    }

    public synchronized int sentPingCount() {
        return this.sentPingCount;
    }

    public void tearDown() throws InterruptedException {
        ScheduledFuture<?> scheduledFuture = this.cancelFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.executor.shutdown();
        this.executor.awaitTermination(10L, TimeUnit.SECONDS);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0059 A[Catch: all -> 0x005d, TRY_ENTER, TryCatch #2 {all -> 0x005d, blocks: (B:26:0x0059, B:29:0x005f, B:31:0x0063, B:32:0x007f, B:38:0x008e, B:39:0x008f, B:41:0x0093, B:43:0x009e, B:46:0x00a8, B:47:0x00ad, B:33:0x0080, B:34:0x008a), top: B:57:0x0057, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f A[Catch: all -> 0x005d, TryCatch #2 {all -> 0x005d, blocks: (B:26:0x0059, B:29:0x005f, B:31:0x0063, B:32:0x007f, B:38:0x008e, B:39:0x008f, B:41:0x0093, B:43:0x009e, B:46:0x00a8, B:47:0x00ad, B:33:0x0080, B:34:0x008a), top: B:57:0x0057, inners: #1 }] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean writeOneFrame() throws IOException {
        Streams streams;
        String str;
        int i10;
        Message message;
        synchronized (this) {
            try {
                if (this.failed) {
                    return false;
                }
                WebSocketWriter webSocketWriter = this.writer;
                l lVarPoll = this.pongQueue.poll();
                Object obj = null;
                try {
                    if (lVarPoll == null) {
                        Object objPoll = this.messageAndCloseQueue.poll();
                        if (objPoll instanceof Close) {
                            i10 = this.receivedCloseCode;
                            str = this.receivedCloseReason;
                            if (i10 != -1) {
                                streams = this.streams;
                                this.streams = null;
                                this.executor.shutdown();
                            } else {
                                this.cancelFuture = this.executor.schedule(new CancelRunnable(), ((Close) objPoll).cancelAfterCloseMillis, TimeUnit.MILLISECONDS);
                                streams = null;
                            }
                            message = objPoll;
                            if (lVarPoll == null) {
                                webSocketWriter.writePong(lVarPoll);
                            } else if (message instanceof Message) {
                                l lVar = message.data;
                                s sVarB = e0.b(webSocketWriter.newMessageSink(message.formatOpcode, lVar.g()));
                                sVarB.write(lVar);
                                sVarB.close();
                                synchronized (this) {
                                    this.queueSize -= lVar.g();
                                }
                            } else {
                                if (!(message instanceof Close)) {
                                    throw new AssertionError();
                                }
                                Close close = (Close) message;
                                webSocketWriter.writeClose(close.code, close.reason);
                                if (streams != null) {
                                    this.listener.onClosed(this, i10, str);
                                }
                            }
                            Util.closeQuietly(streams);
                            return true;
                        }
                        if (objPoll == null) {
                            return false;
                        }
                        streams = null;
                        str = null;
                        obj = objPoll;
                    } else {
                        streams = null;
                        str = null;
                    }
                    if (lVarPoll == null) {
                    }
                    Util.closeQuietly(streams);
                    return true;
                } catch (Throwable th2) {
                    Util.closeQuietly(streams);
                    throw th2;
                }
                i10 = -1;
                message = obj;
            } finally {
            }
        }
    }

    public void writePingFrame() throws IOException {
        synchronized (this) {
            try {
                if (this.failed) {
                    return;
                }
                WebSocketWriter webSocketWriter = this.writer;
                int i10 = this.awaitingPong ? this.sentPingCount : -1;
                this.sentPingCount++;
                this.awaitingPong = true;
                if (i10 != -1) {
                    StringBuilder sb2 = new StringBuilder("sent ping but didn't receive pong within ");
                    sb2.append(this.pingIntervalMillis);
                    sb2.append("ms (after ");
                    failWebSocket(new SocketTimeoutException(a.s(sb2, i10 - 1, " successful ping/pongs)")), null);
                    return;
                }
                try {
                    webSocketWriter.writePing(l.f5854d);
                } catch (IOException e7) {
                    failWebSocket(e7, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public synchronized boolean close(int i10, String str, long j10) {
        l lVarE;
        try {
            WebSocketProtocol.validateCloseCode(i10);
            if (str != null) {
                l lVar = l.f5854d;
                lVarE = e0.e(str);
                if (lVarE.f5855a.length > 123) {
                    throw new IllegalArgumentException("reason.size() > 123: ".concat(str));
                }
            } else {
                lVarE = null;
            }
            if (!this.failed && !this.enqueuedClose) {
                this.enqueuedClose = true;
                this.messageAndCloseQueue.add(new Close(i10, lVarE, j10));
                runWriter();
                return true;
            }
            return false;
        } finally {
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(l lVar) {
        this.listener.onMessage(this, lVar);
    }

    @Override // okhttp3.WebSocket
    public boolean send(l lVar) {
        if (lVar != null) {
            return send(lVar, 2);
        }
        throw new NullPointerException("bytes == null");
    }

    private synchronized boolean send(l lVar, int i10) {
        if (!this.failed && !this.enqueuedClose) {
            if (this.queueSize + lVar.g() > MAX_QUEUE_SIZE) {
                close(1001, null);
                return false;
            }
            this.queueSize += lVar.g();
            this.messageAndCloseQueue.add(new Message(i10, lVar));
            runWriter();
            return true;
        }
        return false;
    }
}
