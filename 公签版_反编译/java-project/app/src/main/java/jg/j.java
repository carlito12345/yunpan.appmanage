package jg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;

/* loaded from: classes.dex */
public final class j extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9908a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f9909b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f9910c;

    public j(z zVar) {
        this.f9908a = 1;
        this.f9910c = zVar;
        this.f9909b = ByteBuffer.allocate(8192);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.f9908a) {
            case 0:
                Deflater deflater = (Deflater) this.f9910c;
                try {
                    ((DeflaterOutputStream) this.f9909b).close();
                    return;
                } finally {
                    deflater.end();
                }
            default:
                return;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        switch (this.f9908a) {
            case 1:
                break;
            default:
                super.flush();
                break;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        switch (this.f9908a) {
            case 0:
                ((DeflaterOutputStream) this.f9909b).write(bArr);
                break;
            default:
                write(bArr, 0, bArr.length);
                break;
        }
    }

    public j(DeflaterOutputStream deflaterOutputStream, Deflater deflater) {
        this.f9908a = 0;
        this.f9909b = deflaterOutputStream;
        this.f9910c = deflater;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        switch (this.f9908a) {
            case 0:
                ((DeflaterOutputStream) this.f9909b).write(bArr, i10, i11);
                break;
            default:
                z zVar = (z) this.f9910c;
                if (i11 > 8192) {
                    zVar.f9984a.write(ByteBuffer.wrap(bArr, i10, i11));
                } else {
                    ByteBuffer byteBuffer = (ByteBuffer) this.f9909b;
                    byteBuffer.clear();
                    byteBuffer.put(bArr, i10, i11).flip();
                    zVar.f9984a.write(byteBuffer);
                }
                zVar.f9988e.update(bArr, i10, i11);
                zVar.f9989f += i11;
                break;
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        switch (this.f9908a) {
            case 0:
                ((DeflaterOutputStream) this.f9909b).write(i10);
                break;
            default:
                ByteBuffer byteBuffer = (ByteBuffer) this.f9909b;
                byteBuffer.clear();
                byteBuffer.put((byte) i10).flip();
                z zVar = (z) this.f9910c;
                zVar.f9984a.write(byteBuffer);
                zVar.f9988e.update(i10);
                zVar.f9989f++;
                break;
        }
    }

    private final void A() {
    }

    private final void r() {
    }
}
