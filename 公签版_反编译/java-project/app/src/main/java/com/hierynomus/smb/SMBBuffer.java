package com.hierynomus.smb;

import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.commons.buffer.Endian;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SMBBuffer extends Buffer<SMBBuffer> {
    private static final byte[] RESERVED_2 = {0, 0};
    private static final byte[] RESERVED_4 = {0, 0, 0, 0};

    public SMBBuffer() {
        super(Endian.LE);
    }

    public Buffer<SMBBuffer> putReserved(int i10) {
        byte[] bArr = new byte[i10];
        Arrays.fill(bArr, (byte) 0);
        putRawBytes(bArr);
        return this;
    }

    public Buffer<SMBBuffer> putReserved1() {
        putByte((byte) 0);
        return this;
    }

    public Buffer<SMBBuffer> putReserved2() {
        putRawBytes(RESERVED_2);
        return this;
    }

    public Buffer<SMBBuffer> putReserved4() {
        putRawBytes(RESERVED_4);
        return this;
    }

    public Buffer<SMBBuffer> putString(String str) {
        return putString(str, Charsets.UTF_16);
    }

    public Buffer<SMBBuffer> putStringLengthUInt16(String str) {
        return str == null ? putUInt16(0) : putUInt16(str.length() * 2);
    }

    public SMBBuffer(byte[] bArr) {
        super(bArr, Endian.LE);
    }
}
