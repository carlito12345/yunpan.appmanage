package com.hierynomus.security.jce;

import com.hierynomus.security.MessageDigest;
import com.hierynomus.security.SecurityException;
import com.hierynomus.security.jce.messagedigest.MD4;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;

/* loaded from: classes.dex */
public class JceMessageDigest implements MessageDigest {

    /* renamed from: md, reason: collision with root package name */
    private java.security.MessageDigest f3741md;

    public JceMessageDigest(String str, Provider provider, String str2) throws SecurityException {
        try {
            if (provider != null) {
                this.f3741md = java.security.MessageDigest.getInstance(str, provider);
            } else if (str2 != null) {
                this.f3741md = java.security.MessageDigest.getInstance(str, str2);
            } else {
                this.f3741md = java.security.MessageDigest.getInstance(str);
            }
        } catch (NoSuchAlgorithmException e7) {
            if (!"MD4".equals(str)) {
                throw new SecurityException(e7);
            }
            this.f3741md = new MD4();
        } catch (NoSuchProviderException e10) {
            throw new SecurityException(e10);
        }
    }

    @Override // com.hierynomus.security.MessageDigest
    public byte[] digest() {
        return this.f3741md.digest();
    }

    @Override // com.hierynomus.security.MessageDigest
    public int getDigestLength() {
        return this.f3741md.getDigestLength();
    }

    @Override // com.hierynomus.security.MessageDigest
    public void reset() {
        this.f3741md.reset();
    }

    @Override // com.hierynomus.security.MessageDigest
    public void update(byte b10) {
        this.f3741md.update(b10);
    }

    @Override // com.hierynomus.security.MessageDigest
    public void update(byte[] bArr) {
        this.f3741md.update(bArr);
    }

    @Override // com.hierynomus.security.MessageDigest
    public void update(byte[] bArr, int i10, int i11) {
        this.f3741md.update(bArr, i10, i11);
    }
}
