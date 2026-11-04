package yf;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* loaded from: classes.dex */
public abstract class b extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final i f19157a;

    /* renamed from: b, reason: collision with root package name */
    public final tf.c f19158b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f19159c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f19160d = new byte[1];

    public b(i iVar, ag.g gVar, char[] cArr, boolean z) {
        this.f19157a = iVar;
        this.f19158b = A(gVar, cArr, z);
        if (d0.f.a(eg.c.f(gVar), 2)) {
            this.f19159c = new byte[4096];
        }
    }

    public abstract tf.c A(ag.g gVar, char[] cArr, boolean z);

    public final void J(byte[] bArr) throws IOException {
        PushbackInputStream pushbackInputStream = this.f19157a.f19175a;
        int i10 = pushbackInputStream.read(bArr);
        if (i10 == -1) {
            throw new IOException("Unexpected EOF reached when trying to read stream");
        }
        if (i10 != bArr.length) {
            int length = bArr.length - i10;
            int i11 = 0;
            for (int i12 = 0; i10 < bArr.length && i11 != -1 && i12 < 15; i12++) {
                i11 += pushbackInputStream.read(bArr, i10, length);
                if (i11 > 0) {
                    i10 += i11;
                    length -= i11;
                }
            }
            if (i10 != bArr.length) {
                throw new IOException("Cannot read fully into byte buffer");
            }
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f19157a.close();
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = this.f19160d;
        if (read(bArr) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int iK = eg.c.k(this.f19157a, bArr, i10, i11);
        if (iK > 0) {
            byte[] bArr2 = this.f19159c;
            if (bArr2 != null) {
                System.arraycopy(bArr, 0, bArr2, 0, iK);
            }
            this.f19158b.m(i10, iK, bArr);
        }
        return iK;
    }

    public void r(PushbackInputStream pushbackInputStream, int i10) {
    }
}
