package org.bouncycastle.pqc.crypto.mlkem;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import g.b;
import java.security.SecureRandom;
import org.bouncycastle.pqc.crypto.mlkem.Symmetric;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
class MLKEMEngine {
    private static final int KyberEta2 = 2;
    private static final int KyberIndCpaMsgBytes = 32;
    public static final int KyberN = 256;
    public static final int KyberPolyBytes = 384;
    public static final int KyberQ = 3329;
    public static final int KyberQinv = 62209;
    private static final int KyberSharedSecretBytes = 32;
    public static final int KyberSymBytes = 32;
    private final int CryptoBytes;
    private final int CryptoCipherTextBytes;
    private final int CryptoPublicKeyBytes;
    private final int CryptoSecretKeyBytes;
    private final int KyberCipherTextBytes;
    private final int KyberEta1;
    private final int KyberIndCpaBytes;
    private final int KyberIndCpaPublicKeyBytes;
    private final int KyberIndCpaSecretKeyBytes;
    private final int KyberK;
    private final int KyberPolyCompressedBytes;
    private final int KyberPolyVecBytes;
    private final int KyberPolyVecCompressedBytes;
    private final int KyberPublicKeyBytes;
    private final int KyberSecretKeyBytes;
    private MLKEMIndCpa indCpa;
    private SecureRandom random;
    private final int sessionKeyLength;
    private final Symmetric symmetric;

    public MLKEMEngine(int i10) {
        this.KyberK = i10;
        if (i10 == 2) {
            this.KyberEta1 = 3;
        } else {
            if (i10 != 3) {
                if (i10 != 4) {
                    throw new IllegalArgumentException(b.i("K: ", i10, " is not supported for Crystals Kyber"));
                }
                this.KyberEta1 = 2;
                this.KyberPolyCompressedBytes = CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ;
                this.KyberPolyVecCompressedBytes = i10 * 352;
                this.sessionKeyLength = 32;
                int i11 = i10 * 384;
                this.KyberPolyVecBytes = i11;
                int i12 = i11 + 32;
                this.KyberIndCpaPublicKeyBytes = i12;
                this.KyberIndCpaSecretKeyBytes = i11;
                int i13 = this.KyberPolyVecCompressedBytes + this.KyberPolyCompressedBytes;
                this.KyberIndCpaBytes = i13;
                this.KyberPublicKeyBytes = i12;
                int i14 = i11 + i12 + 64;
                this.KyberSecretKeyBytes = i14;
                this.KyberCipherTextBytes = i13;
                this.CryptoBytes = 32;
                this.CryptoSecretKeyBytes = i14;
                this.CryptoPublicKeyBytes = i12;
                this.CryptoCipherTextBytes = i13;
                this.symmetric = new Symmetric.ShakeSymmetric();
                this.indCpa = new MLKEMIndCpa(this);
            }
            this.KyberEta1 = 2;
        }
        this.KyberPolyCompressedBytes = 128;
        this.KyberPolyVecCompressedBytes = i10 * 320;
        this.sessionKeyLength = 32;
        int i112 = i10 * 384;
        this.KyberPolyVecBytes = i112;
        int i122 = i112 + 32;
        this.KyberIndCpaPublicKeyBytes = i122;
        this.KyberIndCpaSecretKeyBytes = i112;
        int i132 = this.KyberPolyVecCompressedBytes + this.KyberPolyCompressedBytes;
        this.KyberIndCpaBytes = i132;
        this.KyberPublicKeyBytes = i122;
        int i142 = i112 + i122 + 64;
        this.KyberSecretKeyBytes = i142;
        this.KyberCipherTextBytes = i132;
        this.CryptoBytes = 32;
        this.CryptoSecretKeyBytes = i142;
        this.CryptoPublicKeyBytes = i122;
        this.CryptoCipherTextBytes = i132;
        this.symmetric = new Symmetric.ShakeSymmetric();
        this.indCpa = new MLKEMIndCpa(this);
    }

    private void cmov(byte[] bArr, byte[] bArr2, int i10, boolean z) {
        if (z) {
            System.arraycopy(bArr2, 0, bArr, 0, i10);
        } else {
            System.arraycopy(bArr, 0, bArr, 0, i10);
        }
    }

    public static int getKyberEta2() {
        return 2;
    }

    public static int getKyberIndCpaMsgBytes() {
        return 32;
    }

    public byte[][] generateKemKeyPair() {
        byte[] bArr = new byte[32];
        byte[] bArr2 = new byte[32];
        this.random.nextBytes(bArr);
        this.random.nextBytes(bArr2);
        return generateKemKeyPairInternal(bArr, bArr2);
    }

    public byte[][] generateKemKeyPairInternal(byte[] bArr, byte[] bArr2) {
        byte[][] bArrGenerateKeyPair = this.indCpa.generateKeyPair(bArr);
        int i10 = this.KyberIndCpaSecretKeyBytes;
        byte[] bArr3 = new byte[i10];
        System.arraycopy(bArrGenerateKeyPair[1], 0, bArr3, 0, i10);
        byte[] bArr4 = new byte[32];
        this.symmetric.hash_h(bArr4, bArrGenerateKeyPair[0], 0);
        int i11 = this.KyberIndCpaPublicKeyBytes;
        byte[] bArr5 = new byte[i11];
        System.arraycopy(bArrGenerateKeyPair[0], 0, bArr5, 0, i11);
        int i12 = i11 - 32;
        return new byte[][]{Arrays.copyOfRange(bArr5, 0, i12), Arrays.copyOfRange(bArr5, i12, i11), bArr3, bArr4, bArr2, Arrays.concatenate(bArr, bArr2)};
    }

    public int getCryptoBytes() {
        return this.CryptoBytes;
    }

    public int getCryptoCipherTextBytes() {
        return this.CryptoCipherTextBytes;
    }

    public int getCryptoPublicKeyBytes() {
        return this.CryptoPublicKeyBytes;
    }

    public int getCryptoSecretKeyBytes() {
        return this.CryptoSecretKeyBytes;
    }

    public int getKyberCipherTextBytes() {
        return this.KyberCipherTextBytes;
    }

    public int getKyberEta1() {
        return this.KyberEta1;
    }

    public int getKyberIndCpaBytes() {
        return this.KyberIndCpaBytes;
    }

    public int getKyberIndCpaPublicKeyBytes() {
        return this.KyberIndCpaPublicKeyBytes;
    }

    public int getKyberIndCpaSecretKeyBytes() {
        return this.KyberIndCpaSecretKeyBytes;
    }

    public int getKyberK() {
        return this.KyberK;
    }

    public int getKyberPolyCompressedBytes() {
        return this.KyberPolyCompressedBytes;
    }

    public int getKyberPolyVecBytes() {
        return this.KyberPolyVecBytes;
    }

    public int getKyberPolyVecCompressedBytes() {
        return this.KyberPolyVecCompressedBytes;
    }

    public int getKyberPublicKeyBytes() {
        return this.KyberPublicKeyBytes;
    }

    public int getKyberSecretKeyBytes() {
        return this.KyberSecretKeyBytes;
    }

    public void getRandomBytes(byte[] bArr) {
        this.random.nextBytes(bArr);
    }

    public Symmetric getSymmetric() {
        return this.symmetric;
    }

    public void init(SecureRandom secureRandom) {
        this.random = secureRandom;
    }

    public byte[] kemDecrypt(byte[] bArr, byte[] bArr2) {
        return kemDecryptInternal(bArr, bArr2);
    }

    public byte[] kemDecryptInternal(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[64];
        byte[] bArr4 = new byte[64];
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, this.KyberIndCpaSecretKeyBytes, bArr.length);
        System.arraycopy(this.indCpa.decrypt(bArr, bArr2), 0, bArr3, 0, 32);
        System.arraycopy(bArr, this.KyberSecretKeyBytes - 64, bArr3, 32, 32);
        this.symmetric.hash_g(bArr4, bArr3);
        byte[] bArr5 = new byte[this.KyberCipherTextBytes + 32];
        System.arraycopy(bArr, this.KyberSecretKeyBytes - 32, bArr5, 0, 32);
        System.arraycopy(bArr2, 0, bArr5, 32, this.KyberCipherTextBytes);
        this.symmetric.kdf(bArr5, bArr5);
        cmov(bArr4, bArr5, 32, !Arrays.constantTimeAreEqual(bArr2, this.indCpa.encrypt(bArrCopyOfRange, Arrays.copyOfRange(bArr3, 0, 32), Arrays.copyOfRange(bArr4, 32, 64))));
        return Arrays.copyOfRange(bArr4, 0, this.sessionKeyLength);
    }

    public byte[][] kemEncrypt(byte[] bArr, byte[] bArr2) {
        if (bArr.length != this.KyberIndCpaPublicKeyBytes) {
            throw new IllegalArgumentException("Input validation Error: Type check failed for ml-kem encapsulation");
        }
        PolyVec polyVec = new PolyVec(this);
        if (Arrays.areEqual(this.indCpa.packPublicKey(polyVec, this.indCpa.unpackPublicKey(polyVec, bArr)), bArr)) {
            return kemEncryptInternal(bArr, bArr2);
        }
        throw new IllegalArgumentException("Input validation: Modulus check failed for ml-kem encapsulation");
    }

    public byte[][] kemEncryptInternal(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[64];
        byte[] bArr4 = new byte[64];
        System.arraycopy(bArr2, 0, bArr3, 0, 32);
        this.symmetric.hash_h(bArr3, bArr, 32);
        this.symmetric.hash_g(bArr4, bArr3);
        byte[] bArrEncrypt = this.indCpa.encrypt(bArr, Arrays.copyOfRange(bArr3, 0, 32), Arrays.copyOfRange(bArr4, 32, 64));
        int i10 = this.sessionKeyLength;
        byte[] bArr5 = new byte[i10];
        System.arraycopy(bArr4, 0, bArr5, 0, i10);
        return new byte[][]{bArr5, bArrEncrypt};
    }
}
