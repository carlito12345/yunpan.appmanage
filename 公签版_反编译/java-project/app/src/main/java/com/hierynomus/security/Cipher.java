package com.hierynomus.security;

/* loaded from: classes.dex */
public interface Cipher {

    public enum CryptMode {
        ENCRYPT,
        DECRYPT
    }

    int doFinal(byte[] bArr, int i10);

    void init(CryptMode cryptMode, byte[] bArr);

    void reset();

    int update(byte[] bArr, int i10, int i11, byte[] bArr2, int i12);
}
