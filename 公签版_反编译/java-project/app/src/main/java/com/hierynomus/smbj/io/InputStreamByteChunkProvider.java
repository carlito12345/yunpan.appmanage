package com.hierynomus.smbj.io;

import java.io.BufferedInputStream;
import java.io.InputStream;

/* loaded from: classes.dex */
public class InputStreamByteChunkProvider extends CachingByteChunkProvider {
    private boolean close;
    private BufferedInputStream is;

    public InputStreamByteChunkProvider(InputStream inputStream) {
        if (inputStream instanceof BufferedInputStream) {
            this.is = (BufferedInputStream) inputStream;
        } else {
            this.is = new BufferedInputStream(inputStream);
            this.close = true;
        }
    }

    @Override // com.hierynomus.smbj.io.CachingByteChunkProvider, com.hierynomus.smbj.io.ByteChunkProvider
    public /* bridge */ /* synthetic */ int bytesLeft() {
        return super.bytesLeft();
    }

    @Override // com.hierynomus.smbj.io.CachingByteChunkProvider, com.hierynomus.smbj.io.ByteChunkProvider, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        BufferedInputStream bufferedInputStream = this.is;
        if (bufferedInputStream == null || !this.close) {
            return;
        }
        try {
            bufferedInputStream.close();
        } finally {
            this.is = null;
        }
    }

    @Override // com.hierynomus.smbj.io.CachingByteChunkProvider, com.hierynomus.smbj.io.ByteChunkProvider
    public boolean isAvailable() {
        if (super.isAvailable()) {
            return true;
        }
        if (this.is == null) {
            return false;
        }
        prepareWrite(1);
        return super.isAvailable();
    }

    @Override // com.hierynomus.smbj.io.CachingByteChunkProvider
    public int prepareChunk(byte[] bArr, int i10) {
        int iMin = Math.min(i10, bArr.length);
        if (iMin == 0) {
            return -1;
        }
        return this.is.read(bArr, 0, iMin);
    }

    @Override // com.hierynomus.smbj.io.CachingByteChunkProvider, com.hierynomus.smbj.io.ByteChunkProvider
    public /* bridge */ /* synthetic */ void prepareWrite(int i10) {
        super.prepareWrite(i10);
    }
}
