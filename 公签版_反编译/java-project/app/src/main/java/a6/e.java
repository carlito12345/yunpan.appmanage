package a6;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class e extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public final long f424a;

    /* renamed from: b, reason: collision with root package name */
    public int f425b;

    public e(InputStream inputStream, long j10) {
        super(inputStream);
        this.f424a = j10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return (int) Math.max(this.f424a - this.f425b, ((FilterInputStream) this).in.available());
    }

    public final void r(int i10) throws IOException {
        if (i10 >= 0) {
            this.f425b += i10;
            return;
        }
        long j10 = this.f425b;
        long j11 = this.f424a;
        if (j11 - j10 <= 0) {
            return;
        }
        StringBuilder sbW = android.support.v4.media.session.a.w(j11, "Failed to read all expected data, expected: ", ", but read: ");
        sbW.append(this.f425b);
        throw new IOException(sbW.toString());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        int i10;
        i10 = super.read();
        r(i10 >= 0 ? 1 : -1);
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i10, int i11) {
        int i12;
        i12 = super.read(bArr, i10, i11);
        r(i12);
        return i12;
    }
}
