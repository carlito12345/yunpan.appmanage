package com.hierynomus.security.jce;

import com.hierynomus.security.Mac;
import com.hierynomus.security.SecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class JceMac implements Mac {
    private final String algorithm;
    private javax.crypto.Mac mac;

    public JceMac(String str, Provider provider, String str2) throws SecurityException {
        this.algorithm = str;
        try {
            if (provider != null) {
                this.mac = javax.crypto.Mac.getInstance(str, provider);
            } else if (str2 != null) {
                this.mac = javax.crypto.Mac.getInstance(str, str2);
            } else {
                this.mac = javax.crypto.Mac.getInstance(str);
            }
        } catch (NoSuchAlgorithmException e7) {
            e = e7;
            throw new SecurityException(e);
        } catch (NoSuchProviderException e10) {
            e = e10;
            throw new SecurityException(e);
        }
    }

    @Override // com.hierynomus.security.Mac
    public byte[] doFinal() {
        return this.mac.doFinal();
    }

    @Override // com.hierynomus.security.Mac
    public void init(byte[] bArr) throws InvalidKeyException, SecurityException {
        try {
            this.mac.init(new SecretKeySpec(bArr, this.algorithm));
        } catch (InvalidKeyException e7) {
            throw new SecurityException(e7);
        }
    }

    @Override // com.hierynomus.security.Mac
    public void reset() {
        this.mac.reset();
    }

    @Override // com.hierynomus.security.Mac
    public void update(byte b10) throws IllegalStateException {
        this.mac.update(b10);
    }

    @Override // com.hierynomus.security.Mac
    public void update(byte[] bArr) throws IllegalStateException {
        this.mac.update(bArr);
    }

    @Override // com.hierynomus.security.Mac
    public void update(byte[] bArr, int i10, int i11) throws IllegalStateException {
        this.mac.update(bArr, i10, i11);
    }
}
