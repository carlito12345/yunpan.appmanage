package com.hierynomus.smbj.io;

import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smbj.common.SMBRuntimeException;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public abstract class ByteChunkProvider implements Closeable {
    protected static final int CHUNK_SIZE = 65536;
    protected int chunkSize = 65536;
    private int lastWriteSize;
    protected long offset;

    public abstract int bytesLeft();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public abstract int getChunk(byte[] bArr);

    public int getChunkSize() {
        return this.chunkSize;
    }

    public int getLastWriteSize() {
        return this.lastWriteSize;
    }

    public long getOffset() {
        return this.offset;
    }

    public abstract boolean isAvailable();

    public abstract void prepareWrite(int i10);

    public void writeChunk(OutputStream outputStream) throws IOException {
        this.lastWriteSize = 0;
        byte[] bArr = new byte[this.chunkSize];
        try {
            int chunk = getChunk(bArr);
            outputStream.write(bArr, 0, chunk);
            this.offset += chunk;
            this.lastWriteSize += chunk;
        } catch (IOException e7) {
            throw new SMBRuntimeException(e7);
        }
    }

    public void writeChunks(Buffer<?> buffer, int i10) {
        this.lastWriteSize = 0;
        byte[] bArr = new byte[this.chunkSize];
        for (int i11 = 0; i11 < i10; i11++) {
            try {
                int chunk = getChunk(bArr);
                buffer.putRawBytes(bArr, 0, chunk);
                this.offset += chunk;
                this.lastWriteSize += chunk;
            } catch (IOException e7) {
                throw new SMBRuntimeException(e7);
            }
        }
    }

    public void writeChunk(Buffer<?> buffer) {
        this.lastWriteSize = 0;
        byte[] bArr = new byte[this.chunkSize];
        try {
            int chunk = getChunk(bArr);
            buffer.putRawBytes(bArr, 0, chunk);
            this.offset += chunk;
            this.lastWriteSize += chunk;
        } catch (IOException e7) {
            throw new SMBRuntimeException(e7);
        }
    }
}
