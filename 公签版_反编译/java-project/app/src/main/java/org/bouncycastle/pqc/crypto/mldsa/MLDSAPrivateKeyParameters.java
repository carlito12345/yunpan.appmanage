package org.bouncycastle.pqc.crypto.mldsa;

import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class MLDSAPrivateKeyParameters extends MLDSAKeyParameters {
    public static final int BOTH = 0;
    public static final int EXPANDED_KEY = 2;
    public static final int SEED_ONLY = 1;

    /* renamed from: k, reason: collision with root package name */
    final byte[] f12350k;
    private final int prefFormat;
    final byte[] rho;

    /* renamed from: s1, reason: collision with root package name */
    final byte[] f12351s1;

    /* renamed from: s2, reason: collision with root package name */
    final byte[] f12352s2;
    private final byte[] seed;

    /* renamed from: t0, reason: collision with root package name */
    final byte[] f12353t0;

    /* renamed from: t1, reason: collision with root package name */
    private final byte[] f12354t1;
    final byte[] tr;

    public MLDSAPrivateKeyParameters(MLDSAParameters mLDSAParameters, byte[] bArr) {
        this(mLDSAParameters, bArr, null);
    }

    public byte[] getEncoded() {
        return Arrays.concatenate(new byte[][]{this.rho, this.f12350k, this.tr, this.f12351s1, this.f12352s2, this.f12353t0});
    }

    public byte[] getK() {
        return Arrays.clone(this.f12350k);
    }

    public MLDSAPrivateKeyParameters getParametersWithFormat(int i10) {
        if (this.prefFormat == i10) {
            return this;
        }
        if (i10 == 0 || i10 == 1) {
            if (this.seed == null) {
                throw new IllegalStateException("no seed available");
            }
        } else if (i10 != 2) {
            throw new IllegalArgumentException("unknown format");
        }
        return new MLDSAPrivateKeyParameters(this, i10);
    }

    public int getPreferredFormat() {
        return this.prefFormat;
    }

    public byte[] getPrivateKey() {
        return getEncoded();
    }

    public byte[] getPublicKey() {
        return MLDSAPublicKeyParameters.getEncoded(this.rho, this.f12354t1);
    }

    public MLDSAPublicKeyParameters getPublicKeyParameters() {
        if (this.f12354t1 == null) {
            return null;
        }
        return new MLDSAPublicKeyParameters(getParameters(), this.rho, this.f12354t1);
    }

    public byte[] getRho() {
        return Arrays.clone(this.rho);
    }

    public byte[] getS1() {
        return Arrays.clone(this.f12351s1);
    }

    public byte[] getS2() {
        return Arrays.clone(this.f12352s2);
    }

    public byte[] getSeed() {
        return Arrays.clone(this.seed);
    }

    public byte[] getT0() {
        return Arrays.clone(this.f12353t0);
    }

    public byte[] getT1() {
        return Arrays.clone(this.f12354t1);
    }

    public byte[] getTr() {
        return Arrays.clone(this.tr);
    }

    public MLDSAPrivateKeyParameters(MLDSAParameters mLDSAParameters, byte[] bArr, MLDSAPublicKeyParameters mLDSAPublicKeyParameters) {
        super(true, mLDSAParameters);
        MLDSAEngine engine = mLDSAParameters.getEngine(null);
        if (bArr.length == 32) {
            byte[][] bArrGenerateKeyPairInternal = engine.generateKeyPairInternal(bArr);
            this.rho = bArrGenerateKeyPairInternal[0];
            this.f12350k = bArrGenerateKeyPairInternal[1];
            this.tr = bArrGenerateKeyPairInternal[2];
            this.f12351s1 = bArrGenerateKeyPairInternal[3];
            this.f12352s2 = bArrGenerateKeyPairInternal[4];
            this.f12353t0 = bArrGenerateKeyPairInternal[5];
            this.f12354t1 = bArrGenerateKeyPairInternal[6];
            this.seed = bArrGenerateKeyPairInternal[7];
        } else {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 32);
            this.rho = bArrCopyOfRange;
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, 32, 64);
            this.f12350k = bArrCopyOfRange2;
            byte[] bArrCopyOfRange3 = Arrays.copyOfRange(bArr, 64, 128);
            this.tr = bArrCopyOfRange3;
            int dilithiumL = (engine.getDilithiumL() * engine.getDilithiumPolyEtaPackedBytes()) + 128;
            byte[] bArrCopyOfRange4 = Arrays.copyOfRange(bArr, 128, dilithiumL);
            this.f12351s1 = bArrCopyOfRange4;
            int dilithiumK = (engine.getDilithiumK() * engine.getDilithiumPolyEtaPackedBytes()) + dilithiumL;
            byte[] bArrCopyOfRange5 = Arrays.copyOfRange(bArr, dilithiumL, dilithiumK);
            this.f12352s2 = bArrCopyOfRange5;
            byte[] bArrCopyOfRange6 = Arrays.copyOfRange(bArr, dilithiumK, (engine.getDilithiumK() * 416) + dilithiumK);
            this.f12353t0 = bArrCopyOfRange6;
            this.f12354t1 = engine.deriveT1(bArrCopyOfRange, bArrCopyOfRange2, bArrCopyOfRange3, bArrCopyOfRange4, bArrCopyOfRange5, bArrCopyOfRange6);
            this.seed = null;
        }
        if (mLDSAPublicKeyParameters != null && !Arrays.constantTimeAreEqual(this.f12354t1, mLDSAPublicKeyParameters.getT1())) {
            throw new IllegalArgumentException("passed in public key does not match private values");
        }
        this.prefFormat = this.seed != null ? 0 : 2;
    }

    public MLDSAPrivateKeyParameters(MLDSAParameters mLDSAParameters, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        this(mLDSAParameters, bArr, bArr2, bArr3, bArr4, bArr5, bArr6, bArr7, null);
    }

    public MLDSAPrivateKeyParameters(MLDSAParameters mLDSAParameters, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7, byte[] bArr8) {
        super(true, mLDSAParameters);
        this.rho = Arrays.clone(bArr);
        this.f12350k = Arrays.clone(bArr2);
        this.tr = Arrays.clone(bArr3);
        this.f12351s1 = Arrays.clone(bArr4);
        this.f12352s2 = Arrays.clone(bArr5);
        this.f12353t0 = Arrays.clone(bArr6);
        this.f12354t1 = Arrays.clone(bArr7);
        this.seed = Arrays.clone(bArr8);
        this.prefFormat = bArr8 != null ? 0 : 2;
    }

    private MLDSAPrivateKeyParameters(MLDSAPrivateKeyParameters mLDSAPrivateKeyParameters, int i10) {
        super(true, mLDSAPrivateKeyParameters.getParameters());
        this.rho = mLDSAPrivateKeyParameters.rho;
        this.f12350k = mLDSAPrivateKeyParameters.f12350k;
        this.tr = mLDSAPrivateKeyParameters.tr;
        this.f12351s1 = mLDSAPrivateKeyParameters.f12351s1;
        this.f12352s2 = mLDSAPrivateKeyParameters.f12352s2;
        this.f12353t0 = mLDSAPrivateKeyParameters.f12353t0;
        this.f12354t1 = mLDSAPrivateKeyParameters.f12354t1;
        this.seed = mLDSAPrivateKeyParameters.seed;
        this.prefFormat = i10;
    }
}
