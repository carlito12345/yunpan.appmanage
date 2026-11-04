package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.digests.SparkleDigest;
import org.bouncycastle.crypto.engines.AEADBaseEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public class SparkleEngine extends AEADBaseEngine {
    private static final int[] RCON = {-1209970334, -1083090816, 951376470, 844003128, -1156479509, 1333558103, -809524792, -1028445891};
    private final int CAP_MASK;
    private final int KEY_WORDS;
    private final int RATE_WORDS;
    private final int SPARKLE_STEPS_BIG;
    private final int SPARKLE_STEPS_SLIM;
    private final int STATE_WORDS;
    private final int TAG_WORDS;
    private final int _A0;
    private final int _A1;
    private final int _M2;
    private final int _M3;
    private boolean encrypted;

    /* renamed from: k, reason: collision with root package name */
    private final int[] f11977k;
    private final int[] npub;
    private final int[] state;

    /* renamed from: org.bouncycastle.crypto.engines.SparkleEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters;

        static {
            int[] iArr = new int[SparkleParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters = iArr;
            try {
                iArr[SparkleParameters.SCHWAEMM128_128.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM256_128.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM192_192.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM256_256.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum SparkleParameters {
        SCHWAEMM128_128,
        SCHWAEMM256_128,
        SCHWAEMM192_192,
        SCHWAEMM256_256
    }

    public SparkleEngine(SparkleParameters sparkleParameters) {
        int i10;
        int i11;
        int i12;
        int i13 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[sparkleParameters.ordinal()];
        int i14 = 256;
        int i15 = 128;
        if (i13 != 1) {
            i12 = 384;
            if (i13 == 2) {
                this.SPARKLE_STEPS_SLIM = 7;
                this.SPARKLE_STEPS_BIG = 11;
                this.algorithmName = "SCHWAEMM256-128";
                i10 = 256;
                i11 = 128;
                i14 = 128;
            } else if (i13 == 3) {
                this.SPARKLE_STEPS_SLIM = 7;
                this.SPARKLE_STEPS_BIG = 11;
                this.algorithmName = "SCHWAEMM192-192";
                i14 = 192;
                i10 = 192;
                i11 = 192;
                i15 = 192;
            } else {
                if (i13 != 4) {
                    throw new IllegalArgumentException("Invalid definition of SCHWAEMM instance");
                }
                this.SPARKLE_STEPS_SLIM = 8;
                this.SPARKLE_STEPS_BIG = 12;
                this.algorithmName = "SCHWAEMM256-256";
                i10 = 256;
                i11 = 256;
                i15 = 256;
                i12 = 512;
            }
        } else {
            this.SPARKLE_STEPS_SLIM = 7;
            this.SPARKLE_STEPS_BIG = 10;
            this.algorithmName = "SCHWAEMM128-128";
            i10 = 128;
            i11 = 128;
            i14 = 128;
            i12 = 256;
        }
        int i16 = i14 >>> 5;
        this.KEY_WORDS = i16;
        this.KEY_SIZE = i14 >>> 3;
        this.TAG_WORDS = i15 >>> 5;
        this.MAC_SIZE = i15 >>> 3;
        int i17 = i12 >>> 5;
        this.STATE_WORDS = i17;
        int i18 = i10 >>> 5;
        this.RATE_WORDS = i18;
        int i19 = i10 >>> 3;
        this.IV_SIZE = i19;
        int i20 = i11 >>> 6;
        int i21 = i11 >>> 5;
        this.CAP_MASK = i18 > i21 ? i21 - 1 : -1;
        int i22 = 1 << i20;
        this._A0 = i22 << 24;
        this._A1 = (i22 ^ 1) << 24;
        this._M2 = (i22 ^ 2) << 24;
        this._M3 = (i22 ^ 3) << 24;
        this.state = new int[i17];
        this.f11977k = new int[i16];
        this.npub = new int[i18];
        this.BlockSize = i19;
        this.AADBufferSize = i19;
        setInnerMembers(AEADBaseEngine.ProcessingBufferType.Buffered, AEADBaseEngine.AADOperatorType.Default, AEADBaseEngine.DataOperatorType.Default);
    }

    private static int ELL(int i10) {
        return (i10 & 65535) ^ Integers.rotateRight(i10, 16);
    }

    private static void sparkle_opt(int[] iArr, int i10) {
        int length = iArr.length;
        if (length == 8) {
            sparkle_opt8(iArr, i10);
        } else if (length == 12) {
            sparkle_opt12(iArr, i10);
        } else {
            if (length != 16) {
                throw new IllegalStateException();
            }
            sparkle_opt16(iArr, i10);
        }
    }

    public static void sparkle_opt12(SparkleDigest.Friend friend, int[] iArr, int i10) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by SparkleDigest");
        }
        sparkle_opt12(iArr, i10);
    }

    public static void sparkle_opt16(SparkleDigest.Friend friend, int[] iArr, int i10) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by SparkleDigest");
        }
        sparkle_opt16(iArr, i10);
    }

    public static void sparkle_opt8(int[] iArr, int i10) {
        char c7 = 0;
        int i11 = iArr[0];
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = iArr[4];
        int i16 = iArr[5];
        int i17 = iArr[6];
        int i18 = iArr[7];
        int i19 = 0;
        while (i19 < i10) {
            int[] iArr2 = RCON;
            int i20 = i12 ^ iArr2[i19 & 7];
            int i21 = i14 ^ i19;
            int i22 = iArr2[c7];
            int iRotateRight = Integers.rotateRight(i20, 31) + i11;
            int iRotateRight2 = i20 ^ Integers.rotateRight(iRotateRight, 24);
            int iRotateRight3 = Integers.rotateRight(iRotateRight2, 17) + (iRotateRight ^ i22);
            int iRotateRight4 = iRotateRight2 ^ Integers.rotateRight(iRotateRight3, 17);
            int i23 = (iRotateRight3 ^ i22) + iRotateRight4;
            int iRotateRight5 = iRotateRight4 ^ Integers.rotateRight(i23, 31);
            int iRotateRight6 = Integers.rotateRight(iRotateRight5, 24) + (i23 ^ i22);
            int iRotateRight7 = iRotateRight5 ^ Integers.rotateRight(iRotateRight6, 16);
            int i24 = iRotateRight6 ^ i22;
            int i25 = iArr2[1];
            int iRotateRight8 = Integers.rotateRight(i21, 31) + i13;
            int iRotateRight9 = i21 ^ Integers.rotateRight(iRotateRight8, 24);
            int iRotateRight10 = Integers.rotateRight(iRotateRight9, 17) + (iRotateRight8 ^ i25);
            int iRotateRight11 = iRotateRight9 ^ Integers.rotateRight(iRotateRight10, 17);
            int i26 = (iRotateRight10 ^ i25) + iRotateRight11;
            int iRotateRight12 = iRotateRight11 ^ Integers.rotateRight(i26, 31);
            int iRotateRight13 = Integers.rotateRight(iRotateRight12, 24) + (i26 ^ i25);
            int iRotateRight14 = iRotateRight12 ^ Integers.rotateRight(iRotateRight13, 16);
            int i27 = iRotateRight13 ^ i25;
            int i28 = iArr2[2];
            int iRotateRight15 = Integers.rotateRight(i16, 31) + i15;
            int iRotateRight16 = i16 ^ Integers.rotateRight(iRotateRight15, 24);
            int iRotateRight17 = Integers.rotateRight(iRotateRight16, 17) + (iRotateRight15 ^ i28);
            int iRotateRight18 = iRotateRight16 ^ Integers.rotateRight(iRotateRight17, 17);
            int i29 = (iRotateRight17 ^ i28) + iRotateRight18;
            int iRotateRight19 = iRotateRight18 ^ Integers.rotateRight(i29, 31);
            int iRotateRight20 = Integers.rotateRight(iRotateRight19, 24) + (i29 ^ i28);
            int iRotateRight21 = iRotateRight19 ^ Integers.rotateRight(iRotateRight20, 16);
            int i30 = iRotateRight20 ^ i28;
            int i31 = iArr2[3];
            int iRotateRight22 = Integers.rotateRight(i18, 31) + i17;
            int iRotateRight23 = i18 ^ Integers.rotateRight(iRotateRight22, 24);
            int iRotateRight24 = Integers.rotateRight(iRotateRight23, 17) + (iRotateRight22 ^ i31);
            int iRotateRight25 = Integers.rotateRight(iRotateRight24, 17) ^ iRotateRight23;
            int i32 = (iRotateRight24 ^ i31) + iRotateRight25;
            int iRotateRight26 = iRotateRight25 ^ Integers.rotateRight(i32, 31);
            int iRotateRight27 = Integers.rotateRight(iRotateRight26, 24) + (i32 ^ i31);
            int iRotateRight28 = iRotateRight26 ^ Integers.rotateRight(iRotateRight27, 16);
            int i33 = iRotateRight27 ^ i31;
            int iELL = ELL(i24 ^ i27);
            int iELL2 = ELL(iRotateRight7 ^ iRotateRight14);
            int i34 = (i33 ^ i27) ^ iELL2;
            int i35 = (iRotateRight28 ^ iRotateRight14) ^ iELL;
            int i36 = iELL ^ (iRotateRight21 ^ iRotateRight7);
            i19++;
            i16 = iRotateRight7;
            i17 = i27;
            i18 = iRotateRight14;
            i14 = i36;
            i13 = (i30 ^ i24) ^ iELL2;
            i12 = i35;
            i15 = i24;
            i11 = i34;
            c7 = 0;
        }
        iArr[c7] = i11;
        iArr[1] = i12;
        iArr[2] = i13;
        iArr[3] = i14;
        iArr[4] = i15;
        iArr[5] = i16;
        iArr[6] = i17;
        iArr[7] = i18;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int i10) {
        return super.doFinal(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void finishAAD(AEADBaseEngine.State state, boolean z) {
        finishAAD2(state);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ String getAlgorithmName() {
        return super.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public /* bridge */ /* synthetic */ int getIVBytesSize() {
        return super.getIVBytesSize();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public /* bridge */ /* synthetic */ int getKeyBytesSize() {
        return super.getKeyBytesSize();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ byte[] getMac() {
        return super.getMac();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int getOutputSize(int i10) {
        return super.getOutputSize(i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int getUpdateOutputSize(int i10) {
        return super.getUpdateOutputSize(i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void init(boolean z, CipherParameters cipherParameters) {
        super.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void processAADByte(byte b10) {
        super.processAADByte(b10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void processAADBytes(byte[] bArr, int i10, int i11) {
        super.processAADBytes(bArr, i10, i11);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferAAD(byte[] bArr, int i10) {
        int i11 = 0;
        while (true) {
            int i12 = this.RATE_WORDS;
            if (i11 >= i12 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_SLIM);
                return;
            }
            int i13 = (i12 / 2) + i11;
            int[] iArr = this.state;
            int i14 = iArr[i11];
            int i15 = iArr[i13];
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, (i11 * 4) + i10);
            int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, (i13 * 4) + i10);
            int[] iArr2 = this.state;
            int i16 = this.RATE_WORDS;
            iArr2[i11] = (iLittleEndianToInt ^ i15) ^ iArr2[i16 + i11];
            iArr2[i13] = ((i15 ^ i14) ^ iLittleEndianToInt2) ^ iArr2[i16 + (this.CAP_MASK & i13)];
            i11++;
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12 = 0;
        while (true) {
            int i13 = this.RATE_WORDS;
            if (i12 >= i13 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_SLIM);
                this.encrypted = true;
                return;
            }
            int i14 = (i13 / 2) + i12;
            int[] iArr = this.state;
            int i15 = iArr[i12];
            int i16 = iArr[i14];
            int i17 = i12 * 4;
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i10 + i17);
            int i18 = i14 * 4;
            int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, i10 + i18);
            int[] iArr2 = this.state;
            int i19 = this.RATE_WORDS;
            iArr2[i12] = ((i15 ^ i16) ^ iLittleEndianToInt) ^ iArr2[i19 + i12];
            iArr2[i14] = (i15 ^ iLittleEndianToInt2) ^ iArr2[i19 + (this.CAP_MASK & i14)];
            Pack.intToLittleEndian(iLittleEndianToInt ^ i15, bArr2, i11 + i17);
            Pack.intToLittleEndian(iLittleEndianToInt2 ^ i16, bArr2, i11 + i18);
            i12++;
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12 = 0;
        while (true) {
            int i13 = this.RATE_WORDS;
            if (i12 >= i13 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_SLIM);
                this.encrypted = true;
                return;
            }
            int i14 = (i13 / 2) + i12;
            int[] iArr = this.state;
            int i15 = iArr[i12];
            int i16 = iArr[i14];
            int i17 = i12 * 4;
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i10 + i17);
            int i18 = i14 * 4;
            int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, i10 + i18);
            int[] iArr2 = this.state;
            int i19 = this.RATE_WORDS;
            iArr2[i12] = (i16 ^ iLittleEndianToInt) ^ iArr2[i19 + i12];
            iArr2[i14] = ((i15 ^ i16) ^ iLittleEndianToInt2) ^ iArr2[i19 + (this.CAP_MASK & i14)];
            Pack.intToLittleEndian(iLittleEndianToInt ^ i15, bArr2, i11 + i17);
            Pack.intToLittleEndian(iLittleEndianToInt2 ^ i16, bArr2, i11 + i18);
            i12++;
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int processByte(byte b10, byte[] bArr, int i10) {
        return super.processByte(b10, bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int processBytes(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        return super.processBytes(bArr, i10, i11, bArr2, i12);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalAAD() {
        int i10 = this.m_aadPos;
        int i11 = this.BlockSize;
        int i12 = 0;
        if (i10 < i11) {
            int[] iArr = this.state;
            int i13 = this.STATE_WORDS - 1;
            iArr[i13] = iArr[i13] ^ this._A0;
            byte[] bArr = this.m_aad;
            int i14 = i10 + 1;
            this.m_aadPos = i14;
            bArr[i10] = Byte.MIN_VALUE;
            Arrays.fill(bArr, i14, i11, (byte) 0);
        } else {
            int[] iArr2 = this.state;
            int i15 = this.STATE_WORDS - 1;
            iArr2[i15] = iArr2[i15] ^ this._A1;
        }
        while (true) {
            int i16 = this.RATE_WORDS;
            if (i12 >= i16 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_BIG);
                return;
            }
            int i17 = (i16 / 2) + i12;
            int[] iArr3 = this.state;
            int i18 = iArr3[i12];
            int i19 = iArr3[i17];
            int iLittleEndianToInt = Pack.littleEndianToInt(this.m_aad, i12 * 4);
            int iLittleEndianToInt2 = Pack.littleEndianToInt(this.m_aad, i17 * 4);
            int[] iArr4 = this.state;
            int i20 = this.RATE_WORDS;
            iArr4[i12] = (iLittleEndianToInt ^ i19) ^ iArr4[i20 + i12];
            iArr4[i17] = ((i19 ^ i18) ^ iLittleEndianToInt2) ^ iArr4[i20 + (this.CAP_MASK & i17)];
            i12++;
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalBlock(byte[] bArr, int i10) {
        int i11;
        if (this.encrypted || this.m_bufPos > 0) {
            int[] iArr = this.state;
            int i12 = this.STATE_WORDS - 1;
            iArr[i12] = iArr[i12] ^ (this.m_bufPos < this.IV_SIZE ? this._M2 : this._M3);
            int[] iArr2 = new int[this.RATE_WORDS];
            int i13 = 0;
            while (true) {
                i11 = this.m_bufPos;
                if (i13 >= i11) {
                    break;
                }
                int i14 = i13 >>> 2;
                iArr2[i14] = iArr2[i14] | ((this.m_buf[i13] & 255) << ((i13 & 3) << 3));
                i13++;
            }
            if (i11 < this.IV_SIZE) {
                if (!this.forEncryption) {
                    int i15 = (i11 & 3) << 3;
                    int i16 = i11 >>> 2;
                    int i17 = iArr2[i16];
                    int[] iArr3 = this.state;
                    iArr2[i16] = ((iArr3[i11 >>> 2] >>> i15) << i15) | i17;
                    int i18 = (i11 >>> 2) + 1;
                    System.arraycopy(iArr3, i18, iArr2, i18, this.RATE_WORDS - i18);
                }
                int i19 = this.m_bufPos;
                int i20 = i19 >>> 2;
                iArr2[i20] = (128 << ((i19 & 3) << 3)) ^ iArr2[i20];
            }
            int i21 = 0;
            while (true) {
                int i22 = this.RATE_WORDS;
                if (i21 >= i22 / 2) {
                    break;
                }
                int i23 = (i22 / 2) + i21;
                int[] iArr4 = this.state;
                int i24 = iArr4[i21];
                int i25 = iArr4[i23];
                if (this.forEncryption) {
                    iArr4[i21] = (iArr2[i21] ^ i25) ^ iArr4[i22 + i21];
                    iArr4[i23] = iArr4[i22 + (this.CAP_MASK & i23)] ^ ((i24 ^ i25) ^ iArr2[i23]);
                } else {
                    iArr4[i21] = ((i24 ^ i25) ^ iArr2[i21]) ^ iArr4[i22 + i21];
                    iArr4[i23] = iArr4[i22 + (this.CAP_MASK & i23)] ^ (iArr2[i23] ^ i24);
                }
                iArr2[i21] = iArr2[i21] ^ i24;
                iArr2[i23] = iArr2[i23] ^ i25;
                i21++;
            }
            int i26 = 0;
            while (i26 < this.m_bufPos) {
                bArr[i10] = (byte) (iArr2[i26 >>> 2] >>> ((i26 & 3) << 3));
                i26++;
                i10++;
            }
            sparkle_opt(this.state, this.SPARKLE_STEPS_BIG);
        }
        for (int i27 = 0; i27 < this.KEY_WORDS; i27++) {
            int[] iArr5 = this.state;
            int i28 = this.RATE_WORDS + i27;
            iArr5[i28] = iArr5[i28] ^ this.f11977k[i27];
        }
        Pack.intToLittleEndian(this.state, this.RATE_WORDS, this.TAG_WORDS, this.mac, 0);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    public static void sparkle_opt12(int[] iArr, int i10) {
        char c7 = 0;
        int i11 = iArr[0];
        char c10 = 1;
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = iArr[4];
        int i16 = iArr[5];
        int i17 = iArr[6];
        int i18 = iArr[7];
        int i19 = iArr[8];
        int i20 = iArr[9];
        int i21 = iArr[10];
        int i22 = i20;
        int i23 = iArr[11];
        int i24 = 0;
        while (i24 < i10) {
            int[] iArr2 = RCON;
            int i25 = i12 ^ iArr2[i24 & 7];
            int i26 = i14 ^ i24;
            int i27 = iArr2[c7];
            int iRotateRight = Integers.rotateRight(i25, 31) + i11;
            int iRotateRight2 = i25 ^ Integers.rotateRight(iRotateRight, 24);
            int iRotateRight3 = Integers.rotateRight(iRotateRight2, 17) + (iRotateRight ^ i27);
            int iRotateRight4 = iRotateRight2 ^ Integers.rotateRight(iRotateRight3, 17);
            int i28 = (iRotateRight3 ^ i27) + iRotateRight4;
            int iRotateRight5 = iRotateRight4 ^ Integers.rotateRight(i28, 31);
            int iRotateRight6 = Integers.rotateRight(iRotateRight5, 24) + (i28 ^ i27);
            int iRotateRight7 = iRotateRight5 ^ Integers.rotateRight(iRotateRight6, 16);
            int i29 = iRotateRight6 ^ i27;
            int i30 = iArr2[c10];
            int iRotateRight8 = Integers.rotateRight(i26, 31) + i13;
            int iRotateRight9 = i26 ^ Integers.rotateRight(iRotateRight8, 24);
            int iRotateRight10 = Integers.rotateRight(iRotateRight9, 17) + (iRotateRight8 ^ i30);
            int iRotateRight11 = iRotateRight9 ^ Integers.rotateRight(iRotateRight10, 17);
            int i31 = (iRotateRight10 ^ i30) + iRotateRight11;
            int iRotateRight12 = iRotateRight11 ^ Integers.rotateRight(i31, 31);
            int iRotateRight13 = Integers.rotateRight(iRotateRight12, 24) + (i31 ^ i30);
            int iRotateRight14 = iRotateRight12 ^ Integers.rotateRight(iRotateRight13, 16);
            int i32 = iRotateRight13 ^ i30;
            int i33 = iArr2[2];
            int iRotateRight15 = Integers.rotateRight(i16, 31) + i15;
            int iRotateRight16 = Integers.rotateRight(iRotateRight15, 24) ^ i16;
            int iRotateRight17 = Integers.rotateRight(iRotateRight16, 17) + (iRotateRight15 ^ i33);
            int iRotateRight18 = iRotateRight16 ^ Integers.rotateRight(iRotateRight17, 17);
            int i34 = (iRotateRight17 ^ i33) + iRotateRight18;
            int iRotateRight19 = iRotateRight18 ^ Integers.rotateRight(i34, 31);
            int iRotateRight20 = Integers.rotateRight(iRotateRight19, 24) + (i34 ^ i33);
            int iRotateRight21 = Integers.rotateRight(iRotateRight20, 16) ^ iRotateRight19;
            int i35 = iRotateRight20 ^ i33;
            int i36 = iArr2[3];
            int iRotateRight22 = Integers.rotateRight(i18, 31) + i17;
            int iRotateRight23 = Integers.rotateRight(iRotateRight22, 24) ^ i18;
            int iRotateRight24 = Integers.rotateRight(iRotateRight23, 17) + (iRotateRight22 ^ i36);
            int iRotateRight25 = iRotateRight23 ^ Integers.rotateRight(iRotateRight24, 17);
            int i37 = (iRotateRight24 ^ i36) + iRotateRight25;
            int iRotateRight26 = iRotateRight25 ^ Integers.rotateRight(i37, 31);
            int iRotateRight27 = Integers.rotateRight(iRotateRight26, 24) + (i37 ^ i36);
            int iRotateRight28 = Integers.rotateRight(iRotateRight27, 16) ^ iRotateRight26;
            int i38 = iRotateRight27 ^ i36;
            int i39 = iArr2[4];
            int iRotateRight29 = Integers.rotateRight(i22, 31) + i19;
            int iRotateRight30 = i22 ^ Integers.rotateRight(iRotateRight29, 24);
            int iRotateRight31 = Integers.rotateRight(iRotateRight30, 17) + (iRotateRight29 ^ i39);
            int iRotateRight32 = iRotateRight30 ^ Integers.rotateRight(iRotateRight31, 17);
            int i40 = (iRotateRight31 ^ i39) + iRotateRight32;
            int iRotateRight33 = iRotateRight32 ^ Integers.rotateRight(i40, 31);
            int iRotateRight34 = Integers.rotateRight(iRotateRight33, 24) + (i40 ^ i39);
            int iRotateRight35 = iRotateRight33 ^ Integers.rotateRight(iRotateRight34, 16);
            int i41 = iRotateRight34 ^ i39;
            int i42 = iArr2[5];
            int iRotateRight36 = Integers.rotateRight(i23, 31) + i21;
            int iRotateRight37 = i23 ^ Integers.rotateRight(iRotateRight36, 24);
            int iRotateRight38 = Integers.rotateRight(iRotateRight37, 17) + (iRotateRight36 ^ i42);
            int iRotateRight39 = Integers.rotateRight(iRotateRight38, 17) ^ iRotateRight37;
            int i43 = (iRotateRight38 ^ i42) + iRotateRight39;
            int iRotateRight40 = Integers.rotateRight(i43, 31) ^ iRotateRight39;
            int iRotateRight41 = Integers.rotateRight(iRotateRight40, 24) + (i43 ^ i42);
            int iRotateRight42 = iRotateRight40 ^ Integers.rotateRight(iRotateRight41, 16);
            int i44 = iRotateRight41 ^ i42;
            int iELL = ELL((i29 ^ i32) ^ i35);
            int iELL2 = ELL((iRotateRight7 ^ iRotateRight14) ^ iRotateRight21);
            int i45 = (i41 ^ i32) ^ iELL2;
            int i46 = (i44 ^ i35) ^ iELL2;
            int i47 = (iRotateRight42 ^ iRotateRight21) ^ iELL;
            int i48 = (i38 ^ i29) ^ iELL2;
            i16 = (iRotateRight28 ^ iRotateRight7) ^ iELL;
            i24++;
            i18 = iRotateRight7;
            i12 = (iRotateRight35 ^ iRotateRight14) ^ iELL;
            i19 = i32;
            i13 = i46;
            i23 = iRotateRight21;
            i21 = i35;
            i15 = i48;
            i14 = i47;
            i17 = i29;
            i11 = i45;
            c7 = 0;
            i22 = iRotateRight14;
            c10 = 1;
        }
        iArr[c7] = i11;
        iArr[1] = i12;
        iArr[2] = i13;
        iArr[3] = i14;
        iArr[4] = i15;
        iArr[5] = i16;
        iArr[6] = i17;
        iArr[7] = i18;
        iArr[8] = i19;
        iArr[9] = i22;
        iArr[10] = i21;
        iArr[11] = i23;
    }

    public static void sparkle_opt16(int[] iArr, int i10) {
        char c7 = 0;
        int i11 = iArr[0];
        char c10 = 1;
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = iArr[4];
        int i16 = iArr[5];
        int i17 = iArr[6];
        int i18 = iArr[7];
        int i19 = iArr[8];
        int i20 = iArr[9];
        int i21 = iArr[10];
        int i22 = iArr[11];
        int i23 = iArr[12];
        int i24 = iArr[13];
        int i25 = iArr[14];
        int i26 = i10;
        int i27 = i20;
        int i28 = i22;
        int i29 = i24;
        int i30 = iArr[15];
        int i31 = 0;
        while (i31 < i26) {
            int[] iArr2 = RCON;
            int i32 = i12 ^ iArr2[i31 & 7];
            int i33 = i14 ^ i31;
            int i34 = iArr2[c7];
            int iRotateRight = Integers.rotateRight(i32, 31) + i11;
            int iRotateRight2 = i32 ^ Integers.rotateRight(iRotateRight, 24);
            int iRotateRight3 = Integers.rotateRight(iRotateRight2, 17) + (iRotateRight ^ i34);
            int iRotateRight4 = iRotateRight2 ^ Integers.rotateRight(iRotateRight3, 17);
            int i35 = (iRotateRight3 ^ i34) + iRotateRight4;
            int iRotateRight5 = iRotateRight4 ^ Integers.rotateRight(i35, 31);
            int iRotateRight6 = Integers.rotateRight(iRotateRight5, 24) + (i35 ^ i34);
            int iRotateRight7 = iRotateRight5 ^ Integers.rotateRight(iRotateRight6, 16);
            int i36 = iRotateRight6 ^ i34;
            int i37 = iArr2[c10];
            int iRotateRight8 = Integers.rotateRight(i33, 31) + i13;
            int iRotateRight9 = i33 ^ Integers.rotateRight(iRotateRight8, 24);
            int iRotateRight10 = Integers.rotateRight(iRotateRight9, 17) + (iRotateRight8 ^ i37);
            int iRotateRight11 = iRotateRight9 ^ Integers.rotateRight(iRotateRight10, 17);
            int i38 = (iRotateRight10 ^ i37) + iRotateRight11;
            int iRotateRight12 = iRotateRight11 ^ Integers.rotateRight(i38, 31);
            int iRotateRight13 = Integers.rotateRight(iRotateRight12, 24) + (i38 ^ i37);
            int iRotateRight14 = iRotateRight12 ^ Integers.rotateRight(iRotateRight13, 16);
            int i39 = iRotateRight13 ^ i37;
            int i40 = iArr2[2];
            int iRotateRight15 = Integers.rotateRight(i16, 31) + i15;
            int iRotateRight16 = Integers.rotateRight(iRotateRight15, 24) ^ i16;
            int iRotateRight17 = Integers.rotateRight(iRotateRight16, 17) + (iRotateRight15 ^ i40);
            int iRotateRight18 = iRotateRight16 ^ Integers.rotateRight(iRotateRight17, 17);
            int i41 = (iRotateRight17 ^ i40) + iRotateRight18;
            int iRotateRight19 = iRotateRight18 ^ Integers.rotateRight(i41, 31);
            int iRotateRight20 = Integers.rotateRight(iRotateRight19, 24) + (i41 ^ i40);
            int iRotateRight21 = Integers.rotateRight(iRotateRight20, 16) ^ iRotateRight19;
            int i42 = iRotateRight20 ^ i40;
            int i43 = iArr2[3];
            int iRotateRight22 = Integers.rotateRight(i18, 31) + i17;
            int iRotateRight23 = Integers.rotateRight(iRotateRight22, 24) ^ i18;
            int iRotateRight24 = Integers.rotateRight(iRotateRight23, 17) + (iRotateRight22 ^ i43);
            int iRotateRight25 = iRotateRight23 ^ Integers.rotateRight(iRotateRight24, 17);
            int i44 = (iRotateRight24 ^ i43) + iRotateRight25;
            int iRotateRight26 = iRotateRight25 ^ Integers.rotateRight(i44, 31);
            int iRotateRight27 = Integers.rotateRight(iRotateRight26, 24) + (i44 ^ i43);
            int iRotateRight28 = Integers.rotateRight(iRotateRight27, 16) ^ iRotateRight26;
            int i45 = iRotateRight27 ^ i43;
            int i46 = iArr2[4];
            int iRotateRight29 = Integers.rotateRight(i27, 31) + i19;
            int iRotateRight30 = i27 ^ Integers.rotateRight(iRotateRight29, 24);
            int iRotateRight31 = Integers.rotateRight(iRotateRight30, 17) + (iRotateRight29 ^ i46);
            int iRotateRight32 = iRotateRight30 ^ Integers.rotateRight(iRotateRight31, 17);
            int i47 = (iRotateRight31 ^ i46) + iRotateRight32;
            int iRotateRight33 = iRotateRight32 ^ Integers.rotateRight(i47, 31);
            int iRotateRight34 = Integers.rotateRight(iRotateRight33, 24) + (i47 ^ i46);
            int iRotateRight35 = iRotateRight33 ^ Integers.rotateRight(iRotateRight34, 16);
            int i48 = iRotateRight34 ^ i46;
            int i49 = iArr2[5];
            int iRotateRight36 = Integers.rotateRight(i28, 31) + i21;
            int iRotateRight37 = i28 ^ Integers.rotateRight(iRotateRight36, 24);
            int iRotateRight38 = Integers.rotateRight(iRotateRight37, 17) + (iRotateRight36 ^ i49);
            int iRotateRight39 = iRotateRight37 ^ Integers.rotateRight(iRotateRight38, 17);
            int i50 = (iRotateRight38 ^ i49) + iRotateRight39;
            int iRotateRight40 = iRotateRight39 ^ Integers.rotateRight(i50, 31);
            int iRotateRight41 = Integers.rotateRight(iRotateRight40, 24) + (i50 ^ i49);
            int iRotateRight42 = iRotateRight40 ^ Integers.rotateRight(iRotateRight41, 16);
            int i51 = iRotateRight41 ^ i49;
            int i52 = iArr2[6];
            int i53 = i29;
            int iRotateRight43 = Integers.rotateRight(i53, 31) + i23;
            int iRotateRight44 = i53 ^ Integers.rotateRight(iRotateRight43, 24);
            int iRotateRight45 = Integers.rotateRight(iRotateRight44, 17) + (iRotateRight43 ^ i52);
            int iRotateRight46 = iRotateRight44 ^ Integers.rotateRight(iRotateRight45, 17);
            int i54 = (iRotateRight45 ^ i52) + iRotateRight46;
            int iRotateRight47 = iRotateRight46 ^ Integers.rotateRight(i54, 31);
            int iRotateRight48 = Integers.rotateRight(iRotateRight47, 24) + (i54 ^ i52);
            int iRotateRight49 = iRotateRight47 ^ Integers.rotateRight(iRotateRight48, 16);
            int i55 = iRotateRight48 ^ i52;
            int i56 = iArr2[7];
            int i57 = i31;
            int i58 = i30;
            int iRotateRight50 = Integers.rotateRight(i58, 31) + i25;
            int iRotateRight51 = i58 ^ Integers.rotateRight(iRotateRight50, 24);
            int iRotateRight52 = Integers.rotateRight(iRotateRight51, 17) + (iRotateRight50 ^ i56);
            int iRotateRight53 = iRotateRight51 ^ Integers.rotateRight(iRotateRight52, 17);
            int i59 = (iRotateRight52 ^ i56) + iRotateRight53;
            int iRotateRight54 = iRotateRight53 ^ Integers.rotateRight(i59, 31);
            int iRotateRight55 = Integers.rotateRight(iRotateRight54, 24) + (i59 ^ i56);
            int iRotateRight56 = Integers.rotateRight(iRotateRight55, 16) ^ iRotateRight54;
            int i60 = iRotateRight55 ^ i56;
            int iELL = ELL(((i36 ^ i39) ^ i42) ^ i45);
            int iELL2 = ELL(((iRotateRight7 ^ iRotateRight14) ^ iRotateRight21) ^ iRotateRight28);
            int i61 = (i51 ^ i39) ^ iELL2;
            int i62 = (iRotateRight42 ^ iRotateRight14) ^ iELL;
            int i63 = (i55 ^ i42) ^ iELL2;
            int i64 = (iRotateRight21 ^ iRotateRight49) ^ iELL;
            int i65 = (i60 ^ i45) ^ iELL2;
            int i66 = (iRotateRight56 ^ iRotateRight28) ^ iELL;
            int i67 = (i48 ^ i36) ^ iELL2;
            i18 = iELL ^ (iRotateRight35 ^ iRotateRight7);
            int i68 = i57 + 1;
            i19 = i36;
            i29 = iRotateRight21;
            i23 = i42;
            i15 = i65;
            i30 = iRotateRight28;
            i11 = i61;
            i25 = i45;
            i17 = i67;
            i14 = i64;
            i26 = i10;
            i28 = iRotateRight14;
            i27 = iRotateRight7;
            i21 = i39;
            i12 = i62;
            i16 = i66;
            c10 = 1;
            i13 = i63;
            i31 = i68;
            c7 = 0;
        }
        iArr[c7] = i11;
        iArr[1] = i12;
        iArr[2] = i13;
        iArr[3] = i14;
        iArr[4] = i15;
        iArr[5] = i16;
        iArr[6] = i17;
        iArr[7] = i18;
        iArr[8] = i19;
        iArr[9] = i27;
        iArr[10] = i21;
        iArr[11] = i28;
        iArr[12] = i23;
        iArr[13] = i29;
        iArr[14] = i25;
        iArr[15] = i30;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void init(byte[] bArr, byte[] bArr2) {
        Pack.littleEndianToInt(bArr, 0, this.f11977k);
        Pack.littleEndianToInt(bArr2, 0, this.npub);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void reset(boolean z) {
        this.encrypted = false;
        System.arraycopy(this.npub, 0, this.state, 0, this.RATE_WORDS);
        System.arraycopy(this.f11977k, 0, this.state, this.RATE_WORDS, this.KEY_WORDS);
        sparkle_opt(this.state, this.SPARKLE_STEPS_BIG);
        super.reset(z);
    }
}
