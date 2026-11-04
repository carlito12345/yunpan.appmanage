package com.hierynomus.security;

import com.hierynomus.security.Cipher;
import javax.crypto.spec.GCMParameterSpec;

/* loaded from: classes.dex */
public interface AEADBlockCipher {
    byte[] doFinal(byte[] bArr, int i10, int i11);

    void init(Cipher.CryptMode cryptMode, byte[] bArr, GCMParameterSpec gCMParameterSpec);

    void reset();

    byte[] update(byte[] bArr, int i10, int i11);

    void updateAAD(byte[] bArr, int i10, int i11);
}
