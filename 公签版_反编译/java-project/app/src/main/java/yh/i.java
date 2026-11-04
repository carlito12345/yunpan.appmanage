package yh;

import java.io.FilterInputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class i extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f19242a;

    public i(xg.b bVar) {
        super(bVar);
        this.f19242a = 0L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i10 = ((FilterInputStream) this).in.read();
        if (i10 != -1) {
            long j10 = this.f19242a;
            if (j10 >= 0) {
                this.f19242a = j10 + 1;
            }
        }
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = ((FilterInputStream) this).in.read(bArr, i10, i11);
        if (i12 > 0) {
            long j10 = this.f19242a;
            if (j10 >= 0) {
                this.f19242a = j10 + i12;
            }
        }
        return i12;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
