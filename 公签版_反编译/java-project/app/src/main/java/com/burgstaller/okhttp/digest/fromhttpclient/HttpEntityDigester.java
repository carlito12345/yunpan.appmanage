package com.burgstaller.okhttp.digest.fromhttpclient;

import fg.c0;
import fg.i;
import fg.j;
import fg.l;
import fg.z;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class HttpEntityDigester implements j {
    i buffer;
    private boolean closed;
    private byte[] digest;
    private final MessageDigest digester;

    public HttpEntityDigester(MessageDigest messageDigest) {
        this.digester = messageDigest;
        messageDigest.reset();
        this.buffer = new i();
    }

    @Override // fg.j
    public i buffer() {
        return this.buffer;
    }

    @Override // fg.x, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.digest = this.digester.digest();
        this.buffer.getClass();
    }

    @Override // fg.j
    public j emitCompleteSegments() {
        return null;
    }

    @Override // fg.j, fg.x, java.io.Flushable
    public void flush() {
    }

    public /* synthetic */ i getBuffer() {
        throw null;
    }

    public byte[] getDigest() {
        return this.digest;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return false;
    }

    public OutputStream outputStream() {
        return new OutputStream() { // from class: com.burgstaller.okhttp.digest.fromhttpclient.HttpEntityDigester.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                HttpEntityDigester.this.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
                if (HttpEntityDigester.this.closed) {
                    return;
                }
                HttpEntityDigester.this.flush();
            }

            public String toString() {
                return HttpEntityDigester.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i10) throws IOException {
                if (HttpEntityDigester.this.closed) {
                    throw new IOException("closed");
                }
                HttpEntityDigester.this.buffer.W((byte) i10);
                HttpEntityDigester.this.emitCompleteSegments();
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i10, int i11) throws IOException {
                if (!HttpEntityDigester.this.closed) {
                    HttpEntityDigester.this.buffer.V(bArr, i10, i11);
                    HttpEntityDigester.this.emitCompleteSegments();
                    return;
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // fg.x
    public c0 timeout() {
        return null;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        return 0;
    }

    public /* synthetic */ j write(l lVar, int i10, int i11) {
        throw null;
    }

    @Override // fg.j
    public long writeAll(z zVar) {
        return 0L;
    }

    @Override // fg.j
    public j writeByte(int i10) {
        return null;
    }

    @Override // fg.j
    public j writeDecimalLong(long j10) {
        return null;
    }

    @Override // fg.j
    public j writeHexadecimalUnsignedLong(long j10) {
        return null;
    }

    @Override // fg.j
    public j writeInt(int i10) {
        return null;
    }

    public j writeIntLe(int i10) {
        return null;
    }

    public j writeLong(long j10) {
        return null;
    }

    public j writeLongLe(long j10) {
        return null;
    }

    @Override // fg.j
    public j writeShort(int i10) {
        return null;
    }

    public j writeShortLe(int i10) {
        return null;
    }

    public j writeString(String str, Charset charset) {
        return null;
    }

    @Override // fg.j
    public j writeUtf8(String str) {
        return null;
    }

    public j writeUtf8CodePoint(int i10) {
        return null;
    }

    @Override // fg.j
    public j write(l lVar) {
        this.digester.update(lVar.p());
        return this;
    }

    public j writeString(String str, int i10, int i11, Charset charset) {
        return null;
    }

    public j writeUtf8(String str, int i10, int i11) {
        return null;
    }

    @Override // fg.j
    public j write(byte[] bArr) {
        this.digester.update(bArr);
        return this;
    }

    @Override // fg.j
    public j write(byte[] bArr, int i10, int i11) {
        this.digester.update(bArr, i10, i11);
        return this;
    }

    public j write(z zVar, long j10) throws IOException {
        if (this.closed) {
            throw new IOException("Stream has been already closed");
        }
        return null;
    }

    @Override // fg.x
    public void write(i iVar, long j10) {
    }

    @Override // fg.j
    public j emit() {
        return this;
    }
}
