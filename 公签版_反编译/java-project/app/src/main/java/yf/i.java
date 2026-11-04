package yf;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* loaded from: classes.dex */
public final class i extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final PushbackInputStream f19175a;

    /* renamed from: b, reason: collision with root package name */
    public long f19176b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f19177c = new byte[1];

    /* renamed from: d, reason: collision with root package name */
    public final long f19178d;

    public i(PushbackInputStream pushbackInputStream, long j10) {
        this.f19175a = pushbackInputStream;
        this.f19178d = j10;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f19175a.close();
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f19177c;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        long j10 = this.f19178d;
        if (j10 != -1) {
            long j11 = this.f19176b;
            if (j11 >= j10) {
                return -1;
            }
            long j12 = j10 - j11;
            if (i11 > j12) {
                i11 = (int) j12;
            }
        }
        int i12 = this.f19175a.read(bArr, i10, i11);
        if (i12 > 0) {
            this.f19176b += i12;
        }
        return i12;
    }
}
