package com.hierynomus.security.jce;

import com.hierynomus.security.AEADBlockCipher;
import com.hierynomus.security.Cipher;
import com.hierynomus.security.SecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class JceAEADCipher implements AEADBlockCipher {
    private Cipher cipher;

    public JceAEADCipher(String str, Provider provider, String str2) throws SecurityException {
        try {
            if (provider != null) {
                this.cipher = Cipher.getInstance(str, provider);
            } else if (str2 != null) {
                this.cipher = Cipher.getInstance(str, str2);
            } else {
                this.cipher = Cipher.getInstance(str);
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

    @Override // com.hierynomus.security.AEADBlockCipher
    public byte[] doFinal(byte[] bArr, int i10, int i11) throws SecurityException {
        try {
            return this.cipher.doFinal(bArr, i10, i11);
        } catch (BadPaddingException | IllegalBlockSizeException e7) {
            throw new SecurityException(e7);
        }
    }

    @Override // com.hierynomus.security.AEADBlockCipher
    public void init(Cipher.CryptMode cryptMode, byte[] bArr, GCMParameterSpec gCMParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException, SecurityException {
        try {
            if (Cipher.CryptMode.DECRYPT == cryptMode) {
                this.cipher.init(2, new SecretKeySpec(bArr, this.cipher.getAlgorithm().split("/")[0]), gCMParameterSpec);
            } else {
                this.cipher.init(1, new SecretKeySpec(bArr, this.cipher.getAlgorithm().split("/")[0]), gCMParameterSpec);
            }
        } catch (InvalidAlgorithmParameterException e7) {
            e = e7;
            throw new SecurityException(e);
        } catch (InvalidKeyException e10) {
            e = e10;
            throw new SecurityException(e);
        }
    }

    @Override // com.hierynomus.security.AEADBlockCipher
    public void reset() {
    }

    @Override // com.hierynomus.security.AEADBlockCipher
    public byte[] update(byte[] bArr, int i10, int i11) {
        return this.cipher.update(bArr, i10, i11);
    }

    @Override // com.hierynomus.security.AEADBlockCipher
    public void updateAAD(byte[] bArr, int i10, int i11) {
        this.cipher.updateAAD(bArr, i10, i11);
    }
}
