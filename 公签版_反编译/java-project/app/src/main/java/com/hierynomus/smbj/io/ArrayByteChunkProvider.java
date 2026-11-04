package com.hierynomus.smbj.io;

/* loaded from: classes.dex */
public class ArrayByteChunkProvider extends ByteChunkProvider {
    private int bufferOffset;
    private final byte[] data;
    private int remaining;

    public ArrayByteChunkProvider(byte[] bArr, long j10) {
        this(bArr, 0, bArr.length, j10);
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public int bytesLeft() {
        return this.remaining;
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public int getChunk(byte[] bArr) {
        int length = bArr.length;
        int i10 = this.remaining;
        if (length > i10) {
            length = i10;
        }
        System.arraycopy(this.data, this.bufferOffset, bArr, 0, length);
        this.bufferOffset += length;
        this.remaining -= length;
        return length;
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public boolean isAvailable() {
        return this.remaining > 0;
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public void prepareWrite(int i10) {
    }

    public ArrayByteChunkProvider(byte[] bArr, int i10, int i11, long j10) {
        this.data = bArr;
        this.offset = j10;
        this.bufferOffset = i10;
        this.remaining = i11;
    }
}
