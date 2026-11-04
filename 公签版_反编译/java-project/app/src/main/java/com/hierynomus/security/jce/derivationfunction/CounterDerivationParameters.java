package com.hierynomus.security.jce.derivationfunction;

import java.util.Arrays;

/* loaded from: classes.dex */
public class CounterDerivationParameters implements DerivationParameters {
    private int counterLength;
    private byte[] fixedCounterSuffix;
    private byte[] seed;

    public CounterDerivationParameters(byte[] bArr, byte[] bArr2, int i10) {
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("Missing Seed for KDF");
        }
        this.seed = Arrays.copyOf(bArr, bArr.length);
        if (bArr2 == null) {
            this.fixedCounterSuffix = new byte[0];
        } else {
            this.fixedCounterSuffix = Arrays.copyOf(bArr2, bArr2.length);
        }
        this.counterLength = i10;
    }

    public int getCounterLength() {
        return this.counterLength;
    }

    public byte[] getFixedCounterSuffix() {
        return this.fixedCounterSuffix;
    }

    public byte[] getSeed() {
        return this.seed;
    }
}
