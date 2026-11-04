package yf;

import java.io.EOFException;
import java.io.IOException;
import java.io.PushbackInputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes.dex */
public final class d extends c {

    /* renamed from: c, reason: collision with root package name */
    public Inflater f19163c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f19164d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f19165e;

    /* renamed from: f, reason: collision with root package name */
    public int f19166f;

    public d(b bVar) {
        super(bVar);
        this.f19165e = new byte[1];
        this.f19163c = new Inflater(true);
        this.f19164d = new byte[4096];
    }

    @Override // yf.c
    public final int A(PushbackInputStream pushbackInputStream) throws IOException {
        int remaining = this.f19163c.getRemaining();
        if (remaining > 0) {
            pushbackInputStream.unread(this.f19161a.f19159c, this.f19166f - remaining, remaining);
        }
        return remaining;
    }

    @Override // yf.c, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Inflater inflater = this.f19163c;
        if (inflater != null) {
            inflater.end();
        }
        super.close();
    }

    @Override // yf.c
    public final void r(PushbackInputStream pushbackInputStream, int i10) {
        Inflater inflater = this.f19163c;
        if (inflater != null) {
            inflater.end();
            this.f19163c = null;
        }
        super.r(pushbackInputStream, i10);
    }

    @Override // yf.c, java.io.InputStream
    public final int read() {
        byte[] bArr = this.f19165e;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // yf.c, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
    
        return -1;
     */
    @Override // yf.c, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int read(byte[] bArr, int i10, int i11) throws DataFormatException, IOException {
        while (true) {
            try {
                int iInflate = this.f19163c.inflate(bArr, i10, i11);
                if (iInflate != 0) {
                    return iInflate;
                }
                if (this.f19163c.finished() || this.f19163c.needsDictionary()) {
                    break;
                }
                if (this.f19163c.needsInput()) {
                    byte[] bArr2 = this.f19164d;
                    int i12 = this.f19161a.read(bArr2, 0, bArr2.length);
                    this.f19166f = i12;
                    if (i12 != -1) {
                        this.f19163c.setInput(bArr2, 0, i12);
                    } else {
                        throw new EOFException("Unexpected end of input stream");
                    }
                }
            } catch (DataFormatException e7) {
                throw new IOException(e7);
            }
        }
    }
}
