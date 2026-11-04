package io.github.muntashirakon.adb;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
class ByteArrayNoThrowOutputStream extends ByteArrayOutputStream {
    public ByteArrayNoThrowOutputStream() {
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public ByteArrayNoThrowOutputStream(int i10) {
        super(i10);
    }
}
