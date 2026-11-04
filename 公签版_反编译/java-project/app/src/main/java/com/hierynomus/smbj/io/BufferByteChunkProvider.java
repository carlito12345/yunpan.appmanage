package com.hierynomus.smbj.io;

import com.hierynomus.protocol.commons.buffer.Buffer;
import java.io.IOException;

/* loaded from: classes.dex */
public class BufferByteChunkProvider extends ByteChunkProvider {
    private Buffer<?> buffer;

    public BufferByteChunkProvider(Buffer<?> buffer) {
        this.buffer = buffer;
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public int bytesLeft() {
        return this.buffer.available();
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public int getChunk(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.buffer.available() < bArr.length) {
            length = this.buffer.available();
        }
        try {
            this.buffer.readRawBytes(bArr, 0, length);
            return length;
        } catch (Buffer.BufferException e7) {
            throw new IOException(e7);
        }
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public boolean isAvailable() {
        return this.buffer.available() > 0;
    }

    @Override // com.hierynomus.smbj.io.ByteChunkProvider
    public void prepareWrite(int i10) {
    }
}
