package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB3EncryptionCipher implements EnumWithValue<SMB3EncryptionCipher> {
    AES_128_CCM(1, "AES/CCM/NoPadding", 11),
    AES_128_GCM(2, "AES/GCM/NoPadding", 12);

    private String algorithmName;
    private int nonceLength;
    private long value;

    SMB3EncryptionCipher(long j10, String str, int i10) {
        this.value = j10;
        this.algorithmName = str;
        this.nonceLength = i10;
    }

    public String getAlgorithmName() {
        return this.algorithmName;
    }

    public int getNonceLength() {
        return this.nonceLength;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
