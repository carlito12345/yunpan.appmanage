package com.hierynomus.security;

/* loaded from: classes.dex */
public interface MessageDigest {
    byte[] digest();

    int getDigestLength();

    void reset();

    void update(byte b10);

    void update(byte[] bArr);

    void update(byte[] bArr, int i10, int i11);
}
