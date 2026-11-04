package com.hierynomus.security.jce;

import com.hierynomus.security.Cipher;
import com.hierynomus.security.SecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class JceCipher implements Cipher {
    private javax.crypto.Cipher cipher;

    public JceCipher(String str, Provider provider, String str2) throws SecurityException {
        try {
            if (provider != null) {
                this.cipher = javax.crypto.Cipher.getInstance(str, provider);
            } else if (str2 != null) {
                this.cipher = javax.crypto.Cipher.getInstance(str, str2);
            } else {
                this.cipher = javax.crypto.Cipher.getInstance(str);
            }
        } catch (NoSuchAlgorithmException e7) {
            e = e7;
            throw new SecurityException(e);
        } catch (NoSuchProviderException e10) {
            e = e10;
            throw new SecurityException(e);
        } catch (NoSuchPaddingException e11) {
            e = e11;
            throw new SecurityException(e);
        }
    }

    @Override // com.hierynomus.security.Cipher
    public int doFinal(byte[] bArr, int i10) throws SecurityException {
        try {
            return this.cipher.doFinal(bArr, i10);
        } catch (BadPaddingException | IllegalBlockSizeException | ShortBufferException e7) {
            throw new SecurityException(e7);
        }
    }

    @Override // com.hierynomus.security.Cipher
    public void init(Cipher.CryptMode cryptMode, byte[] bArr) throws InvalidKeyException, SecurityException {
        try {
            if (Cipher.CryptMode.DECRYPT == cryptMode) {
                this.cipher.init(2, new SecretKeySpec(bArr, this.cipher.getAlgorithm().split("/")[0]));
            } else {
                this.cipher.init(1, new SecretKeySpec(bArr, this.cipher.getAlgorithm().split("/")[0]));
            }
        } catch (InvalidKeyException e7) {
            throw new SecurityException(e7);
        }
    }

    @Override // com.hierynomus.security.Cipher
    public void reset() {
    }

    @Override // com.hierynomus.security.Cipher
    public int update(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws SecurityException {
        try {
            return this.cipher.update(bArr, i10, i11, bArr2, i12);
        } catch (ShortBufferException e7) {
            throw new SecurityException(e7);
        }
    }
}
