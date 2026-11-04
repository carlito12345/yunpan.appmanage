package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB3CompressionAlgorithm implements EnumWithValue<SMB3CompressionAlgorithm> {
    NONE(0),
    LZNT1(1),
    LZ77(2),
    LZ77_HUFFMAN(3);

    private long value;

    SMB3CompressionAlgorithm(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
