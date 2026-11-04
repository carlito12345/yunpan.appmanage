package v7;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class i extends FilterOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f16653a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(OutputStream outputStream) {
        super(outputStream);
        outputStream.getClass();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ((FilterOutputStream) this).out.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i10, i11);
        this.f16653a += i11;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i10) throws IOException {
        ((FilterOutputStream) this).out.write(i10);
        this.f16653a++;
    }
}
