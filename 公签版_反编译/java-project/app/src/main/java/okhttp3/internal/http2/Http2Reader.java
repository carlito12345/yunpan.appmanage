package okhttp3.internal.http2;

import fg.c0;
import fg.i;
import fg.k;
import fg.l;
import fg.z;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import org.bouncycastle.crypto.hpke.HPKE;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
final class Http2Reader implements Closeable {
    static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private final ContinuationSource continuation;
    final Hpack.Reader hpackReader;
    private final k source;

    public static final class ContinuationSource implements z {
        byte flags;
        int left;
        int length;
        short padding;
        private final k source;
        int streamId;

        public ContinuationSource(k kVar) {
            this.source = kVar;
        }

        private void readContinuationHeader() throws IOException {
            int i10 = this.streamId;
            int medium = Http2Reader.readMedium(this.source);
            this.left = medium;
            this.length = medium;
            byte b10 = (byte) (this.source.readByte() & 255);
            this.flags = (byte) (this.source.readByte() & 255);
            Logger logger = Http2Reader.logger;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(Http2.frameLog(true, this.streamId, this.length, b10, this.flags));
            }
            int i11 = this.source.readInt() & Integer.MAX_VALUE;
            this.streamId = i11;
            if (b10 != 9) {
                throw Http2.ioException("%s != TYPE_CONTINUATION", Byte.valueOf(b10));
            }
            if (i11 != i10) {
                throw Http2.ioException("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // fg.z
        public long read(i iVar, long j10) throws IOException {
            while (true) {
                int i10 = this.left;
                if (i10 != 0) {
                    long j11 = this.source.read(iVar, Math.min(j10, i10));
                    if (j11 == -1) {
                        return -1L;
                    }
                    this.left = (int) (this.left - j11);
                    return j11;
                }
                this.source.skip(this.padding);
                this.padding = (short) 0;
                if ((this.flags & 4) != 0) {
                    return -1L;
                }
                readContinuationHeader();
            }
        }

        @Override // fg.z
        public c0 timeout() {
            return this.source.timeout();
        }
    }

    public interface Handler {
        void ackSettings();

        void alternateService(int i10, String str, l lVar, String str2, int i11, long j10);

        void data(boolean z, int i10, k kVar, int i11);

        void goAway(int i10, ErrorCode errorCode, l lVar);

        void headers(boolean z, int i10, int i11, List<Header> list);

        void ping(boolean z, int i10, int i11);

        void priority(int i10, int i11, int i12, boolean z);

        void pushPromise(int i10, int i11, List<Header> list);

        void rstStream(int i10, ErrorCode errorCode);

        void settings(boolean z, Settings settings);

        void windowUpdate(int i10, long j10);
    }

    public Http2Reader(k kVar, boolean z) {
        this.source = kVar;
        this.client = z;
        ContinuationSource continuationSource = new ContinuationSource(kVar);
        this.continuation = continuationSource;
        this.hpackReader = new Hpack.Reader(4096, continuationSource);
    }

    public static int lengthWithoutPadding(int i10, byte b10, short s8) throws IOException {
        if ((b10 & 8) != 0) {
            i10--;
        }
        if (s8 <= i10) {
            return (short) (i10 - s8);
        }
        throw Http2.ioException("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s8), Integer.valueOf(i10));
    }

    private void readData(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw Http2.ioException("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z = (b10 & 1) != 0;
        if ((b10 & HebrewProber.SPACE) != 0) {
            throw Http2.ioException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short s8 = (b10 & 8) != 0 ? (short) (this.source.readByte() & 255) : (short) 0;
        handler.data(z, i11, this.source, lengthWithoutPadding(i10, b10, s8));
        this.source.skip(s8);
    }

    private void readGoAway(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i10 < 8) {
            throw Http2.ioException("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            throw Http2.ioException("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int i12 = this.source.readInt();
        int i13 = this.source.readInt();
        int i14 = i10 - 8;
        ErrorCode errorCodeFromHttp2 = ErrorCode.fromHttp2(i13);
        if (errorCodeFromHttp2 == null) {
            throw Http2.ioException("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i13));
        }
        l lVarC = l.f5854d;
        if (i14 > 0) {
            lVarC = this.source.c(i14);
        }
        handler.goAway(i12, errorCodeFromHttp2, lVarC);
    }

    private List<Header> readHeaderBlock(int i10, short s8, byte b10, int i11) throws IOException {
        ContinuationSource continuationSource = this.continuation;
        continuationSource.left = i10;
        continuationSource.length = i10;
        continuationSource.padding = s8;
        continuationSource.flags = b10;
        continuationSource.streamId = i11;
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    private void readHeaders(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw Http2.ioException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z = (b10 & 1) != 0;
        short s8 = (b10 & 8) != 0 ? (short) (this.source.readByte() & 255) : (short) 0;
        if ((b10 & HebrewProber.SPACE) != 0) {
            readPriority(handler, i11);
            i10 -= 5;
        }
        handler.headers(z, i11, -1, readHeaderBlock(lengthWithoutPadding(i10, b10, s8), s8, b10, i11));
    }

    public static int readMedium(k kVar) {
        return (kVar.readByte() & 255) | ((kVar.readByte() & 255) << 16) | ((kVar.readByte() & 255) << 8);
    }

    private void readPing(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i10 != 8) {
            throw Http2.ioException("TYPE_PING length != 8: %s", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            throw Http2.ioException("TYPE_PING streamId != 0", new Object[0]);
        }
        handler.ping((b10 & 1) != 0, this.source.readInt(), this.source.readInt());
    }

    private void readPriority(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i10 != 5) {
            throw Http2.ioException("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            throw Http2.ioException("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        readPriority(handler, i11);
    }

    private void readPushPromise(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw Http2.ioException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short s8 = (b10 & 8) != 0 ? (short) (this.source.readByte() & 255) : (short) 0;
        handler.pushPromise(i11, this.source.readInt() & Integer.MAX_VALUE, readHeaderBlock(lengthWithoutPadding(i10 - 4, b10, s8), s8, b10, i11));
    }

    private void readRstStream(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw Http2.ioException("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            throw Http2.ioException("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int i12 = this.source.readInt();
        ErrorCode errorCodeFromHttp2 = ErrorCode.fromHttp2(i12);
        if (errorCodeFromHttp2 == null) {
            throw Http2.ioException("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i12));
        }
        handler.rstStream(i11, errorCodeFromHttp2);
    }

    private void readSettings(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i11 != 0) {
            throw Http2.ioException("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b10 & 1) != 0) {
            if (i10 != 0) {
                throw Http2.ioException("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            handler.ackSettings();
            return;
        }
        if (i10 % 6 != 0) {
            throw Http2.ioException("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i10));
        }
        Settings settings = new Settings();
        for (int i12 = 0; i12 < i10; i12 += 6) {
            int i13 = this.source.readShort() & HPKE.aead_EXPORT_ONLY;
            int i14 = this.source.readInt();
            if (i13 == 2) {
                if (i14 != 0 && i14 != 1) {
                    throw Http2.ioException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                }
            } else if (i13 == 3) {
                i13 = 4;
            } else if (i13 != 4) {
                if (i13 == 5 && (i14 < 16384 || i14 > 16777215)) {
                    throw Http2.ioException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i14));
                }
            } else {
                if (i14 < 0) {
                    throw Http2.ioException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                }
                i13 = 7;
            }
            settings.set(i13, i14);
        }
        handler.settings(false, settings);
    }

    private void readWindowUpdate(Handler handler, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw Http2.ioException("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i10));
        }
        long j10 = this.source.readInt() & 2147483647L;
        if (j10 == 0) {
            throw Http2.ioException("windowSizeIncrement was 0", Long.valueOf(j10));
        }
        handler.windowUpdate(i11, j10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.source.close();
    }

    public boolean nextFrame(boolean z, Handler handler) throws IOException {
        try {
            this.source.F(9L);
            int medium = readMedium(this.source);
            if (medium < 0 || medium > 16384) {
                throw Http2.ioException("FRAME_SIZE_ERROR: %s", Integer.valueOf(medium));
            }
            byte b10 = (byte) (this.source.readByte() & 255);
            if (z && b10 != 4) {
                throw Http2.ioException("Expected a SETTINGS frame but was %s", Byte.valueOf(b10));
            }
            byte b11 = (byte) (this.source.readByte() & 255);
            int i10 = this.source.readInt() & Integer.MAX_VALUE;
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                logger2.fine(Http2.frameLog(true, i10, medium, b10, b11));
            }
            switch (b10) {
                case 0:
                    readData(handler, medium, b11, i10);
                    return true;
                case 1:
                    readHeaders(handler, medium, b11, i10);
                    return true;
                case 2:
                    readPriority(handler, medium, b11, i10);
                    return true;
                case 3:
                    readRstStream(handler, medium, b11, i10);
                    return true;
                case 4:
                    readSettings(handler, medium, b11, i10);
                    return true;
                case 5:
                    readPushPromise(handler, medium, b11, i10);
                    return true;
                case 6:
                    readPing(handler, medium, b11, i10);
                    return true;
                case 7:
                    readGoAway(handler, medium, b11, i10);
                    return true;
                case 8:
                    readWindowUpdate(handler, medium, b11, i10);
                    return true;
                default:
                    this.source.skip(medium);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    public void readConnectionPreface(Handler handler) throws IOException {
        if (this.client) {
            if (!nextFrame(true, handler)) {
                throw Http2.ioException("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        k kVar = this.source;
        l lVar = Http2.CONNECTION_PREFACE;
        l lVarC = kVar.c(lVar.g());
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Util.format("<< CONNECTION %s", lVarC.h()));
        }
        if (!lVar.equals(lVarC)) {
            throw Http2.ioException("Expected a connection header but was %s", lVarC.q());
        }
    }

    private void readPriority(Handler handler, int i10) {
        int i11 = this.source.readInt();
        handler.priority(i10, i11 & Integer.MAX_VALUE, (this.source.readByte() & 255) + 1, (Integer.MIN_VALUE & i11) != 0);
    }
}
