package org.bouncycastle.pqc.crypto.sphincs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.pqc.crypto.sphincs.Tree;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public class SPHINCS256Signer implements MessageSigner {
    private final HashFunctions hashFunctions;
    private byte[] keyData;

    public SPHINCS256Signer(Digest digest, Digest digest2) {
        if (digest.getDigestSize() != 32) {
            throw new IllegalArgumentException("n-digest needs to produce 32 bytes of output");
        }
        if (digest2.getDigestSize() != 64) {
            throw new IllegalArgumentException("2n-digest needs to produce 64 bytes of output");
        }
        this.hashFunctions = new HashFunctions(digest, digest2);
    }

    public static void compute_authpath_wots(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int i10, Tree.leafaddr leafaddrVar, byte[] bArr3, byte[] bArr4, int i11) {
        Tree.leafaddr leafaddrVar2 = new Tree.leafaddr(leafaddrVar);
        byte[] bArr5 = new byte[2048];
        byte[] bArr6 = new byte[1024];
        byte[] bArr7 = new byte[68608];
        leafaddrVar2.subleaf = 0L;
        while (true) {
            long j10 = leafaddrVar2.subleaf;
            if (j10 >= 32) {
                break;
            }
            Seed.get_seed(hashFunctions, bArr6, (int) (j10 * 32), bArr3, leafaddrVar2);
            leafaddrVar2.subleaf++;
        }
        Wots wots = new Wots();
        leafaddrVar2.subleaf = 0L;
        while (true) {
            long j11 = leafaddrVar2.subleaf;
            if (j11 >= 32) {
                break;
            }
            wots.wots_pkgen(hashFunctions, bArr7, (int) (j11 * 2144), bArr6, (int) (j11 * 32), bArr4, 0);
            leafaddrVar2.subleaf++;
        }
        leafaddrVar2.subleaf = 0L;
        while (true) {
            long j12 = leafaddrVar2.subleaf;
            if (j12 >= 32) {
                break;
            }
            Tree.l_tree(hashFunctions, bArr5, (int) ((j12 * 32) + 1024), bArr7, (int) (j12 * 2144), bArr4, 0);
            leafaddrVar2.subleaf++;
        }
        int i12 = 0;
        for (int i13 = 32; i13 > 0; i13 >>>= 1) {
            for (int i14 = 0; i14 < i13; i14 += 2) {
                hashFunctions.hash_2n_n_mask(bArr5, ((i14 >>> 1) * 32) + ((i13 >>> 1) * 32), bArr5, (i14 * 32) + (i13 * 32), bArr4, (i12 + 7) * 64);
            }
            i12++;
        }
        int i15 = (int) leafaddrVar.subleaf;
        for (int i16 = 0; i16 < i11; i16++) {
            System.arraycopy(bArr5, (((i15 >>> i16) ^ 1) * 32) + ((32 >>> i16) * 32), bArr2, (i16 * 32) + i10, 32);
        }
        System.arraycopy(bArr5, 32, bArr, 0, 32);
    }

    public static void validate_authpath(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int i10, byte[] bArr3, int i11, byte[] bArr4, int i12) {
        byte[] bArr5 = new byte[64];
        if ((i10 & 1) != 0) {
            for (int i13 = 0; i13 < 32; i13++) {
                bArr5[i13 + 32] = bArr2[i13];
            }
            for (int i14 = 0; i14 < 32; i14++) {
                bArr5[i14] = bArr3[i11 + i14];
            }
        } else {
            for (int i15 = 0; i15 < 32; i15++) {
                bArr5[i15] = bArr2[i15];
            }
            for (int i16 = 0; i16 < 32; i16++) {
                bArr5[i16 + 32] = bArr3[i11 + i16];
            }
        }
        int i17 = i11 + 32;
        int i18 = 0;
        int i19 = i10;
        while (i18 < i12 - 1) {
            int i20 = i19 >>> 1;
            if ((i20 & 1) != 0) {
                hashFunctions.hash_2n_n_mask(bArr5, 32, bArr5, 0, bArr4, (i18 + 7) * 64);
                for (int i21 = 0; i21 < 32; i21++) {
                    bArr5[i21] = bArr3[i17 + i21];
                }
            } else {
                hashFunctions.hash_2n_n_mask(bArr5, 0, bArr5, 0, bArr4, (i18 + 7) * 64);
                for (int i22 = 0; i22 < 32; i22++) {
                    bArr5[i22 + 32] = bArr3[i17 + i22];
                }
            }
            i17 += 32;
            i18++;
            i19 = i20;
        }
        hashFunctions.hash_2n_n_mask(bArr, 0, bArr5, 0, bArr4, (i12 + 6) * 64);
    }

    private void zerobytes(byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 != i11; i12++) {
            bArr[i10 + i12] = 0;
        }
    }

    public byte[] crypto_sign(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[41000];
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[64];
        long[] jArr = new long[8];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[32];
        byte[] bArr8 = new byte[1024];
        byte[] bArr9 = new byte[1088];
        for (int i10 = 0; i10 < 1088; i10++) {
            bArr9[i10] = bArr2[i10];
        }
        System.arraycopy(bArr9, 1056, bArr3, 40968, 32);
        Digest messageHash = hashFunctions.getMessageHash();
        byte[] bArr10 = new byte[messageHash.getDigestSize()];
        messageHash.update(bArr3, 40968, 32);
        messageHash.update(bArr, 0, bArr.length);
        messageHash.doFinal(bArr10, 0);
        zerobytes(bArr3, 40968, 32);
        int i11 = 0;
        for (int i12 = 8; i11 != i12; i12 = 8) {
            jArr[i11] = Pack.littleEndianToLong(bArr10, i11 * 8);
            i11++;
        }
        long j10 = jArr[0] & 1152921504606846975L;
        System.arraycopy(bArr10, 16, bArr4, 0, 32);
        System.arraycopy(bArr4, 0, bArr3, 39912, 32);
        Tree.leafaddr leafaddrVar = new Tree.leafaddr();
        leafaddrVar.level = 11;
        leafaddrVar.subtree = 0L;
        leafaddrVar.subleaf = 0L;
        System.arraycopy(bArr9, 32, bArr3, 39944, 1024);
        Tree.treehash(hashFunctions, bArr3, 40968, 5, bArr9, leafaddrVar, bArr3, 39944);
        Digest messageHash2 = hashFunctions.getMessageHash();
        messageHash2.update(bArr3, 39912, 1088);
        messageHash2.update(bArr, 0, bArr.length);
        messageHash2.doFinal(bArr5, 0);
        Tree.leafaddr leafaddrVar2 = new Tree.leafaddr();
        leafaddrVar2.level = 12;
        leafaddrVar2.subleaf = (int) (r19 & 31);
        leafaddrVar2.subtree = j10 >>> 5;
        for (int i13 = 0; i13 < 32; i13++) {
            bArr3[i13] = bArr4[i13];
        }
        byte[] bArr11 = bArr8;
        System.arraycopy(bArr9, 32, bArr11, 0, 1024);
        for (int i14 = 0; i14 < 8; i14++) {
            bArr3[32 + i14] = (byte) ((j10 >>> (i14 * 8)) & 255);
        }
        Seed.get_seed(hashFunctions, bArr7, 0, bArr9, leafaddrVar2);
        new Horst();
        int iHorst_sign = 40 + Horst.horst_sign(hashFunctions, bArr3, 40, bArr6, bArr7, bArr11, bArr5);
        Wots wots = new Wots();
        int i15 = iHorst_sign;
        int i16 = 0;
        for (int i17 = 12; i16 < i17; i17 = 12) {
            leafaddrVar2.level = i16;
            Seed.get_seed(hashFunctions, bArr7, 0, bArr9, leafaddrVar2);
            int i18 = i15;
            int i19 = i16;
            byte[] bArr12 = bArr11;
            wots.wots_sign(hashFunctions, bArr3, i15, bArr6, bArr7, bArr12);
            compute_authpath_wots(hashFunctions, bArr6, bArr3, i18 + 2144, leafaddrVar2, bArr9, bArr12, 5);
            i15 = i18 + 2304;
            long j11 = leafaddrVar2.subtree;
            leafaddrVar2.subleaf = (int) (j11 & 31);
            leafaddrVar2.subtree = j11 >>> 5;
            i16 = i19 + 1;
            bArr11 = bArr11;
        }
        zerobytes(bArr9, 0, 1088);
        return bArr3;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        return crypto_sign(this.hashFunctions, bArr, this.keyData);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!z) {
            this.keyData = ((SPHINCSPublicKeyParameters) cipherParameters).getKeyData();
        } else if (cipherParameters instanceof ParametersWithRandom) {
            this.keyData = ((SPHINCSPrivateKeyParameters) ((ParametersWithRandom) cipherParameters).getParameters()).getKeyData();
        } else {
            this.keyData = ((SPHINCSPrivateKeyParameters) cipherParameters).getKeyData();
        }
    }

    public boolean verify(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[2144];
        byte[] bArr5 = new byte[32];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[41000];
        byte[] bArr8 = new byte[1056];
        if (bArr2.length != 41000) {
            throw new IllegalArgumentException("signature wrong size");
        }
        byte[] bArr9 = new byte[64];
        for (int i10 = 0; i10 < 1056; i10++) {
            bArr8[i10] = bArr3[i10];
        }
        byte[] bArr10 = new byte[32];
        for (int i11 = 0; i11 < 32; i11++) {
            bArr10[i11] = bArr2[i11];
        }
        System.arraycopy(bArr2, 0, bArr7, 0, 41000);
        Digest messageHash = hashFunctions.getMessageHash();
        messageHash.update(bArr10, 0, 32);
        messageHash.update(bArr8, 0, 1056);
        messageHash.update(bArr, 0, bArr.length);
        messageHash.doFinal(bArr9, 0);
        long j10 = 0;
        for (int i12 = 0; i12 < 8; i12++) {
            j10 ^= (bArr7[32 + i12] & 255) << (i12 * 8);
        }
        new Horst();
        Horst.horst_verify(hashFunctions, bArr6, bArr7, 40, bArr8, bArr9);
        Wots wots = new Wots();
        int i13 = 0;
        int i14 = 13352;
        while (i13 < 12) {
            int i15 = i14;
            wots.wots_verify(hashFunctions, bArr4, bArr7, i14, bArr6, bArr8);
            Tree.l_tree(hashFunctions, bArr5, 0, bArr4, 0, bArr8, 0);
            byte[] bArr11 = bArr8;
            byte[] bArr12 = bArr7;
            validate_authpath(hashFunctions, bArr6, bArr5, (int) (31 & j10), bArr12, i15 + 2144, bArr11, 5);
            j10 >>= 5;
            i14 = i15 + 2304;
            i13++;
            bArr8 = bArr11;
            bArr7 = bArr12;
            bArr6 = bArr6;
            bArr5 = bArr5;
        }
        byte[] bArr13 = bArr8;
        byte[] bArr14 = bArr6;
        boolean z = true;
        for (int i16 = 0; i16 < 32; i16++) {
            z &= bArr14[i16] == bArr13[i16 + 1024];
        }
        return z;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        return verify(this.hashFunctions, bArr, bArr2, this.keyData);
    }
}
