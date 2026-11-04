package a6;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class a extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f417a;

    /* renamed from: b, reason: collision with root package name */
    public int f418b = -1;

    public a(ByteBuffer byteBuffer) {
        this.f417a = byteBuffer;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f417a.remaining();
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i10) {
        this.f418b = this.f417a.position();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        ByteBuffer byteBuffer = this.f417a;
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        int i10 = this.f418b;
        if (i10 == -1) {
            throw new IOException("Cannot reset to unset mark position");
        }
        this.f417a.position(i10);
    }

    @Override // java.io.InputStream
    public final long skip(long j10) {
        ByteBuffer byteBuffer = this.f417a;
        if (!byteBuffer.hasRemaining()) {
            return -1L;
        }
        long jMin = Math.min(j10, byteBuffer.remaining());
        byteBuffer.position((int) (byteBuffer.position() + jMin));
        return jMin;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) {
        ByteBuffer byteBuffer = this.f417a;
        if (!byteBuffer.hasRemaining()) {
            return -1;
        }
        int iMin = Math.min(i11, byteBuffer.remaining());
        byteBuffer.get(bArr, i10, iMin);
        return iMin;
    }
}
