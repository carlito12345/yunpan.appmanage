package org.bouncycastle.crypto.engines;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.digests.XoodyakDigest;
import org.bouncycastle.crypto.engines.AEADBaseEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public class XoodyakEngine extends AEADBaseEngine {
    private static final int ModeHash = 1;
    private static final int ModeKeyed = 0;
    private static final int PhaseDown = 1;
    private static final int PhaseUp = 2;
    private static final int[] RC = {88, 56, 960, CarSettingID.Recv.IFC_TLR_ST, 288, 20, 96, 44, 896, 240, 416, 18};
    private static final int f_bPrime_1 = 47;
    private byte[] K;
    private byte aadcd;
    private boolean encrypted;
    private byte[] iv;
    private int mode;
    private int phase;
    private final byte[] state;

    public XoodyakEngine() {
        this.algorithmName = "Xoodyak AEAD";
        this.MAC_SIZE = 16;
        this.IV_SIZE = 16;
        this.KEY_SIZE = 16;
        this.BlockSize = 24;
        this.AADBufferSize = 44;
        this.state = new byte[48];
        setInnerMembers(AEADBaseEngine.ProcessingBufferType.Immediate, AEADBaseEngine.AADOperatorType.Default, AEADBaseEngine.DataOperatorType.Counter);
    }

    private void AbsorbAny(byte[] bArr, int i10, int i11, int i12) {
        if (this.phase != 2) {
            up(this.mode, this.state, 0);
        }
        int i13 = i12;
        while (true) {
            int iMin = Math.min(i11, this.AADBufferSize);
            down(this.mode, this.state, bArr, i10, iMin, i13);
            this.phase = 1;
            i10 += iMin;
            i11 -= iMin;
            if (i11 == 0) {
                return;
            } else {
                i13 = 0;
            }
        }
    }

    private static void down(int i10, byte[] bArr, byte[] bArr2, int i11, int i12, int i13) {
        Bytes.xorTo(i12, bArr2, i11, bArr);
        bArr[i12] = (byte) (bArr[i12] ^ 1);
        int i14 = bArr[47];
        if (i10 == 1) {
            i13 &= 1;
        }
        bArr[47] = (byte) (i14 ^ i13);
    }

    private static void up(int i10, byte[] bArr, int i11) {
        byte[] bArr2 = bArr;
        if (i10 != 1) {
            bArr2[47] = (byte) (bArr2[47] ^ i11);
        }
        int iLittleEndianToInt = Pack.littleEndianToInt(bArr2, 0);
        int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr2, 4);
        int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr2, 8);
        int i12 = 12;
        int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr2, 12);
        int iLittleEndianToInt5 = Pack.littleEndianToInt(bArr2, 16);
        int iLittleEndianToInt6 = Pack.littleEndianToInt(bArr2, 20);
        int iLittleEndianToInt7 = Pack.littleEndianToInt(bArr2, 24);
        int iLittleEndianToInt8 = Pack.littleEndianToInt(bArr2, 28);
        int iLittleEndianToInt9 = Pack.littleEndianToInt(bArr2, 32);
        int iLittleEndianToInt10 = Pack.littleEndianToInt(bArr2, 36);
        int iRotateLeft = iLittleEndianToInt8;
        int iRotateLeft2 = iLittleEndianToInt9;
        int iRotateLeft3 = iLittleEndianToInt10;
        int iLittleEndianToInt11 = Pack.littleEndianToInt(bArr2, 40);
        int iLittleEndianToInt12 = Pack.littleEndianToInt(bArr2, 44);
        int i13 = 0;
        while (i13 < i12) {
            int i14 = (iLittleEndianToInt ^ iLittleEndianToInt5) ^ iRotateLeft2;
            int i15 = (iLittleEndianToInt2 ^ iLittleEndianToInt6) ^ iRotateLeft3;
            int i16 = (iLittleEndianToInt3 ^ iLittleEndianToInt7) ^ iLittleEndianToInt11;
            int i17 = i13;
            int i18 = (iLittleEndianToInt4 ^ iRotateLeft) ^ iLittleEndianToInt12;
            int i19 = iLittleEndianToInt12;
            int iRotateLeft4 = Integers.rotateLeft(i18, 5) ^ Integers.rotateLeft(i18, 14);
            int i20 = iRotateLeft;
            int iRotateLeft5 = Integers.rotateLeft(i14, 5) ^ Integers.rotateLeft(i14, 14);
            int iRotateLeft6 = Integers.rotateLeft(i15, 5) ^ Integers.rotateLeft(i15, 14);
            int iRotateLeft7 = Integers.rotateLeft(i16, 14) ^ Integers.rotateLeft(i16, 5);
            int i21 = iLittleEndianToInt ^ iRotateLeft4;
            int i22 = iLittleEndianToInt5 ^ iRotateLeft4;
            int i23 = iLittleEndianToInt2 ^ iRotateLeft5;
            int i24 = iLittleEndianToInt6 ^ iRotateLeft5;
            int i25 = iRotateLeft5 ^ iRotateLeft3;
            int i26 = iLittleEndianToInt3 ^ iRotateLeft6;
            int i27 = iLittleEndianToInt7 ^ iRotateLeft6;
            int i28 = iRotateLeft6 ^ iLittleEndianToInt11;
            int i29 = iLittleEndianToInt4 ^ iRotateLeft7;
            int i30 = i20 ^ iRotateLeft7;
            int iRotateLeft8 = Integers.rotateLeft(iRotateLeft4 ^ iRotateLeft2, 11);
            int iRotateLeft9 = Integers.rotateLeft(i25, 11);
            int iRotateLeft10 = Integers.rotateLeft(i28, 11);
            int iRotateLeft11 = Integers.rotateLeft(i19 ^ iRotateLeft7, 11);
            int i31 = i21 ^ RC[i17];
            int i32 = ((i30 ^ (-1)) & iRotateLeft8) ^ i31;
            int i33 = ((i22 ^ (-1)) & iRotateLeft9) ^ i23;
            int i34 = ((i24 ^ (-1)) & iRotateLeft10) ^ i26;
            int i35 = ((i27 ^ (-1)) & iRotateLeft11) ^ i29;
            int i36 = i22 ^ ((iRotateLeft9 ^ (-1)) & i23);
            int i37 = i24 ^ ((iRotateLeft10 ^ (-1)) & i26);
            int i38 = i27 ^ ((iRotateLeft11 ^ (-1)) & i29);
            int i39 = iRotateLeft10 ^ ((i26 ^ (-1)) & i24);
            int i40 = iRotateLeft11 ^ ((i29 ^ (-1)) & i27);
            iLittleEndianToInt5 = Integers.rotateLeft(i30 ^ ((iRotateLeft8 ^ (-1)) & i31), 1);
            iLittleEndianToInt6 = Integers.rotateLeft(i36, 1);
            int iRotateLeft12 = Integers.rotateLeft(i37, 1);
            iRotateLeft = Integers.rotateLeft(i38, 1);
            iRotateLeft2 = Integers.rotateLeft(i39, 8);
            iRotateLeft3 = Integers.rotateLeft(i40, 8);
            int iRotateLeft13 = Integers.rotateLeft(((i31 ^ (-1)) & i30) ^ iRotateLeft8, 8);
            iLittleEndianToInt12 = Integers.rotateLeft((i22 & (i23 ^ (-1))) ^ iRotateLeft9, 8);
            i13 = i17 + 1;
            iLittleEndianToInt7 = iRotateLeft12;
            iLittleEndianToInt = i32;
            iLittleEndianToInt2 = i33;
            iLittleEndianToInt3 = i34;
            iLittleEndianToInt4 = i35;
            i12 = 12;
            iLittleEndianToInt11 = iRotateLeft13;
            bArr2 = bArr;
        }
        Pack.intToLittleEndian(iLittleEndianToInt, bArr2, 0);
        Pack.intToLittleEndian(iLittleEndianToInt2, bArr2, 4);
        Pack.intToLittleEndian(iLittleEndianToInt3, bArr2, 8);
        Pack.intToLittleEndian(iLittleEndianToInt4, bArr2, 12);
        Pack.intToLittleEndian(iLittleEndianToInt5, bArr2, 16);
        Pack.intToLittleEndian(iLittleEndianToInt6, bArr2, 20);
        Pack.intToLittleEndian(iLittleEndianToInt7, bArr2, 24);
        Pack.intToLittleEndian(iRotateLeft, bArr2, 28);
        Pack.intToLittleEndian(iRotateLeft2, bArr2, 32);
        Pack.intToLittleEndian(iRotateLeft3, bArr2, 36);
        Pack.intToLittleEndian(iLittleEndianToInt11, bArr2, 40);
        Pack.intToLittleEndian(iLittleEndianToInt12, bArr2, 44);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int i10) {
        return super.doFinal(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void finishAAD(AEADBaseEngine.State state, boolean z) {
        finishAAD3(state, z);
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
        AbsorbAny(bArr, i10, this.AADBufferSize, this.aadcd);
        this.aadcd = (byte) 0;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        up(this.mode, this.state, this.encrypted ? 0 : 128);
        Bytes.xor(this.BlockSize, this.state, bArr, i10, bArr2, i11);
        down(this.mode, this.state, bArr2, i11, this.BlockSize, 0);
        this.phase = 1;
        this.encrypted = true;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        up(this.mode, this.state, this.encrypted ? 0 : 128);
        Bytes.xor(this.BlockSize, this.state, bArr, i10, bArr2, i11);
        down(this.mode, this.state, bArr, i10, this.BlockSize, 0);
        this.phase = 1;
        this.encrypted = true;
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
        AbsorbAny(this.m_aad, 0, this.m_aadPos, this.aadcd);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalBlock(byte[] bArr, int i10) {
        if (this.m_bufPos != 0 || !this.encrypted) {
            up(this.mode, this.state, this.encrypted ? 0 : 128);
            Bytes.xor(this.m_bufPos, this.state, this.m_buf, 0, bArr, i10);
            if (this.forEncryption) {
                down(this.mode, this.state, this.m_buf, 0, this.m_bufPos, 0);
            } else {
                down(this.mode, this.state, bArr, i10, this.m_bufPos, 0);
            }
            this.phase = 1;
        }
        up(this.mode, this.state, 64);
        System.arraycopy(this.state, 0, this.mac, 0, this.MAC_SIZE);
        this.phase = 2;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    public static void down(XoodyakDigest.Friend friend, int i10, byte[] bArr, byte[] bArr2, int i11, int i12, int i13) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by XoodyakDigest");
        }
        down(i10, bArr, bArr2, i11, i12, i13);
    }

    public static void up(XoodyakDigest.Friend friend, int i10, byte[] bArr, int i11) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by XoodyakDigest");
        }
        up(i10, bArr, i11);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void init(byte[] bArr, byte[] bArr2) {
        this.K = bArr;
        this.iv = bArr2;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void reset(boolean z) {
        super.reset(z);
        Arrays.fill(this.state, (byte) 0);
        this.encrypted = false;
        this.phase = 2;
        this.aadcd = (byte) 3;
        byte[] bArr = this.K;
        int length = bArr.length;
        int length2 = this.iv.length;
        byte[] bArr2 = new byte[this.AADBufferSize];
        this.mode = 0;
        System.arraycopy(bArr, 0, bArr2, 0, length);
        System.arraycopy(this.iv, 0, bArr2, length, length2);
        int i10 = length + length2;
        bArr2[i10] = (byte) length2;
        AbsorbAny(bArr2, 0, i10 + 1, 2);
    }
}
