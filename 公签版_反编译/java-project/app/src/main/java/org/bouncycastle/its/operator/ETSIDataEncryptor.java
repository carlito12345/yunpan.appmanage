package org.bouncycastle.its.operator;

/* loaded from: classes3.dex */
public interface ETSIDataEncryptor {
    byte[] encrypt(byte[] bArr);

    byte[] getKey();

    byte[] getNonce();
}
