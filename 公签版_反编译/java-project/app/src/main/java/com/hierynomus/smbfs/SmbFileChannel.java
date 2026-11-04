package com.hierynomus.smbfs;

import com.hierynomus.smbj.share.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.concurrent.locks.ReentrantLock;
import ta.q;

/* loaded from: classes.dex */
class SmbFileChannel extends FileChannel {
    private static final int TRANSFER_BUFFER_SIZE = 65536;
    private final File file;
    private final ReentrantLock lock = new ReentrantLock();
    private long position;

    public SmbFileChannel(File file, long j10) {
        this.file = file;
        this.position = j10;
    }

    private static void checkIndices(int i10, int i11, int i12) {
        if (i11 < 0 || i12 < 0 || i11 + i12 > i10) {
            StringBuilder sbO = q.o(i11, i12, "offset=", ", length=", ", arrayLength=");
            sbO.append(i10);
            throw new IndexOutOfBoundsException(sbO.toString());
        }
    }

    @Override // java.nio.channels.FileChannel
    public void force(boolean z) {
    }

    @Override // java.nio.channels.spi.AbstractInterruptibleChannel
    public void implCloseChannel() {
        this.file.close();
    }

    @Override // java.nio.channels.FileChannel
    public FileLock lock(long j10, long j11, boolean z) {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.channels.FileChannel
    public MappedByteBuffer map(FileChannel.MapMode mapMode, long j10, long j11) {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel, java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        this.lock.lock();
        try {
            long j10 = this.file.read(byteBuffer, this.position);
            if (j10 >= 0) {
                this.position += j10;
            }
            int i10 = (int) j10;
            return i10;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public long size() {
        return this.file.getLength();
    }

    @Override // java.nio.channels.FileChannel
    public long transferFrom(ReadableByteChannel readableByteChannel, long j10, long j11) throws IOException {
        if (j10 < 0 || j11 < 0) {
            StringBuilder sbW = android.support.v4.media.session.a.w(j10, "position=", ", count=");
            sbW.append(j11);
            throw new IllegalArgumentException(sbW.toString());
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) Math.min(65536L, Math.max(j11, 1L)));
        long j12 = 0;
        while (j11 > 0) {
            byteBufferAllocate.clear();
            byteBufferAllocate.limit((int) Math.min(byteBufferAllocate.capacity(), j11));
            int i10 = readableByteChannel.read(byteBufferAllocate);
            if (i10 < 0) {
                break;
            }
            byteBufferAllocate.flip();
            while (byteBufferAllocate.hasRemaining()) {
                long jWrite = write(byteBufferAllocate, j10);
                j10 += jWrite;
                j12 += jWrite;
            }
            j11 -= i10;
        }
        return j12;
    }

    @Override // java.nio.channels.FileChannel
    public long transferTo(long j10, long j11, WritableByteChannel writableByteChannel) throws IOException {
        if (j10 < 0 || j11 < 0) {
            StringBuilder sbW = android.support.v4.media.session.a.w(j10, "position=", ", count=");
            sbW.append(j11);
            throw new IllegalArgumentException(sbW.toString());
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) Math.min(65536L, Math.max(j11, 1L)));
        long j12 = 0;
        while (j11 > 0) {
            byteBufferAllocate.clear();
            byteBufferAllocate.limit((int) Math.min(byteBufferAllocate.capacity(), j11));
            int i10 = read(byteBufferAllocate, j10);
            if (i10 < 0) {
                break;
            }
            byteBufferAllocate.flip();
            while (byteBufferAllocate.hasRemaining()) {
                writableByteChannel.write(byteBufferAllocate);
            }
            long j13 = i10;
            j10 += j13;
            j11 -= j13;
            j12 += j13;
        }
        return j12;
    }

    @Override // java.nio.channels.FileChannel
    public FileLock tryLock(long j10, long j11, boolean z) {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel, java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        this.lock.lock();
        try {
            long jWrite = this.file.write(byteBuffer, this.position);
            if (jWrite >= 0) {
                this.position += jWrite;
            }
            int i10 = (int) jWrite;
            return i10;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public long position() {
        this.lock.lock();
        try {
            return this.position;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public FileChannel truncate(long j10) {
        this.file.setLength(j10);
        return this;
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public FileChannel position(long j10) {
        this.lock.lock();
        try {
            this.position = j10;
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr, int i10, int i11) {
        checkIndices(byteBufferArr.length, i10, i11);
        long j10 = 0;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            ByteBuffer byteBuffer = byteBufferArr[i12];
            while (byteBuffer.hasRemaining()) {
                int i13 = read(byteBuffer);
                if (i13 < 0) {
                    if (j10 == 0) {
                        return -1L;
                    }
                    return j10;
                }
                j10 += i13;
                if (i13 == 0) {
                    break;
                }
            }
        }
        return j10;
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.GatheringByteChannel
    public long write(ByteBuffer[] byteBufferArr, int i10, int i11) {
        checkIndices(byteBufferArr.length, i10, i11);
        long j10 = 0;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            ByteBuffer byteBuffer = byteBufferArr[i12];
            while (byteBuffer.hasRemaining()) {
                int iWrite = write(byteBuffer);
                j10 += iWrite;
                if (iWrite == 0) {
                    break;
                }
            }
        }
        return j10;
    }

    @Override // java.nio.channels.FileChannel
    public int read(ByteBuffer byteBuffer, long j10) {
        if (j10 >= 0) {
            return (int) this.file.read(byteBuffer, j10);
        }
        throw new IllegalArgumentException(q.j(j10, "position="));
    }

    @Override // java.nio.channels.FileChannel
    public int write(ByteBuffer byteBuffer, long j10) {
        if (j10 >= 0) {
            return (int) this.file.write(byteBuffer, j10);
        }
        throw new IllegalArgumentException(q.j(j10, "position="));
    }
}
