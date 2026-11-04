package com.hierynomus.security.bc;

import com.hierynomus.security.AEADBlockCipher;
import com.hierynomus.security.Cipher;
import com.hierynomus.security.DerivationFunction;
import com.hierynomus.security.Mac;
import com.hierynomus.security.MessageDigest;
import com.hierynomus.security.SecurityProvider;
import com.hierynomus.security.mac.HmacT64;
import j$.util.Objects;

/* loaded from: classes.dex */
public class BCSecurityProvider implements SecurityProvider {
    @Override // com.hierynomus.security.SecurityProvider
    public AEADBlockCipher getAEADBlockCipher(String str) {
        return BCAEADCipherFactory.create(str);
    }

    @Override // com.hierynomus.security.SecurityProvider
    public Cipher getCipher(String str) {
        return BCCipherFactory.create(str);
    }

    @Override // com.hierynomus.security.SecurityProvider
    public DerivationFunction getDerivationFunction(String str) {
        return BCDerivationFunctionFactory.create(str);
    }

    @Override // com.hierynomus.security.SecurityProvider
    public MessageDigest getDigest(String str) {
        return new BCMessageDigest(str);
    }

    @Override // com.hierynomus.security.SecurityProvider
    public Mac getMac(String str) {
        return Objects.equals(str, "HMACT64") ? new HmacT64(getDigest("MD5")) : new BCMac(str);
    }
}
