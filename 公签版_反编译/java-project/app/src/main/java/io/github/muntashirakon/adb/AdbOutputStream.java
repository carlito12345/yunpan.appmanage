package io.github.muntashirakon.adb;

import java.io.OutputStream;

/* loaded from: classes.dex */
public class AdbOutputStream extends OutputStream {
    private final AdbStream mAdbStream;

    public AdbOutputStream(AdbStream adbStream) {
        this.mAdbStream = adbStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.mAdbStream.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        write(new byte[]{(byte) (i10 & 255)});
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        this.mAdbStream.write(bArr, i10, i11);
    }
}
