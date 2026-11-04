package net.sf.sevenzipjbinding.impl;

import java.io.IOException;
import java.io.InputStream;
import net.sf.sevenzipjbinding.ISequentialInStream;
import net.sf.sevenzipjbinding.SevenZipException;

@Deprecated
/* loaded from: classes.dex */
public class SequentialInStreamImpl implements ISequentialInStream {
    private InputStream inputStream;

    public SequentialInStreamImpl(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public InputStream getInputStream() {
        return this.inputStream;
    }

    @Override // net.sf.sevenzipjbinding.ISequentialInStream
    public int read(byte[] bArr) throws IOException {
        if (bArr.length == 0) {
            return 0;
        }
        try {
            int i10 = this.inputStream.read(bArr);
            if (i10 < 0) {
                return 0;
            }
            return i10;
        } catch (IOException e7) {
            throw new SevenZipException("Error reading input stream", e7);
        }
    }
}
