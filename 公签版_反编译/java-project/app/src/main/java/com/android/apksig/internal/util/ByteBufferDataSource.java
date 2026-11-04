package com.android.apksig.internal.util;

import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSource;
import java.nio.ByteBuffer;
import ta.q;

/* loaded from: classes.dex */
public class ByteBufferDataSource implements DataSource {
    private final ByteBuffer mBuffer;
    private final int mSize;

    public ByteBufferDataSource(ByteBuffer byteBuffer) {
        this(byteBuffer, true);
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

    @Override // com.android.apksig.util.DataSource
    public void copyTo(long j10, int i10, ByteBuffer byteBuffer) {
        byteBuffer.put(getByteBuffer(j10, i10));
    }

    @Override // com.android.apksig.util.DataSource
    public void feed(long j10, long j11, DataSink dataSink) {
        if (j11 >= 0 && j11 <= this.mSize) {
            dataSink.consume(getByteBuffer(j10, (int) j11));
        } else {
            StringBuilder sbW = android.support.v4.media.session.a.w(j11, "size: ", ", source size: ");
            sbW.append(this.mSize);
            throw new IndexOutOfBoundsException(sbW.toString());
        }
    }

    @Override // com.android.apksig.util.DataSource
    public ByteBuffer getByteBuffer(long j10, int i10) {
        ByteBuffer byteBufferSlice;
        checkChunkValid(j10, i10);
        int i11 = (int) j10;
        int i12 = i10 + i11;
        synchronized (this.mBuffer) {
            this.mBuffer.position(0);
            this.mBuffer.limit(i12);
            this.mBuffer.position(i11);
            byteBufferSlice = this.mBuffer.slice();
        }
        return byteBufferSlice;
    }

    @Override // com.android.apksig.util.DataSource
    public long size() {
        return this.mSize;
    }

    private ByteBufferDataSource(ByteBuffer byteBuffer, boolean z) {
        this.mBuffer = z ? byteBuffer.slice() : byteBuffer;
        this.mSize = byteBuffer.remaining();
    }

    @Override // com.android.apksig.util.DataSource
    public ByteBufferDataSource slice(long j10, long j11) {
        if (j10 == 0 && j11 == this.mSize) {
            return this;
        }
        if (j11 >= 0 && j11 <= this.mSize) {
            return new ByteBufferDataSource(getByteBuffer(j10, (int) j11), false);
        }
        StringBuilder sbW = android.support.v4.media.session.a.w(j11, "size: ", ", source size: ");
        sbW.append(this.mSize);
        throw new IndexOutOfBoundsException(sbW.toString());
    }
}
