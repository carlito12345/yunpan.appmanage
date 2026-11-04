package io.github.muntashirakon.adb;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class AdbStream implements Closeable {
    private final AdbConnection mAdbConnection;
    private final int mLocalId;
    private volatile boolean mPendingClose;
    private final ByteBuffer mReadBuffer;
    private volatile int mRemoteId;
    private final Queue<byte[]> mReadQueue = new ConcurrentLinkedQueue();
    private final AtomicBoolean mWriteReady = new AtomicBoolean(false);
    private volatile boolean mIsClosed = false;

    public AdbStream(AdbConnection adbConnection, int i10) {
        this.mAdbConnection = adbConnection;
        this.mLocalId = i10;
        this.mReadBuffer = (ByteBuffer) ByteBuffer.allocate(adbConnection.getMaxData()).flip();
    }

    private int readBuffer(byte[] bArr, int i10, int i11) {
        int i12 = 0;
        for (int i13 = i10; i13 < i10 + i11; i13++) {
            if (this.mReadBuffer.hasRemaining()) {
                bArr[i13] = this.mReadBuffer.get();
                i12++;
            }
        }
        return i12;
    }

    public void addPayload(byte[] bArr) {
        synchronized (this.mReadQueue) {
            this.mReadQueue.add(bArr);
            this.mReadQueue.notifyAll();
        }
    }

    public int available() {
        synchronized (this) {
            try {
                if (this.mIsClosed) {
                    throw new IOException("Stream closed.");
                }
                if (this.mReadBuffer.hasRemaining()) {
                    return this.mReadBuffer.remaining();
                }
                byte[] bArrPeek = this.mReadQueue.peek();
                return bArrPeek == null ? 0 : bArrPeek.length;
            } finally {
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            try {
                if (this.mIsClosed) {
                    return;
                }
                notifyClose(false);
                this.mAdbConnection.sendPacket(AdbProtocol.generateClose(this.mLocalId, this.mRemoteId));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void flush() {
        if (this.mIsClosed) {
            throw new IOException("Stream closed");
        }
        this.mAdbConnection.flushPacket();
    }

    public boolean isClosed() {
        return this.mIsClosed;
    }

    public void notifyClose(boolean z) {
        if (!z || this.mReadQueue.isEmpty()) {
            this.mIsClosed = true;
        } else {
            this.mPendingClose = true;
        }
        synchronized (this) {
            notifyAll();
        }
        synchronized (this.mReadQueue) {
            this.mReadQueue.notifyAll();
        }
    }

    public AdbInputStream openInputStream() {
        return new AdbInputStream(this);
    }

    public AdbOutputStream openOutputStream() {
        return new AdbOutputStream(this);
    }

    public int read(byte[] bArr, int i10, int i11) {
        byte[] bArrPoll;
        if (this.mReadBuffer.hasRemaining()) {
            return readBuffer(bArr, i10, i11);
        }
        synchronized (this.mReadQueue) {
            while (true) {
                bArrPoll = this.mReadQueue.poll();
                if (bArrPoll != null || this.mIsClosed) {
                    break;
                }
                try {
                    this.mReadQueue.wait();
                } catch (InterruptedException e7) {
                    throw ((IOException) new IOException().initCause(e7));
                }
            }
            if (bArrPoll != null) {
                this.mReadBuffer.clear();
                this.mReadBuffer.put(bArrPoll);
                this.mReadBuffer.flip();
                if (this.mReadBuffer.hasRemaining()) {
                    return readBuffer(bArr, i10, i11);
                }
            }
            if (this.mIsClosed) {
                throw new IOException("Stream closed.");
            }
            if (this.mPendingClose && this.mReadQueue.isEmpty()) {
                this.mIsClosed = true;
            }
            return -1;
        }
    }

    public void readyForWrite() {
        this.mWriteReady.set(true);
    }

    public void sendReady() {
        this.mAdbConnection.sendPacket(AdbProtocol.generateReady(this.mLocalId, this.mRemoteId));
    }

    public void updateRemoteId(int i10) {
        this.mRemoteId = i10;
    }

    public void write(byte[] bArr, int i10, int i11) {
        synchronized (this) {
            while (!this.mIsClosed && !this.mWriteReady.compareAndSet(true, false)) {
                try {
                    wait();
                } catch (InterruptedException e7) {
                    throw ((IOException) new IOException().initCause(e7));
                }
            }
            if (this.mIsClosed) {
                throw new IOException("Stream closed");
            }
        }
        try {
            int maxData = this.mAdbConnection.getMaxData();
            while (i11 != 0) {
                if (i11 <= maxData) {
                    this.mAdbConnection.sendPacket(AdbProtocol.generateWrite(this.mLocalId, this.mRemoteId, bArr, i10, i11));
                    i10 += i11;
                    i11 = 0;
                } else {
                    this.mAdbConnection.sendPacket(AdbProtocol.generateWrite(this.mLocalId, this.mRemoteId, bArr, i10, maxData));
                    i10 += maxData;
                    i11 -= maxData;
                }
            }
        } catch (AdbPairingRequiredException | InterruptedException e10) {
            throw ((IOException) new IOException().initCause(e10));
        }
    }
}
