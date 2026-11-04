package okhttp3.internal.ws;

import fg.g;
import fg.i;
import fg.k;
import fg.l;
import g.b;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
final class WebSocketReader {
    boolean closed;
    final FrameCallback frameCallback;
    long frameLength;
    final boolean isClient;
    boolean isControlFrame;
    boolean isFinalFrame;
    private final g maskCursor;
    private final byte[] maskKey;
    int opcode;
    final k source;
    private final i controlFrameBuffer = new i();
    private final i messageFrameBuffer = new i();

    public interface FrameCallback {
        void onReadClose(int i10, String str);

        void onReadMessage(l lVar);

        void onReadMessage(String str);

        void onReadPing(l lVar);

        void onReadPong(l lVar);
    }

    public WebSocketReader(boolean z, k kVar, FrameCallback frameCallback) {
        if (kVar == null) {
            throw new NullPointerException("source == null");
        }
        if (frameCallback == null) {
            throw new NullPointerException("frameCallback == null");
        }
        this.isClient = z;
        this.source = kVar;
        this.frameCallback = frameCallback;
        this.maskKey = z ? null : new byte[4];
        this.maskCursor = z ? null : new g();
    }

    private void readControlFrame() throws ProtocolException, EOFException {
        short s8;
        String strQ;
        long j10 = this.frameLength;
        if (j10 > 0) {
            this.source.D(this.controlFrameBuffer, j10);
            if (!this.isClient) {
                this.controlFrameBuffer.O(this.maskCursor);
                this.maskCursor.r(0L);
                WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        }
        switch (this.opcode) {
            case 8:
                i iVar = this.controlFrameBuffer;
                long j11 = iVar.f5853b;
                if (j11 == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (j11 != 0) {
                    s8 = iVar.readShort();
                    strQ = this.controlFrameBuffer.Q();
                    String strCloseCodeExceptionMessage = WebSocketProtocol.closeCodeExceptionMessage(s8);
                    if (strCloseCodeExceptionMessage != null) {
                        throw new ProtocolException(strCloseCodeExceptionMessage);
                    }
                } else {
                    s8 = 1005;
                    strQ = "";
                }
                this.frameCallback.onReadClose(s8, strQ);
                this.closed = true;
                return;
            case 9:
                FrameCallback frameCallback = this.frameCallback;
                i iVar2 = this.controlFrameBuffer;
                frameCallback.onReadPing(iVar2.c(iVar2.f5853b));
                return;
            case 10:
                FrameCallback frameCallback2 = this.frameCallback;
                i iVar3 = this.controlFrameBuffer;
                frameCallback2.onReadPong(iVar3.c(iVar3.f5853b));
                return;
            default:
                throw new ProtocolException(b.e(this.opcode, new StringBuilder("Unknown control opcode: ")));
        }
    }

    private void readHeader() throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        long jTimeoutNanos = this.source.timeout().timeoutNanos();
        this.source.timeout().clearTimeout();
        try {
            byte b10 = this.source.readByte();
            this.source.timeout().timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            this.opcode = b10 & 15;
            boolean z = (b10 & 128) != 0;
            this.isFinalFrame = z;
            boolean z4 = (b10 & 8) != 0;
            this.isControlFrame = z4;
            if (z4 && !z) {
                throw new ProtocolException("Control frames must be final.");
            }
            boolean z10 = (b10 & 64) != 0;
            boolean z11 = (b10 & HebrewProber.SPACE) != 0;
            boolean z12 = (b10 & 16) != 0;
            if (z10 || z11 || z12) {
                throw new ProtocolException("Reserved flags are unsupported.");
            }
            byte b11 = this.source.readByte();
            boolean z13 = (b11 & 128) != 0;
            if (z13 == this.isClient) {
                throw new ProtocolException(this.isClient ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
            }
            long j10 = b11 & Byte.MAX_VALUE;
            this.frameLength = j10;
            if (j10 == 126) {
                this.frameLength = this.source.readShort() & 65535;
            } else if (j10 == 127) {
                long j11 = this.source.readLong();
                this.frameLength = j11;
                if (j11 < 0) {
                    throw new ProtocolException("Frame length 0x" + Long.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
                }
            }
            if (this.isControlFrame && this.frameLength > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            }
            if (z13) {
                this.source.readFully(this.maskKey);
            }
        } catch (Throwable th2) {
            this.source.timeout().timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            throw th2;
        }
    }

    private void readMessage() throws IOException {
        while (!this.closed) {
            long j10 = this.frameLength;
            if (j10 > 0) {
                this.source.D(this.messageFrameBuffer, j10);
                if (!this.isClient) {
                    this.messageFrameBuffer.O(this.maskCursor);
                    this.maskCursor.r(this.messageFrameBuffer.f5853b - this.frameLength);
                    WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                    this.maskCursor.close();
                }
            }
            if (this.isFinalFrame) {
                return;
            }
            readUntilNonControlFrame();
            if (this.opcode != 0) {
                throw new ProtocolException(b.e(this.opcode, new StringBuilder("Expected continuation opcode. Got: ")));
            }
        }
        throw new IOException("closed");
    }

    private void readMessageFrame() throws IOException {
        int i10 = this.opcode;
        if (i10 != 1 && i10 != 2) {
            throw new ProtocolException(b.e(i10, new StringBuilder("Unknown opcode: ")));
        }
        readMessage();
        if (i10 == 1) {
            this.frameCallback.onReadMessage(this.messageFrameBuffer.Q());
            return;
        }
        FrameCallback frameCallback = this.frameCallback;
        i iVar = this.messageFrameBuffer;
        frameCallback.onReadMessage(iVar.c(iVar.f5853b));
    }

    private void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (!this.isControlFrame) {
                return;
            } else {
                readControlFrame();
            }
        }
    }

    public void processNextFrame() throws IOException {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }
}
