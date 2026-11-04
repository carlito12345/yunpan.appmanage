package yg;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class b extends FilterOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f19201a;

    public b(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        OutputStream outputStream = ((FilterOutputStream) this).out;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e7) {
                throw e7;
            } catch (Exception e10) {
                throw new IOException(e10);
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        ((FilterOutputStream) this).out.flush();
    }

    public final synchronized void r(int i10) {
        this.f19201a += i10;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        byte[] bArr2 = sg.b.f14563a;
        r(bArr == null ? 0 : bArr.length);
        ((FilterOutputStream) this).out.write(bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        r(i11);
        ((FilterOutputStream) this).out.write(bArr, i10, i11);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i10) throws IOException {
        r(1);
        ((FilterOutputStream) this).out.write(i10);
    }
}
