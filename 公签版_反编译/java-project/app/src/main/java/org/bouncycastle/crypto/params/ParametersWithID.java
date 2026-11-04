package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class ParametersWithID implements CipherParameters {

    /* renamed from: id, reason: collision with root package name */
    private byte[] f12080id;
    private CipherParameters parameters;

    public ParametersWithID(CipherParameters cipherParameters, byte[] bArr) {
        this.parameters = cipherParameters;
        this.f12080id = bArr;
    }

    public byte[] getID() {
        return this.f12080id;
    }

    public CipherParameters getParameters() {
        return this.parameters;
    }
}
