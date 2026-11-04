package yh;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class l extends p {

    /* renamed from: a, reason: collision with root package name */
    public q f19248a;

    /* renamed from: b, reason: collision with root package name */
    public final bi.b f19249b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f19250c = new byte[4096];

    /* renamed from: d, reason: collision with root package name */
    public IOException f19251d = null;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f19252e = new byte[1];

    public l(q qVar, k kVar) {
        this.f19248a = qVar;
        this.f19249b = new bi.b(kVar.f19247a);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        q qVar = this.f19248a;
        if (qVar != null) {
            try {
                qVar.close();
            } catch (IOException e7) {
                if (this.f19251d == null) {
                    this.f19251d = e7;
                }
            }
            this.f19248a = null;
        }
        IOException iOException = this.f19251d;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        IOException iOException = this.f19251d;
        if (iOException != null) {
            throw iOException;
        }
        try {
            this.f19248a.flush();
        } catch (IOException e7) {
            this.f19251d = e7;
            throw e7;
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        byte[] bArr = this.f19252e;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 >= 0 && i11 >= 0 && (i12 = i10 + i11) >= 0 && i12 <= bArr.length) {
            IOException iOException = this.f19251d;
            if (iOException != null) {
                throw iOException;
            }
            while (true) {
                bi.b bVar = this.f19249b;
                byte[] bArr2 = this.f19250c;
                if (i11 > 4096) {
                    try {
                        bVar.c(i10, 4096, bArr, bArr2);
                        this.f19248a.write(bArr2);
                        i10 += 4096;
                        i11 -= 4096;
                    } catch (IOException e7) {
                        this.f19251d = e7;
                        throw e7;
                    }
                } else {
                    bVar.c(i10, i11, bArr, bArr2);
                    this.f19248a.write(bArr2, 0, i11);
                    return;
                }
                this.f19251d = e7;
                throw e7;
            }
        }
        throw new IndexOutOfBoundsException();
    }
}
