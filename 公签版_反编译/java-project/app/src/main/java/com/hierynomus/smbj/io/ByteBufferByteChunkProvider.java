package com.hierynomus.smbj.io;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteBufferByteChunkProvider extends CachingByteChunkProvider {
    private final ByteBuffer buffer;

    public ByteBufferByteChunkProvider(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
    }

    @Override // com.hierynomus.smbj.io.CachingByteChunkProvider, com.hierynomus.smbj.io.ByteChunkProvider
    public /* bridge */ /* synthetic */ int bytesLeft() {
        return super.bytesLeft();
    }

    @Override // com.hierynomus.smbj.io.CachingByteChunkProvider, com.hierynomus.smbj.io.ByteChunkProvider, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    @Override // com.hierynomus.smbj.io.CachingByteChunkProvider, com.hierynomus.smbj.io.ByteChunkProvider
    public boolean isAvailable() {
        return super.isAvailable() || this.buffer.hasRemaining();
    }

    @Override // com.hierynomus.smbj.io.CachingByteChunkProvider
    public int prepareChunk(byte[] bArr, int i10) {
        int iMin = Math.min(bArr.length, Math.min(i10, this.buffer.remaining()));
        if (iMin == 0) {
            return -1;
        }
        this.buffer.get(bArr, 0, iMin);
        return iMin;
    }

    @Override // com.hierynomus.smbj.io.CachingByteChunkProvider, com.hierynomus.smbj.io.ByteChunkProvider
    public /* bridge */ /* synthetic */ void prepareWrite(int i10) {
        super.prepareWrite(i10);
    }

    public ByteBufferByteChunkProvider(ByteBuffer byteBuffer, long j10) {
        this.buffer = byteBuffer;
        this.offset = j10;
    }
}
