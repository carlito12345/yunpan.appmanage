package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.MaxBytesExceededException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.SkippingStreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;
import org.bouncycastle.util.Strings;

/* loaded from: classes3.dex */
public class Salsa20Engine implements SkippingStreamCipher {
    public static final int DEFAULT_ROUNDS = 20;
    private static final int STATE_SIZE = 16;
    private static final int[] TAU_SIGMA = Pack.littleEndianToInt(Strings.toByteArray("expand 16-byte kexpand 32-byte k"), 0, 8);
    protected static final byte[] sigma = Strings.toByteArray("expand 32-byte k");
    protected static final byte[] tau = Strings.toByteArray("expand 16-byte k");
    private int cW0;
    private int cW1;
    private int cW2;
    protected int[] engineState;
    private int index;
    private boolean initialised;
    private byte[] keyStream;
    protected int rounds;

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11976x;

    public Salsa20Engine() {
        this(20);
    }

    private boolean limitExceeded() {
        int i10 = this.cW0 + 1;
        this.cW0 = i10;
        if (i10 == 0) {
            int i11 = this.cW1 + 1;
            this.cW1 = i11;
            if (i11 == 0) {
                int i12 = this.cW2 + 1;
                this.cW2 = i12;
                return (i12 & 32) != 0;
            }
        }
        return false;
    }

    private void resetLimitCounter() {
        this.cW0 = 0;
        this.cW1 = 0;
        this.cW2 = 0;
    }

    public static void salsaCore(int i10, int[] iArr, int[] iArr2) {
        if (iArr.length != 16) {
            throw new IllegalArgumentException();
        }
        if (iArr2.length != 16) {
            throw new IllegalArgumentException();
        }
        if (i10 % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        int i11 = iArr[0];
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = iArr[4];
        int i16 = iArr[5];
        int i17 = iArr[6];
        int i18 = 7;
        int i19 = iArr[7];
        int i20 = iArr[8];
        int i21 = 9;
        int i22 = iArr[9];
        int i23 = iArr[10];
        int i24 = iArr[11];
        int i25 = iArr[12];
        int i26 = 13;
        int i27 = iArr[13];
        int i28 = iArr[14];
        int iRotateLeft = iArr[15];
        int iRotateLeft2 = i28;
        int iRotateLeft3 = i27;
        int iRotateLeft4 = i25;
        int iRotateLeft5 = i24;
        int iRotateLeft6 = i23;
        int iRotateLeft7 = i22;
        int i29 = i20;
        int iRotateLeft8 = i19;
        int iRotateLeft9 = i17;
        int iRotateLeft10 = i16;
        int i30 = i15;
        int i31 = i14;
        int iRotateLeft11 = i13;
        int iRotateLeft12 = i12;
        int i32 = i11;
        int i33 = i10;
        while (i33 > 0) {
            int iRotateLeft13 = Integers.rotateLeft(i32 + iRotateLeft4, i18) ^ i30;
            int iRotateLeft14 = i29 ^ Integers.rotateLeft(iRotateLeft13 + i32, i21);
            int iRotateLeft15 = iRotateLeft4 ^ Integers.rotateLeft(iRotateLeft14 + iRotateLeft13, i26);
            int iRotateLeft16 = Integers.rotateLeft(iRotateLeft15 + iRotateLeft14, 18) ^ i32;
            int iRotateLeft17 = iRotateLeft7 ^ Integers.rotateLeft(iRotateLeft10 + iRotateLeft12, i18);
            int iRotateLeft18 = iRotateLeft3 ^ Integers.rotateLeft(iRotateLeft17 + iRotateLeft10, i21);
            int iRotateLeft19 = iRotateLeft12 ^ Integers.rotateLeft(iRotateLeft18 + iRotateLeft17, i26);
            int iRotateLeft20 = Integers.rotateLeft(iRotateLeft19 + iRotateLeft18, 18) ^ iRotateLeft10;
            int iRotateLeft21 = iRotateLeft2 ^ Integers.rotateLeft(iRotateLeft6 + iRotateLeft9, 7);
            int iRotateLeft22 = iRotateLeft11 ^ Integers.rotateLeft(iRotateLeft21 + iRotateLeft6, 9);
            int iRotateLeft23 = iRotateLeft9 ^ Integers.rotateLeft(iRotateLeft22 + iRotateLeft21, 13);
            int iRotateLeft24 = iRotateLeft6 ^ Integers.rotateLeft(iRotateLeft23 + iRotateLeft22, 18);
            int iRotateLeft25 = i31 ^ Integers.rotateLeft(iRotateLeft + iRotateLeft5, 7);
            int iRotateLeft26 = iRotateLeft8 ^ Integers.rotateLeft(iRotateLeft25 + iRotateLeft, 9);
            int i34 = i33;
            int iRotateLeft27 = iRotateLeft5 ^ Integers.rotateLeft(iRotateLeft26 + iRotateLeft25, 13);
            int iRotateLeft28 = iRotateLeft ^ Integers.rotateLeft(iRotateLeft27 + iRotateLeft26, 18);
            iRotateLeft12 = iRotateLeft19 ^ Integers.rotateLeft(iRotateLeft16 + iRotateLeft25, 7);
            iRotateLeft11 = iRotateLeft22 ^ Integers.rotateLeft(iRotateLeft12 + iRotateLeft16, 9);
            int iRotateLeft29 = iRotateLeft25 ^ Integers.rotateLeft(iRotateLeft11 + iRotateLeft12, 13);
            int iRotateLeft30 = iRotateLeft16 ^ Integers.rotateLeft(iRotateLeft29 + iRotateLeft11, 18);
            iRotateLeft9 = iRotateLeft23 ^ Integers.rotateLeft(iRotateLeft20 + iRotateLeft13, 7);
            iRotateLeft8 = iRotateLeft26 ^ Integers.rotateLeft(iRotateLeft9 + iRotateLeft20, 9);
            int iRotateLeft31 = Integers.rotateLeft(iRotateLeft8 + iRotateLeft9, 13) ^ iRotateLeft13;
            iRotateLeft10 = iRotateLeft20 ^ Integers.rotateLeft(iRotateLeft31 + iRotateLeft8, 18);
            iRotateLeft5 = iRotateLeft27 ^ Integers.rotateLeft(iRotateLeft24 + iRotateLeft17, 7);
            int iRotateLeft32 = Integers.rotateLeft(iRotateLeft5 + iRotateLeft24, 9) ^ iRotateLeft14;
            iRotateLeft7 = iRotateLeft17 ^ Integers.rotateLeft(iRotateLeft32 + iRotateLeft5, 13);
            iRotateLeft6 = iRotateLeft24 ^ Integers.rotateLeft(iRotateLeft7 + iRotateLeft32, 18);
            iRotateLeft4 = iRotateLeft15 ^ Integers.rotateLeft(iRotateLeft28 + iRotateLeft21, 7);
            iRotateLeft3 = iRotateLeft18 ^ Integers.rotateLeft(iRotateLeft4 + iRotateLeft28, 9);
            iRotateLeft2 = iRotateLeft21 ^ Integers.rotateLeft(iRotateLeft3 + iRotateLeft4, 13);
            iRotateLeft = iRotateLeft28 ^ Integers.rotateLeft(iRotateLeft2 + iRotateLeft3, 18);
            i31 = iRotateLeft29;
            i29 = iRotateLeft32;
            i32 = iRotateLeft30;
            i30 = iRotateLeft31;
            i26 = 13;
            i21 = 9;
            i18 = 7;
            i33 = i34 - 2;
        }
        iArr2[0] = i32 + iArr[0];
        iArr2[1] = iRotateLeft12 + iArr[1];
        iArr2[2] = iRotateLeft11 + iArr[2];
        iArr2[3] = i31 + iArr[3];
        iArr2[4] = i30 + iArr[4];
        iArr2[5] = iRotateLeft10 + iArr[5];
        iArr2[6] = iRotateLeft9 + iArr[6];
        iArr2[7] = iRotateLeft8 + iArr[7];
        iArr2[8] = i29 + iArr[8];
        iArr2[9] = iRotateLeft7 + iArr[9];
        iArr2[10] = iRotateLeft6 + iArr[10];
        iArr2[11] = iRotateLeft5 + iArr[11];
        iArr2[12] = iRotateLeft4 + iArr[12];
        iArr2[13] = iRotateLeft3 + iArr[13];
        iArr2[14] = iRotateLeft2 + iArr[14];
        iArr2[15] = iRotateLeft + iArr[15];
    }

    public void advanceCounter() {
        int[] iArr = this.engineState;
        int i10 = iArr[8] + 1;
        iArr[8] = i10;
        if (i10 == 0) {
            iArr[9] = iArr[9] + 1;
        }
    }

    public void generateKeyStream(byte[] bArr) {
        salsaCore(this.rounds, this.engineState, this.f11976x);
        Pack.intToLittleEndian(this.f11976x, bArr, 0);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        if (this.rounds == 20) {
            return "Salsa20";
        }
        return "Salsa20/" + this.rounds;
    }

    public long getCounter() {
        int[] iArr = this.engineState;
        return (iArr[9] << 32) | (iArr[8] & 4294967295L);
    }

    public int getNonceSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long getPosition() {
        return (getCounter() * 64) + this.index;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException(getAlgorithmName() + " Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        if (iv == null || iv.length != getNonceSize()) {
            throw new IllegalArgumentException(getAlgorithmName() + " requires exactly " + getNonceSize() + " bytes of IV");
        }
        CipherParameters parameters = parametersWithIV.getParameters();
        if (parameters == null) {
            if (!this.initialised) {
                throw new IllegalStateException(getAlgorithmName() + " KeyParameter can not be null for first initialisation");
            }
            setKey(null, iv);
        } else {
            if (!(parameters instanceof KeyParameter)) {
                throw new IllegalArgumentException(getAlgorithmName() + " Init parameters must contain a KeyParameter (or null for re-init)");
            }
            byte[] key = ((KeyParameter) parameters).getKey();
            setKey(key, iv);
            CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, Utils.getPurpose(z)));
        }
        reset();
        this.initialised = true;
    }

    public void packTauOrSigma(int i10, int[] iArr, int i11) {
        int i12 = (i10 - 16) / 4;
        int[] iArr2 = TAU_SIGMA;
        iArr[i11] = iArr2[i12];
        iArr[i11 + 1] = iArr2[i12 + 1];
        iArr[i11 + 2] = iArr2[i12 + 2];
        iArr[i11 + 3] = iArr2[i12 + 3];
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (limitExceeded(i11)) {
            throw new MaxBytesExceededException("2^70 byte limit per IV would be exceeded; Change IV");
        }
        for (int i13 = 0; i13 < i11; i13++) {
            byte[] bArr3 = this.keyStream;
            int i14 = this.index;
            bArr2[i13 + i12] = (byte) (bArr3[i14] ^ bArr[i13 + i10]);
            int i15 = (i14 + 1) & 63;
            this.index = i15;
            if (i15 == 0) {
                advanceCounter();
                generateKeyStream(this.keyStream);
            }
        }
        return i11;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        this.index = 0;
        resetLimitCounter();
        resetCounter();
        generateKeyStream(this.keyStream);
    }

    public void resetCounter() {
        int[] iArr = this.engineState;
        iArr[9] = 0;
        iArr[8] = 0;
    }

    public void retreatCounter() {
        int[] iArr = this.engineState;
        int i10 = iArr[8];
        if (i10 == 0 && iArr[9] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int i11 = i10 - 1;
        iArr[8] = i11;
        if (i11 == -1) {
            iArr[9] = iArr[9] - 1;
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        if (limitExceeded()) {
            throw new MaxBytesExceededException("2^70 byte limit per IV; Change IV");
        }
        byte[] bArr = this.keyStream;
        int i10 = this.index;
        byte b11 = (byte) (b10 ^ bArr[i10]);
        int i11 = (i10 + 1) & 63;
        this.index = i11;
        if (i11 == 0) {
            advanceCounter();
            generateKeyStream(this.keyStream);
        }
        return b11;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long seekTo(long j10) {
        reset();
        return skip(j10);
    }

    public void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 16 && bArr.length != 32) {
                throw new IllegalArgumentException(getAlgorithmName() + " requires 128 bit or 256 bit key");
            }
            int length = (bArr.length - 16) / 4;
            int[] iArr = this.engineState;
            int[] iArr2 = TAU_SIGMA;
            iArr[0] = iArr2[length];
            iArr[5] = iArr2[length + 1];
            iArr[10] = iArr2[length + 2];
            iArr[15] = iArr2[length + 3];
            Pack.littleEndianToInt(bArr, 0, iArr, 1, 4);
            Pack.littleEndianToInt(bArr, bArr.length - 16, this.engineState, 11, 4);
        }
        Pack.littleEndianToInt(bArr2, 0, this.engineState, 6, 2);
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long skip(long j10) {
        long j11;
        if (j10 >= 0) {
            if (j10 >= 64) {
                long j12 = j10 / 64;
                advanceCounter(j12);
                j11 = j10 - (j12 * 64);
            } else {
                j11 = j10;
            }
            int i10 = this.index;
            int i11 = (((int) j11) + i10) & 63;
            this.index = i11;
            if (i11 < i10) {
                advanceCounter();
            }
        } else {
            long j13 = -j10;
            if (j13 >= 64) {
                long j14 = j13 / 64;
                retreatCounter(j14);
                j13 -= j14 * 64;
            }
            for (long j15 = 0; j15 < j13; j15++) {
                if (this.index == 0) {
                    retreatCounter();
                }
                this.index = (this.index - 1) & 63;
            }
        }
        generateKeyStream(this.keyStream);
        return j10;
    }

    public Salsa20Engine(int i10) {
        this.index = 0;
        this.engineState = new int[16];
        this.f11976x = new int[16];
        this.keyStream = new byte[64];
        this.initialised = false;
        if (i10 <= 0 || (i10 & 1) != 0) {
            throw new IllegalArgumentException("'rounds' must be a positive, even number");
        }
        this.rounds = i10;
    }

    private boolean limitExceeded(int i10) {
        int i11 = this.cW0 + i10;
        this.cW0 = i11;
        if (i11 >= i10 || i11 < 0) {
            return false;
        }
        int i12 = this.cW1 + 1;
        this.cW1 = i12;
        if (i12 != 0) {
            return false;
        }
        int i13 = this.cW2 + 1;
        this.cW2 = i13;
        return (i13 & 32) != 0;
    }

    public void advanceCounter(long j10) {
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) j10;
        if (i10 > 0) {
            int[] iArr = this.engineState;
            iArr[9] = iArr[9] + i10;
        }
        int[] iArr2 = this.engineState;
        int i12 = iArr2[8];
        int i13 = i11 + i12;
        iArr2[8] = i13;
        if (i12 == 0 || i13 >= i12) {
            return;
        }
        iArr2[9] = iArr2[9] + 1;
    }

    public void retreatCounter(long j10) {
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) j10;
        if (i10 != 0) {
            int[] iArr = this.engineState;
            int i12 = iArr[9];
            if ((i12 & 4294967295L) < (i10 & 4294967295L)) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
            iArr[9] = i12 - i10;
        }
        int[] iArr2 = this.engineState;
        int i13 = iArr2[8];
        if ((i13 & 4294967295L) >= (4294967295L & i11)) {
            iArr2[8] = i13 - i11;
            return;
        }
        int i14 = iArr2[9];
        if (i14 == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        iArr2[9] = i14 - 1;
        iArr2[8] = i13 - i11;
    }
}
