package okhttp3.internal.http2;

import fg.i;
import fg.j;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;

/* loaded from: classes.dex */
final class Http2Writer implements Closeable {
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final i hpackBuffer;
    final Hpack.Writer hpackWriter;
    private int maxFrameSize;
    private final j sink;

    public Http2Writer(j jVar, boolean z) {
        this.sink = jVar;
        this.client = z;
        i iVar = new i();
        this.hpackBuffer = iVar;
        this.hpackWriter = new Hpack.Writer(iVar);
        this.maxFrameSize = 16384;
    }

    private void writeContinuationFrames(int i10, long j10) {
        while (j10 > 0) {
            int iMin = (int) Math.min(this.maxFrameSize, j10);
            long j11 = iMin;
            j10 -= j11;
            frameHeader(i10, iMin, (byte) 9, j10 == 0 ? (byte) 4 : (byte) 0);
            this.sink.write(this.hpackBuffer, j11);
        }
    }

    private static void writeMedium(j jVar, int i10) {
        jVar.writeByte((i10 >>> 16) & 255);
        jVar.writeByte((i10 >>> 8) & 255);
        jVar.writeByte(i10 & 255);
    }

    public synchronized void applyAndAckSettings(Settings settings) {
        try {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.maxFrameSize = settings.getMaxFrameSize(this.maxFrameSize);
            if (settings.getHeaderTableSize() != -1) {
                this.hpackWriter.setHeaderTableSizeSetting(settings.getHeaderTableSize());
            }
            frameHeader(0, 0, (byte) 4, (byte) 1);
            this.sink.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.closed = true;
        this.sink.close();
    }

    public synchronized void connectionPreface() {
        try {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (this.client) {
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    logger2.fine(Util.format(">> CONNECTION %s", Http2.CONNECTION_PREFACE.h()));
                }
                this.sink.write(Http2.CONNECTION_PREFACE.p());
                this.sink.flush();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void data(boolean z, int i10, i iVar, int i11) {
        if (this.closed) {
            throw new IOException("closed");
        }
        dataFrame(i10, z ? (byte) 1 : (byte) 0, iVar, i11);
    }

    public void dataFrame(int i10, byte b10, i iVar, int i11) {
        frameHeader(i10, i11, (byte) 0, b10);
        if (i11 > 0) {
            this.sink.write(iVar, i11);
        }
    }

    public synchronized void flush() {
        if (this.closed) {
            throw new IOException("closed");
        }
        this.sink.flush();
    }

    public void frameHeader(int i10, int i11, byte b10, byte b11) {
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Http2.frameLog(false, i10, i11, b10, b11));
        }
        int i12 = this.maxFrameSize;
        if (i11 > i12) {
            throw Http2.illegalArgument("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i12), Integer.valueOf(i11));
        }
        if ((Integer.MIN_VALUE & i10) != 0) {
            throw Http2.illegalArgument("reserved bit set: %s", Integer.valueOf(i10));
        }
        writeMedium(this.sink, i11);
        this.sink.writeByte(b10 & 255);
        this.sink.writeByte(b11 & 255);
        this.sink.writeInt(i10 & Integer.MAX_VALUE);
    }

    public synchronized void goAway(int i10, ErrorCode errorCode, byte[] bArr) {
        try {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (errorCode.httpCode == -1) {
                throw Http2.illegalArgument("errorCode.httpCode == -1", new Object[0]);
            }
            frameHeader(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.sink.writeInt(i10);
            this.sink.writeInt(errorCode.httpCode);
            if (bArr.length > 0) {
                this.sink.write(bArr);
            }
            this.sink.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void headers(int i10, List<Header> list) {
        if (this.closed) {
            throw new IOException("closed");
        }
        headers(false, i10, list);
    }

    public int maxDataLength() {
        return this.maxFrameSize;
    }

    public synchronized void ping(boolean z, int i10, int i11) {
        if (this.closed) {
            throw new IOException("closed");
        }
        frameHeader(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
        this.sink.writeInt(i10);
        this.sink.writeInt(i11);
        this.sink.flush();
    }

    public synchronized void pushPromise(int i10, int i11, List<Header> list) {
        if (this.closed) {
            throw new IOException("closed");
        }
        this.hpackWriter.writeHeaders(list);
        long j10 = this.hpackBuffer.f5853b;
        int iMin = (int) Math.min(this.maxFrameSize - 4, j10);
        long j11 = iMin;
        frameHeader(i10, iMin + 4, (byte) 5, j10 == j11 ? (byte) 4 : (byte) 0);
        this.sink.writeInt(i11 & Integer.MAX_VALUE);
        this.sink.write(this.hpackBuffer, j11);
        if (j10 > j11) {
            writeContinuationFrames(i10, j10 - j11);
        }
    }

    public synchronized void rstStream(int i10, ErrorCode errorCode) {
        if (this.closed) {
            throw new IOException("closed");
        }
        if (errorCode.httpCode == -1) {
            throw new IllegalArgumentException();
        }
        frameHeader(i10, 4, (byte) 3, (byte) 0);
        this.sink.writeInt(errorCode.httpCode);
        this.sink.flush();
    }

    public synchronized void settings(Settings settings) {
        try {
            if (this.closed) {
                throw new IOException("closed");
            }
            int i10 = 0;
            frameHeader(0, settings.size() * 6, (byte) 4, (byte) 0);
            while (i10 < 10) {
                if (settings.isSet(i10)) {
                    this.sink.writeShort(i10 == 4 ? 3 : i10 == 7 ? 4 : i10);
                    this.sink.writeInt(settings.get(i10));
                }
                i10++;
            }
            this.sink.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void synReply(boolean z, int i10, List<Header> list) {
        if (this.closed) {
            throw new IOException("closed");
        }
        headers(z, i10, list);
    }

    public synchronized void synStream(boolean z, int i10, int i11, List<Header> list) {
        if (this.closed) {
            throw new IOException("closed");
        }
        headers(z, i10, list);
    }

    public synchronized void windowUpdate(int i10, long j10) {
        if (this.closed) {
            throw new IOException("closed");
        }
        if (j10 == 0 || j10 > 2147483647L) {
            throw Http2.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j10));
        }
        frameHeader(i10, 4, (byte) 8, (byte) 0);
        this.sink.writeInt((int) j10);
        this.sink.flush();
    }

    public void headers(boolean z, int i10, List<Header> list) throws IOException {
        if (!this.closed) {
            this.hpackWriter.writeHeaders(list);
            long j10 = this.hpackBuffer.f5853b;
            int iMin = (int) Math.min(this.maxFrameSize, j10);
            long j11 = iMin;
            byte b10 = j10 == j11 ? (byte) 4 : (byte) 0;
            if (z) {
                b10 = (byte) (b10 | 1);
            }
            frameHeader(i10, iMin, (byte) 1, b10);
            this.sink.write(this.hpackBuffer, j11);
            if (j10 > j11) {
                writeContinuationFrames(i10, j10 - j11);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }
}
