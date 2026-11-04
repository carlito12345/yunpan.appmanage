package com.hierynomus.protocol.commons.buffer;

import android.support.v4.media.session.a;
import com.hierynomus.protocol.commons.ByteArrayUtils;
import com.hierynomus.protocol.commons.buffer.Buffer;
import g.b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class Buffer<T extends Buffer<T>> {
    public static final int DEFAULT_SIZE = 256;
    public static final int MAX_SIZE = 1073741824;
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) Buffer.class);
    private byte[] data;
    private Endian endianness;
    protected int rpos;
    protected int wpos;

    public static class BufferException extends Exception {
        public BufferException(String str) {
            super(str);
        }
    }

    public static class PlainBuffer extends Buffer<PlainBuffer> {
        public PlainBuffer(Endian endian) {
            super(endian);
        }

        public PlainBuffer(Buffer<?> buffer) {
            super(buffer);
        }

        public PlainBuffer(byte[] bArr, Endian endian) {
            super(bArr, endian);
        }

        public PlainBuffer(int i10, Endian endian) {
            super(i10, endian);
        }
    }

    public Buffer(Endian endian) {
        this(256, endian);
    }

    public static int getNextPowerOf2(int i10) {
        int i11 = 1;
        while (i11 < i10) {
            i11 <<= 1;
            if (i11 <= 0) {
                throw new IllegalArgumentException(b.i("Cannot get next power of 2; ", i10, " is too large"));
            }
        }
        return i11;
    }

    public byte[] array() {
        return this.data;
    }

    public InputStream asInputStream() {
        return new InputStream() { // from class: com.hierynomus.protocol.commons.buffer.Buffer.1
            @Override // java.io.InputStream
            public int available() {
                return Buffer.this.available();
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                try {
                    return Buffer.this.readByte() & 255;
                } catch (BufferException e7) {
                    throw new IOException(e7);
                }
            }

            @Override // java.io.InputStream
            public long skip(long j10) {
                Buffer.this.rpos((int) j10);
                return j10;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr) throws IOException {
                try {
                    Buffer.this.readRawBytes(bArr);
                    return bArr.length;
                } catch (BufferException e7) {
                    throw new IOException(e7);
                }
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i10, int i11) {
                return super.read(bArr, i10, i11);
            }
        };
    }

    public int available() {
        return this.wpos - this.rpos;
    }

    public void clear() {
        this.rpos = 0;
        this.wpos = 0;
    }

    public void compact() {
        logger.debug("Compacting...");
        if (available() > 0) {
            byte[] bArr = this.data;
            int i10 = this.rpos;
            System.arraycopy(bArr, i10, bArr, 0, this.wpos - i10);
        }
        this.wpos -= this.rpos;
        this.rpos = 0;
    }

    public void ensureAvailable(int i10) throws BufferException {
        if (available() < i10) {
            throw new BufferException("Underflow");
        }
    }

    public void ensureCapacity(int i10) {
        int length = this.data.length;
        int i11 = this.wpos;
        if (length - i11 < i10) {
            byte[] bArr = new byte[getNextPowerOf2(i11 + i10)];
            byte[] bArr2 = this.data;
            System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
            this.data = bArr;
        }
    }

    public byte[] getCompactData() {
        int iAvailable = available();
        if (iAvailable <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[iAvailable];
        System.arraycopy(this.data, this.rpos, bArr, 0, iAvailable);
        return bArr;
    }

    public String printHex() {
        return ByteArrayUtils.printHex(array(), rpos(), available());
    }

    public Buffer<T> putBoolean(boolean z) {
        return putByte(z ? (byte) 1 : (byte) 0);
    }

    public Buffer<T> putBuffer(Buffer<? extends Buffer<?>> buffer) {
        if (buffer != null) {
            int iAvailable = buffer.available();
            ensureCapacity(iAvailable);
            System.arraycopy(buffer.data, buffer.rpos, this.data, this.wpos, iAvailable);
            this.wpos += iAvailable;
        }
        return this;
    }

    public Buffer<T> putByte(byte b10) {
        ensureCapacity(1);
        byte[] bArr = this.data;
        int i10 = this.wpos;
        this.wpos = i10 + 1;
        bArr[i10] = b10;
        return this;
    }

    public Buffer<T> putLong(long j10) {
        return putLong(j10, this.endianness);
    }

    public Buffer<T> putNullTerminatedString(String str, Charset charset) {
        return putNullTerminatedString(str, charset, this.endianness);
    }

    public Buffer<T> putRawBytes(byte[] bArr) {
        return putRawBytes(bArr, 0, bArr.length);
    }

    public Buffer<T> putString(String str, Charset charset) {
        return putString(str, charset, this.endianness);
    }

    public Buffer<T> putUInt16(int i10) {
        return putUInt16(i10, this.endianness);
    }

    public Buffer<T> putUInt24(int i10) {
        return putUInt24(i10, this.endianness);
    }

    public Buffer<T> putUInt32(long j10) {
        return putUInt32(j10, this.endianness);
    }

    public Buffer<T> putUInt64(long j10) {
        return putUInt64(j10, this.endianness);
    }

    public boolean readBoolean() {
        return readByte() != 0;
    }

    public byte readByte() throws BufferException {
        ensureAvailable(1);
        byte[] bArr = this.data;
        int i10 = this.rpos;
        this.rpos = i10 + 1;
        return bArr[i10];
    }

    public long readLong() {
        return readLong(this.endianness);
    }

    public String readNullTerminatedString(Charset charset) {
        return readNullTerminatedString(charset, this.endianness);
    }

    public byte[] readRawBytes(int i10) throws BufferException {
        byte[] bArr = new byte[i10];
        readRawBytes(bArr);
        return bArr;
    }

    public String readString(String str, int i10) {
        return readString(Charset.forName(str), i10, this.endianness);
    }

    public int readUInt16() {
        return readUInt16(this.endianness);
    }

    public int readUInt24() {
        return readUInt24(this.endianness);
    }

    public long readUInt32() {
        return readUInt32(this.endianness);
    }

    public int readUInt32AsInt() {
        return (int) readUInt32();
    }

    public long readUInt64() {
        return readUInt64(this.endianness);
    }

    public int rpos() {
        return this.rpos;
    }

    public Buffer<T> skip(int i10) throws BufferException {
        ensureAvailable(i10);
        this.rpos += i10;
        return this;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Buffer [rpos=");
        sb2.append(this.rpos);
        sb2.append(", wpos=");
        sb2.append(this.wpos);
        sb2.append(", size=");
        return a.s(sb2, this.data.length, "]");
    }

    public int wpos() {
        return this.wpos;
    }

    public Buffer(Buffer<?> buffer) {
        int i10 = buffer.wpos;
        int i11 = buffer.rpos;
        int i12 = i10 - i11;
        this.wpos = i12;
        byte[] bArr = new byte[i12];
        this.data = bArr;
        this.endianness = buffer.endianness;
        System.arraycopy(buffer.data, i11, bArr, 0, i12);
    }

    private Buffer<T> putNullTerminatedString(String str, Charset charset, Endian endian) {
        String strName = charset.name();
        strName.getClass();
        switch (strName) {
            case "UTF-16":
                endian.writeNullTerminatedUtf16String(this, str);
                return this;
            case "UTF-8":
                putRawBytes(str.getBytes(charset));
                putByte((byte) 0);
                return this;
            case "UTF-16BE":
                Endian.BE.writeNullTerminatedUtf16String(this, str);
                return this;
            case "UTF-16LE":
                Endian.LE.writeNullTerminatedUtf16String(this, str);
                return this;
            default:
                throw new UnsupportedCharsetException(charset.name());
        }
    }

    private Buffer<T> putString(String str, Charset charset, Endian endian) {
        String strName = charset.name();
        strName.getClass();
        switch (strName) {
            case "UTF-16":
                endian.writeUtf16String(this, str);
                return this;
            case "UTF-8":
                putRawBytes(str.getBytes(charset));
                return this;
            case "UTF-16BE":
                Endian.BE.writeUtf16String(this, str);
                return this;
            case "UTF-16LE":
                Endian.LE.writeUtf16String(this, str);
                return this;
            default:
                throw new UnsupportedCharsetException(charset.name());
        }
    }

    private String readNullTerminatedString(Charset charset, Endian endian) throws BufferException {
        String strName = charset.name();
        strName.getClass();
        switch (strName) {
            case "UTF-16":
                return endian.readNullTerminatedUtf16String(this);
            case "UTF-8":
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte b10 = readByte();
                while (b10 != 0) {
                    byteArrayOutputStream.write(b10);
                    b10 = readByte();
                }
                return new String(byteArrayOutputStream.toByteArray(), charset);
            case "UTF-16BE":
                return Endian.BE.readNullTerminatedUtf16String(this);
            case "UTF-16LE":
                return Endian.LE.readNullTerminatedUtf16String(this);
            default:
                throw new UnsupportedCharsetException(charset.name());
        }
    }

    public Buffer<T> putLong(long j10, Endian endian) {
        endian.writeLong(this, j10);
        return this;
    }

    public Buffer<T> putRawBytes(byte[] bArr, int i10, int i11) {
        ensureCapacity(i11);
        System.arraycopy(bArr, i10, this.data, this.wpos, i11);
        this.wpos += i11;
        return this;
    }

    public Buffer<T> putUInt16(int i10, Endian endian) {
        endian.writeUInt16(this, i10);
        return this;
    }

    public Buffer<T> putUInt24(int i10, Endian endian) {
        endian.writeUInt24(this, i10);
        return this;
    }

    public Buffer<T> putUInt32(long j10, Endian endian) {
        endian.writeUInt32(this, j10);
        return this;
    }

    public Buffer<T> putUInt64(long j10, Endian endian) {
        endian.writeUInt64(this, j10);
        return this;
    }

    public long readLong(Endian endian) {
        return endian.readLong(this);
    }

    public String readString(Charset charset, int i10) {
        return readString(charset, i10, this.endianness);
    }

    public int readUInt16(Endian endian) {
        return endian.readUInt16(this);
    }

    public int readUInt24(Endian endian) {
        return endian.readUInt24(this);
    }

    public long readUInt32(Endian endian) {
        return endian.readUInt32(this);
    }

    public long readUInt64(Endian endian) {
        return endian.readUInt64(this);
    }

    public void rpos(int i10) {
        this.rpos = i10;
    }

    public void wpos(int i10) {
        ensureCapacity(i10 - this.wpos);
        this.wpos = i10;
    }

    private String readString(Charset charset, int i10, Endian endian) {
        String strName = charset.name();
        strName.getClass();
        switch (strName) {
            case "UTF-16":
                return endian.readUtf16String(this, i10);
            case "UTF-8":
                return new String(readRawBytes(i10), charset);
            case "UTF-16BE":
                return Endian.BE.readUtf16String(this, i10);
            case "UTF-16LE":
                return Endian.LE.readUtf16String(this, i10);
            default:
                throw new UnsupportedCharsetException(charset.name());
        }
    }

    public void readRawBytes(byte[] bArr) throws BufferException {
        readRawBytes(bArr, 0, bArr.length);
    }

    public void readRawBytes(byte[] bArr, int i10, int i11) throws BufferException {
        ensureAvailable(i11);
        System.arraycopy(this.data, this.rpos, bArr, i10, i11);
        this.rpos += i11;
    }

    public Buffer(byte[] bArr, Endian endian) {
        this(bArr, true, endian);
    }

    public Buffer(int i10, Endian endian) {
        this(new byte[getNextPowerOf2(i10)], false, endian);
    }

    private Buffer(byte[] bArr, boolean z, Endian endian) {
        this.data = bArr;
        this.endianness = endian;
        this.rpos = 0;
        this.wpos = z ? bArr.length : 0;
    }
}
