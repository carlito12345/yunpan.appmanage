package jg;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;

/* loaded from: classes.dex */
public final class f extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f9900a;

    /* renamed from: b, reason: collision with root package name */
    public final SeekableByteChannel f9901b;

    /* renamed from: c, reason: collision with root package name */
    public long f9902c;

    public f(SeekableByteChannel seekableByteChannel, long j10) {
        this.f9901b = seekableByteChannel;
        this.f9902c = j10;
        this.f9900a = ByteBuffer.allocate((j10 >= 8192 || j10 <= 0) ? 8192 : (int) j10);
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        long j10 = this.f9902c;
        if (j10 <= 0) {
            return -1;
        }
        this.f9902c = j10 - 1;
        ByteBuffer byteBuffer = this.f9900a;
        byteBuffer.rewind().limit(1);
        int i10 = this.f9901b.read(byteBuffer);
        byteBuffer.flip();
        return i10 < 0 ? i10 : byteBuffer.get() & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f9902c;
        if (j10 <= 0) {
            return -1;
        }
        if (i11 > j10) {
            i11 = (int) j10;
        }
        ByteBuffer byteBufferAllocate = this.f9900a;
        if (i11 <= byteBufferAllocate.capacity()) {
            byteBufferAllocate.rewind().limit(i11);
            i12 = this.f9901b.read(byteBufferAllocate);
            byteBufferAllocate.flip();
        } else {
            byteBufferAllocate = ByteBuffer.allocate(i11);
            i12 = this.f9901b.read(byteBufferAllocate);
            byteBufferAllocate.flip();
        }
        if (i12 >= 0) {
            byteBufferAllocate.get(bArr, i10, i12);
            this.f9902c -= i12;
        }
        return i12;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
