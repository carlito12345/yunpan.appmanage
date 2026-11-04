package com.hierynomus.smbj.io;

/* loaded from: classes.dex */
public class EmptyByteChunkProvider extends ByteChunkProvider {
    public EmptyByteChunkProvider(long j10) {
        this.offset = j10;
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public int bytesLeft() {
        return 0;
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public int getChunk(byte[] bArr) {
        return 0;
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public boolean isAvailable() {
        return false;
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public void prepareWrite(int i10) {
    }
}
