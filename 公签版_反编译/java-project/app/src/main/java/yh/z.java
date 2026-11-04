package yh;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class z extends p {

    /* renamed from: a, reason: collision with root package name */
    public q f19320a;

    /* renamed from: b, reason: collision with root package name */
    public final gi.b f19321b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f19322c = new byte[4096];

    /* renamed from: d, reason: collision with root package name */
    public int f19323d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f19324e = 0;

    /* renamed from: f, reason: collision with root package name */
    public IOException f19325f = null;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19326g = false;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f19327h = new byte[1];

    public z(q qVar, gi.b bVar) {
        this.f19320a = qVar;
        this.f19321b = bVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        q qVar = this.f19320a;
        if (qVar != null) {
            if (!this.f19326g) {
                try {
                    IOException iOException = this.f19325f;
                    if (iOException != null) {
                        throw iOException;
                    }
                    try {
                        qVar.write(this.f19322c, this.f19323d, this.f19324e);
                        this.f19326g = true;
                    } catch (IOException e7) {
                        this.f19325f = e7;
                        throw e7;
                    }
                } catch (IOException unused) {
                }
            }
            try {
                this.f19320a.close();
            } catch (IOException e10) {
                if (this.f19325f == null) {
                    this.f19325f = e10;
                }
            }
            this.f19320a = null;
        }
        IOException iOException2 = this.f19325f;
        if (iOException2 != null) {
            throw iOException2;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws c0 {
        throw new c0("Flushing is not supported");
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        byte[] bArr = this.f19327h;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 >= 0 && i11 >= 0 && (i12 = i10 + i11) >= 0 && i12 <= bArr.length) {
            IOException iOException = this.f19325f;
            if (iOException == null) {
                if (this.f19326g) {
                    throw new f0("Stream finished or closed");
                }
                while (i11 > 0) {
                    int iMin = Math.min(i11, 4096 - (this.f19323d + this.f19324e));
                    int i13 = this.f19323d + this.f19324e;
                    byte[] bArr2 = this.f19322c;
                    System.arraycopy(bArr, i10, bArr2, i13, iMin);
                    i10 += iMin;
                    i11 -= iMin;
                    int i14 = this.f19324e + iMin;
                    this.f19324e = i14;
                    int iG = this.f19321b.g(this.f19323d, i14, bArr2);
                    this.f19324e -= iG;
                    try {
                        this.f19320a.write(bArr2, this.f19323d, iG);
                        int i15 = this.f19323d + iG;
                        this.f19323d = i15;
                        int i16 = this.f19324e;
                        if (i15 + i16 == 4096) {
                            System.arraycopy(bArr2, i15, bArr2, 0, i16);
                            this.f19323d = 0;
                        }
                    } catch (IOException e7) {
                        this.f19325f = e7;
                        throw e7;
                    }
                }
                return;
            }
            throw iOException;
        }
        throw new IndexOutOfBoundsException();
    }
}
