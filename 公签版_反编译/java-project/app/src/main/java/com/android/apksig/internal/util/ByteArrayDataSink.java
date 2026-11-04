package com.android.apksig.internal.util;

import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSource;
import com.android.apksig.util.ReadableDataSink;
import da.b;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import ta.q;

/* loaded from: classes.dex */
public class ByteArrayDataSink implements ReadableDataSink {
    private static final int MAX_READ_CHUNK_SIZE = 65536;
    private byte[] mArray;
    private int mSize;

    public class SliceDataSource implements DataSource {
        private final int mSliceOffset;
        private final int mSliceSize;

        private void checkChunkValid(long j10, long j11) {
            if (j10 < 0) {
                throw new IndexOutOfBoundsException(q.j(j10, "offset: "));
            }
            if (j11 < 0) {
                throw new IndexOutOfBoundsException(q.j(j11, "size: "));
            }
            int i10 = this.mSliceSize;
            if (j10 > i10) {
                throw new IndexOutOfBoundsException(android.support.v4.media.session.a.s(android.support.v4.media.session.a.w(j10, "offset (", ") > source size ("), this.mSliceSize, ")"));
            }
            long j12 = j10 + j11;
            if (j12 < j10) {
                throw new IndexOutOfBoundsException(android.support.v4.media.session.a.t(android.support.v4.media.session.a.w(j10, "offset (", ") + size ("), j11, ") overflow"));
            }
            if (j12 <= i10) {
                return;
            }
            StringBuilder sbW = android.support.v4.media.session.a.w(j10, "offset (", ") + size (");
            sbW.append(j11);
            sbW.append(") > source size (");
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.s(sbW, this.mSliceSize, ")"));
        }

        @Override // com.android.apksig.util.DataSource
        public void copyTo(long j10, int i10, ByteBuffer byteBuffer) {
            checkChunkValid(j10, i10);
            byteBuffer.put(ByteArrayDataSink.this.mArray, (int) (this.mSliceOffset + j10), i10);
        }

        @Override // com.android.apksig.util.DataSource
        public void feed(long j10, long j11, DataSink dataSink) {
            checkChunkValid(j10, j11);
            dataSink.consume(ByteArrayDataSink.this.mArray, (int) (this.mSliceOffset + j10), (int) j11);
        }

        @Override // com.android.apksig.util.DataSource
        public ByteBuffer getByteBuffer(long j10, int i10) {
            checkChunkValid(j10, i10);
            return ByteBuffer.wrap(ByteArrayDataSink.this.mArray, (int) (this.mSliceOffset + j10), i10).slice();
        }

        @Override // com.android.apksig.util.DataSource
        public long size() {
            return this.mSliceSize;
        }

        @Override // com.android.apksig.util.DataSource
        public DataSource slice(long j10, long j11) {
            checkChunkValid(j10, j11);
            return ByteArrayDataSink.this.new SliceDataSource((int) (this.mSliceOffset + j10), (int) j11);
        }

        private SliceDataSource(int i10, int i11) {
            this.mSliceOffset = i10;
            this.mSliceSize = i11;
        }
    }

    public ByteArrayDataSink() {
        this(65536);
    }

    private void checkChunkValid(long j10, long j11) {
        if (j10 < 0) {
            throw new IndexOutOfBoundsException(q.j(j10, "offset: "));
        }
        if (j11 < 0) {
            throw new IndexOutOfBoundsException(q.j(j11, "size: "));
        }
        int i10 = this.mSize;
        if (j10 > i10) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.s(android.support.v4.media.session.a.w(j10, "offset (", ") > source size ("), this.mSize, ")"));
        }
        long j12 = j10 + j11;
        if (j12 < j10) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.t(android.support.v4.media.session.a.w(j10, "offset (", ") + size ("), j11, ") overflow"));
        }
        if (j12 <= i10) {
            return;
        }
        StringBuilder sbW = android.support.v4.media.session.a.w(j10, "offset (", ") + size (");
        sbW.append(j11);
        sbW.append(") > source size (");
        throw new IndexOutOfBoundsException(android.support.v4.media.session.a.s(sbW, this.mSize, ")"));
    }

    private void ensureAvailable(int i10) throws IOException {
        if (i10 <= 0) {
            return;
        }
        long j10 = this.mSize + i10;
        byte[] bArr = this.mArray;
        if (j10 <= bArr.length) {
            return;
        }
        if (j10 <= 2147483647L) {
            this.mArray = Arrays.copyOf(this.mArray, (int) Math.max(j10, (int) Math.min(bArr.length * 2, 2147483647L)));
        } else {
            throw new IOException("Required capacity too large: " + j10 + ", max: 2147483647");
        }
    }

    @Override // com.android.apksig.util.DataSink
    public void consume(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException(b.a(i10, "offset: "));
        }
        if (i10 > bArr.length) {
            StringBuilder sbN = g.b.n("offset: ", i10, ", buf.length: ");
            sbN.append(bArr.length);
            throw new IndexOutOfBoundsException(sbN.toString());
        }
        if (i11 == 0) {
            return;
        }
        ensureAvailable(i11);
        System.arraycopy(bArr, i10, this.mArray, this.mSize, i11);
        this.mSize += i11;
    }

    @Override // com.android.apksig.util.DataSource
    public void copyTo(long j10, int i10, ByteBuffer byteBuffer) {
        checkChunkValid(j10, i10);
        byteBuffer.put(this.mArray, (int) j10, i10);
    }

    @Override // com.android.apksig.util.DataSource
    public void feed(long j10, long j11, DataSink dataSink) {
        checkChunkValid(j10, j11);
        dataSink.consume(this.mArray, (int) j10, (int) j11);
    }

    @Override // com.android.apksig.util.DataSource
    public ByteBuffer getByteBuffer(long j10, int i10) {
        checkChunkValid(j10, i10);
        return ByteBuffer.wrap(this.mArray, (int) j10, i10).slice();
    }

    @Override // com.android.apksig.util.DataSource
    public long size() {
        return this.mSize;
    }

    @Override // com.android.apksig.util.DataSource
    public DataSource slice(long j10, long j11) {
        checkChunkValid(j10, j11);
        return new SliceDataSource((int) j10, (int) j11);
    }

    public ByteArrayDataSink(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException(b.a(i10, "initial capacity: "));
        }
        this.mArray = new byte[i10];
    }

    @Override // com.android.apksig.util.DataSink
    public void consume(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.hasRemaining()) {
            if (byteBuffer.hasArray()) {
                consume(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.remaining());
                byteBuffer.position(byteBuffer.limit());
                return;
            }
            ensureAvailable(byteBuffer.remaining());
            int iMin = Math.min(byteBuffer.remaining(), 65536);
            byte[] bArr = new byte[iMin];
            while (byteBuffer.hasRemaining()) {
                int iMin2 = Math.min(byteBuffer.remaining(), iMin);
                byteBuffer.get(bArr, 0, iMin2);
                System.arraycopy(bArr, 0, this.mArray, this.mSize, iMin2);
                this.mSize += iMin2;
            }
        }
    }
}
