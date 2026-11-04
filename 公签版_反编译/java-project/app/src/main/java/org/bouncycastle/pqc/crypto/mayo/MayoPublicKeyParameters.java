package org.bouncycastle.pqc.crypto.mayo;

import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class MayoPublicKeyParameters extends MayoKeyParameters {

    /* renamed from: p, reason: collision with root package name */
    private final byte[] f12348p;

    public MayoPublicKeyParameters(MayoParameters mayoParameters, byte[] bArr) {
        super(false, mayoParameters);
        this.f12348p = Arrays.clone(bArr);
    }

    public byte[] getEncoded() {
        return Arrays.clone(this.f12348p);
    }

    public byte[] getP() {
        return Arrays.clone(this.f12348p);
    }
}
