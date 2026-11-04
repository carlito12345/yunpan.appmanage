package com.rapid7.client.dcerpc.dto;

import da.b;
import java.util.Arrays;
import v7.e;

/* loaded from: classes.dex */
public class ContextHandle {
    private final byte[] bytes;

    public ContextHandle(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Expecting non-null handle");
        }
        if (bArr.length != 20) {
            throw new IllegalArgumentException(String.format("Expecting 20 entries in handle, got: %d", Integer.valueOf(bArr.length)));
        }
        this.bytes = bArr;
    }

    public static ContextHandle fromHex(String str) {
        byte[] bArr = new byte[20];
        if (str == null || str.length() > 40) {
            throw new IllegalArgumentException(b.c("hString is invalid: ", str));
        }
        byte[] bArrA = e.f16646d.a(str.toUpperCase());
        int i10 = 0;
        int i11 = 0;
        while (i10 < bArrA.length) {
            int i12 = i10 + 1;
            if (bArrA[i10] == 0) {
                i10 = i12;
                i11 = i10;
            } else {
                i10 = i12;
            }
        }
        System.arraycopy(bArrA, i11, bArr, (20 - bArrA.length) + i11, bArrA.length - i11);
        return new ContextHandle(bArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass().equals(obj.getClass())) {
            return Arrays.equals(this.bytes, ((ContextHandle) obj).bytes);
        }
        return false;
    }

    public byte[] getBytes() {
        return this.bytes;
    }

    public int hashCode() {
        return Arrays.hashCode(this.bytes);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : this.bytes) {
            sb2.append(String.format("%02X", Byte.valueOf(b10)));
        }
        return sb2.toString();
    }
}
