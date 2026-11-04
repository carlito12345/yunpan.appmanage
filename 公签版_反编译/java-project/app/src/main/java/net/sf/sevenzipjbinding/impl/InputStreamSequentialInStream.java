package net.sf.sevenzipjbinding.impl;

import android.support.v4.media.session.a;
import java.io.IOException;
import java.io.InputStream;
import net.sf.sevenzipjbinding.ISequentialInStream;
import net.sf.sevenzipjbinding.SevenZipException;

/* loaded from: classes.dex */
public class InputStreamSequentialInStream implements ISequentialInStream {
    private final InputStream inputStream;

    public InputStreamSequentialInStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inputStream.close();
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
            throw new SevenZipException(a.s(new StringBuilder("Error reading "), bArr.length, " bytes out of InputStream"), e7);
        }
    }
}
