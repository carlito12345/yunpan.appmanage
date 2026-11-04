package gh;

import java.io.OutputStream;

/* loaded from: classes.dex */
public final class c extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final a f6192a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6193b;

    public c(a aVar) {
        this.f6192a = aVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a aVar = this.f6192a;
        OutputStream outputStream = aVar.f3255e;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.close();
        } finally {
            aVar.f3255e = null;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        this.f6192a.g();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) {
        synchronized (this.f6192a) {
            while (true) {
                int i12 = i11 - 1;
                if (i11 > 0) {
                    int i13 = i10 + 1;
                    try {
                        write(bArr[i10]);
                        i10 = i13;
                        i11 = i12;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                throw th2;
            }
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i10) {
        synchronized (this.f6192a) {
            int i11 = i10 & 255;
            try {
                if (!this.f6192a.p(0)) {
                    if (this.f6193b) {
                        this.f6192a.q(10);
                        if (i11 == 10) {
                            this.f6193b = false;
                            return;
                        }
                    }
                    if (i11 == 10) {
                        if (!this.f6193b) {
                            this.f6192a.q(13);
                        }
                        this.f6192a.q(i11);
                        this.f6193b = false;
                    } else if (i11 == 13) {
                        this.f6192a.q(13);
                        this.f6193b = true;
                    } else if (i11 != 255) {
                        this.f6192a.q(i11);
                        this.f6193b = false;
                    } else {
                        this.f6192a.q(255);
                        this.f6192a.q(255);
                        this.f6193b = false;
                    }
                } else if (i11 == 255) {
                    this.f6192a.q(i11);
                    this.f6192a.q(255);
                } else {
                    this.f6192a.q(i11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
