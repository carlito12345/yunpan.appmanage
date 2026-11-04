package org.bouncycastle.crypto.threshold;

/* loaded from: classes3.dex */
public interface SplitSecret {
    byte[] getSecret();

    SecretShare[] getSecretShares();
}
