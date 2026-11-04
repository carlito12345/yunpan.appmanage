package org.bouncycastle.pqc.crypto.picnic;

import da.b;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.logging.Logger;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.math.raw.Bits;
import org.bouncycastle.pqc.crypto.picnic.Signature;
import org.bouncycastle.pqc.crypto.picnic.Signature2;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
class PicnicEngine {
    private static final Logger LOG = Logger.getLogger(PicnicEngine.class.getName());
    protected static final int LOWMC_MAX_AND_GATES = 1144;
    protected static final int LOWMC_MAX_KEY_BITS = 256;
    private static final int LOWMC_MAX_STATE_SIZE = 64;
    protected static final int LOWMC_MAX_WORDS = 16;
    private static final int MAX_AUX_BYTES = 176;
    private static final int MAX_DIGEST_SIZE = 64;
    private static final int PICNIC_MAX_LOWMC_BLOCK_SIZE = 32;
    private static final int TRANSFORM_FS = 0;
    private static final int TRANSFORM_INVALID = 255;
    private static final int TRANSFORM_UR = 1;
    private static final int WORD_SIZE_BITS = 32;
    protected static final int saltSizeBytes = 32;
    private final int CRYPTO_BYTES;
    private final int CRYPTO_PUBLICKEYBYTES;
    private final int CRYPTO_SECRETKEYBYTES;
    protected final int UnruhGWithInputBytes;
    protected final int UnruhGWithoutInputBytes;
    protected final int andSizeBytes;
    protected final Xof digest;
    protected final int digestSizeBytes;
    protected final LowmcConstants lowmcConstants;
    protected final int numMPCParties;
    protected final int numMPCRounds;
    protected final int numOpenedRounds;
    protected final int numRounds;
    protected final int numSboxes;
    private final int parameters;
    protected final int pqSecurityLevel;
    protected final int seedSizeBytes;
    private int signatureLength;
    protected final int stateSizeBits;
    protected final int stateSizeBytes;
    protected final int stateSizeWords;
    private final int transform;

    /* JADX WARN: Removed duplicated region for block: B:21:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01ad A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PicnicEngine(int i10, LowmcConstants lowmcConstants) {
        int i11;
        this.lowmcConstants = lowmcConstants;
        this.parameters = i10;
        switch (i10) {
            case 1:
            case 2:
                this.pqSecurityLevel = 64;
                this.stateSizeBits = 128;
                this.numMPCRounds = 219;
                this.numMPCParties = 3;
                this.numSboxes = 10;
                this.numRounds = 20;
                this.digestSizeBytes = 32;
                this.numOpenedRounds = 0;
                switch (i10) {
                    case 1:
                        this.CRYPTO_SECRETKEYBYTES = 49;
                        this.CRYPTO_PUBLICKEYBYTES = 33;
                        i11 = 34036;
                        break;
                    case 2:
                        this.CRYPTO_SECRETKEYBYTES = 49;
                        this.CRYPTO_PUBLICKEYBYTES = 33;
                        i11 = 53965;
                        break;
                    case 3:
                        this.CRYPTO_SECRETKEYBYTES = 73;
                        this.CRYPTO_PUBLICKEYBYTES = 49;
                        i11 = 76784;
                        break;
                    case 4:
                        this.CRYPTO_SECRETKEYBYTES = 73;
                        this.CRYPTO_PUBLICKEYBYTES = 49;
                        i11 = 121857;
                        break;
                    case 5:
                        this.CRYPTO_SECRETKEYBYTES = 97;
                        this.CRYPTO_PUBLICKEYBYTES = 65;
                        i11 = 132876;
                        break;
                    case 6:
                        this.CRYPTO_SECRETKEYBYTES = 97;
                        this.CRYPTO_PUBLICKEYBYTES = 65;
                        i11 = 209526;
                        break;
                    case 7:
                        this.CRYPTO_SECRETKEYBYTES = 52;
                        this.CRYPTO_PUBLICKEYBYTES = 35;
                        i11 = 14612;
                        break;
                    case 8:
                        this.CRYPTO_SECRETKEYBYTES = 73;
                        this.CRYPTO_PUBLICKEYBYTES = 49;
                        i11 = 35028;
                        break;
                    case 9:
                        this.CRYPTO_SECRETKEYBYTES = 97;
                        this.CRYPTO_PUBLICKEYBYTES = 65;
                        i11 = 61028;
                        break;
                    case 10:
                        this.CRYPTO_SECRETKEYBYTES = 52;
                        this.CRYPTO_PUBLICKEYBYTES = 35;
                        i11 = 32061;
                        break;
                    case 11:
                        this.CRYPTO_SECRETKEYBYTES = 73;
                        this.CRYPTO_PUBLICKEYBYTES = 49;
                        i11 = 71179;
                        break;
                    case 12:
                        this.CRYPTO_SECRETKEYBYTES = 97;
                        this.CRYPTO_PUBLICKEYBYTES = 65;
                        i11 = 126286;
                        break;
                    default:
                        i11 = -1;
                        this.CRYPTO_SECRETKEYBYTES = -1;
                        this.CRYPTO_PUBLICKEYBYTES = -1;
                        break;
                }
                this.CRYPTO_BYTES = i11;
                int iNumBytes = Utils.numBytes(this.numSboxes * 3 * this.numRounds);
                this.andSizeBytes = iNumBytes;
                int iNumBytes2 = Utils.numBytes(this.stateSizeBits);
                this.stateSizeBytes = iNumBytes2;
                int iNumBytes3 = Utils.numBytes(this.pqSecurityLevel * 2);
                this.seedSizeBytes = iNumBytes3;
                int i12 = this.stateSizeBits;
                this.stateSizeWords = (i12 + 31) / 32;
                switch (i10) {
                    case 1:
                    case 3:
                    case 5:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                        this.transform = 0;
                        break;
                    case 2:
                    case 4:
                    case 6:
                        this.transform = 1;
                        break;
                    default:
                        this.transform = 255;
                        break;
                }
                if (this.transform == 1) {
                    int i13 = iNumBytes3 + iNumBytes;
                    this.UnruhGWithoutInputBytes = i13;
                    this.UnruhGWithInputBytes = i13 + iNumBytes2;
                } else {
                    this.UnruhGWithoutInputBytes = 0;
                    this.UnruhGWithInputBytes = 0;
                }
                this.digest = (i12 == 128 || i12 == 129) ? new SHAKEDigest(128) : new SHAKEDigest(256);
                return;
            case 3:
            case 4:
                this.pqSecurityLevel = 96;
                this.stateSizeBits = 192;
                this.numMPCRounds = 329;
                this.numMPCParties = 3;
                this.numSboxes = 10;
                this.numRounds = 30;
                this.digestSizeBytes = 48;
                this.numOpenedRounds = 0;
                switch (i10) {
                }
                this.CRYPTO_BYTES = i11;
                int iNumBytes4 = Utils.numBytes(this.numSboxes * 3 * this.numRounds);
                this.andSizeBytes = iNumBytes4;
                int iNumBytes22 = Utils.numBytes(this.stateSizeBits);
                this.stateSizeBytes = iNumBytes22;
                int iNumBytes32 = Utils.numBytes(this.pqSecurityLevel * 2);
                this.seedSizeBytes = iNumBytes32;
                int i122 = this.stateSizeBits;
                this.stateSizeWords = (i122 + 31) / 32;
                switch (i10) {
                }
                if (this.transform == 1) {
                }
                this.digest = (i122 == 128 || i122 == 129) ? new SHAKEDigest(128) : new SHAKEDigest(256);
                return;
            case 5:
            case 6:
                this.pqSecurityLevel = 128;
                this.stateSizeBits = 256;
                this.numMPCRounds = 438;
                this.numMPCParties = 3;
                this.numSboxes = 10;
                this.numRounds = 38;
                this.digestSizeBytes = 64;
                this.numOpenedRounds = 0;
                switch (i10) {
                }
                this.CRYPTO_BYTES = i11;
                int iNumBytes42 = Utils.numBytes(this.numSboxes * 3 * this.numRounds);
                this.andSizeBytes = iNumBytes42;
                int iNumBytes222 = Utils.numBytes(this.stateSizeBits);
                this.stateSizeBytes = iNumBytes222;
                int iNumBytes322 = Utils.numBytes(this.pqSecurityLevel * 2);
                this.seedSizeBytes = iNumBytes322;
                int i1222 = this.stateSizeBits;
                this.stateSizeWords = (i1222 + 31) / 32;
                switch (i10) {
                }
                if (this.transform == 1) {
                }
                this.digest = (i1222 == 128 || i1222 == 129) ? new SHAKEDigest(128) : new SHAKEDigest(256);
                return;
            case 7:
                this.pqSecurityLevel = 64;
                this.stateSizeBits = 129;
                this.numMPCRounds = 250;
                this.numOpenedRounds = 36;
                this.numMPCParties = 16;
                this.numSboxes = 43;
                this.numRounds = 4;
                this.digestSizeBytes = 32;
                switch (i10) {
                }
                this.CRYPTO_BYTES = i11;
                int iNumBytes422 = Utils.numBytes(this.numSboxes * 3 * this.numRounds);
                this.andSizeBytes = iNumBytes422;
                int iNumBytes2222 = Utils.numBytes(this.stateSizeBits);
                this.stateSizeBytes = iNumBytes2222;
                int iNumBytes3222 = Utils.numBytes(this.pqSecurityLevel * 2);
                this.seedSizeBytes = iNumBytes3222;
                int i12222 = this.stateSizeBits;
                this.stateSizeWords = (i12222 + 31) / 32;
                switch (i10) {
                }
                if (this.transform == 1) {
                }
                this.digest = (i12222 == 128 || i12222 == 129) ? new SHAKEDigest(128) : new SHAKEDigest(256);
                return;
            case 8:
                this.pqSecurityLevel = 96;
                this.stateSizeBits = 192;
                this.numMPCRounds = 419;
                this.numOpenedRounds = 52;
                this.numMPCParties = 16;
                this.numSboxes = 64;
                this.numRounds = 4;
                this.digestSizeBytes = 48;
                switch (i10) {
                }
                this.CRYPTO_BYTES = i11;
                int iNumBytes4222 = Utils.numBytes(this.numSboxes * 3 * this.numRounds);
                this.andSizeBytes = iNumBytes4222;
                int iNumBytes22222 = Utils.numBytes(this.stateSizeBits);
                this.stateSizeBytes = iNumBytes22222;
                int iNumBytes32222 = Utils.numBytes(this.pqSecurityLevel * 2);
                this.seedSizeBytes = iNumBytes32222;
                int i122222 = this.stateSizeBits;
                this.stateSizeWords = (i122222 + 31) / 32;
                switch (i10) {
                }
                if (this.transform == 1) {
                }
                this.digest = (i122222 == 128 || i122222 == 129) ? new SHAKEDigest(128) : new SHAKEDigest(256);
                return;
            case 9:
                this.pqSecurityLevel = 128;
                this.stateSizeBits = 255;
                this.numMPCRounds = 601;
                this.numOpenedRounds = 68;
                this.numMPCParties = 16;
                this.numSboxes = 85;
                this.numRounds = 4;
                this.digestSizeBytes = 64;
                switch (i10) {
                }
                this.CRYPTO_BYTES = i11;
                int iNumBytes42222 = Utils.numBytes(this.numSboxes * 3 * this.numRounds);
                this.andSizeBytes = iNumBytes42222;
                int iNumBytes222222 = Utils.numBytes(this.stateSizeBits);
                this.stateSizeBytes = iNumBytes222222;
                int iNumBytes322222 = Utils.numBytes(this.pqSecurityLevel * 2);
                this.seedSizeBytes = iNumBytes322222;
                int i1222222 = this.stateSizeBits;
                this.stateSizeWords = (i1222222 + 31) / 32;
                switch (i10) {
                }
                if (this.transform == 1) {
                }
                this.digest = (i1222222 == 128 || i1222222 == 129) ? new SHAKEDigest(128) : new SHAKEDigest(256);
                return;
            case 10:
                this.pqSecurityLevel = 64;
                this.stateSizeBits = 129;
                this.numMPCRounds = 219;
                this.numMPCParties = 3;
                this.numSboxes = 43;
                this.numRounds = 4;
                this.digestSizeBytes = 32;
                this.numOpenedRounds = 0;
                switch (i10) {
                }
                this.CRYPTO_BYTES = i11;
                int iNumBytes422222 = Utils.numBytes(this.numSboxes * 3 * this.numRounds);
                this.andSizeBytes = iNumBytes422222;
                int iNumBytes2222222 = Utils.numBytes(this.stateSizeBits);
                this.stateSizeBytes = iNumBytes2222222;
                int iNumBytes3222222 = Utils.numBytes(this.pqSecurityLevel * 2);
                this.seedSizeBytes = iNumBytes3222222;
                int i12222222 = this.stateSizeBits;
                this.stateSizeWords = (i12222222 + 31) / 32;
                switch (i10) {
                }
                if (this.transform == 1) {
                }
                this.digest = (i12222222 == 128 || i12222222 == 129) ? new SHAKEDigest(128) : new SHAKEDigest(256);
                return;
            case 11:
                this.pqSecurityLevel = 96;
                this.stateSizeBits = 192;
                this.numMPCRounds = 329;
                this.numMPCParties = 3;
                this.numSboxes = 64;
                this.numRounds = 4;
                this.digestSizeBytes = 48;
                this.numOpenedRounds = 0;
                switch (i10) {
                }
                this.CRYPTO_BYTES = i11;
                int iNumBytes4222222 = Utils.numBytes(this.numSboxes * 3 * this.numRounds);
                this.andSizeBytes = iNumBytes4222222;
                int iNumBytes22222222 = Utils.numBytes(this.stateSizeBits);
                this.stateSizeBytes = iNumBytes22222222;
                int iNumBytes32222222 = Utils.numBytes(this.pqSecurityLevel * 2);
                this.seedSizeBytes = iNumBytes32222222;
                int i122222222 = this.stateSizeBits;
                this.stateSizeWords = (i122222222 + 31) / 32;
                switch (i10) {
                }
                if (this.transform == 1) {
                }
                this.digest = (i122222222 == 128 || i122222222 == 129) ? new SHAKEDigest(128) : new SHAKEDigest(256);
                return;
            case 12:
                this.pqSecurityLevel = 128;
                this.stateSizeBits = 255;
                this.numMPCRounds = 438;
                this.numMPCParties = 3;
                this.numSboxes = 85;
                this.numRounds = 4;
                this.digestSizeBytes = 64;
                this.numOpenedRounds = 0;
                switch (i10) {
                }
                this.CRYPTO_BYTES = i11;
                int iNumBytes42222222 = Utils.numBytes(this.numSboxes * 3 * this.numRounds);
                this.andSizeBytes = iNumBytes42222222;
                int iNumBytes222222222 = Utils.numBytes(this.stateSizeBits);
                this.stateSizeBytes = iNumBytes222222222;
                int iNumBytes322222222 = Utils.numBytes(this.pqSecurityLevel * 2);
                this.seedSizeBytes = iNumBytes322222222;
                int i1222222222 = this.stateSizeBits;
                this.stateSizeWords = (i1222222222 + 31) / 32;
                switch (i10) {
                }
                if (this.transform == 1) {
                }
                this.digest = (i1222222222 == 128 || i1222222222 == 129) ? new SHAKEDigest(128) : new SHAKEDigest(256);
                return;
            default:
                throw new IllegalArgumentException(b.a(i10, "unknown parameter set "));
        }
    }

    private void Commit(byte[] bArr, int i10, View view, byte[] bArr2) {
        this.digest.update((byte) 4);
        this.digest.update(bArr, i10, this.seedSizeBytes);
        this.digest.doFinal(bArr2, 0, this.digestSizeBytes);
        this.digest.update((byte) 0);
        this.digest.update(bArr2, 0, this.digestSizeBytes);
        this.digest.update(Pack.intToLittleEndian(view.inputShare), 0, this.stateSizeBytes);
        this.digest.update(view.communicatedBits, 0, this.andSizeBytes);
        this.digest.update(Pack.intToLittleEndian(view.outputShare), 0, this.stateSizeBytes);
        this.digest.doFinal(bArr2, 0, this.digestSizeBytes);
    }

    private void G(int i10, byte[] bArr, int i11, View view, byte[] bArr2) {
        int i12 = this.seedSizeBytes + this.andSizeBytes;
        this.digest.update((byte) 5);
        this.digest.update(bArr, i11, this.seedSizeBytes);
        this.digest.doFinal(bArr2, 0, this.digestSizeBytes);
        this.digest.update(bArr2, 0, this.digestSizeBytes);
        if (i10 == 2) {
            this.digest.update(Pack.intToLittleEndian(view.inputShare), 0, this.stateSizeBytes);
            i12 += this.stateSizeBytes;
        }
        this.digest.update(view.communicatedBits, 0, this.andSizeBytes);
        this.digest.update(Pack.intToLittleEndian(i12), 0, 2);
        this.digest.doFinal(bArr2, 0, i12);
    }

    private void H3(int[] iArr, int[] iArr2, View[][] viewArr, byte[][][] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[][][] bArr5) {
        this.digest.update((byte) 1);
        byte[] bArr6 = new byte[this.stateSizeWords * 4];
        for (int i10 = 0; i10 < this.numMPCRounds; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                Pack.intToLittleEndian(viewArr[i10][i11].outputShare, bArr6, 0);
                this.digest.update(bArr6, 0, this.stateSizeBytes);
            }
        }
        implH3(iArr, iArr2, bArr, bArr2, bArr3, bArr4, bArr5);
    }

    private void HCP(byte[] bArr, int[] iArr, int[] iArr2, byte[][] bArr2, byte[] bArr3, byte[] bArr4, int[] iArr3, int[] iArr4, byte[] bArr5) {
        for (int i10 = 0; i10 < this.numMPCRounds; i10++) {
            this.digest.update(bArr2[i10], 0, this.digestSizeBytes);
        }
        byte[] bArr6 = new byte[32];
        this.digest.update(bArr3, 0, this.digestSizeBytes);
        this.digest.update(bArr4, 0, 32);
        updateDigest(iArr3, bArr6);
        updateDigest(iArr4, bArr6);
        this.digest.update(bArr5, 0, bArr5.length);
        this.digest.doFinal(bArr, 0, this.digestSizeBytes);
        if (iArr == null || iArr2 == null) {
            return;
        }
        expandChallengeHash(bArr, iArr, iArr2);
    }

    private void LowMCEnc(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[16];
        if (iArr != iArr2) {
            System.arraycopy(iArr, 0, iArr2, 0, this.stateSizeWords);
        }
        KMatricesWithPointer kMatricesWithPointerKMatrix = this.lowmcConstants.KMatrix(this, 0);
        matrix_mul(iArr4, iArr3, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
        xor_array(iArr2, iArr2, iArr4, 0);
        for (int i10 = 1; i10 <= this.numRounds; i10++) {
            KMatricesWithPointer kMatricesWithPointerKMatrix2 = this.lowmcConstants.KMatrix(this, i10);
            matrix_mul(iArr4, iArr3, kMatricesWithPointerKMatrix2.getData(), kMatricesWithPointerKMatrix2.getMatrixPointer());
            substitution(iArr2);
            int i11 = i10 - 1;
            KMatricesWithPointer kMatricesWithPointerLMatrix = this.lowmcConstants.LMatrix(this, i11);
            matrix_mul(iArr2, iArr2, kMatricesWithPointerLMatrix.getData(), kMatricesWithPointerLMatrix.getMatrixPointer());
            KMatricesWithPointer kMatricesWithPointerRConstant = this.lowmcConstants.RConstant(this, i11);
            xor_array(iArr2, iArr2, kMatricesWithPointerRConstant.getData(), kMatricesWithPointerRConstant.getMatrixPointer());
            xor_array(iArr2, iArr2, iArr4, 0);
        }
    }

    public static int appendUnique(int[] iArr, int i10, int i11) {
        if (i11 == 0) {
            iArr[i11] = i10;
        } else {
            for (int i12 = 0; i12 < i11; i12++) {
                if (iArr[i12] == i10) {
                    return i11;
                }
            }
            iArr[i11] = i10;
        }
        return i11 + 1;
    }

    private boolean arePaddingBitsZero(byte[] bArr, int i10) {
        int iNumBytes = Utils.numBytes(i10);
        while (i10 < iNumBytes * 8) {
            if (Utils.getBit(bArr, i10) != 0) {
                return false;
            }
            i10++;
        }
        return true;
    }

    private void aux_mpc_AND(int i10, int i11, int i12, Tape tape) {
        int i13 = this.numMPCParties - 1;
        Utils.setBit(tape.tapes[i13], tape.pos - 1, (byte) ((((i10 & i11) ^ (Utils.parity16(tape.tapesToWord()) ^ Utils.getBit(tape.tapes[i13], tape.pos - 1))) ^ i12) & 255));
    }

    public static int bitsToChunks(int i10, byte[] bArr, int i11, int[] iArr) {
        int i12 = i11 * 8;
        if (i10 > i12) {
            return 0;
        }
        int i13 = i12 / i10;
        for (int i14 = 0; i14 < i13; i14++) {
            iArr[i14] = 0;
            for (int i15 = 0; i15 < i10; i15++) {
                iArr[i14] = iArr[i14] + (Utils.getBit(bArr, (i14 * i10) + i15) << i15);
            }
        }
        return i13;
    }

    private void commit(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i10, int i11) {
        this.digest.update(bArr2, 0, this.seedSizeBytes);
        if (bArr3 != null) {
            this.digest.update(bArr3, 0, this.andSizeBytes);
        }
        this.digest.update(bArr4, 0, 32);
        this.digest.update(Pack.intToLittleEndian(i10), 0, 2);
        this.digest.update(Pack.intToLittleEndian(i11), 0, 2);
        this.digest.doFinal(bArr, 0, this.digestSizeBytes);
    }

    private void commit_h(byte[] bArr, byte[][] bArr2) {
        for (int i10 = 0; i10 < this.numMPCParties; i10++) {
            this.digest.update(bArr2[i10], 0, this.digestSizeBytes);
        }
        this.digest.doFinal(bArr, 0, this.digestSizeBytes);
    }

    private void commit_v(byte[] bArr, byte[] bArr2, Msg msg) {
        this.digest.update(bArr2, 0, this.stateSizeBytes);
        for (int i10 = 0; i10 < this.numMPCParties; i10++) {
            this.digest.update(msg.msgs[i10], 0, Utils.numBytes(msg.pos));
        }
        this.digest.doFinal(bArr, 0, this.digestSizeBytes);
    }

    private void computeSaltAndRootSeed(byte[] bArr, int[] iArr, int[] iArr2, int[] iArr3, byte[] bArr2) {
        byte[] bArr3 = new byte[32];
        updateDigest(iArr, bArr3);
        this.digest.update(bArr2, 0, bArr2.length);
        updateDigest(iArr2, bArr3);
        updateDigest(iArr3, bArr3);
        Pack.shortToLittleEndian((short) this.stateSizeBits, bArr3, 0);
        this.digest.update(bArr3, 0, 2);
        this.digest.doFinal(bArr, 0, bArr.length);
    }

    private byte[] computeSeeds(int[] iArr, int[] iArr2, int[] iArr3, byte[] bArr) {
        byte[] bArr2 = new byte[(this.numMPCParties * this.numMPCRounds * this.seedSizeBytes) + 32];
        byte[] bArr3 = new byte[32];
        updateDigest(iArr, bArr3);
        this.digest.update(bArr, 0, bArr.length);
        updateDigest(iArr2, bArr3);
        updateDigest(iArr3, bArr3);
        this.digest.update(Pack.intToLittleEndian(this.stateSizeBits), 0, 2);
        this.digest.doFinal(bArr2, 0, (this.numMPCParties * this.numMPCRounds * this.seedSizeBytes) + 32);
        return bArr2;
    }

    private boolean contains(int[] iArr, int i10, int i11) {
        for (int i12 = 0; i12 < i10; i12++) {
            if (iArr[i12] == i11) {
                return true;
            }
        }
        return false;
    }

    private int countNonZeroChallenges(byte[] bArr, int i10) {
        int i11;
        int i12 = 0;
        int i13 = 0;
        int iBitCount = 0;
        while (true) {
            int i14 = i12 + 16;
            i11 = this.numMPCRounds;
            if (i14 > i11) {
                break;
            }
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, (i12 >>> 2) + i10);
            int i15 = iLittleEndianToInt >>> 1;
            i13 |= iLittleEndianToInt & i15;
            iBitCount += Integers.bitCount((iLittleEndianToInt ^ i15) & 1431655765);
            i12 = i14;
        }
        int i16 = (i11 - i12) * 2;
        if (i16 > 0) {
            int iLittleEndianToInt_Low = Pack.littleEndianToInt_Low(bArr, i10 + (i12 >>> 2), (i16 + 7) / 8) & Utils.getTrailingBitsMask(i16);
            int i17 = iLittleEndianToInt_Low >>> 1;
            i13 |= iLittleEndianToInt_Low & i17;
            iBitCount += Integers.bitCount((iLittleEndianToInt_Low ^ i17) & 1431655765);
        }
        if ((i13 & 1431655765) == 0) {
            return iBitCount;
        }
        return -1;
    }

    private boolean createRandomTape(byte[] bArr, int i10, byte[] bArr2, int i11, int i12, byte[] bArr3, int i13) {
        if (i13 < this.digestSizeBytes) {
            return false;
        }
        this.digest.update((byte) 2);
        this.digest.update(bArr, i10, this.seedSizeBytes);
        this.digest.doFinal(bArr3, 0, this.digestSizeBytes);
        this.digest.update(bArr3, 0, this.digestSizeBytes);
        this.digest.update(bArr2, 0, 32);
        this.digest.update(Pack.intToLittleEndian(i11), 0, 2);
        this.digest.update(Pack.intToLittleEndian(i12), 0, 2);
        this.digest.update(Pack.intToLittleEndian(i13), 0, 2);
        this.digest.doFinal(bArr3, 0, i13);
        return true;
    }

    private void createRandomTapes(Tape tape, byte[][] bArr, int i10, byte[] bArr2, int i11) {
        int i12 = this.andSizeBytes * 2;
        for (int i13 = 0; i13 < this.numMPCParties; i13++) {
            this.digest.update(bArr[i13 + i10], 0, this.seedSizeBytes);
            this.digest.update(bArr2, 0, 32);
            this.digest.update(Pack.intToLittleEndian(i11), 0, 2);
            this.digest.update(Pack.intToLittleEndian(i13), 0, 2);
            this.digest.doFinal(tape.tapes[i13], 0, i12);
        }
    }

    private int deserializeSignature(Signature signature, byte[] bArr, int i10, int i11) {
        int iCountNonZeroChallenges;
        Signature.Proof[] proofArr = signature.proofs;
        byte[] bArr2 = signature.challengeBits;
        int iNumBytes = Utils.numBytes(this.numMPCRounds * 2);
        if (i10 < iNumBytes || (iCountNonZeroChallenges = countNonZeroChallenges(bArr, i11)) < 0) {
            return -1;
        }
        int i12 = this.stateSizeBytes * iCountNonZeroChallenges;
        int i13 = this.numMPCRounds;
        int i14 = (((this.seedSizeBytes * 2) + this.andSizeBytes + this.digestSizeBytes) * i13) + iNumBytes + 32 + i12;
        if (this.transform == 1) {
            i14 = (this.UnruhGWithoutInputBytes * iCountNonZeroChallenges) + ((i13 - iCountNonZeroChallenges) * this.UnruhGWithInputBytes) + i14;
        }
        if (i10 != i14) {
            LOG.fine("sigBytesLen = " + i10 + ", expected bytesRequired = " + i14);
            return -1;
        }
        System.arraycopy(bArr, i11, bArr2, 0, iNumBytes);
        int i15 = i11 + iNumBytes;
        System.arraycopy(bArr, i15, signature.salt, 0, 32);
        int i16 = i15 + 32;
        for (int i17 = 0; i17 < this.numMPCRounds; i17++) {
            int challenge = getChallenge(bArr2, i17);
            System.arraycopy(bArr, i16, proofArr[i17].view3Commitment, 0, this.digestSizeBytes);
            int i18 = i16 + this.digestSizeBytes;
            if (this.transform == 1) {
                int i19 = challenge == 0 ? this.UnruhGWithInputBytes : this.UnruhGWithoutInputBytes;
                System.arraycopy(bArr, i18, proofArr[i17].view3UnruhG, 0, i19);
                i18 += i19;
            }
            System.arraycopy(bArr, i18, proofArr[i17].communicatedBits, 0, this.andSizeBytes);
            int i20 = i18 + this.andSizeBytes;
            System.arraycopy(bArr, i20, proofArr[i17].seed1, 0, this.seedSizeBytes);
            int i21 = this.seedSizeBytes;
            int i22 = i20 + i21;
            System.arraycopy(bArr, i22, proofArr[i17].seed2, 0, i21);
            i16 = i22 + this.seedSizeBytes;
            if (challenge == 1 || challenge == 2) {
                Pack.littleEndianToInt(bArr, i16, proofArr[i17].inputShare, 0, this.stateSizeBytes / 4);
                int i23 = this.stateSizeBits;
                if (i23 == 129) {
                    proofArr[i17].inputShare[this.stateSizeWords - 1] = bArr[(this.stateSizeBytes + i16) - 1] & 255;
                }
                i16 += this.stateSizeBytes;
                if (!arePaddingBitsZero(proofArr[i17].inputShare, i23)) {
                    return -1;
                }
            }
        }
        return 0;
    }

    private int deserializeSignature2(Signature2 signature2, byte[] bArr, int i10, int i11) {
        Logger logger;
        String str;
        int i12 = this.digestSizeBytes;
        int i13 = i12 + 32;
        if (bArr.length < i13) {
            return -1;
        }
        System.arraycopy(bArr, i11, signature2.challengeHash, 0, i12);
        int i14 = i11 + this.digestSizeBytes;
        System.arraycopy(bArr, i14, signature2.salt, 0, 32);
        int i15 = i14 + 32;
        expandChallengeHash(signature2.challengeHash, signature2.challengeC, signature2.challengeP);
        int iRevealSeedsSize = new Tree(this, this.numMPCRounds, this.seedSizeBytes).revealSeedsSize(signature2.challengeC, this.numOpenedRounds);
        signature2.iSeedInfoLen = iRevealSeedsSize;
        int i16 = i13 + iRevealSeedsSize;
        int iOpenMerkleTreeSize = new Tree(this, this.numMPCRounds, this.digestSizeBytes).openMerkleTreeSize(getMissingLeavesList(signature2.challengeC), this.numMPCRounds - this.numOpenedRounds);
        signature2.cvInfoLen = iOpenMerkleTreeSize;
        int i17 = i16 + iOpenMerkleTreeSize;
        int iRevealSeedsSize2 = new Tree(this, this.numMPCParties, this.seedSizeBytes).revealSeedsSize(new int[1], 1);
        for (int i18 = 0; i18 < this.numMPCRounds; i18++) {
            if (contains(signature2.challengeC, this.numOpenedRounds, i18)) {
                if (signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, i18)] != this.numMPCParties - 1) {
                    i17 += this.andSizeBytes;
                }
                i17 = i17 + iRevealSeedsSize2 + this.stateSizeBytes + this.andSizeBytes + this.digestSizeBytes;
            }
        }
        if (i10 == i17) {
            int i19 = signature2.iSeedInfoLen;
            byte[] bArr2 = new byte[i19];
            signature2.iSeedInfo = bArr2;
            System.arraycopy(bArr, i15, bArr2, 0, i19);
            int i20 = i15 + signature2.iSeedInfoLen;
            int i21 = signature2.cvInfoLen;
            byte[] bArr3 = new byte[i21];
            signature2.cvInfo = bArr3;
            System.arraycopy(bArr, i20, bArr3, 0, i21);
            int i22 = i20 + signature2.cvInfoLen;
            for (int i23 = 0; i23 < this.numMPCRounds; i23++) {
                if (contains(signature2.challengeC, this.numOpenedRounds, i23)) {
                    signature2.proofs[i23] = new Signature2.Proof2(this);
                    Signature2.Proof2 proof2 = signature2.proofs[i23];
                    proof2.seedInfoLen = iRevealSeedsSize2;
                    byte[] bArr4 = new byte[iRevealSeedsSize2];
                    proof2.seedInfo = bArr4;
                    System.arraycopy(bArr, i22, bArr4, 0, iRevealSeedsSize2);
                    int i24 = i22 + signature2.proofs[i23].seedInfoLen;
                    if (signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, i23)] != this.numMPCParties - 1) {
                        System.arraycopy(bArr, i24, signature2.proofs[i23].aux, 0, this.andSizeBytes);
                        i24 += this.andSizeBytes;
                        if (!arePaddingBitsZero(signature2.proofs[i23].aux, this.numRounds * 3 * this.numSboxes)) {
                            logger = LOG;
                            str = "failed while deserializing aux bits";
                        }
                    }
                    System.arraycopy(bArr, i24, signature2.proofs[i23].input, 0, this.stateSizeBytes);
                    int i25 = i24 + this.stateSizeBytes;
                    int i26 = this.andSizeBytes;
                    System.arraycopy(bArr, i25, signature2.proofs[i23].msgs, 0, i26);
                    int i27 = i25 + i26;
                    if (arePaddingBitsZero(signature2.proofs[i23].msgs, this.numRounds * 3 * this.numSboxes)) {
                        System.arraycopy(bArr, i27, signature2.proofs[i23].C, 0, this.digestSizeBytes);
                        i22 = i27 + this.digestSizeBytes;
                    } else {
                        logger = LOG;
                        str = "failed while deserializing msgs bits";
                    }
                }
            }
            return 0;
        }
        logger = LOG;
        str = "sigLen = " + i10 + ", expected bytesRequired = " + i17;
        logger.fine(str);
        return -1;
    }

    private void expandChallengeHash(byte[] bArr, int[] iArr, int[] iArr2) {
        int iCeil_log2 = Utils.ceil_log2(this.numMPCRounds);
        int iCeil_log22 = Utils.ceil_log2(this.numMPCParties);
        int[] iArr3 = new int[(this.digestSizeBytes * 8) / Math.min(iCeil_log2, iCeil_log22)];
        byte[] bArr2 = new byte[64];
        System.arraycopy(bArr, 0, bArr2, 0, this.digestSizeBytes);
        int iAppendUnique = 0;
        while (iAppendUnique < this.numOpenedRounds) {
            int iBitsToChunks = bitsToChunks(iCeil_log2, bArr2, this.digestSizeBytes, iArr3);
            for (int i10 = 0; i10 < iBitsToChunks; i10++) {
                int i11 = iArr3[i10];
                if (i11 < this.numMPCRounds) {
                    iAppendUnique = appendUnique(iArr, i11, iAppendUnique);
                }
                if (iAppendUnique == this.numOpenedRounds) {
                    break;
                }
            }
            this.digest.update((byte) 1);
            this.digest.update(bArr2, 0, this.digestSizeBytes);
            this.digest.doFinal(bArr2, 0, this.digestSizeBytes);
        }
        int i12 = 0;
        while (i12 < this.numOpenedRounds) {
            int iBitsToChunks2 = bitsToChunks(iCeil_log22, bArr2, this.digestSizeBytes, iArr3);
            for (int i13 = 0; i13 < iBitsToChunks2; i13++) {
                int i14 = iArr3[i13];
                if (i14 < this.numMPCParties) {
                    iArr2[i12] = i14;
                    i12++;
                }
                if (i12 == this.numOpenedRounds) {
                    break;
                }
            }
            this.digest.update((byte) 1);
            this.digest.update(bArr2, 0, this.digestSizeBytes);
            this.digest.doFinal(bArr2, 0, this.digestSizeBytes);
        }
    }

    public static int extend(int i10) {
        return (i10 - 1) ^ (-1);
    }

    private void getAuxBits(byte[] bArr, Tape tape) {
        byte[] bArr2 = tape.tapes[this.numMPCParties - 1];
        int i10 = this.stateSizeBits;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < this.numRounds; i13++) {
            i11 += i10;
            int i14 = 0;
            while (i14 < i10) {
                Utils.setBit(bArr, i12, Utils.getBit(bArr2, i11));
                i14++;
                i12++;
                i11++;
            }
        }
    }

    private int[] getMissingLeavesList(int[] iArr) {
        int[] iArr2 = new int[this.numMPCRounds - this.numOpenedRounds];
        int i10 = 0;
        for (int i11 = 0; i11 < this.numMPCRounds; i11++) {
            if (!contains(iArr, this.numOpenedRounds, i11)) {
                iArr2[i10] = i11;
                i10++;
            }
        }
        return iArr2;
    }

    private void implH3(int[] iArr, int[] iArr2, byte[][][] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[][][] bArr5) {
        byte[] bArr6 = new byte[this.digestSizeBytes];
        bArr2[Utils.numBytes(this.numMPCRounds * 2) - 1] = 0;
        for (int i10 = 0; i10 < this.numMPCRounds; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                this.digest.update(bArr[i10][i11], 0, this.digestSizeBytes);
            }
        }
        if (this.transform == 1) {
            for (int i12 = 0; i12 < this.numMPCRounds; i12++) {
                int i13 = 0;
                while (i13 < 3) {
                    this.digest.update(bArr5[i12][i13], 0, i13 == 2 ? this.UnruhGWithInputBytes : this.UnruhGWithoutInputBytes);
                    i13++;
                }
            }
        }
        this.digest.update(Pack.intToLittleEndian(iArr), 0, this.stateSizeBytes);
        this.digest.update(Pack.intToLittleEndian(iArr2), 0, this.stateSizeBytes);
        this.digest.update(bArr3, 0, 32);
        this.digest.update(bArr4, 0, bArr4.length);
        this.digest.doFinal(bArr6, 0, this.digestSizeBytes);
        boolean z = true;
        int i14 = 0;
        while (z) {
            for (int i15 = 0; i15 < this.digestSizeBytes; i15++) {
                byte b10 = bArr6[i15];
                int i16 = 0;
                while (true) {
                    if (i16 >= 8) {
                        break;
                    }
                    int i17 = (b10 >>> (6 - i16)) & 3;
                    if (i17 < 3) {
                        setChallenge(bArr2, i14, i17);
                        i14++;
                        if (i14 == this.numMPCRounds) {
                            z = false;
                            break;
                        }
                    }
                    i16 += 2;
                }
                if (!z) {
                    break;
                }
            }
            if (!z) {
                return;
            }
            this.digest.update((byte) 1);
            this.digest.update(bArr6, 0, this.digestSizeBytes);
            this.digest.doFinal(bArr6, 0, this.digestSizeBytes);
        }
    }

    public static int indexOf(int[] iArr, int i10, int i11) {
        for (int i12 = 0; i12 < i10; i12++) {
            if (iArr[i12] == i11) {
                return i12;
            }
        }
        return -1;
    }

    public static boolean is_picnic3(int i10) {
        return i10 == 7 || i10 == 8 || i10 == 9;
    }

    private int mpc_AND(int i10, int i11, int i12, int i13, Tape tape, Msg msg) {
        int iExtend = ((i12 & extend(i11)) ^ (i13 & extend(i10))) ^ tape.tapesToWord();
        int i14 = msg.unopened;
        if (i14 >= 0) {
            iExtend = Utils.setBit(iExtend, msg.unopened, Utils.getBit(msg.msgs[i14], msg.pos));
        }
        wordToMsgs(iExtend, msg);
        return (i10 & i11) ^ Utils.parity16(iExtend);
    }

    private void mpc_LowMC(Tape tape, View[] viewArr, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i10 = this.stateSizeWords;
        mpc_xor_constant(iArr2, i10 * 3, iArr, 0, i10);
        KMatricesWithPointer kMatricesWithPointerKMatrix = this.lowmcConstants.KMatrix(this, 0);
        for (int i11 = 0; i11 < 3; i11++) {
            matrix_mul_offset(iArr2, i11 * this.stateSizeWords, viewArr[i11].inputShare, 0, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
        }
        mpc_xor(iArr2, iArr2, 3);
        for (int i12 = 1; i12 <= this.numRounds; i12++) {
            KMatricesWithPointer kMatricesWithPointerKMatrix2 = this.lowmcConstants.KMatrix(this, i12);
            for (int i13 = 0; i13 < 3; i13++) {
                matrix_mul_offset(iArr2, i13 * this.stateSizeWords, viewArr[i13].inputShare, 0, kMatricesWithPointerKMatrix2.getData(), kMatricesWithPointerKMatrix2.getMatrixPointer());
            }
            mpc_substitution(iArr2, tape, viewArr);
            int i14 = i12 - 1;
            KMatricesWithPointer kMatricesWithPointerLMatrix = this.lowmcConstants.LMatrix(this, i14);
            int i15 = this.stateSizeWords;
            mpc_matrix_mul(iArr2, i15 * 3, iArr2, i15 * 3, kMatricesWithPointerLMatrix.getData(), kMatricesWithPointerLMatrix.getMatrixPointer(), 3);
            KMatricesWithPointer kMatricesWithPointerRConstant = this.lowmcConstants.RConstant(this, i14);
            mpc_xor_constant(iArr2, this.stateSizeWords * 3, kMatricesWithPointerRConstant.getData(), kMatricesWithPointerRConstant.getMatrixPointer(), this.stateSizeWords);
            mpc_xor(iArr2, iArr2, 3);
        }
        for (int i16 = 0; i16 < 3; i16++) {
            int i17 = this.stateSizeWords;
            System.arraycopy(iArr2, (i16 + 3) * i17, viewArr[i16].outputShare, 0, i17);
        }
    }

    private void mpc_matrix_mul(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12, int i13) {
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = this.stateSizeWords;
            matrix_mul_offset(iArr, (i14 * i15) + i10, iArr2, (i15 * i14) + i11, iArr3, i12);
        }
    }

    private void mpc_sbox(int[] iArr, int[] iArr2, Tape tape, Msg msg) {
        for (int i10 = 0; i10 < this.numSboxes * 3; i10 += 3) {
            int i11 = i10 + 2;
            int bitFromWordArray = Utils.getBitFromWordArray(iArr, i11);
            int i12 = iArr2[i11];
            int i13 = i10 + 1;
            int bitFromWordArray2 = Utils.getBitFromWordArray(iArr, i13);
            int i14 = iArr2[i13];
            int bitFromWordArray3 = Utils.getBitFromWordArray(iArr, i10);
            int i15 = iArr2[i10];
            int iMpc_AND = mpc_AND(bitFromWordArray, bitFromWordArray2, i12, i14, tape, msg);
            int iMpc_AND2 = mpc_AND(bitFromWordArray2, bitFromWordArray3, i14, i15, tape, msg);
            int i16 = bitFromWordArray ^ bitFromWordArray2;
            int iMpc_AND3 = mpc_AND(bitFromWordArray3, bitFromWordArray, i15, i12, tape, msg) ^ i16;
            Utils.setBitInWordArray(iArr, i11, bitFromWordArray ^ iMpc_AND2);
            Utils.setBitInWordArray(iArr, i13, iMpc_AND3);
            Utils.setBitInWordArray(iArr, i10, (i16 ^ bitFromWordArray3) ^ iMpc_AND);
        }
    }

    private void mpc_substitution(int[] iArr, Tape tape, View[] viewArr) {
        int[] iArr2 = new int[3];
        int[] iArr3 = new int[3];
        int[] iArr4 = new int[3];
        int[] iArr5 = new int[3];
        int[] iArr6 = new int[3];
        int[] iArr7 = new int[3];
        int i10 = 0;
        while (i10 < this.numSboxes * 3) {
            for (int i11 = 0; i11 < 3; i11++) {
                int i12 = ((i11 + 3) * this.stateSizeWords * 32) + i10;
                iArr2[i11] = Utils.getBitFromWordArray(iArr, i12 + 2);
                iArr3[i11] = Utils.getBitFromWordArray(iArr, i12 + 1);
                iArr4[i11] = Utils.getBitFromWordArray(iArr, i12);
            }
            int i13 = i10;
            mpc_AND(iArr2, iArr3, iArr5, tape, viewArr);
            mpc_AND(iArr3, iArr4, iArr6, tape, viewArr);
            mpc_AND(iArr4, iArr2, iArr7, tape, viewArr);
            for (int i14 = 0; i14 < 3; i14++) {
                int i15 = ((i14 + 3) * this.stateSizeWords * 32) + i13;
                Utils.setBitInWordArray(iArr, i15 + 2, iArr2[i14] ^ iArr6[i14]);
                Utils.setBitInWordArray(iArr, i15 + 1, (iArr2[i14] ^ iArr3[i14]) ^ iArr7[i14]);
                Utils.setBitInWordArray(iArr, i15, ((iArr2[i14] ^ iArr3[i14]) ^ iArr4[i14]) ^ iArr5[i14]);
            }
            i10 = i13 + 3;
        }
    }

    private void mpc_xor(int[] iArr, int[] iArr2, int i10) {
        int i11 = this.stateSizeWords * i10;
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = (this.stateSizeWords * i10) + i12;
            iArr[i13] = iArr[i13] ^ iArr2[i12];
        }
    }

    private void mpc_xor_constant(int[] iArr, int i10, int[] iArr2, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i13 + i10;
            iArr[i14] = iArr[i14] ^ iArr2[i13 + i11];
        }
    }

    private void mpc_xor_constant_verify(int[] iArr, int[] iArr2, int i10, int i11, int i12) {
        int i13;
        if (i12 == 0) {
            i13 = this.stateSizeWords * 2;
        } else if (i12 != 2) {
            return;
        } else {
            i13 = this.stateSizeWords * 3;
        }
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = i14 + i13;
            iArr[i15] = iArr[i15] ^ iArr2[i14 + i10];
        }
    }

    private void picnic_keygen(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        int[] iArr = new int[bArr3.length / 4];
        int[] iArr2 = new int[bArr.length / 4];
        int[] iArr3 = new int[bArr2.length / 4];
        secureRandom.nextBytes(bArr3);
        Pack.littleEndianToInt(bArr3, 0, iArr);
        Utils.zeroTrailingBits(iArr, this.stateSizeBits);
        secureRandom.nextBytes(bArr);
        Pack.littleEndianToInt(bArr, 0, iArr2);
        Utils.zeroTrailingBits(iArr2, this.stateSizeBits);
        LowMCEnc(iArr2, iArr3, iArr);
        Pack.intToLittleEndian(iArr, bArr3, 0);
        Pack.intToLittleEndian(iArr2, bArr, 0);
        Pack.intToLittleEndian(iArr3, bArr2, 0);
    }

    private void picnic_read_public_key(int[] iArr, int[] iArr2, byte[] bArr) {
        int i10 = this.stateSizeBytes;
        int i11 = i10 + 1;
        int i12 = i10 / 4;
        Pack.littleEndianToInt(bArr, 1, iArr, 0, i12);
        Pack.littleEndianToInt(bArr, i11, iArr2, 0, i12);
        if (i12 < this.stateSizeWords) {
            int i13 = i12 * 4;
            int i14 = this.stateSizeBytes - i13;
            iArr[i12] = Pack.littleEndianToInt_Low(bArr, i13 + 1, i14);
            iArr2[i12] = Pack.littleEndianToInt_Low(bArr, i11 + i13, i14);
        }
    }

    private boolean picnic_sign(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int iSerializeSignature2;
        int i10 = this.stateSizeWords;
        int[] iArr = new int[i10];
        int[] iArr2 = new int[i10];
        int[] iArr3 = new int[i10];
        int i11 = this.stateSizeBytes;
        int i12 = i11 + 1;
        int i13 = (i11 * 2) + 1;
        int i14 = i11 / 4;
        Pack.littleEndianToInt(bArr, 1, iArr, 0, i14);
        Pack.littleEndianToInt(bArr, i12, iArr2, 0, i14);
        Pack.littleEndianToInt(bArr, i13, iArr3, 0, i14);
        if (i14 < this.stateSizeWords) {
            int i15 = i14 * 4;
            int i16 = this.stateSizeBytes - i15;
            iArr[i14] = Pack.littleEndianToInt_Low(bArr, i15 + 1, i16);
            iArr2[i14] = Pack.littleEndianToInt_Low(bArr, i12 + i15, i16);
            iArr3[i14] = Pack.littleEndianToInt_Low(bArr, i13 + i15, i16);
        }
        if (is_picnic3(this.parameters)) {
            Signature2 signature2 = new Signature2(this);
            if (!sign_picnic3(iArr, iArr2, iArr3, bArr2, signature2)) {
                LOG.fine("Failed to create signature");
                return false;
            }
            iSerializeSignature2 = serializeSignature2(signature2, bArr3, bArr2.length + 4);
            if (iSerializeSignature2 < 0) {
                LOG.fine("Failed to serialize signature");
                return false;
            }
        } else {
            Signature signature = new Signature(this);
            if (sign_picnic1(iArr, iArr2, iArr3, bArr2, signature) != 0) {
                LOG.fine("Failed to create signature");
                return false;
            }
            iSerializeSignature2 = serializeSignature(signature, bArr3, bArr2.length + 4);
            if (iSerializeSignature2 < 0) {
                LOG.fine("Failed to serialize signature");
                return false;
            }
        }
        this.signatureLength = iSerializeSignature2;
        Pack.intToLittleEndian(iSerializeSignature2, bArr3, 0);
        return true;
    }

    private int picnic_verify(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        Logger logger;
        String str;
        int i11 = this.stateSizeWords;
        int[] iArr = new int[i11];
        int[] iArr2 = new int[i11];
        picnic_read_public_key(iArr, iArr2, bArr);
        if (is_picnic3(this.parameters)) {
            Signature2 signature2 = new Signature2(this);
            if (deserializeSignature2(signature2, bArr3, i10, bArr2.length + 4) == 0) {
                return verify_picnic3(signature2, iArr, iArr2, bArr2);
            }
            logger = LOG;
            str = "Error couldn't deserialize signature (2)!";
        } else {
            Signature signature = new Signature(this);
            if (deserializeSignature(signature, bArr3, i10, bArr2.length + 4) == 0) {
                return verify(signature, iArr, iArr2, bArr2);
            }
            logger = LOG;
            str = "Error couldn't deserialize signature!";
        }
        logger.fine(str);
        return -1;
    }

    private int picnic_write_private_key(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int i10 = this.stateSizeBytes;
        int i11 = (i10 * 3) + 1;
        if (bArr4.length < i11) {
            LOG.fine("Failed writing private key!");
            return -1;
        }
        bArr4[0] = (byte) this.parameters;
        System.arraycopy(bArr, 0, bArr4, 1, i10);
        int i12 = this.stateSizeBytes;
        System.arraycopy(bArr2, 0, bArr4, i12 + 1, i12);
        int i13 = this.stateSizeBytes;
        System.arraycopy(bArr3, 0, bArr4, (i13 * 2) + 1, i13);
        return i11;
    }

    private int picnic_write_public_key(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i10 = this.stateSizeBytes;
        int i11 = (i10 * 2) + 1;
        if (bArr3.length < i11) {
            LOG.fine("Failed writing public key!");
            return -1;
        }
        bArr3[0] = (byte) this.parameters;
        System.arraycopy(bArr, 0, bArr3, 1, i10);
        int i12 = this.stateSizeBytes;
        System.arraycopy(bArr2, 0, bArr3, i12 + 1, i12);
        return i11;
    }

    private int serializeSignature2(Signature2 signature2, byte[] bArr, int i10) {
        int i11 = this.digestSizeBytes + 32 + signature2.iSeedInfoLen + signature2.cvInfoLen;
        for (int i12 = 0; i12 < this.numMPCRounds; i12++) {
            if (contains(signature2.challengeC, this.numOpenedRounds, i12)) {
                int i13 = signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, i12)];
                int i14 = i11 + signature2.proofs[i12].seedInfoLen;
                if (i13 != this.numMPCParties - 1) {
                    i14 += this.andSizeBytes;
                }
                i11 = i14 + this.stateSizeBytes + this.andSizeBytes + this.digestSizeBytes;
            }
        }
        if (bArr.length < i11) {
            return -1;
        }
        System.arraycopy(signature2.challengeHash, 0, bArr, i10, this.digestSizeBytes);
        int i15 = this.digestSizeBytes + i10;
        System.arraycopy(signature2.salt, 0, bArr, i15, 32);
        int i16 = i15 + 32;
        System.arraycopy(signature2.iSeedInfo, 0, bArr, i16, signature2.iSeedInfoLen);
        int i17 = i16 + signature2.iSeedInfoLen;
        System.arraycopy(signature2.cvInfo, 0, bArr, i17, signature2.cvInfoLen);
        int i18 = i17 + signature2.cvInfoLen;
        for (int i19 = 0; i19 < this.numMPCRounds; i19++) {
            if (contains(signature2.challengeC, this.numOpenedRounds, i19)) {
                Signature2.Proof2 proof2 = signature2.proofs[i19];
                System.arraycopy(proof2.seedInfo, 0, bArr, i18, proof2.seedInfoLen);
                int i20 = i18 + signature2.proofs[i19].seedInfoLen;
                if (signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, i19)] != this.numMPCParties - 1) {
                    System.arraycopy(signature2.proofs[i19].aux, 0, bArr, i20, this.andSizeBytes);
                    i20 += this.andSizeBytes;
                }
                System.arraycopy(signature2.proofs[i19].input, 0, bArr, i20, this.stateSizeBytes);
                int i21 = i20 + this.stateSizeBytes;
                System.arraycopy(signature2.proofs[i19].msgs, 0, bArr, i21, this.andSizeBytes);
                int i22 = i21 + this.andSizeBytes;
                System.arraycopy(signature2.proofs[i19].C, 0, bArr, i22, this.digestSizeBytes);
                i18 = i22 + this.digestSizeBytes;
            }
        }
        return i18 - i10;
    }

    private void setChallenge(byte[] bArr, int i10, int i11) {
        int i12 = i10 * 2;
        Utils.setBit(bArr, i12, (byte) (i11 & 1));
        Utils.setBit(bArr, i12 + 1, (byte) ((i11 >>> 1) & 1));
    }

    private int sign_picnic1(int[] iArr, int[] iArr2, int[] iArr3, byte[] bArr, Signature signature) {
        byte[] bArr2;
        int i10 = 2;
        char c7 = 1;
        char c10 = 0;
        View[][] viewArr = (View[][]) Array.newInstance((Class<?>) View.class, this.numMPCRounds, 3);
        int[] iArr4 = {this.numMPCRounds, this.numMPCParties, this.digestSizeBytes};
        Class cls = Byte.TYPE;
        byte[][][] bArr3 = (byte[][][]) Array.newInstance((Class<?>) cls, iArr4);
        byte[][][] bArr4 = (byte[][][]) Array.newInstance((Class<?>) cls, this.numMPCRounds, 3, this.UnruhGWithInputBytes);
        byte[] bArrComputeSeeds = computeSeeds(iArr, iArr2, iArr3, bArr);
        int i11 = this.numMPCParties * this.seedSizeBytes;
        System.arraycopy(bArrComputeSeeds, this.numMPCRounds * i11, signature.salt, 0, 32);
        Tape tape = new Tape(this);
        int i12 = this.stateSizeBytes;
        int iMax = Math.max(i12 * 9, i12 + this.andSizeBytes);
        byte[] bArr5 = new byte[iMax];
        int i13 = 0;
        while (i13 < this.numMPCRounds) {
            viewArr[i13][c10] = new View(this);
            viewArr[i13][c7] = new View(this);
            viewArr[i13][i10] = new View(this);
            int i14 = 0;
            while (i14 < i10) {
                byte[][][] bArr6 = bArr4;
                int i15 = i14;
                int i16 = i13;
                byte[] bArr7 = bArr5;
                int i17 = iMax;
                byte[][][] bArr8 = bArr3;
                Tape tape2 = tape;
                byte[] bArr9 = bArrComputeSeeds;
                if (!createRandomTape(bArrComputeSeeds, (this.seedSizeBytes * i14) + (i11 * i13), signature.salt, i16, i15, bArr7, this.stateSizeBytes + this.andSizeBytes)) {
                    LOG.fine("createRandomTape failed");
                    return -1;
                }
                int[] iArr5 = viewArr[i16][i15].inputShare;
                Pack.littleEndianToInt(bArr7, 0, iArr5);
                Utils.zeroTrailingBits(iArr5, this.stateSizeBits);
                System.arraycopy(bArr7, this.stateSizeBytes, tape2.tapes[i15], 0, this.andSizeBytes);
                i14 = i15 + 1;
                i13 = i16;
                bArr5 = bArr7;
                tape = tape2;
                bArr4 = bArr6;
                iMax = i17;
                bArr3 = bArr8;
                bArrComputeSeeds = bArr9;
                i10 = 2;
            }
            int i18 = i13;
            byte[] bArr10 = bArr5;
            int i19 = iMax;
            byte[] bArr11 = bArrComputeSeeds;
            byte[][][] bArr12 = bArr3;
            byte[][][] bArr13 = bArr4;
            Tape tape3 = tape;
            int i20 = i11 * i18;
            if (!createRandomTape(bArr11, (this.seedSizeBytes * 2) + i20, signature.salt, i18, 2, tape3.tapes[2], this.andSizeBytes)) {
                LOG.fine("createRandomTape failed");
                return -1;
            }
            View[] viewArr2 = viewArr[i18];
            xor_three(viewArr2[2].inputShare, iArr, viewArr2[0].inputShare, viewArr2[1].inputShare);
            tape3.pos = 0;
            int[] iArrLittleEndianToInt = Pack.littleEndianToInt(bArr10, 0, i19 / 4);
            mpc_LowMC(tape3, viewArr[i18], iArr3, iArrLittleEndianToInt);
            Pack.intToLittleEndian(iArrLittleEndianToInt, bArr10, 0);
            int[] iArr6 = new int[16];
            View[] viewArr3 = viewArr[i18];
            xor_three(iArr6, viewArr3[0].outputShare, viewArr3[1].outputShare, viewArr3[2].outputShare);
            if (!subarrayEquals(iArr6, iArr2, this.stateSizeWords)) {
                LOG.fine("Simulation failed; output does not match public key (round = " + i18 + ")");
                return -1;
            }
            Commit(bArr11, i20, viewArr[i18][0], bArr12[i18][0]);
            Commit(bArr11, this.seedSizeBytes + i20, viewArr[i18][1], bArr12[i18][1]);
            Commit(bArr11, (this.seedSizeBytes * 2) + i20, viewArr[i18][2], bArr12[i18][2]);
            if (this.transform == 1) {
                bArr2 = bArr11;
                G(0, bArr11, i20, viewArr[i18][0], bArr13[i18][0]);
                G(1, bArr2, i20 + this.seedSizeBytes, viewArr[i18][1], bArr13[i18][1]);
                G(2, bArr2, (this.seedSizeBytes * 2) + i20, viewArr[i18][2], bArr13[i18][2]);
            } else {
                bArr2 = bArr11;
            }
            i13 = i18 + 1;
            bArr5 = bArr10;
            tape = tape3;
            bArr4 = bArr13;
            bArrComputeSeeds = bArr2;
            iMax = i19;
            bArr3 = bArr12;
            i10 = 2;
            c7 = 1;
            c10 = 0;
        }
        byte[] bArr14 = bArrComputeSeeds;
        byte[][][] bArr15 = bArr3;
        byte[][][] bArr16 = bArr4;
        H3(iArr2, iArr3, viewArr, bArr15, signature.challengeBits, signature.salt, bArr, bArr16);
        for (int i21 = 0; i21 < this.numMPCRounds; i21++) {
            prove(signature.proofs[i21], getChallenge(signature.challengeBits, i21), bArr14, i11 * i21, viewArr[i21], bArr15[i21], this.transform != 1 ? null : bArr16[i21]);
        }
        return 0;
    }

    private boolean sign_picnic3(int[] iArr, int[] iArr2, int[] iArr3, byte[] bArr, Signature2 signature2) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = this.seedSizeBytes + 32;
        byte[] bArr2 = new byte[i14];
        computeSaltAndRootSeed(bArr2, iArr, iArr2, iArr3, bArr);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, 32, i14);
        signature2.salt = Arrays.copyOfRange(bArr2, 0, 32);
        Tree tree = new Tree(this, this.numMPCRounds, this.seedSizeBytes);
        tree.generateSeeds(bArrCopyOfRange, signature2.salt, 0);
        byte[][] leaves = tree.getLeaves();
        int leavesOffset = tree.getLeavesOffset();
        int i15 = this.numMPCRounds;
        Tape[] tapeArr = new Tape[i15];
        Tree[] treeArr = new Tree[i15];
        int i16 = 0;
        while (true) {
            i10 = this.numMPCRounds;
            if (i16 >= i10) {
                break;
            }
            tapeArr[i16] = new Tape(this);
            Tree tree2 = new Tree(this, this.numMPCParties, this.seedSizeBytes);
            treeArr[i16] = tree2;
            tree2.generateSeeds(leaves[i16 + leavesOffset], signature2.salt, i16);
            createRandomTapes(tapeArr[i16], treeArr[i16].getLeaves(), treeArr[i16].getLeavesOffset(), signature2.salt, i16);
            i16++;
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i10, this.stateSizeWords * 4);
        byte[] bArr4 = new byte[176];
        int i17 = 0;
        while (true) {
            i11 = this.numMPCRounds;
            if (i17 >= i11) {
                break;
            }
            tapeArr[i17].computeAuxTape(bArr3[i17]);
            i17++;
        }
        byte[][][] bArr5 = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, i11, this.numMPCParties, this.digestSizeBytes);
        int i18 = 0;
        while (true) {
            i12 = this.numMPCRounds;
            if (i18 >= i12) {
                break;
            }
            int i19 = 0;
            while (true) {
                i13 = this.numMPCParties;
                if (i19 < i13 - 1) {
                    int i20 = i19;
                    commit(bArr5[i18][i19], treeArr[i18].getLeaf(i19), null, signature2.salt, i18, i20);
                    i19 = i20 + 1;
                    i18 = i18;
                }
            }
            int i21 = i18;
            int i22 = i13 - 1;
            getAuxBits(bArr4, tapeArr[i21]);
            commit(bArr5[i21][i22], treeArr[i21].getLeaf(i22), bArr4, signature2.salt, i21, i22);
            i18 = i21 + 1;
        }
        Msg[] msgArr = new Msg[i12];
        int[] iArr4 = new int[this.stateSizeBits];
        int i23 = 0;
        while (true) {
            int i24 = this.numMPCRounds;
            if (i23 >= i24) {
                int[] iArr5 = {i24, this.digestSizeBytes};
                Class cls = Byte.TYPE;
                byte[][] bArr6 = (byte[][]) Array.newInstance((Class<?>) cls, iArr5);
                byte[][] bArr7 = (byte[][]) Array.newInstance((Class<?>) cls, this.numMPCRounds, this.digestSizeBytes);
                for (int i25 = 0; i25 < this.numMPCRounds; i25++) {
                    commit_h(bArr6[i25], bArr5[i25]);
                    commit_v(bArr7[i25], bArr3[i25], msgArr[i25]);
                }
                Tree tree3 = new Tree(this, this.numMPCRounds, this.digestSizeBytes);
                tree3.buildMerkleTree(bArr7, signature2.salt);
                int i26 = this.numOpenedRounds;
                int[] iArr6 = new int[i26];
                signature2.challengeC = iArr6;
                int[] iArr7 = new int[i26];
                signature2.challengeP = iArr7;
                byte[] bArr8 = new byte[this.digestSizeBytes];
                signature2.challengeHash = bArr8;
                HCP(bArr8, iArr6, iArr7, bArr6, tree3.nodes[0], signature2.salt, iArr2, iArr3, bArr);
                int[] iArr8 = new int[1];
                signature2.cvInfo = tree3.openMerkleTree(getMissingLeavesList(signature2.challengeC), this.numMPCRounds - this.numOpenedRounds, iArr8);
                signature2.cvInfoLen = iArr8[0];
                int i27 = this.numMPCRounds;
                int i28 = this.seedSizeBytes;
                byte[] bArr9 = new byte[i27 * i28];
                signature2.iSeedInfo = bArr9;
                signature2.iSeedInfoLen = tree.revealSeeds(signature2.challengeC, this.numOpenedRounds, bArr9, i27 * i28);
                signature2.proofs = new Signature2.Proof2[this.numMPCRounds];
                for (int i29 = 0; i29 < this.numMPCRounds; i29++) {
                    if (contains(signature2.challengeC, this.numOpenedRounds, i29)) {
                        signature2.proofs[i29] = new Signature2.Proof2(this);
                        int iIndexOf = indexOf(signature2.challengeC, this.numOpenedRounds, i29);
                        int[] iArr9 = {signature2.challengeP[iIndexOf]};
                        Signature2.Proof2 proof2 = signature2.proofs[i29];
                        int i30 = this.numMPCParties;
                        int i31 = this.seedSizeBytes;
                        byte[] bArr10 = new byte[i30 * i31];
                        proof2.seedInfo = bArr10;
                        proof2.seedInfoLen = treeArr[i29].revealSeeds(iArr9, 1, bArr10, i30 * i31);
                        if (signature2.challengeP[iIndexOf] != this.numMPCParties - 1) {
                            getAuxBits(signature2.proofs[i29].aux, tapeArr[i29]);
                        }
                        System.arraycopy(bArr3[i29], 0, signature2.proofs[i29].input, 0, this.stateSizeBytes);
                        System.arraycopy(msgArr[i29].msgs[signature2.challengeP[iIndexOf]], 0, signature2.proofs[i29].msgs, 0, this.andSizeBytes);
                        System.arraycopy(bArr5[i29][signature2.challengeP[iIndexOf]], 0, signature2.proofs[i29].C, 0, this.digestSizeBytes);
                    }
                }
                return true;
            }
            msgArr[i23] = new Msg(this);
            int[] iArrLittleEndianToInt = Pack.littleEndianToInt(bArr3[i23], 0, this.stateSizeWords);
            xor_array(iArrLittleEndianToInt, iArrLittleEndianToInt, iArr, 0);
            int i32 = i23;
            int[] iArr10 = iArr4;
            if (simulateOnline(iArrLittleEndianToInt, tapeArr[i23], iArr4, msgArr[i23], iArr3, iArr2) != 0) {
                LOG.fine("MPC simulation failed, aborting signature");
                return false;
            }
            Pack.intToLittleEndian(iArrLittleEndianToInt, bArr3[i32], 0);
            i23 = i32 + 1;
            iArr4 = iArr10;
        }
    }

    private int simulateOnline(int[] iArr, Tape tape, int[] iArr2, Msg msg, int[] iArr3, int[] iArr4) {
        int[] iArr5 = new int[16];
        int[] iArr6 = new int[16];
        KMatricesWithPointer kMatricesWithPointerKMatrix = this.lowmcConstants.KMatrix(this, 0);
        matrix_mul(iArr5, iArr, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
        xor_array(iArr6, iArr5, iArr3, 0);
        for (int i10 = 1; i10 <= this.numRounds; i10++) {
            tapesToWords(iArr2, tape);
            mpc_sbox(iArr6, iArr2, tape, msg);
            int i11 = i10 - 1;
            KMatricesWithPointer kMatricesWithPointerLMatrix = this.lowmcConstants.LMatrix(this, i11);
            matrix_mul(iArr6, iArr6, kMatricesWithPointerLMatrix.getData(), kMatricesWithPointerLMatrix.getMatrixPointer());
            KMatricesWithPointer kMatricesWithPointerRConstant = this.lowmcConstants.RConstant(this, i11);
            xor_array(iArr6, iArr6, kMatricesWithPointerRConstant.getData(), kMatricesWithPointerRConstant.getMatrixPointer());
            KMatricesWithPointer kMatricesWithPointerKMatrix2 = this.lowmcConstants.KMatrix(this, i10);
            matrix_mul(iArr5, iArr, kMatricesWithPointerKMatrix2.getData(), kMatricesWithPointerKMatrix2.getMatrixPointer());
            xor_array(iArr6, iArr5, iArr6, 0);
        }
        return !subarrayEquals(iArr6, iArr4, this.stateSizeWords) ? -1 : 0;
    }

    private static boolean subarrayEquals(byte[] bArr, byte[] bArr2, int i10) {
        if (bArr.length < i10 || bArr2.length < i10) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (bArr[i11] != bArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    private void substitution(int[] iArr) {
        for (int i10 = 0; i10 < this.numSboxes * 3; i10 += 3) {
            int i11 = i10 + 2;
            int bitFromWordArray = Utils.getBitFromWordArray(iArr, i11);
            int i12 = i10 + 1;
            int bitFromWordArray2 = Utils.getBitFromWordArray(iArr, i12);
            int bitFromWordArray3 = Utils.getBitFromWordArray(iArr, i10);
            Utils.setBitInWordArray(iArr, i11, (bitFromWordArray2 & bitFromWordArray3) ^ bitFromWordArray);
            int i13 = bitFromWordArray ^ bitFromWordArray2;
            Utils.setBitInWordArray(iArr, i12, (bitFromWordArray & bitFromWordArray3) ^ i13);
            Utils.setBitInWordArray(iArr, i10, (i13 ^ bitFromWordArray3) ^ (bitFromWordArray & bitFromWordArray2));
        }
    }

    private void tapesToWords(int[] iArr, Tape tape) {
        for (int i10 = 0; i10 < this.stateSizeBits; i10++) {
            iArr[i10] = tape.tapesToWord();
        }
    }

    private void updateDigest(int[] iArr, byte[] bArr) {
        Pack.intToLittleEndian(iArr, bArr, 0);
        this.digest.update(bArr, 0, this.stateSizeBytes);
    }

    private int verify(Signature signature, int[] iArr, int[] iArr2, byte[] bArr) {
        int[] iArr3 = {this.numMPCRounds, this.numMPCParties, this.digestSizeBytes};
        Class cls = Byte.TYPE;
        byte[][][] bArr2 = (byte[][][]) Array.newInstance((Class<?>) cls, iArr3);
        byte[][][] bArr3 = (byte[][][]) Array.newInstance((Class<?>) cls, this.numMPCRounds, 3, this.UnruhGWithInputBytes);
        int[][][] iArr4 = (int[][][]) Array.newInstance((Class<?>) Integer.TYPE, this.numMPCRounds, 3, this.stateSizeBytes);
        Signature.Proof[] proofArr = signature.proofs;
        byte[] bArr4 = signature.challengeBits;
        int i10 = this.stateSizeBytes;
        byte[] bArr5 = new byte[Math.max(i10 * 6, i10 + this.andSizeBytes)];
        Tape tape = new Tape(this);
        int i11 = this.numMPCRounds;
        View[] viewArr = new View[i11];
        View[] viewArr2 = new View[i11];
        int i12 = 0;
        while (true) {
            int i13 = this.numMPCRounds;
            if (i12 >= i13) {
                byte[] bArr6 = new byte[Utils.numBytes(i13 * 2)];
                H3(iArr, iArr2, iArr4, bArr2, bArr6, signature.salt, bArr, bArr3);
                if (subarrayEquals(bArr4, bArr6, Utils.numBytes(this.numMPCRounds * 2))) {
                    return 0;
                }
                LOG.fine("Invalid signature. Did not verify");
                return -1;
            }
            viewArr[i12] = new View(this);
            View view = new View(this);
            viewArr2[i12] = view;
            int i14 = i12;
            View[] viewArr3 = viewArr2;
            View[] viewArr4 = viewArr;
            Tape tape2 = tape;
            byte[] bArr7 = bArr5;
            byte[] bArr8 = bArr4;
            Signature.Proof[] proofArr2 = proofArr;
            if (!verifyProof(proofArr[i12], viewArr[i12], view, getChallenge(bArr4, i12), signature.salt, i14, bArr5, iArr2, tape2)) {
                LOG.fine("Invalid signature. Did not verify");
                return -1;
            }
            int challenge = getChallenge(bArr8, i14);
            Commit(proofArr2[i14].seed1, 0, viewArr4[i14], bArr2[i14][challenge]);
            int i15 = (challenge + 1) % 3;
            Commit(proofArr2[i14].seed2, 0, viewArr3[i14], bArr2[i14][i15]);
            int i16 = (challenge + 2) % 3;
            System.arraycopy(proofArr2[i14].view3Commitment, 0, bArr2[i14][i16], 0, this.digestSizeBytes);
            if (this.transform == 1) {
                G(challenge, proofArr2[i14].seed1, 0, viewArr4[i14], bArr3[i14][challenge]);
                G(i15, proofArr2[i14].seed2, 0, viewArr3[i14], bArr3[i14][i15]);
                System.arraycopy(proofArr2[i14].view3UnruhG, 0, bArr3[i14][i16], 0, challenge == 0 ? this.UnruhGWithInputBytes : this.UnruhGWithoutInputBytes);
            }
            iArr4[i14][challenge] = viewArr4[i14].outputShare;
            iArr4[i14][i15] = viewArr3[i14].outputShare;
            int[] iArr5 = new int[this.stateSizeWords];
            xor_three(iArr5, viewArr4[i14].outputShare, viewArr3[i14].outputShare, iArr);
            iArr4[i14][i16] = iArr5;
            i12 = i14 + 1;
            bArr4 = bArr8;
            viewArr = viewArr4;
            tape = tape2;
            viewArr2 = viewArr3;
            bArr5 = bArr7;
            proofArr = proofArr2;
        }
    }

    private int verify_picnic3(Signature2 signature2, int[] iArr, int[] iArr2, byte[] bArr) {
        int iVerifyMerkleTree;
        Logger logger;
        String str;
        int i10;
        Tree[] treeArr;
        byte[] bArr2;
        Tree tree;
        int i11;
        Tree tree2;
        int i12;
        int[] iArr3 = {this.numMPCRounds, this.numMPCParties, this.digestSizeBytes};
        Class cls = Byte.TYPE;
        byte[][][] bArr3 = (byte[][][]) Array.newInstance((Class<?>) cls, iArr3);
        byte[][] bArr4 = (byte[][]) Array.newInstance((Class<?>) cls, this.numMPCRounds, this.digestSizeBytes);
        byte[][] bArr5 = (byte[][]) Array.newInstance((Class<?>) cls, this.numMPCRounds, this.digestSizeBytes);
        Msg[] msgArr = new Msg[this.numMPCRounds];
        Tree tree3 = new Tree(this, this.numMPCRounds, this.digestSizeBytes);
        byte[] bArr6 = new byte[64];
        int i13 = this.numMPCRounds;
        Tree[] treeArr2 = new Tree[i13];
        Tape[] tapeArr = new Tape[i13];
        Tree tree4 = new Tree(this, this.numMPCRounds, this.seedSizeBytes);
        if (tree4.reconstructSeeds(signature2.challengeC, this.numOpenedRounds, signature2.iSeedInfo, signature2.iSeedInfoLen, signature2.salt, 0) != 0) {
            return -1;
        }
        int i14 = 0;
        while (true) {
            if (i14 < this.numMPCRounds) {
                if (contains(signature2.challengeC, this.numOpenedRounds, i14)) {
                    treeArr2[i14] = new Tree(this, this.numMPCParties, this.seedSizeBytes);
                    int[] iArr4 = {signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, i14)]};
                    Tree tree5 = treeArr2[i14];
                    Signature2.Proof2 proof2 = signature2.proofs[i14];
                    if (tree5.reconstructSeeds(iArr4, 1, proof2.seedInfo, proof2.seedInfoLen, signature2.salt, i14) != 0) {
                        logger = LOG;
                        str = "Failed to reconstruct seeds for round " + i14;
                        break;
                    }
                } else {
                    Tree tree6 = new Tree(this, this.numMPCParties, this.seedSizeBytes);
                    treeArr2[i14] = tree6;
                    tree6.generateSeeds(tree4.getLeaf(i14), signature2.salt, i14);
                }
                i14++;
            } else {
                int i15 = this.numMPCParties - 1;
                byte[] bArr7 = new byte[176];
                int i16 = 0;
                while (i16 < this.numMPCRounds) {
                    Tape tape = new Tape(this);
                    tapeArr[i16] = tape;
                    byte[] bArr8 = bArr6;
                    int i17 = i16;
                    byte[] bArr9 = bArr7;
                    Tape[] tapeArr2 = tapeArr;
                    createRandomTapes(tape, treeArr2[i16].getLeaves(), treeArr2[i16].getLeavesOffset(), signature2.salt, i17);
                    if (contains(signature2.challengeC, this.numOpenedRounds, i17)) {
                        i10 = i17;
                        treeArr = treeArr2;
                        bArr2 = bArr9;
                        int i18 = signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, i10)];
                        int i19 = 0;
                        while (i19 < i15) {
                            if (i19 != i18) {
                                i11 = i19;
                                tree2 = tree3;
                                i12 = i18;
                                commit(bArr3[i10][i19], treeArr[i10].getLeaf(i19), null, signature2.salt, i10, i11);
                            } else {
                                i11 = i19;
                                tree2 = tree3;
                                i12 = i18;
                            }
                            i19 = i11 + 1;
                            i18 = i12;
                            tree3 = tree2;
                        }
                        tree = tree3;
                        int i20 = i18;
                        if (i15 != i20) {
                            commit(bArr3[i10][i15], treeArr[i10].getLeaf(i15), signature2.proofs[i10].aux, signature2.salt, i10, i15);
                        }
                        System.arraycopy(signature2.proofs[i10].C, 0, bArr3[i10][i20], 0, this.digestSizeBytes);
                    } else {
                        tapeArr2[i17].computeAuxTape(null);
                        int i21 = 0;
                        while (i21 < i15) {
                            commit(bArr3[i17][i21], treeArr2[i17].getLeaf(i21), null, signature2.salt, i17, i21);
                            i21++;
                            treeArr2 = treeArr2;
                        }
                        i10 = i17;
                        treeArr = treeArr2;
                        getAuxBits(bArr9, tapeArr2[i10]);
                        bArr2 = bArr9;
                        commit(bArr3[i10][i15], treeArr[i10].getLeaf(i15), bArr9, signature2.salt, i17, i15);
                        tree = tree3;
                    }
                    i16 = i10 + 1;
                    bArr7 = bArr2;
                    tapeArr = tapeArr2;
                    treeArr2 = treeArr;
                    bArr6 = bArr8;
                    tree3 = tree;
                }
                Tape[] tapeArr3 = tapeArr;
                Tree tree7 = tree3;
                byte[] bArr10 = bArr6;
                for (int i22 = 0; i22 < this.numMPCRounds; i22++) {
                    commit_h(bArr4[i22], bArr3[i22]);
                }
                int[] iArr5 = new int[this.stateSizeBits];
                int i23 = 0;
                while (true) {
                    int i24 = this.numMPCRounds;
                    if (i23 < i24) {
                        msgArr[i23] = new Msg(this);
                        if (contains(signature2.challengeC, this.numOpenedRounds, i23)) {
                            int i25 = signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, i23)];
                            if (i25 != i15) {
                                tapeArr3[i23].setAuxBits(signature2.proofs[i23].aux);
                            }
                            System.arraycopy(signature2.proofs[i23].msgs, 0, msgArr[i23].msgs[i25], 0, this.andSizeBytes);
                            Arrays.fill(tapeArr3[i23].tapes[i25], (byte) 0);
                            msgArr[i23].unopened = i25;
                            byte[] bArr11 = new byte[this.stateSizeWords * 4];
                            byte[] bArr12 = signature2.proofs[i23].input;
                            System.arraycopy(bArr12, 0, bArr11, 0, bArr12.length);
                            int i26 = this.stateSizeWords;
                            int[] iArr6 = new int[i26];
                            Pack.littleEndianToInt(bArr11, 0, iArr6, 0, i26);
                            if (simulateOnline(iArr6, tapeArr3[i23], iArr5, msgArr[i23], iArr2, iArr) != 0) {
                                logger = LOG;
                                str = "MPC simulation failed for round " + i23 + ", signature invalid";
                                break;
                            }
                            commit_v(bArr5[i23], signature2.proofs[i23].input, msgArr[i23]);
                        } else {
                            bArr5[i23] = null;
                        }
                        i23++;
                    } else {
                        if (tree7.addMerkleNodes(getMissingLeavesList(signature2.challengeC), i24 - this.numOpenedRounds, signature2.cvInfo, signature2.cvInfoLen) != 0 || (iVerifyMerkleTree = tree7.verifyMerkleTree(bArr5, signature2.salt)) != 0) {
                            return -1;
                        }
                        HCP(bArr10, null, null, bArr4, tree7.nodes[0], signature2.salt, iArr, iArr2, bArr);
                        if (subarrayEquals(signature2.challengeHash, bArr10, this.digestSizeBytes)) {
                            return iVerifyMerkleTree;
                        }
                        logger = LOG;
                        str = "Challenge does not match, signature invalid";
                    }
                }
            }
        }
        logger.fine(str);
        return -1;
    }

    private void wordToMsgs(int i10, Msg msg) {
        for (int i11 = 0; i11 < this.numMPCParties; i11++) {
            Utils.setBit(msg.msgs[i11], msg.pos, (byte) Utils.getBit(i10, i11));
        }
        msg.pos++;
    }

    private void xor_three(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        for (int i10 = 0; i10 < this.stateSizeWords; i10++) {
            iArr[i10] = (iArr2[i10] ^ iArr3[i10]) ^ iArr4[i10];
        }
    }

    public void aux_mpc_sbox(int[] iArr, int[] iArr2, Tape tape) {
        for (int i10 = 0; i10 < this.numSboxes * 3; i10 += 3) {
            int i11 = i10 + 2;
            int bitFromWordArray = Utils.getBitFromWordArray(iArr, i11);
            int i12 = i10 + 1;
            int bitFromWordArray2 = Utils.getBitFromWordArray(iArr, i12);
            int bitFromWordArray3 = Utils.getBitFromWordArray(iArr, i10);
            int bitFromWordArray4 = Utils.getBitFromWordArray(iArr2, i11);
            int bitFromWordArray5 = Utils.getBitFromWordArray(iArr2, i12);
            aux_mpc_AND(bitFromWordArray, bitFromWordArray2, ((Utils.getBitFromWordArray(iArr2, i10) ^ bitFromWordArray) ^ bitFromWordArray2) ^ bitFromWordArray3, tape);
            aux_mpc_AND(bitFromWordArray2, bitFromWordArray3, bitFromWordArray4 ^ bitFromWordArray, tape);
            aux_mpc_AND(bitFromWordArray3, bitFromWordArray, (bitFromWordArray5 ^ bitFromWordArray) ^ bitFromWordArray2, tape);
        }
    }

    public void crypto_sign(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (picnic_sign(bArr3, bArr2, bArr)) {
            System.arraycopy(bArr2, 0, bArr, 4, bArr2.length);
        }
    }

    public void crypto_sign_keypair(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        int i10 = this.stateSizeWords;
        byte[] bArr3 = new byte[i10 * 4];
        byte[] bArr4 = new byte[i10 * 4];
        byte[] bArr5 = new byte[i10 * 4];
        picnic_keygen(bArr3, bArr4, bArr5, secureRandom);
        picnic_write_public_key(bArr4, bArr3, bArr);
        picnic_write_private_key(bArr5, bArr4, bArr3, bArr2);
    }

    public boolean crypto_sign_open(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (picnic_verify(bArr3, Arrays.copyOfRange(bArr2, 4, bArr.length + 4), bArr2, Pack.littleEndianToInt(bArr2, 0)) == -1) {
            return false;
        }
        System.arraycopy(bArr2, 4, bArr, 0, bArr.length);
        return true;
    }

    public int getChallenge(byte[] bArr, int i10) {
        return Utils.getCrumbAligned(bArr, i10);
    }

    public int getPublicKeySize() {
        return this.CRYPTO_PUBLICKEYBYTES;
    }

    public int getSecretKeySize() {
        return this.CRYPTO_SECRETKEYBYTES;
    }

    public int getSignatureSize(int i10) {
        return this.CRYPTO_BYTES + i10;
    }

    public int getTrueSignatureSize() {
        return this.signatureLength;
    }

    public void matrix_mul(int[] iArr, int[] iArr2, int[] iArr3, int i10) {
        matrix_mul_offset(iArr, 0, iArr2, 0, iArr3, i10);
    }

    public void matrix_mul_offset(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        int[] iArr4 = new int[16];
        int i13 = this.stateSizeWords;
        iArr4[i13 - 1] = 0;
        int i14 = this.stateSizeBits;
        int i15 = i14 / 32;
        int i16 = (i13 * 32) - i14;
        int iBitPermuteStepSimple = Bits.bitPermuteStepSimple(Bits.bitPermuteStepSimple(Bits.bitPermuteStepSimple((-1) >>> i16, 1431655765, 1), 858993459, 2), 252645135, 4);
        for (int i17 = 0; i17 < this.stateSizeBits; i17++) {
            int i18 = 0;
            for (int i19 = 0; i19 < i15; i19++) {
                i18 ^= iArr3[i12 + ((this.stateSizeWords * i17) + i19)] & iArr2[i11 + i19];
            }
            if (i16 > 0) {
                i18 ^= (iArr3[i12 + ((this.stateSizeWords * i17) + i15)] & iArr2[i11 + i15]) & iBitPermuteStepSimple;
            }
            Utils.setBit(iArr4, i17, Utils.parity32(i18));
        }
        System.arraycopy(iArr4, 0, iArr, i10, this.stateSizeWords);
    }

    public void mpc_AND_verify(int[] iArr, int[] iArr2, int[] iArr3, Tape tape, View view, View view2) {
        byte bit = Utils.getBit(tape.tapes[0], tape.pos);
        byte bit2 = Utils.getBit(tape.tapes[1], tape.pos);
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = iArr2[0];
        int i13 = ((((i11 & i12) ^ (iArr2[1] & i10)) ^ (i10 & i12)) ^ bit) ^ bit2;
        iArr3[0] = i13;
        Utils.setBit(view.communicatedBits, tape.pos, (byte) i13);
        iArr3[1] = Utils.getBit(view2.communicatedBits, tape.pos);
        tape.pos++;
    }

    public void mpc_LowMC_verify(View view, View view2, Tape tape, int[] iArr, int[] iArr2, int i10) {
        Arrays.fill(iArr, 0, iArr.length, 0);
        mpc_xor_constant_verify(iArr, iArr2, 0, this.stateSizeWords, i10);
        KMatricesWithPointer kMatricesWithPointerKMatrix = this.lowmcConstants.KMatrix(this, 0);
        matrix_mul_offset(iArr, 0, view.inputShare, 0, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
        matrix_mul_offset(iArr, this.stateSizeWords, view2.inputShare, 0, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
        mpc_xor(iArr, iArr, 2);
        for (int i11 = 1; i11 <= this.numRounds; i11++) {
            KMatricesWithPointer kMatricesWithPointerKMatrix2 = this.lowmcConstants.KMatrix(this, i11);
            matrix_mul_offset(iArr, 0, view.inputShare, 0, kMatricesWithPointerKMatrix2.getData(), kMatricesWithPointerKMatrix2.getMatrixPointer());
            matrix_mul_offset(iArr, this.stateSizeWords, view2.inputShare, 0, kMatricesWithPointerKMatrix2.getData(), kMatricesWithPointerKMatrix2.getMatrixPointer());
            mpc_substitution_verify(iArr, tape, view, view2);
            int i12 = i11 - 1;
            KMatricesWithPointer kMatricesWithPointerLMatrix = this.lowmcConstants.LMatrix(this, i12);
            int i13 = this.stateSizeWords;
            mpc_matrix_mul(iArr, i13 * 2, iArr, i13 * 2, kMatricesWithPointerLMatrix.getData(), kMatricesWithPointerLMatrix.getMatrixPointer(), 2);
            KMatricesWithPointer kMatricesWithPointerRConstant = this.lowmcConstants.RConstant(this, i12);
            mpc_xor_constant_verify(iArr, kMatricesWithPointerRConstant.getData(), kMatricesWithPointerRConstant.getMatrixPointer(), this.stateSizeWords, i10);
            mpc_xor(iArr, iArr, 2);
        }
        int i14 = this.stateSizeWords;
        System.arraycopy(iArr, i14 * 2, view.outputShare, 0, i14);
        int i15 = this.stateSizeWords;
        System.arraycopy(iArr, i15 * 3, view2.outputShare, 0, i15);
    }

    public void mpc_substitution_verify(int[] iArr, Tape tape, View view, View view2) {
        int[] iArr2 = new int[2];
        int[] iArr3 = new int[2];
        int[] iArr4 = new int[2];
        int[] iArr5 = new int[2];
        int[] iArr6 = new int[2];
        int[] iArr7 = new int[2];
        int i10 = 0;
        while (i10 < this.numSboxes * 3) {
            for (int i11 = 0; i11 < 2; i11++) {
                int i12 = ((i11 + 2) * this.stateSizeWords * 32) + i10;
                iArr2[i11] = Utils.getBitFromWordArray(iArr, i12 + 2);
                iArr3[i11] = Utils.getBitFromWordArray(iArr, i12 + 1);
                iArr4[i11] = Utils.getBitFromWordArray(iArr, i12);
            }
            int i13 = i10;
            mpc_AND_verify(iArr2, iArr3, iArr5, tape, view, view2);
            mpc_AND_verify(iArr3, iArr4, iArr6, tape, view, view2);
            mpc_AND_verify(iArr4, iArr2, iArr7, tape, view, view2);
            for (int i14 = 0; i14 < 2; i14++) {
                int i15 = ((i14 + 2) * this.stateSizeWords * 32) + i13;
                Utils.setBitInWordArray(iArr, i15 + 2, iArr2[i14] ^ iArr6[i14]);
                Utils.setBitInWordArray(iArr, i15 + 1, (iArr2[i14] ^ iArr3[i14]) ^ iArr7[i14]);
                Utils.setBitInWordArray(iArr, i15, ((iArr2[i14] ^ iArr3[i14]) ^ iArr4[i14]) ^ iArr5[i14]);
            }
            i10 = i13 + 3;
        }
    }

    public void prove(Signature.Proof proof, int i10, byte[] bArr, int i11, View[] viewArr, byte[][] bArr2, byte[][] bArr3) {
        if (i10 == 0) {
            System.arraycopy(bArr, i11, proof.seed1, 0, this.seedSizeBytes);
            int i12 = this.seedSizeBytes;
            System.arraycopy(bArr, i11 + i12, proof.seed2, 0, i12);
        } else if (i10 == 1) {
            int i13 = this.seedSizeBytes;
            System.arraycopy(bArr, i11 + i13, proof.seed1, 0, i13);
            int i14 = this.seedSizeBytes;
            System.arraycopy(bArr, (i14 * 2) + i11, proof.seed2, 0, i14);
        } else {
            if (i10 != 2) {
                LOG.fine("Invalid challenge");
                throw new IllegalArgumentException("challenge");
            }
            int i15 = this.seedSizeBytes;
            System.arraycopy(bArr, (i15 * 2) + i11, proof.seed1, 0, i15);
            System.arraycopy(bArr, i11, proof.seed2, 0, this.seedSizeBytes);
        }
        if (i10 == 1 || i10 == 2) {
            System.arraycopy(viewArr[2].inputShare, 0, proof.inputShare, 0, this.stateSizeWords);
        }
        System.arraycopy(viewArr[(i10 + 1) % 3].communicatedBits, 0, proof.communicatedBits, 0, this.andSizeBytes);
        int i16 = (i10 + 2) % 3;
        System.arraycopy(bArr2[i16], 0, proof.view3Commitment, 0, this.digestSizeBytes);
        if (this.transform == 1) {
            System.arraycopy(bArr3[i16], 0, proof.view3UnruhG, 0, i10 == 0 ? this.UnruhGWithInputBytes : this.UnruhGWithoutInputBytes);
        }
    }

    public int serializeSignature(Signature signature, byte[] bArr, int i10) {
        Signature.Proof[] proofArr = signature.proofs;
        byte[] bArr2 = signature.challengeBits;
        int iNumBytes = Utils.numBytes(this.numMPCRounds * 2) + 32;
        int i11 = this.numMPCRounds;
        int i12 = (((this.seedSizeBytes * 2) + this.stateSizeBytes + this.andSizeBytes + this.digestSizeBytes) * i11) + iNumBytes;
        if (this.transform == 1) {
            i12 += this.UnruhGWithoutInputBytes * i11;
        }
        if (this.CRYPTO_BYTES < i12) {
            return -1;
        }
        System.arraycopy(bArr2, 0, bArr, i10, Utils.numBytes(i11 * 2));
        int iNumBytes2 = Utils.numBytes(this.numMPCRounds * 2) + i10;
        System.arraycopy(signature.salt, 0, bArr, iNumBytes2, 32);
        int i13 = iNumBytes2 + 32;
        for (int i14 = 0; i14 < this.numMPCRounds; i14++) {
            int challenge = getChallenge(bArr2, i14);
            System.arraycopy(proofArr[i14].view3Commitment, 0, bArr, i13, this.digestSizeBytes);
            int i15 = i13 + this.digestSizeBytes;
            if (this.transform == 1) {
                int i16 = challenge == 0 ? this.UnruhGWithInputBytes : this.UnruhGWithoutInputBytes;
                System.arraycopy(proofArr[i14].view3UnruhG, 0, bArr, i15, i16);
                i15 += i16;
            }
            System.arraycopy(proofArr[i14].communicatedBits, 0, bArr, i15, this.andSizeBytes);
            int i17 = i15 + this.andSizeBytes;
            System.arraycopy(proofArr[i14].seed1, 0, bArr, i17, this.seedSizeBytes);
            int i18 = this.seedSizeBytes;
            int i19 = i17 + i18;
            System.arraycopy(proofArr[i14].seed2, 0, bArr, i19, i18);
            i13 = i19 + this.seedSizeBytes;
            if (challenge == 1 || challenge == 2) {
                Pack.intToLittleEndian(proofArr[i14].inputShare, 0, this.stateSizeWords, bArr, i13);
                i13 += this.stateSizeBytes;
            }
        }
        return i13 - i10;
    }

    public boolean verifyProof(Signature.Proof proof, View view, View view2, int i10, byte[] bArr, int i11, byte[] bArr2, int[] iArr, Tape tape) {
        boolean z;
        boolean z4;
        System.arraycopy(proof.communicatedBits, 0, view2.communicatedBits, 0, this.andSizeBytes);
        tape.pos = 0;
        if (i10 == 0) {
            z = true;
            boolean zCreateRandomTape = createRandomTape(proof.seed1, 0, bArr, i11, 0, bArr2, this.stateSizeBytes + this.andSizeBytes);
            Pack.littleEndianToInt(bArr2, 0, view.inputShare);
            System.arraycopy(bArr2, this.stateSizeBytes, tape.tapes[0], 0, this.andSizeBytes);
            z4 = zCreateRandomTape && createRandomTape(proof.seed2, 0, bArr, i11, 1, bArr2, this.stateSizeBytes + this.andSizeBytes);
            if (z4) {
                Pack.littleEndianToInt(bArr2, 0, view2.inputShare);
                System.arraycopy(bArr2, this.stateSizeBytes, tape.tapes[1], 0, this.andSizeBytes);
            }
        } else if (i10 == 1) {
            z = true;
            boolean zCreateRandomTape2 = createRandomTape(proof.seed1, 0, bArr, i11, 1, bArr2, this.stateSizeBytes + this.andSizeBytes);
            Pack.littleEndianToInt(bArr2, 0, view.inputShare);
            System.arraycopy(bArr2, this.stateSizeBytes, tape.tapes[0], 0, this.andSizeBytes);
            z4 = zCreateRandomTape2 && createRandomTape(proof.seed2, 0, bArr, i11, 2, tape.tapes[1], this.andSizeBytes);
            if (z4) {
                System.arraycopy(proof.inputShare, 0, view2.inputShare, 0, this.stateSizeWords);
            }
        } else if (i10 != 2) {
            LOG.fine("Invalid Challenge!");
            z4 = false;
            z = true;
        } else {
            z = true;
            boolean zCreateRandomTape3 = createRandomTape(proof.seed1, 0, bArr, i11, 2, tape.tapes[0], this.andSizeBytes);
            System.arraycopy(proof.inputShare, 0, view.inputShare, 0, this.stateSizeWords);
            z4 = zCreateRandomTape3 && createRandomTape(proof.seed2, 0, bArr, i11, 0, bArr2, this.stateSizeBytes + this.andSizeBytes);
            if (z4) {
                Pack.littleEndianToInt(bArr2, 0, view2.inputShare);
                System.arraycopy(bArr2, this.stateSizeBytes, tape.tapes[1], 0, this.andSizeBytes);
            }
        }
        if (!z4) {
            LOG.fine("Failed to generate random tapes, signature verification will fail (but signature may actually be valid)");
            return false;
        }
        Utils.zeroTrailingBits(view.inputShare, this.stateSizeBits);
        Utils.zeroTrailingBits(view2.inputShare, this.stateSizeBits);
        mpc_LowMC_verify(view, view2, tape, Pack.littleEndianToInt(bArr2, 0, bArr2.length / 4), iArr, i10);
        return z;
    }

    public void xor_array(int[] iArr, int[] iArr2, int[] iArr3, int i10) {
        for (int i11 = 0; i11 < this.stateSizeWords; i11++) {
            iArr[i11] = iArr2[i11] ^ iArr3[i11 + i10];
        }
    }

    private void H3(int[] iArr, int[] iArr2, int[][][] iArr3, byte[][][] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[][][] bArr5) {
        this.digest.update((byte) 1);
        byte[] bArr6 = new byte[this.stateSizeWords * 4];
        for (int i10 = 0; i10 < this.numMPCRounds; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                Pack.intToLittleEndian(iArr3[i10][i11], bArr6, 0);
                this.digest.update(bArr6, 0, this.stateSizeBytes);
            }
        }
        implH3(iArr, iArr2, bArr, bArr2, bArr3, bArr4, bArr5);
    }

    private boolean arePaddingBitsZero(int[] iArr, int i10) {
        if ((i10 & 31) == 0) {
            return true;
        }
        return (iArr[i10 >>> 5] & (Utils.getTrailingBitsMask(i10) ^ (-1))) == 0;
    }

    private void mpc_AND(int[] iArr, int[] iArr2, int[] iArr3, Tape tape, View[] viewArr) {
        byte bit = Utils.getBit(tape.tapes[0], tape.pos);
        byte bit2 = Utils.getBit(tape.tapes[1], tape.pos);
        byte bit3 = Utils.getBit(tape.tapes[2], tape.pos);
        int i10 = iArr[0];
        int i11 = iArr2[1];
        int i12 = iArr[1];
        int i13 = iArr2[0];
        int i14 = (((i10 & i13) ^ ((i10 & i11) ^ (i12 & i13))) ^ bit) ^ bit2;
        iArr3[0] = i14;
        int i15 = iArr2[2];
        int i16 = iArr[2];
        iArr3[1] = (bit2 ^ ((i11 & i12) ^ ((i12 & i15) ^ (i16 & i11)))) ^ bit3;
        iArr3[2] = bit ^ ((((iArr2[0] & i16) ^ (iArr[0] & i15)) ^ (i16 & i15)) ^ bit3);
        Utils.setBit(viewArr[0].communicatedBits, tape.pos, (byte) i14);
        Utils.setBit(viewArr[1].communicatedBits, tape.pos, (byte) iArr3[1]);
        Utils.setBit(viewArr[2].communicatedBits, tape.pos, (byte) iArr3[2]);
        tape.pos++;
    }

    private static boolean subarrayEquals(int[] iArr, int[] iArr2, int i10) {
        if (iArr.length < i10 || iArr2.length < i10) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (iArr[i11] != iArr2[i11]) {
                return false;
            }
        }
        return true;
    }
}
