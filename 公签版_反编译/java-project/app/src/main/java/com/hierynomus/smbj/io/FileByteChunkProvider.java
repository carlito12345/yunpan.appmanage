package com.hierynomus.smbj.io;

import android.support.v4.media.session.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class FileByteChunkProvider extends ByteChunkProvider {
    private File file;
    private InputStreamByteChunkProvider underlyingProvider;

    public FileByteChunkProvider(File file) {
        this(file, 0L);
    }

    private void ensureSkipped(FileInputStream fileInputStream, long j10) throws IOException {
        long jSkip = 0;
        while (jSkip < j10 && fileInputStream.available() > 0) {
            jSkip += fileInputStream.skip(j10);
        }
        if (jSkip >= j10) {
            return;
        }
        StringBuilder sbW = a.w(j10, "Was unable to go to the requested offset of ", " of file ");
        sbW.append(this.file);
        throw new IOException(sbW.toString());
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public int bytesLeft() {
        return this.underlyingProvider.bytesLeft();
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.underlyingProvider.close();
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public int getChunk(byte[] bArr) {
        return this.underlyingProvider.getChunk(bArr);
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public boolean isAvailable() {
        return this.underlyingProvider.isAvailable();
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public void prepareWrite(int i10) {
        this.underlyingProvider.prepareWrite(i10);
    }

    public FileByteChunkProvider(File file, long j10) throws IOException {
        this.file = file;
        FileInputStream fileInputStream = new FileInputStream(file);
        this.underlyingProvider = new InputStreamByteChunkProvider(fileInputStream);
        ensureSkipped(fileInputStream, j10);
        this.offset = j10;
    }
}
