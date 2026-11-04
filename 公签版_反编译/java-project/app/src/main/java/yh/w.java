package yh;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class w extends p {

    /* renamed from: a, reason: collision with root package name */
    public OutputStream f19298a;

    /* renamed from: b, reason: collision with root package name */
    public final b f19299b;

    /* renamed from: c, reason: collision with root package name */
    public di.a f19300c;

    /* renamed from: d, reason: collision with root package name */
    public final fi.f f19301d;

    /* renamed from: e, reason: collision with root package name */
    public ei.h f19302e;

    /* renamed from: f, reason: collision with root package name */
    public final long f19303f;

    /* renamed from: g, reason: collision with root package name */
    public long f19304g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f19305h;

    /* renamed from: i, reason: collision with root package name */
    public IOException f19306i;

    /* renamed from: j, reason: collision with root package name */
    public final byte[] f19307j;

    public w(OutputStream outputStream, t tVar) {
        ei.h iVar;
        b bVar = b.f19214a;
        this.f19304g = 0L;
        this.f19305h = false;
        this.f19306i = null;
        this.f19307j = new byte[1];
        outputStream.getClass();
        this.f19303f = -1L;
        this.f19299b = bVar;
        this.f19298a = outputStream;
        fi.f fVar = new fi.f(outputStream);
        this.f19301d = fVar;
        int i10 = tVar.f19266a;
        int i11 = tVar.f19267b;
        int i12 = tVar.f19268c;
        int i13 = tVar.f19269d;
        int i14 = tVar.f19270e;
        int i15 = tVar.f19271f;
        int i16 = tVar.f19272g;
        int i17 = tVar.f19273h;
        if (i14 == 1) {
            iVar = new ei.i(fVar, i11, i12, i13, i10, 0, i15, i16, i17, bVar);
        } else {
            if (i14 != 2) {
                throw new IllegalArgumentException();
            }
            iVar = new ei.j(fVar, i11, i12, i13, i10, 0, i15, i16, i17, bVar);
        }
        this.f19302e = iVar;
        this.f19300c = iVar.f5027n;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f19298a != null) {
            try {
                r();
            } catch (IOException unused) {
            }
            try {
                this.f19298a.close();
            } catch (IOException e7) {
                if (this.f19306i == null) {
                    this.f19306i = e7;
                }
            }
            this.f19298a = null;
        }
        IOException iOException = this.f19306i;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws f0 {
        throw new f0("LZMAOutputStream does not support flushing");
    }

    public final void r() throws IOException {
        if (this.f19305h) {
            return;
        }
        IOException iOException = this.f19306i;
        if (iOException != null) {
            throw iOException;
        }
        long j10 = this.f19303f;
        if (j10 != -1) {
            try {
                if (j10 != this.f19304g) {
                    throw new f0("Expected uncompressed size (" + j10 + ") doesn't equal the number of bytes written to the stream (" + this.f19304g + ")");
                }
            } catch (IOException e7) {
                this.f19306i = e7;
                throw e7;
            }
        }
        di.a aVar = this.f19300c;
        aVar.f4680h = aVar.f4682j - 1;
        aVar.f4681i = true;
        aVar.h();
        ei.h hVar = this.f19302e;
        if (hVar.f5027n.f4679g != -1 || hVar.c()) {
            while (hVar.d()) {
            }
        }
        fi.f fVar = this.f19301d;
        for (int i10 = 0; i10 < 5; i10++) {
            fVar.t0();
        }
        fVar.getClass();
        this.f19305h = true;
        this.f19302e.f5027n.i(this.f19299b);
        this.f19302e = null;
        this.f19300c = null;
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        byte[] bArr = this.f19307j;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 >= 0 && i11 >= 0 && (i12 = i10 + i11) >= 0 && i12 <= bArr.length) {
            IOException iOException = this.f19306i;
            if (iOException == null) {
                if (!this.f19305h) {
                    long j10 = this.f19303f;
                    if (j10 != -1 && j10 - this.f19304g < i11) {
                        throw new f0("Expected uncompressed input size (" + j10 + " bytes) was exceeded");
                    }
                    this.f19304g += i11;
                    while (i11 > 0) {
                        try {
                            int iA = this.f19300c.a(i10, i11, bArr);
                            i10 += iA;
                            i11 -= iA;
                            ei.h hVar = this.f19302e;
                            if (hVar.f5027n.f4679g != -1 || hVar.c()) {
                                while (hVar.d()) {
                                }
                            }
                        } catch (IOException e7) {
                            this.f19306i = e7;
                            throw e7;
                        }
                    }
                    return;
                }
                throw new f0("Stream finished or closed");
            }
            throw iOException;
        }
        throw new IndexOutOfBoundsException();
    }
}
