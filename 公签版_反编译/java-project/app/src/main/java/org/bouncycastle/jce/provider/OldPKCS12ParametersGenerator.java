package org.bouncycastle.jce.provider;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes3.dex */
class OldPKCS12ParametersGenerator extends PBEParametersGenerator {
    public static final int IV_MATERIAL = 2;
    public static final int KEY_MATERIAL = 1;
    public static final int MAC_MATERIAL = 3;
    private Digest digest;

    /* renamed from: u, reason: collision with root package name */
    private int f12135u;

    /* renamed from: v, reason: collision with root package name */
    private int f12136v;

    public OldPKCS12ParametersGenerator(Digest digest) {
        this.digest = digest;
        if (digest instanceof MD5Digest) {
            this.f12135u = 16;
        } else {
            if (!(digest instanceof SHA1Digest) && !(digest instanceof RIPEMD160Digest)) {
                throw new IllegalArgumentException("Digest " + digest.getAlgorithmName() + " unsupported");
            }
            this.f12135u = 20;
        }
        this.f12136v = 64;
    }

    private void adjust(byte[] bArr, int i10, byte[] bArr2) {
        int i11 = (bArr2[bArr2.length - 1] & 255) + (bArr[(bArr2.length + i10) - 1] & 255) + 1;
        bArr[(bArr2.length + i10) - 1] = (byte) i11;
        int i12 = i11 >>> 8;
        for (int length = bArr2.length - 2; length >= 0; length--) {
            int i13 = i10 + length;
            int i14 = (bArr2[length] & 255) + (bArr[i13] & 255) + i12;
            bArr[i13] = (byte) i14;
            i12 = i14 >>> 8;
        }
    }

    private byte[] generateDerivedKey(int i10, int i11) {
        byte[] bArr;
        byte[] bArr2;
        int i12 = this.f12136v;
        byte[] bArr3 = new byte[i12];
        byte[] bArr4 = new byte[i11];
        int i13 = 0;
        for (int i14 = 0; i14 != i12; i14++) {
            bArr3[i14] = (byte) i10;
        }
        byte[] bArr5 = this.salt;
        if (bArr5 == null || bArr5.length == 0) {
            bArr = new byte[0];
        } else {
            int i15 = this.f12136v;
            int length = (((bArr5.length + i15) - 1) / i15) * i15;
            bArr = new byte[length];
            for (int i16 = 0; i16 != length; i16++) {
                byte[] bArr6 = this.salt;
                bArr[i16] = bArr6[i16 % bArr6.length];
            }
        }
        byte[] bArr7 = this.password;
        if (bArr7 == null || bArr7.length == 0) {
            bArr2 = new byte[0];
        } else {
            int i17 = this.f12136v;
            int length2 = (((bArr7.length + i17) - 1) / i17) * i17;
            bArr2 = new byte[length2];
            for (int i18 = 0; i18 != length2; i18++) {
                byte[] bArr8 = this.password;
                bArr2[i18] = bArr8[i18 % bArr8.length];
            }
        }
        int length3 = bArr.length + bArr2.length;
        byte[] bArr9 = new byte[length3];
        System.arraycopy(bArr, 0, bArr9, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr9, bArr.length, bArr2.length);
        int i19 = this.f12136v;
        byte[] bArr10 = new byte[i19];
        int i20 = this.f12135u;
        int i21 = ((i11 + i20) - 1) / i20;
        int i22 = 1;
        while (i22 <= i21) {
            int i23 = this.f12135u;
            byte[] bArr11 = new byte[i23];
            this.digest.update(bArr3, i13, i12);
            this.digest.update(bArr9, i13, length3);
            this.digest.doFinal(bArr11, i13);
            for (int i24 = 1; i24 != this.iterationCount; i24++) {
                this.digest.update(bArr11, i13, i23);
                this.digest.doFinal(bArr11, i13);
            }
            for (int i25 = 0; i25 != i19; i25++) {
                bArr10[i22] = bArr11[i25 % i23];
            }
            int i26 = 0;
            while (true) {
                int i27 = this.f12136v;
                if (i26 == length3 / i27) {
                    break;
                }
                adjust(bArr9, i27 * i26, bArr10);
                i26++;
            }
            if (i22 == i21) {
                int i28 = i22 - 1;
                int i29 = this.f12135u;
                System.arraycopy(bArr11, 0, bArr4, i28 * i29, i11 - (i28 * i29));
            } else {
                System.arraycopy(bArr11, 0, bArr4, (i22 - 1) * this.f12135u, i23);
            }
            i22++;
            i13 = 0;
        }
        return bArr4;
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedMacParameters(int i10) {
        int i11 = i10 / 8;
        return new KeyParameter(generateDerivedKey(3, i11), 0, i11);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int i10) {
        int i11 = i10 / 8;
        return new KeyParameter(generateDerivedKey(1, i11), 0, i11);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int i10, int i11) {
        int i12 = i10 / 8;
        int i13 = i11 / 8;
        byte[] bArrGenerateDerivedKey = generateDerivedKey(1, i12);
        return new ParametersWithIV(new KeyParameter(bArrGenerateDerivedKey, 0, i12), generateDerivedKey(2, i13), 0, i13);
    }
}
