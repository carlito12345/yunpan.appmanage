package com.hierynomus.smbj.share;

import com.hierynomus.smbj.ProgressListener;
import com.hierynomus.smbj.io.ByteChunkProvider;
import java.io.IOException;
import java.io.OutputStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
class FileOutputStream extends OutputStream {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) FileOutputStream.class);
    private boolean isClosed = false;
    private ProgressListener progressListener;
    private ByteArrayProvider provider;
    private SMB2Writer writer;

    public static class ByteArrayProvider extends ByteChunkProvider {
        private RingBuffer buf;

        /* JADX INFO: Access modifiers changed from: private */
        public void reset() {
            this.buf = null;
        }

        @Override // com.hierynomus.smbj.io.ByteChunkProvider
        public int bytesLeft() {
            return this.buf.size();
        }

        @Override // com.hierynomus.smbj.io.ByteChunkProvider
        public int getChunk(byte[] bArr) {
            return this.buf.read(bArr);
        }

        @Override // com.hierynomus.smbj.io.ByteChunkProvider
        public boolean isAvailable() {
            RingBuffer ringBuffer = this.buf;
            return (ringBuffer == null || ringBuffer.isEmpty()) ? false : true;
        }

        public boolean isBufferFull() {
            return this.buf.isFull();
        }

        public int maxSize() {
            return this.buf.maxSize();
        }

        @Override // com.hierynomus.smbj.io.ByteChunkProvider
        public void prepareWrite(int i10) {
        }

        public void writeByte(int i10) {
            this.buf.write(i10);
        }

        public void writeBytes(byte[] bArr, int i10, int i11) {
            this.buf.write(bArr, i10, i11);
        }

        private ByteArrayProvider(int i10, long j10) {
            this.buf = new RingBuffer(i10);
            this.offset = j10;
        }

        public boolean isBufferFull(int i10) {
            return this.buf.isFull(i10);
        }
    }

    public FileOutputStream(SMB2Writer sMB2Writer, int i10, long j10, ProgressListener progressListener) {
        this.writer = sMB2Writer;
        this.progressListener = progressListener;
        this.provider = new ByteArrayProvider(i10, j10);
    }

    private void sendWriteRequest() {
        this.writer.write(this.provider, this.progressListener);
    }

    private void verifyConnectionNotClosed() throws IOException {
        if (this.isClosed) {
            throw new IOException("Stream is closed");
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        while (this.provider.isAvailable()) {
            sendWriteRequest();
        }
        this.provider.reset();
        this.isClosed = true;
        this.writer = null;
        logger.debug("EOF, {} bytes written", Long.valueOf(this.provider.getOffset()));
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        verifyConnectionNotClosed();
        if (this.provider.isAvailable()) {
            sendWriteRequest();
        }
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        verifyConnectionNotClosed();
        if (this.provider.isBufferFull()) {
            flush();
        }
        if (this.provider.isBufferFull()) {
            return;
        }
        this.provider.writeByte(i10);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        verifyConnectionNotClosed();
        do {
            int iMin = Math.min(i11, this.provider.maxSize());
            while (this.provider.isBufferFull(iMin)) {
                flush();
            }
            if (!this.provider.isBufferFull()) {
                this.provider.writeBytes(bArr, i10, iMin);
            }
            i10 += iMin;
            i11 -= iMin;
        } while (i11 > 0);
    }
}
