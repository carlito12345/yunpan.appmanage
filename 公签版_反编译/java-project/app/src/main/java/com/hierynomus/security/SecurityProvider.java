package com.hierynomus.security;

/* loaded from: classes.dex */
public interface SecurityProvider {
    AEADBlockCipher getAEADBlockCipher(String str);

    Cipher getCipher(String str);

    DerivationFunction getDerivationFunction(String str);

    MessageDigest getDigest(String str);

    Mac getMac(String str);
}
