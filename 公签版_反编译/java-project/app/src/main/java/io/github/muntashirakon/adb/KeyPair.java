package io.github.muntashirakon.adb;

import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.Certificate;

/* loaded from: classes.dex */
final class KeyPair {
    private final Certificate mCertificate;
    private final PrivateKey mPrivateKey;

    public KeyPair(PrivateKey privateKey, Certificate certificate) {
        this.mPrivateKey = privateKey;
        this.mCertificate = certificate;
    }

    public void destroy() {
        try {
            this.mPrivateKey.destroy();
        } catch (NoSuchMethodError unused) {
        }
    }

    public Certificate getCertificate() {
        return this.mCertificate;
    }

    public PrivateKey getPrivateKey() {
        return this.mPrivateKey;
    }

    public PublicKey getPublicKey() {
        return this.mCertificate.getPublicKey();
    }
}
