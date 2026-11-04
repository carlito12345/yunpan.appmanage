package com.hierynomus.protocol.commons.buffer;

import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.protocol.commons.buffer.Buffer;
import da.b;
import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;
import ta.q;

/* loaded from: classes.dex */
public abstract class Endian {
    public static final Endian BE;
    public static final Endian LE;
    private static final byte[] NULL_TERMINATOR = {0, 0};

    public static class Big extends Endian {
        private Big() {
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> long readLong(Buffer<T> buffer) throws Buffer.BufferException {
            byte[] rawBytes = buffer.readRawBytes(8);
            long j10 = 0;
            for (int i10 = 0; i10 < 8; i10++) {
                j10 = (j10 << 8) | (rawBytes[i10] & 255);
            }
            return j10;
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> String readNullTerminatedUtf16String(Buffer<T> buffer) {
            return readNullTerminatedUtf16String(buffer, Charsets.UTF_16BE);
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> int readUInt16(Buffer<T> buffer) throws Buffer.BufferException {
            byte[] rawBytes = buffer.readRawBytes(2);
            return (rawBytes[1] & 255) | ((rawBytes[0] << 8) & 65280);
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> int readUInt24(Buffer<T> buffer) throws Buffer.BufferException {
            byte[] rawBytes = buffer.readRawBytes(3);
            return (rawBytes[2] & 255) | ((rawBytes[0] << 16) & 16711680) | ((rawBytes[1] << 8) & 65280);
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> long readUInt32(Buffer<T> buffer) throws Buffer.BufferException {
            byte[] rawBytes = buffer.readRawBytes(4);
            return ((rawBytes[0] << 24) & 4278190080L) | ((rawBytes[1] << 16) & 16711680) | ((rawBytes[2] << 8) & 65280) | (rawBytes[3] & 255);
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> long readUInt64(Buffer<T> buffer) throws Buffer.BufferException {
            long uInt32 = (readUInt32(buffer) << 32) + (readUInt32(buffer) & 4294967295L);
            if (uInt32 >= 0) {
                return uInt32;
            }
            throw new Buffer.BufferException("Cannot handle values > 9223372036854775807");
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> String readUtf16String(Buffer<T> buffer, int i10) {
            return readUtf16String(buffer, i10, Charsets.UTF_16BE);
        }

        public String toString() {
            return "big endian";
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeLong(Buffer<T> buffer, long j10) {
            buffer.putRawBytes(new byte[]{(byte) (j10 >> 56), (byte) (j10 >> 48), (byte) (j10 >> 40), (byte) (j10 >> 32), (byte) (j10 >> 24), (byte) (j10 >> 16), (byte) (j10 >> 8), (byte) j10});
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeUInt16(Buffer<T> buffer, int i10) {
            if (i10 < 0 || i10 > 65535) {
                throw new IllegalArgumentException(b.a(i10, "Invalid uint16 value: "));
            }
            buffer.putRawBytes(new byte[]{(byte) (i10 >> 8), (byte) i10});
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeUInt24(Buffer<T> buffer, int i10) {
            if (i10 < 0 || i10 > 16777215) {
                throw new IllegalArgumentException(b.a(i10, "Invalid uint24 value: "));
            }
            buffer.putRawBytes(new byte[]{(byte) (i10 >> 16), (byte) (i10 >> 8), (byte) i10});
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeUInt32(Buffer<T> buffer, long j10) {
            if (j10 < 0 || j10 > 4294967295L) {
                throw new IllegalArgumentException(q.j(j10, "Invalid uint32 value: "));
            }
            buffer.putRawBytes(new byte[]{(byte) (j10 >> 24), (byte) (j10 >> 16), (byte) (j10 >> 8), (byte) j10});
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeUInt64(Buffer<T> buffer, long j10) {
            if (j10 < 0) {
                throw new IllegalArgumentException(q.j(j10, "Invalid uint64 value: "));
            }
            writeLong(buffer, j10);
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeUtf16String(Buffer<T> buffer, String str) {
            buffer.putRawBytes(str.getBytes(Charsets.UTF_16BE));
        }
    }

    public static class Little extends Endian {
        private Little() {
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> long readLong(Buffer<T> buffer) throws Buffer.BufferException {
            byte[] rawBytes = buffer.readRawBytes(8);
            long j10 = 0;
            for (int i10 = 7; i10 >= 0; i10--) {
                j10 = (j10 << 8) | (rawBytes[i10] & 255);
            }
            return j10;
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> String readNullTerminatedUtf16String(Buffer<T> buffer) {
            return readNullTerminatedUtf16String(buffer, Charsets.UTF_16LE);
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> int readUInt16(Buffer<T> buffer) throws Buffer.BufferException {
            byte[] rawBytes = buffer.readRawBytes(2);
            return ((rawBytes[1] << 8) & 65280) | (rawBytes[0] & 255);
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> int readUInt24(Buffer<T> buffer) throws Buffer.BufferException {
            byte[] rawBytes = buffer.readRawBytes(3);
            return ((rawBytes[2] << 16) & 16711680) | (rawBytes[0] & 255) | ((rawBytes[1] << 8) & 65280);
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> long readUInt32(Buffer<T> buffer) throws Buffer.BufferException {
            byte[] rawBytes = buffer.readRawBytes(4);
            return (rawBytes[0] & 255) | ((rawBytes[1] << 8) & 65280) | ((rawBytes[2] << 16) & 16711680) | ((rawBytes[3] << 24) & 4278190080L);
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> long readUInt64(Buffer<T> buffer) throws Buffer.BufferException {
            long uInt32 = (readUInt32(buffer) & 4294967295L) + (readUInt32(buffer) << 32);
            if (uInt32 >= 0) {
                return uInt32;
            }
            throw new Buffer.BufferException("Cannot handle values > 9223372036854775807");
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> String readUtf16String(Buffer<T> buffer, int i10) {
            return readUtf16String(buffer, i10, Charsets.UTF_16LE);
        }

        public String toString() {
            return "little endian";
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeLong(Buffer<T> buffer, long j10) {
            buffer.putRawBytes(new byte[]{(byte) j10, (byte) (j10 >> 8), (byte) (j10 >> 16), (byte) (j10 >> 24), (byte) (j10 >> 32), (byte) (j10 >> 40), (byte) (j10 >> 48), (byte) (j10 >> 56)});
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeUInt16(Buffer<T> buffer, int i10) {
            if (i10 < 0 || i10 > 65535) {
                throw new IllegalArgumentException(b.a(i10, "Invalid uint16 value: "));
            }
            buffer.putRawBytes(new byte[]{(byte) i10, (byte) (i10 >> 8)});
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeUInt24(Buffer<T> buffer, int i10) {
            if (i10 < 0 || i10 > 16777215) {
                throw new IllegalArgumentException(b.a(i10, "Invalid uint24 value: "));
            }
            buffer.putRawBytes(new byte[]{(byte) i10, (byte) (i10 >> 8), (byte) (i10 >> 16)});
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeUInt32(Buffer<T> buffer, long j10) {
            if (j10 < 0 || j10 > 4294967295L) {
                throw new IllegalArgumentException(q.j(j10, "Invalid uint32 value: "));
            }
            buffer.putRawBytes(new byte[]{(byte) j10, (byte) (j10 >> 8), (byte) (j10 >> 16), (byte) (j10 >> 24)});
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeUInt64(Buffer<T> buffer, long j10) {
            if (j10 < 0) {
                throw new IllegalArgumentException(q.j(j10, "Invalid uint64 value: "));
            }
            writeLong(buffer, j10);
        }

        @Override // com.hierynomus.protocol.commons.buffer.Endian
        public <T extends Buffer<T>> void writeUtf16String(Buffer<T> buffer, String str) {
            buffer.putRawBytes(str.getBytes(Charsets.UTF_16LE));
        }
    }

    static {
        LE = new Little();
        BE = new Big();
    }

    public abstract <T extends Buffer<T>> long readLong(Buffer<T> buffer);

    public abstract <T extends Buffer<T>> String readNullTerminatedUtf16String(Buffer<T> buffer);

    public <T extends Buffer<T>> String readNullTerminatedUtf16String(Buffer<T> buffer, Charset charset) throws Buffer.BufferException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[2];
        buffer.readRawBytes(bArr);
        while (true) {
            if (bArr[0] == 0 && bArr[1] == 0) {
                return new String(byteArrayOutputStream.toByteArray(), charset);
            }
            byteArrayOutputStream.write(bArr, 0, 2);
            buffer.readRawBytes(bArr);
        }
    }

    public abstract <T extends Buffer<T>> int readUInt16(Buffer<T> buffer);

    public abstract <T extends Buffer<T>> int readUInt24(Buffer<T> buffer);

    public abstract <T extends Buffer<T>> long readUInt32(Buffer<T> buffer);

    public abstract <T extends Buffer<T>> long readUInt64(Buffer<T> buffer);

    public abstract <T extends Buffer<T>> String readUtf16String(Buffer<T> buffer, int i10);

    public <T extends Buffer<T>> String readUtf16String(Buffer<T> buffer, int i10, Charset charset) throws Buffer.BufferException {
        byte[] bArr = new byte[i10 * 2];
        buffer.readRawBytes(bArr);
        return new String(bArr, charset);
    }

    public abstract <T extends Buffer<T>> void writeLong(Buffer<T> buffer, long j10);

    public <T extends Buffer<T>> void writeNullTerminatedUtf16String(Buffer<T> buffer, String str) {
        writeUtf16String(buffer, str);
        buffer.putRawBytes(NULL_TERMINATOR);
    }

    public abstract <T extends Buffer<T>> void writeUInt16(Buffer<T> buffer, int i10);

    public abstract <T extends Buffer<T>> void writeUInt24(Buffer<T> buffer, int i10);

    public abstract <T extends Buffer<T>> void writeUInt32(Buffer<T> buffer, long j10);

    public abstract <T extends Buffer<T>> void writeUInt64(Buffer<T> buffer, long j10);

    public abstract <T extends Buffer<T>> void writeUtf16String(Buffer<T> buffer, String str);
}
