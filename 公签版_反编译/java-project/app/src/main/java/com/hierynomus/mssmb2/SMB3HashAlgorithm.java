package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB3HashAlgorithm implements EnumWithValue<SMB3HashAlgorithm> {
    SHA_512(1, "SHA-512");

    private String algorithmName;
    private long value;

    SMB3HashAlgorithm(long j10, String str) {
        this.value = j10;
        this.algorithmName = str;
    }

    public String getAlgorithmName() {
        return this.algorithmName;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
