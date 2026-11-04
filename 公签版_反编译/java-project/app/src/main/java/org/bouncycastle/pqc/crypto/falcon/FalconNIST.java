package org.bouncycastle.pqc.crypto.falcon;

import java.security.SecureRandom;
import l2.z;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.jcajce.provider.digest.a;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
class FalconNIST {
    final int CRYPTO_BYTES;
    private final int CRYPTO_PUBLICKEYBYTES;
    private final int CRYPTO_SECRETKEYBYTES;
    final int LOGN;
    private final int N;
    final int NONCELEN;
    private final SecureRandom rand;

    public FalconNIST(int i10, int i11, SecureRandom secureRandom) {
        int i12;
        int iB;
        this.rand = secureRandom;
        this.LOGN = i10;
        this.NONCELEN = i11;
        int i13 = 1 << i10;
        this.N = i13;
        this.CRYPTO_PUBLICKEYBYTES = z.a(i13, 14, 8, 1);
        if (i10 == 10) {
            this.CRYPTO_SECRETKEYBYTES = 2305;
            this.CRYPTO_BYTES = 1330;
            return;
        }
        if (i10 == 9 || i10 == 8) {
            i12 = i13 * 12;
        } else {
            if (i10 != 7 && i10 != 6) {
                iB = a.b(i13, 2, 1, i13);
                this.CRYPTO_SECRETKEYBYTES = iB;
                this.CRYPTO_BYTES = 690;
            }
            i12 = i13 * 14;
        }
        iB = (i12 / 8) + 1 + i13;
        this.CRYPTO_SECRETKEYBYTES = iB;
        this.CRYPTO_BYTES = 690;
    }

    public byte[] crypto_sign(byte[] bArr, byte[] bArr2, int i10, byte[] bArr3) {
        int i11 = this.N;
        byte[] bArr4 = new byte[i11];
        byte[] bArr5 = new byte[i11];
        byte[] bArr6 = new byte[i11];
        byte[] bArr7 = new byte[i11];
        short[] sArr = new short[i11];
        short[] sArr2 = new short[i11];
        byte[] bArr8 = new byte[48];
        byte[] bArr9 = new byte[this.NONCELEN];
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        FalconSign falconSign = new FalconSign();
        int i12 = this.LOGN;
        byte[] bArr10 = FalconCodec.max_fg_bits;
        int iTrim_i8_decode = FalconCodec.trim_i8_decode(bArr4, i12, bArr10[i12], bArr3, 0, this.CRYPTO_SECRETKEYBYTES);
        if (iTrim_i8_decode == 0) {
            throw new IllegalStateException("f decode failed");
        }
        int i13 = this.LOGN;
        int iTrim_i8_decode2 = FalconCodec.trim_i8_decode(bArr5, i13, bArr10[i13], bArr3, iTrim_i8_decode, this.CRYPTO_SECRETKEYBYTES - iTrim_i8_decode);
        if (iTrim_i8_decode2 == 0) {
            throw new IllegalStateException("g decode failed");
        }
        int i14 = iTrim_i8_decode + iTrim_i8_decode2;
        int i15 = this.LOGN;
        int iTrim_i8_decode3 = FalconCodec.trim_i8_decode(bArr6, i15, FalconCodec.max_FG_bits[i15], bArr3, i14, this.CRYPTO_SECRETKEYBYTES - i14);
        if (iTrim_i8_decode3 == 0) {
            throw new IllegalArgumentException("F decode failed");
        }
        if (i14 + iTrim_i8_decode3 != this.CRYPTO_SECRETKEYBYTES - 1) {
            throw new IllegalStateException("full key not used");
        }
        if (!FalconVrfy.complete_private(bArr7, bArr4, bArr5, bArr6, this.LOGN, new short[this.N * 2])) {
            throw new IllegalStateException("complete_private failed");
        }
        this.rand.nextBytes(bArr9);
        sHAKEDigest.update(bArr9, 0, this.NONCELEN);
        sHAKEDigest.update(bArr2, 0, i10);
        FalconCommon.hash_to_point_vartime(sHAKEDigest, sArr2, this.LOGN);
        this.rand.nextBytes(bArr8);
        sHAKEDigest.reset();
        sHAKEDigest.update(bArr8, 0, 48);
        falconSign.sign_dyn(sArr, sHAKEDigest, bArr4, bArr5, bArr6, bArr7, sArr2, this.LOGN, new double[this.N * 10]);
        int i16 = (this.CRYPTO_BYTES - 2) - this.NONCELEN;
        byte[] bArr11 = new byte[i16];
        int iComp_encode = FalconCodec.comp_encode(bArr11, i16, sArr, this.LOGN);
        if (iComp_encode == 0) {
            throw new IllegalStateException("signature failed to generate");
        }
        bArr[0] = (byte) (this.LOGN + 48);
        System.arraycopy(bArr9, 0, bArr, 1, this.NONCELEN);
        System.arraycopy(bArr11, 0, bArr, this.NONCELEN + 1, iComp_encode);
        return Arrays.copyOfRange(bArr, 0, this.NONCELEN + 1 + iComp_encode);
    }

    public byte[][] crypto_sign_keypair(byte[] bArr, byte[] bArr2) {
        int i10 = this.N;
        byte[] bArr3 = new byte[i10];
        byte[] bArr4 = new byte[i10];
        byte[] bArr5 = new byte[i10];
        short[] sArr = new short[i10];
        byte[] bArr6 = new byte[48];
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        this.rand.nextBytes(bArr6);
        sHAKEDigest.update(bArr6, 0, 48);
        FalconKeyGen.keygen(sHAKEDigest, bArr3, bArr4, bArr5, sArr, this.LOGN);
        int i11 = this.LOGN;
        bArr2[0] = (byte) (i11 + 80);
        int i12 = this.CRYPTO_SECRETKEYBYTES - 1;
        byte[] bArr7 = FalconCodec.max_fg_bits;
        int iTrim_i8_encode = FalconCodec.trim_i8_encode(bArr2, 1, i12, bArr3, i11, bArr7[i11]);
        if (iTrim_i8_encode == 0) {
            throw new IllegalStateException("f encode failed");
        }
        int i13 = iTrim_i8_encode + 1;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, 1, i13);
        int i14 = this.CRYPTO_SECRETKEYBYTES - i13;
        int i15 = this.LOGN;
        int iTrim_i8_encode2 = FalconCodec.trim_i8_encode(bArr2, i13, i14, bArr4, i15, bArr7[i15]);
        if (iTrim_i8_encode2 == 0) {
            throw new IllegalStateException("g encode failed");
        }
        int i16 = i13 + iTrim_i8_encode2;
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr2, i13, i16);
        int i17 = this.CRYPTO_SECRETKEYBYTES - i16;
        int i18 = this.LOGN;
        int iTrim_i8_encode3 = FalconCodec.trim_i8_encode(bArr2, i16, i17, bArr5, i18, FalconCodec.max_FG_bits[i18]);
        if (iTrim_i8_encode3 == 0) {
            throw new IllegalStateException("F encode failed");
        }
        int i19 = iTrim_i8_encode3 + i16;
        byte[] bArrCopyOfRange3 = Arrays.copyOfRange(bArr2, i16, i19);
        if (i19 != this.CRYPTO_SECRETKEYBYTES) {
            throw new IllegalStateException("secret key encoding failed");
        }
        int i20 = this.LOGN;
        bArr[0] = (byte) i20;
        if (FalconCodec.modq_encode(bArr, this.CRYPTO_PUBLICKEYBYTES - 1, sArr, i20) == this.CRYPTO_PUBLICKEYBYTES - 1) {
            return new byte[][]{Arrays.copyOfRange(bArr, 1, bArr.length), bArrCopyOfRange, bArrCopyOfRange2, bArrCopyOfRange3};
        }
        throw new IllegalStateException("public key encoding failed");
    }

    public int crypto_sign_open(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int i10 = this.N;
        short[] sArr = new short[i10];
        short[] sArr2 = new short[i10];
        short[] sArr3 = new short[i10];
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        if (FalconCodec.modq_decode(sArr, this.LOGN, bArr4, this.CRYPTO_PUBLICKEYBYTES - 1) != this.CRYPTO_PUBLICKEYBYTES - 1) {
            return -1;
        }
        FalconVrfy.to_ntt_monty(sArr, this.LOGN);
        int length = bArr.length;
        int length2 = bArr3.length;
        if (length < 1 || FalconCodec.comp_decode(sArr3, this.LOGN, bArr, length) != length) {
            return -1;
        }
        sHAKEDigest.update(bArr2, 0, this.NONCELEN);
        sHAKEDigest.update(bArr3, 0, length2);
        FalconCommon.hash_to_point_vartime(sHAKEDigest, sArr2, this.LOGN);
        return FalconVrfy.verify_raw(sArr2, sArr3, sArr, this.LOGN, new short[this.N]) == 0 ? -1 : 0;
    }
}
