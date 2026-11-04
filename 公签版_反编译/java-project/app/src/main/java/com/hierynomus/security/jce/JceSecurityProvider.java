package com.hierynomus.security.jce;

import com.hierynomus.security.AEADBlockCipher;
import com.hierynomus.security.Cipher;
import com.hierynomus.security.DerivationFunction;
import com.hierynomus.security.Mac;
import com.hierynomus.security.MessageDigest;
import com.hierynomus.security.SecurityProvider;
import com.hierynomus.security.mac.HmacT64;
import j$.util.Objects;
import java.security.Provider;

/* loaded from: classes.dex */
public class JceSecurityProvider implements SecurityProvider {
    private final Provider jceProvider;
    private final String providerName;

    public JceSecurityProvider() {
        this.jceProvider = null;
        this.providerName = null;
    }

    @Override // com.hierynomus.security.SecurityProvider
    public AEADBlockCipher getAEADBlockCipher(String str) {
        return new JceAEADCipher(str, this.jceProvider, this.providerName);
    }

    @Override // com.hierynomus.security.SecurityProvider
    public Cipher getCipher(String str) {
        return new JceCipher(str, this.jceProvider, this.providerName);
    }

    @Override // com.hierynomus.security.SecurityProvider
    public DerivationFunction getDerivationFunction(String str) {
        return JceDerivationFunctionFactory.create(str);
    }

    @Override // com.hierynomus.security.SecurityProvider
    public MessageDigest getDigest(String str) {
        return new JceMessageDigest(str, this.jceProvider, this.providerName);
    }

    @Override // com.hierynomus.security.SecurityProvider
    public Mac getMac(String str) {
        return Objects.equals(str, "HMACT64") ? new HmacT64(getDigest("MD5")) : new JceMac(str, this.jceProvider, this.providerName);
    }

    public JceSecurityProvider(String str) {
        this.providerName = str;
        this.jceProvider = null;
    }

    public JceSecurityProvider(Provider provider) {
        this.providerName = null;
        this.jceProvider = provider;
    }
}
