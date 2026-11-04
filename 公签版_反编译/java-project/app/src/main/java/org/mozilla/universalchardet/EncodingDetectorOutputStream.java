package org.mozilla.universalchardet;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class EncodingDetectorOutputStream extends OutputStream {
    private final UniversalDetector detector = new UniversalDetector(null);
    private OutputStream out;

    public EncodingDetectorOutputStream(OutputStream outputStream) {
        this.out = outputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
        this.detector.dataEnd();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    public String getDetectedCharset() {
        return this.detector.getDetectedCharset();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.out.write(bArr, i10, i11);
        if (this.detector.isDone()) {
            return;
        }
        this.detector.handleData(bArr, i10, i11);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10});
    }
}
