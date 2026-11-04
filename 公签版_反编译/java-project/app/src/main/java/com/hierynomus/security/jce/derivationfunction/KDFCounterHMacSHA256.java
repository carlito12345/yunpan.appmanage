package com.hierynomus.security.jce.derivationfunction;

import com.hierynomus.security.SecurityException;
import com.hierynomus.security.jce.JceDerivationFunction;
import java.security.InvalidKeyException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class KDFCounterHMacSHA256 extends JceDerivationFunction {
    private byte[] fixedSuffix;
    private Mac mac = Mac.getInstance("HmacSHA256");
    private int maxLength;

    @Override // com.hierynomus.security.jce.JceDerivationFunction, com.hierynomus.security.DerivationFunction
    public int generateBytes(byte[] bArr, int i10, int i11) throws IllegalStateException {
        int i12 = i11 / 32;
        if (i11 % 32 != 0) {
            i12++;
        }
        int i13 = 0;
        int i14 = 0;
        while (i13 < i12) {
            i13++;
            this.mac.update(new byte[]{(byte) (i13 >>> 24), (byte) (i13 >>> 16), (byte) (i13 >>> 8), (byte) i13});
            this.mac.update(this.fixedSuffix);
            byte[] bArrDoFinal = this.mac.doFinal();
            int length = bArrDoFinal.length;
            if (bArrDoFinal.length + i14 > i11) {
                length = i11 - i14;
            }
            System.arraycopy(bArrDoFinal, 0, bArr, i10, length);
            i14 += length;
            i10 += length;
        }
        return i11;
    }

    @Override // com.hierynomus.security.jce.JceDerivationFunction, com.hierynomus.security.DerivationFunction
    public void init(DerivationParameters derivationParameters) throws InvalidKeyException, SecurityException {
        if (!(derivationParameters instanceof CounterDerivationParameters)) {
            throw new IllegalArgumentException("Parameters should be a CounterDerivationParameters");
        }
        CounterDerivationParameters counterDerivationParameters = (CounterDerivationParameters) derivationParameters;
        try {
            this.mac.init(new SecretKeySpec(counterDerivationParameters.getSeed(), "HmacSHA256"));
            this.fixedSuffix = counterDerivationParameters.getFixedCounterSuffix();
            this.maxLength = counterDerivationParameters.getCounterLength();
        } catch (InvalidKeyException e7) {
            throw new SecurityException(e7);
        }
    }
}
