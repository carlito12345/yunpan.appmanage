package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class FalconPrivateKeyParameters extends FalconKeyParameters {
    private final byte[] F;

    /* renamed from: f, reason: collision with root package name */
    private final byte[] f12297f;

    /* renamed from: g, reason: collision with root package name */
    private final byte[] f12298g;
    private final byte[] pk;

    public FalconPrivateKeyParameters(FalconParameters falconParameters, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(true, falconParameters);
        this.f12297f = Arrays.clone(bArr);
        this.f12298g = Arrays.clone(bArr2);
        this.F = Arrays.clone(bArr3);
        this.pk = Arrays.clone(bArr4);
    }

    public byte[] getEncoded() {
        return Arrays.concatenate(this.f12297f, this.f12298g, this.F);
    }

    public byte[] getG() {
        return Arrays.clone(this.f12298g);
    }

    public byte[] getPublicKey() {
        return Arrays.clone(this.pk);
    }

    public byte[] getSpolyF() {
        return Arrays.clone(this.F);
    }

    public byte[] getSpolyf() {
        return Arrays.clone(this.f12297f);
    }
}
