package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.ByteArrayUtils;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.UUID;

/* loaded from: classes.dex */
public final class LeaseKey {
    public static final int SIZE = 16;
    private final byte[] key;

    public LeaseKey(byte[] bArr) {
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("A lease key must be exactly 16 bytes");
        }
        this.key = (byte[]) bArr.clone();
    }

    public static LeaseKey fromUuid(UUID uuid) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
        byteBufferAllocate.putLong(uuid.getMostSignificantBits());
        byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
        return new LeaseKey(byteBufferAllocate.array());
    }

    public static LeaseKey random() {
        return fromUuid(UUID.randomUUID());
    }

    public static LeaseKey zero() {
        return new LeaseKey(new byte[16]);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LeaseKey) {
            return Arrays.equals(this.key, ((LeaseKey) obj).key);
        }
        return false;
    }

    public byte[] getBytes() {
        return (byte[]) this.key.clone();
    }

    public int hashCode() {
        return Arrays.hashCode(this.key);
    }

    public boolean isAllZero() {
        for (byte b10 : this.key) {
            if (b10 != 0) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return "LeaseKey{" + ByteArrayUtils.toHex(this.key) + "}";
    }
}
