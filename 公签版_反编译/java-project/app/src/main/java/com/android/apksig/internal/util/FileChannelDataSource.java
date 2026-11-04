package com.android.apksig.internal.util;

import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSource;
import da.b;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import ta.q;

/* loaded from: classes.dex */
public class FileChannelDataSource implements DataSource {
    private static final int MAX_READ_CHUNK_SIZE = 1048576;
    private final FileChannel mChannel;
    private final long mOffset;
    private final long mSize;

    public FileChannelDataSource(FileChannel fileChannel) {
        this.mChannel = fileChannel;
        this.mOffset = 0L;
        this.mSize = -1L;
    }

    private static void checkChunkValid(long j10, long j11, long j12) {
        if (j10 < 0) {
            throw new IndexOutOfBoundsException(q.j(j10, "offset: "));
        }
        if (j11 < 0) {
            throw new IndexOutOfBoundsException(q.j(j11, "size: "));
        }
        if (j10 > j12) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.t(android.support.v4.media.session.a.w(j10, "offset (", ") > source size ("), j12, ")"));
        }
        long j13 = j10 + j11;
        if (j13 < j10) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.t(android.support.v4.media.session.a.w(j10, "offset (", ") + size ("), j11, ") overflow"));
        }
        if (j13 <= j12) {
            return;
        }
        StringBuilder sbW = android.support.v4.media.session.a.w(j10, "offset (", ") + size (");
        sbW.append(j11);
        sbW.append(") > source size (");
        sbW.append(j12);
        sbW.append(")");
        throw new IndexOutOfBoundsException(sbW.toString());
    }

    @Override // com.android.apksig.util.DataSource
    public void copyTo(long j10, int i10, ByteBuffer byteBuffer) {
        int i11;
        checkChunkValid(j10, i10, size());
        if (i10 == 0) {
            return;
        }
        if (i10 > byteBuffer.remaining()) {
            throw new BufferOverflowException();
        }
        long j11 = this.mOffset + j10;
        int iLimit = byteBuffer.limit();
        try {
            byteBuffer.limit(byteBuffer.position() + i10);
            while (i10 > 0) {
                synchronized (this.mChannel) {
                    this.mChannel.position(j11);
                    i11 = this.mChannel.read(byteBuffer);
                }
                j11 += i11;
                i10 -= i11;
            }
        } finally {
            byteBuffer.limit(iLimit);
        }
    }

    @Override // com.android.apksig.util.DataSource
    public void feed(long j10, long j11, DataSink dataSink) {
        checkChunkValid(j10, j11, size());
        if (j11 == 0) {
            return;
        }
        long j12 = this.mOffset + j10;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((int) Math.min(j11, 1048576L));
        while (j11 > 0) {
            int iMin = (int) Math.min(j11, byteBufferAllocateDirect.capacity());
            byteBufferAllocateDirect.limit(iMin);
            synchronized (this.mChannel) {
                try {
                    this.mChannel.position(j12);
                    int i10 = iMin;
                    while (i10 > 0) {
                        int i11 = this.mChannel.read(byteBufferAllocateDirect);
                        if (i11 < 0) {
                            throw new IOException("Unexpected EOF encountered");
                        }
                        i10 -= i11;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            byteBufferAllocateDirect.flip();
            dataSink.consume(byteBufferAllocateDirect);
            byteBufferAllocateDirect.clear();
            long j13 = iMin;
            j12 += j13;
            j11 -= j13;
        }
    }

    @Override // com.android.apksig.util.DataSource
    public ByteBuffer getByteBuffer(long j10, int i10) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException(b.a(i10, "size: "));
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
        copyTo(j10, i10, byteBufferAllocate);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    @Override // com.android.apksig.util.DataSource
    public long size() {
        long j10 = this.mSize;
        if (j10 != -1) {
            return j10;
        }
        try {
            return this.mChannel.size();
        } catch (IOException unused) {
            return 0L;
        }
    }

    @Override // com.android.apksig.util.DataSource
    public FileChannelDataSource slice(long j10, long j11) {
        long size = size();
        checkChunkValid(j10, j11, size);
        return (j10 == 0 && j11 == size) ? this : new FileChannelDataSource(this.mChannel, this.mOffset + j10, j11);
    }

    public FileChannelDataSource(FileChannel fileChannel, long j10, long j11) {
        if (j10 < 0) {
            throw new IndexOutOfBoundsException(q.j(j11, "offset: "));
        }
        if (j11 >= 0) {
            this.mChannel = fileChannel;
            this.mOffset = j10;
            this.mSize = j11;
            return;
        }
        throw new IndexOutOfBoundsException(q.j(j11, "size: "));
    }
}
