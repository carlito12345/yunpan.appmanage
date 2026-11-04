package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.engines.AEADBaseEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public class Grain128AEADEngine extends AEADBaseEngine {
    private static final int STATE_SIZE = 4;
    private final int[] authAcc;
    private final int[] authSr;
    private final int[] lfsr;
    private final int[] nfsr;
    private byte[] workingIV;
    private byte[] workingKey;

    public Grain128AEADEngine() {
        this.algorithmName = "Grain-128 AEAD";
        this.KEY_SIZE = 16;
        this.IV_SIZE = 12;
        this.MAC_SIZE = 8;
        this.lfsr = new int[4];
        this.nfsr = new int[4];
        this.authAcc = new int[2];
        this.authSr = new int[2];
        setInnerMembers(AEADBaseEngine.ProcessingBufferType.Immediate, AEADBaseEngine.AADOperatorType.Stream, AEADBaseEngine.DataOperatorType.StreamCipher);
    }

    private void absorbAadData(byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            byte b10 = bArr[i10 + i12];
            for (int i13 = 0; i13 < 8; i13++) {
                shift();
                updateInternalState((b10 >> i13) & 1);
            }
        }
    }

    private int getByteKeyStream() {
        int output = getOutput();
        shift();
        return output;
    }

    private int getOutput() {
        int[] iArr = this.nfsr;
        int i10 = iArr[0];
        int i11 = i10 >>> 12;
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = i13 >>> 9;
        int i15 = i13 >>> 25;
        int i16 = i13 >>> 31;
        int[] iArr2 = this.lfsr;
        int i17 = iArr2[0];
        int i18 = iArr2[1];
        int i19 = iArr2[2];
        int i20 = (i17 >>> 20) & (i17 >>> 13);
        return (((i13 ^ (((((((((i20 ^ ((i17 >>> 8) & i11)) ^ (i16 & (i18 >>> 10))) ^ ((i18 >>> 28) & (i19 >>> 15))) ^ ((i11 & i16) & (i19 >>> 30))) ^ (i19 >>> 29)) ^ (i10 >>> 2)) ^ (i10 >>> 15)) ^ (i12 >>> 4)) ^ (i12 >>> 13))) ^ i14) ^ i15) & 1;
    }

    private int getOutputLFSR() {
        int[] iArr = this.lfsr;
        int i10 = iArr[0];
        int i11 = iArr[1] >>> 6;
        int i12 = iArr[2];
        return (iArr[3] ^ ((((i10 ^ (i10 >>> 7)) ^ i11) ^ (i12 >>> 6)) ^ (i12 >>> 17))) & 1;
    }

    private int getOutputNFSR() {
        int[] iArr = this.nfsr;
        int i10 = iArr[0];
        int i11 = i10 >>> 25;
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = ((i10 >>> 26) ^ i10) ^ (i12 >>> 24);
        return (((((((((((iArr[3] ^ (i14 ^ (i13 >>> 27))) ^ ((i10 & i13) >>> 3)) ^ ((i10 >>> 11) & (i10 >>> 13))) ^ ((i10 >>> 17) & (i10 >>> 18))) ^ ((i10 & i12) >>> 27)) ^ ((i12 >>> 8) & (i12 >>> 16))) ^ ((i12 >>> 29) & (i13 >>> 1))) ^ ((i13 >>> 4) & (i13 >>> 20))) ^ (((i10 >>> 22) & (i10 >>> 24)) & i11)) ^ (((i13 >>> 6) & (i13 >>> 14)) & (i13 >>> 18))) ^ ((((i13 >>> 24) & (i13 >>> 28)) & (i13 >>> 29)) & (i13 >>> 31))) & 1;
    }

    private void initGrain(int[] iArr) {
        for (int i10 = 0; i10 < 2; i10++) {
            for (int i11 = 0; i11 < 32; i11++) {
                iArr[i10] = iArr[i10] | (getByteKeyStream() << i11);
            }
        }
    }

    private void shift() {
        shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
        shift(this.lfsr, getOutputLFSR() & 1);
    }

    private void updateInternalState(int i10) {
        int i11 = -i10;
        int[] iArr = this.authAcc;
        int i12 = iArr[0];
        int[] iArr2 = this.authSr;
        iArr[0] = i12 ^ (iArr2[0] & i11);
        iArr[1] = (i11 & iArr2[1]) ^ iArr[1];
        int byteKeyStream = getByteKeyStream();
        int[] iArr3 = this.authSr;
        int i13 = iArr3[0] >>> 1;
        int i14 = iArr3[1];
        iArr3[0] = i13 | (i14 << 31);
        iArr3[1] = (byteKeyStream << 31) | (i14 >>> 1);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int i10) {
        return super.doFinal(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void finishAAD(AEADBaseEngine.State state, boolean z) {
        finishAAD1(state);
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
    public int getUpdateOutputSize(int i10) {
        return getTotalBytesForUpdate(i10);
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
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int len = this.dataOperator.getLen();
        for (int i12 = 0; i12 < len; i12++) {
            byte b10 = bArr[i10 + i12];
            byte byteKeyStream = 0;
            for (int i13 = 0; i13 < 8; i13++) {
                byteKeyStream = (byte) (byteKeyStream | ((((b10 >> i13) & 1) ^ getByteKeyStream()) << i13));
                updateInternalState((byteKeyStream >> i13) & 1);
            }
            bArr2[i11 + i12] = byteKeyStream;
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int len = this.dataOperator.getLen();
        for (int i12 = 0; i12 < len; i12++) {
            byte b10 = bArr[i10 + i12];
            byte byteKeyStream = 0;
            for (int i13 = 0; i13 < 8; i13++) {
                int i14 = (b10 >> i13) & 1;
                byteKeyStream = (byte) (byteKeyStream | ((getByteKeyStream() ^ i14) << i13));
                updateInternalState(i14);
            }
            bArr2[i11 + i12] = byteKeyStream;
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
        int i10;
        int i11;
        int len = this.aadOperator.getLen();
        byte[] bytes = ((AEADBaseEngine.StreamAADOperator) this.aadOperator).getBytes();
        byte[] bArr = new byte[5];
        if (len < 128) {
            i11 = 4;
            bArr[4] = (byte) len;
        } else {
            int i12 = len;
            int i13 = 5;
            while (true) {
                i10 = i13 - 1;
                bArr[i10] = (byte) i12;
                i12 >>>= 8;
                if (i12 == 0) {
                    break;
                } else {
                    i13 = i10;
                }
            }
            int i14 = i13 - 2;
            bArr[i14] = (byte) ((5 - i10) | 128);
            i11 = i14;
        }
        absorbAadData(bArr, i11, 5 - i11);
        absorbAadData(bytes, 0, len);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalBlock(byte[] bArr, int i10) {
        int[] iArr = this.authAcc;
        int i11 = iArr[0];
        int[] iArr2 = this.authSr;
        iArr[0] = i11 ^ iArr2[0];
        iArr[1] = iArr2[1] ^ iArr[1];
        Pack.intToLittleEndian(iArr, this.mac, 0);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    private void shift(int[] iArr, int i10) {
        int i11 = iArr[0] >>> 1;
        int i12 = iArr[1];
        iArr[0] = i11 | (i12 << 31);
        int i13 = i12 >>> 1;
        int i14 = iArr[2];
        iArr[1] = i13 | (i14 << 31);
        int i15 = iArr[3];
        iArr[2] = (i14 >>> 1) | (i15 << 31);
        iArr[3] = (i10 << 31) | (i15 >>> 1);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void init(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[16];
        this.workingIV = bArr3;
        this.workingKey = bArr;
        System.arraycopy(bArr2, 0, bArr3, 0, this.IV_SIZE);
        byte[] bArr4 = this.workingIV;
        bArr4[12] = -1;
        bArr4[13] = -1;
        bArr4[14] = -1;
        bArr4[15] = Byte.MAX_VALUE;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void reset(boolean z) {
        super.reset(z);
        Pack.littleEndianToInt(this.workingKey, 0, this.nfsr);
        Pack.littleEndianToInt(this.workingIV, 0, this.lfsr);
        Arrays.clear(this.authAcc);
        Arrays.clear(this.authSr);
        for (int i10 = 0; i10 < 320; i10++) {
            int output = getOutput();
            shift(this.nfsr, ((getOutputNFSR() ^ this.lfsr[0]) ^ output) & 1);
            shift(this.lfsr, (output ^ getOutputLFSR()) & 1);
        }
        for (int i11 = 0; i11 < 8; i11++) {
            for (int i12 = 0; i12 < 8; i12++) {
                int output2 = getOutput();
                shift(this.nfsr, (((getOutputNFSR() ^ this.lfsr[0]) ^ output2) ^ (this.workingKey[i11] >> i12)) & 1);
                shift(this.lfsr, ((output2 ^ getOutputLFSR()) ^ (this.workingKey[i11 + 8] >> i12)) & 1);
            }
        }
        initGrain(this.authAcc);
        initGrain(this.authSr);
    }
}
