package org.bouncycastle.pqc.crypto.mlkem;

import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class MLKEMPublicKeyParameters extends MLKEMKeyParameters {
    final byte[] rho;

    /* renamed from: t, reason: collision with root package name */
    final byte[] f12359t;

    public MLKEMPublicKeyParameters(MLKEMParameters mLKEMParameters, byte[] bArr) {
        super(false, mLKEMParameters);
        this.f12359t = Arrays.copyOfRange(bArr, 0, bArr.length - 32);
        this.rho = Arrays.copyOfRange(bArr, bArr.length - 32, bArr.length);
    }

    public byte[] getEncoded() {
        return getEncoded(this.f12359t, this.rho);
    }

    public byte[] getRho() {
        return Arrays.clone(this.rho);
    }

    public byte[] getT() {
        return Arrays.clone(this.f12359t);
    }

    public MLKEMPublicKeyParameters(MLKEMParameters mLKEMParameters, byte[] bArr, byte[] bArr2) {
        super(false, mLKEMParameters);
        this.f12359t = Arrays.clone(bArr);
        this.rho = Arrays.clone(bArr2);
    }

    public static byte[] getEncoded(byte[] bArr, byte[] bArr2) {
        return Arrays.concatenate(bArr, bArr2);
    }
}
