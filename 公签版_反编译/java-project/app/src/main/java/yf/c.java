package yf;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* loaded from: classes.dex */
public abstract class c extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final b f19161a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f19162b = new byte[1];

    public c(b bVar) {
        this.f19161a = bVar;
    }

    public int A(PushbackInputStream pushbackInputStream) {
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f19161a.close();
    }

    public void r(PushbackInputStream pushbackInputStream, int i10) {
        this.f19161a.r(pushbackInputStream, i10);
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = this.f19162b;
        if (read(bArr) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        return this.f19161a.read(bArr, i10, i11);
    }
}
