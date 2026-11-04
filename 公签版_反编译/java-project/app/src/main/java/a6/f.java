package a6;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import o5.w;

/* loaded from: classes.dex */
public final class f extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayDeque f426c;

    /* renamed from: a, reason: collision with root package name */
    public w f427a;

    /* renamed from: b, reason: collision with root package name */
    public IOException f428b;

    static {
        char[] cArr = q.f446a;
        f426c = new ArrayDeque(0);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f427a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f427a.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i10) {
        this.f427a.mark(i10);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        this.f427a.getClass();
        return true;
    }

    public final void r() {
        this.f428b = null;
        this.f427a = null;
        ArrayDeque arrayDeque = f426c;
        synchronized (arrayDeque) {
            arrayDeque.offer(this);
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            return this.f427a.read();
        } catch (IOException e7) {
            this.f428b = e7;
            throw e7;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.f427a.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j10) throws IOException {
        try {
            return this.f427a.skip(j10);
        } catch (IOException e7) {
            this.f428b = e7;
            throw e7;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            return this.f427a.read(bArr);
        } catch (IOException e7) {
            this.f428b = e7;
            throw e7;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        try {
            return this.f427a.read(bArr, i10, i11);
        } catch (IOException e7) {
            this.f428b = e7;
            throw e7;
        }
    }
}
