package org.bouncycastle.pqc.crypto.mayo;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.GF16;
import org.bouncycastle.util.Longs;

/* loaded from: classes3.dex */
public class MayoKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: p, reason: collision with root package name */
    private MayoParameters f12342p;
    private SecureRandom random;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        int mVecLimbs = this.f12342p.getMVecLimbs();
        int m10 = this.f12342p.getM();
        int v10 = this.f12342p.getV();
        int o10 = this.f12342p.getO();
        int oBytes = this.f12342p.getOBytes();
        int p1Limbs = this.f12342p.getP1Limbs();
        int p3Limbs = this.f12342p.getP3Limbs();
        int pkSeedBytes = this.f12342p.getPkSeedBytes();
        int skSeedBytes = this.f12342p.getSkSeedBytes();
        byte[] bArr = new byte[this.f12342p.getCpkBytes()];
        byte[] bArr2 = new byte[this.f12342p.getCskBytes()];
        int i10 = oBytes + pkSeedBytes;
        byte[] bArr3 = new byte[i10];
        long[] jArr = new long[this.f12342p.getP2Limbs() + p1Limbs];
        int i11 = v10 * o10;
        byte[] bArr4 = new byte[i11];
        this.random.nextBytes(bArr2);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        int i12 = 0;
        sHAKEDigest.update(bArr2, 0, skSeedBytes);
        sHAKEDigest.doFinal(bArr3, 0, i10);
        GF16.decode(bArr3, pkSeedBytes, bArr4, 0, i11);
        Utils.expandP1P2(this.f12342p, jArr, bArr3);
        long[] jArr2 = new long[o10 * o10 * mVecLimbs];
        GF16Utils.mulAddMUpperTriangularMatXMat(mVecLimbs, jArr, bArr4, jArr, p1Limbs, v10, o10);
        GF16Utils.mulAddMatTransXMMat(mVecLimbs, bArr4, jArr, p1Limbs, jArr2, v10, o10);
        System.arraycopy(bArr3, 0, bArr, 0, pkSeedBytes);
        long[] jArr3 = new long[p3Limbs];
        int i13 = o10 * mVecLimbs;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i12 < o10) {
            int i17 = i14;
            int i18 = i15;
            int i19 = i12;
            while (i19 < o10) {
                int i20 = o10;
                long[] jArr4 = jArr2;
                System.arraycopy(jArr4, i15 + i17, jArr3, i16, mVecLimbs);
                if (i12 != i19) {
                    Longs.xorTo(mVecLimbs, jArr4, i18 + i14, jArr3, i16);
                }
                i16 += mVecLimbs;
                i19++;
                i17 += mVecLimbs;
                i18 += i13;
                jArr2 = jArr4;
                o10 = i20;
            }
            i12++;
            i15 += i13;
            i14 += mVecLimbs;
            o10 = o10;
        }
        Utils.packMVecs(jArr3, bArr, pkSeedBytes, p3Limbs / mVecLimbs, m10);
        Arrays.clear(bArr4);
        Arrays.clear(jArr2);
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new MayoPublicKeyParameters(this.f12342p, bArr), (AsymmetricKeyParameter) new MayoPrivateKeyParameters(this.f12342p, bArr2));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.f12342p = ((MayoKeyGenerationParameters) keyGenerationParameters).getParameters();
        this.random = keyGenerationParameters.getRandom();
    }
}
