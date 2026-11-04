package org.mozilla.universalchardet;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class EncodingDetectorInputStream extends InputStream {
    private final UniversalDetector detector = new UniversalDetector(null);
    private InputStream in;

    public EncodingDetectorInputStream(InputStream inputStream) {
        this.in = inputStream;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    public String getDetectedCharset() {
        return this.detector.getDetectedCharset();
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.in.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.in.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) >= 0) {
            return bArr[0];
        }
        return -1;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.in.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        if (this.detector.isDone()) {
            return this.in.skip(j10);
        }
        int i10 = 0;
        long j11 = -1;
        for (long j12 = 0; j12 < j10 && i10 >= 0; j12++) {
            i10 = this.in.read();
            j11++;
        }
        return j11;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.in.read(bArr, i10, i11);
        if (!this.detector.isDone() && i12 > 0) {
            this.detector.handleData(bArr, i10, i12);
        }
        if (i12 == -1) {
            this.detector.dataEnd();
        }
        return i12;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}
