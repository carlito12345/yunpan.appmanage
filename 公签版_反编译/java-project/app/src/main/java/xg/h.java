package xg;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import ua.t6;

/* loaded from: classes.dex */
public abstract class h extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f18480a;

    /* renamed from: b, reason: collision with root package name */
    public final wg.b f18481b;

    /* renamed from: c, reason: collision with root package name */
    public final wg.c f18482c;

    public h(InputStream inputStream) {
        super(inputStream);
        this.f18481b = new t6(10);
        this.f18482c = wg.c.f17888a;
    }

    public final void A(IOException iOException) {
        this.f18481b.accept(iOException);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        if (((FilterInputStream) this).in == null || this.f18480a) {
            return 0;
        }
        try {
            return ((FilterInputStream) this).in.available();
        } catch (IOException e7) {
            A(e7);
            return 0;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e7) {
                A(e7);
            } catch (Exception e10) {
                A(new IOException(e10));
            }
        }
        this.f18480a = true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        if (((FilterInputStream) this).in != null) {
            ((FilterInputStream) this).in.mark(i10);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return ((FilterInputStream) this).in != null && ((FilterInputStream) this).in.markSupported();
    }

    public void r(int i10) {
        this.f18482c.getClass();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        try {
            int i10 = ((FilterInputStream) this).in.read();
            r(i10 != -1 ? 1 : -1);
            return i10;
        } catch (IOException e7) {
            A(e7);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        try {
            ((FilterInputStream) this).in.reset();
        } catch (IOException e7) {
            A(e7);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) {
        try {
            return ((FilterInputStream) this).in.skip(j10);
        } catch (IOException e7) {
            A(e7);
            return 0L;
        }
    }

    public h(InputStream inputStream, g gVar) {
        super(inputStream);
        this.f18481b = new t6(10);
        gVar.getClass();
        this.f18482c = wg.c.f17888a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            byte[] bArr2 = sg.b.f14563a;
            int i10 = ((FilterInputStream) this).in.read(bArr);
            r(i10);
            return i10;
        } catch (IOException e7) {
            A(e7);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        try {
            int i12 = ((FilterInputStream) this).in.read(bArr, i10, i11);
            r(i12);
            return i12;
        } catch (IOException e7) {
            A(e7);
            return -1;
        }
    }
}
