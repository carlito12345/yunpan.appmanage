package fh;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes.dex */
public final class d extends FilterOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final Socket f5893a;

    public d(Socket socket, OutputStream outputStream) {
        super(outputStream);
        this.f5893a = socket;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f5893a.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i10, i11);
    }
}
