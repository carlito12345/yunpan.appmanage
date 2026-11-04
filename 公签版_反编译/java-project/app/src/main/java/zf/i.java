package zf;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class i extends OutputStream {

    /* renamed from: b, reason: collision with root package name */
    public final OutputStream f19557b;

    /* renamed from: a, reason: collision with root package name */
    public long f19556a = 0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19558c = false;

    public i(OutputStream outputStream) {
        this.f19557b = outputStream;
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f19558c) {
            this.f19557b.write(bArr, i10, i11);
            this.f19556a += i11;
            return;
        }
        throw new IllegalStateException("ZipEntryOutputStream is closed");
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
