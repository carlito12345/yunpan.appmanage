package okhttp3.internal.ws;

import fg.c0;
import fg.g;
import fg.i;
import fg.j;
import fg.l;
import fg.x;
import java.io.EOFException;
import java.io.IOException;
import java.util.Random;

/* loaded from: classes.dex */
final class WebSocketWriter {
    boolean activeWriter;
    final i buffer = new i();
    final FrameSink frameSink = new FrameSink();
    final boolean isClient;
    private final g maskCursor;
    private final byte[] maskKey;
    final Random random;
    final j sink;
    final i sinkBuffer;
    boolean writerClosed;

    public final class FrameSink implements x {
        boolean closed;
        long contentLength;
        int formatOpcode;
        boolean isFirstFrame;

        public FrameSink() {
        }

        @Override // fg.x, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            WebSocketWriter webSocketWriter = WebSocketWriter.this;
            webSocketWriter.writeMessageFrame(this.formatOpcode, webSocketWriter.buffer.f5853b, this.isFirstFrame, true);
            this.closed = true;
            WebSocketWriter.this.activeWriter = false;
        }

        @Override // fg.x, java.io.Flushable
        public void flush() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            WebSocketWriter webSocketWriter = WebSocketWriter.this;
            webSocketWriter.writeMessageFrame(this.formatOpcode, webSocketWriter.buffer.f5853b, this.isFirstFrame, false);
            this.isFirstFrame = false;
        }

        @Override // fg.x
        public c0 timeout() {
            return WebSocketWriter.this.sink.timeout();
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
        @Override // fg.x
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void write(i iVar, long j10) throws IOException {
            boolean z;
            if (this.closed) {
                throw new IOException("closed");
            }
            WebSocketWriter.this.buffer.write(iVar, j10);
            if (this.isFirstFrame) {
                long j11 = this.contentLength;
                z = j11 != -1 && WebSocketWriter.this.buffer.f5853b > j11 - 8192;
            }
            long J = WebSocketWriter.this.buffer.J();
            if (J <= 0 || z) {
                return;
            }
            WebSocketWriter.this.writeMessageFrame(this.formatOpcode, J, this.isFirstFrame, false);
            this.isFirstFrame = false;
        }
    }

    public WebSocketWriter(boolean z, j jVar, Random random) {
        if (jVar == null) {
            throw new NullPointerException("sink == null");
        }
        if (random == null) {
            throw new NullPointerException("random == null");
        }
        this.isClient = z;
        this.sink = jVar;
        this.sinkBuffer = jVar.buffer();
        this.random = random;
        this.maskKey = z ? new byte[4] : null;
        this.maskCursor = z ? new g() : null;
    }

    private void writeControlFrame(int i10, l lVar) throws IOException {
        if (this.writerClosed) {
            throw new IOException("closed");
        }
        int iG = lVar.g();
        if (iG > 125) {
            throw new IllegalArgumentException("Payload size must be less than or equal to 125");
        }
        this.sinkBuffer.W(i10 | 128);
        if (this.isClient) {
            this.sinkBuffer.W(iG | 128);
            this.random.nextBytes(this.maskKey);
            this.sinkBuffer.U(this.maskKey);
            if (iG > 0) {
                i iVar = this.sinkBuffer;
                long j10 = iVar.f5853b;
                iVar.T(lVar);
                this.sinkBuffer.O(this.maskCursor);
                this.maskCursor.r(j10);
                WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        } else {
            this.sinkBuffer.W(iG);
            this.sinkBuffer.T(lVar);
        }
        this.sink.flush();
    }

    public x newMessageSink(int i10, long j10) {
        if (this.activeWriter) {
            throw new IllegalStateException("Another message writer is active. Did you call close()?");
        }
        this.activeWriter = true;
        FrameSink frameSink = this.frameSink;
        frameSink.formatOpcode = i10;
        frameSink.contentLength = j10;
        frameSink.isFirstFrame = true;
        frameSink.closed = false;
        return frameSink;
    }

    public void writeClose(int i10, l lVar) throws EOFException {
        l lVarC = l.f5854d;
        if (i10 != 0 || lVar != null) {
            if (i10 != 0) {
                WebSocketProtocol.validateCloseCode(i10);
            }
            i iVar = new i();
            iVar.b0(i10);
            if (lVar != null) {
                iVar.T(lVar);
            }
            lVarC = iVar.c(iVar.f5853b);
        }
        try {
            writeControlFrame(8, lVarC);
        } finally {
            this.writerClosed = true;
        }
    }

    public void writeMessageFrame(int i10, long j10, boolean z, boolean z4) throws IOException {
        if (this.writerClosed) {
            throw new IOException("closed");
        }
        if (!z) {
            i10 = 0;
        }
        if (z4) {
            i10 |= 128;
        }
        this.sinkBuffer.W(i10);
        int i11 = this.isClient ? 128 : 0;
        if (j10 <= 125) {
            this.sinkBuffer.W(((int) j10) | i11);
        } else if (j10 <= 65535) {
            this.sinkBuffer.W(i11 | 126);
            this.sinkBuffer.b0((int) j10);
        } else {
            this.sinkBuffer.W(i11 | 127);
            this.sinkBuffer.a0(j10);
        }
        if (this.isClient) {
            this.random.nextBytes(this.maskKey);
            this.sinkBuffer.U(this.maskKey);
            if (j10 > 0) {
                i iVar = this.sinkBuffer;
                long j11 = iVar.f5853b;
                iVar.write(this.buffer, j10);
                this.sinkBuffer.O(this.maskCursor);
                this.maskCursor.r(j11);
                WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        } else {
            this.sinkBuffer.write(this.buffer, j10);
        }
        this.sink.emit();
    }

    public void writePing(l lVar) throws IOException {
        writeControlFrame(9, lVar);
    }

    public void writePong(l lVar) throws IOException {
        writeControlFrame(10, lVar);
    }
}
