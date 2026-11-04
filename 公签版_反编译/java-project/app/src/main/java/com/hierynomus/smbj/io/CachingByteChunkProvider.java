package com.hierynomus.smbj.io;

import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.commons.buffer.Endian;
import com.hierynomus.smbj.common.SMBRuntimeException;
import java.io.IOException;

/* loaded from: classes.dex */
abstract class CachingByteChunkProvider extends ByteChunkProvider {
    private Buffer<Buffer.PlainBuffer> buffer;
    private BufferByteChunkProvider cachingProvider;

    public CachingByteChunkProvider() {
        Buffer.PlainBuffer plainBuffer = new Buffer.PlainBuffer(Endian.BE);
        this.buffer = plainBuffer;
        this.cachingProvider = new BufferByteChunkProvider(plainBuffer);
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public int bytesLeft() {
        return this.cachingProvider.bytesLeft();
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.cachingProvider.close();
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public int getChunk(byte[] bArr) {
        return this.cachingProvider.getChunk(bArr);
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public boolean isAvailable() {
        return this.cachingProvider.isAvailable();
    }

    public abstract int prepareChunk(byte[] bArr, int i10);

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public void prepareWrite(int i10) {
        Buffer<Buffer.PlainBuffer> buffer = this.buffer;
        if (buffer == null) {
            return;
        }
        byte[] bArr = new byte[1024];
        buffer.compact();
        int iAvailable = this.buffer.available();
        while (true) {
            i10 -= iAvailable;
            if (i10 <= 0) {
                return;
            }
            try {
                iAvailable = prepareChunk(bArr, i10);
                if (iAvailable == -1) {
                    return;
                } else {
                    this.buffer.putRawBytes(bArr, 0, iAvailable);
                }
            } catch (IOException e7) {
                throw new SMBRuntimeException(e7);
            }
        }
    }
}
