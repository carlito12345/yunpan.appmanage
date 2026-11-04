package com.hierynomus.security;

import com.hierynomus.security.jce.derivationfunction.DerivationParameters;

/* loaded from: classes.dex */
public interface DerivationFunction {
    int generateBytes(byte[] bArr, int i10, int i11);

    void init(DerivationParameters derivationParameters);
}
