package org.bouncycastle.crypto.engines;

import com.hsae.autosdk.p001os.SocConst;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.engines.AEADBaseEngine;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.util.Bytes;

/* loaded from: classes3.dex */
public class GiftCofbEngine extends AEADBaseEngine {
    private static final byte[] GIFT_RC = {1, 3, 7, 15, 31, 62, 61, 59, 55, 47, 30, 60, 57, 51, 39, 14, 29, 58, 53, 43, 22, 44, 24, 48, SocConst.Upgrade.CPU_CMD, 2, 5, 11, 23, 46, 28, 56, SocConst.Upgrade.CUPID_CMD, 35, 6, 13, 27, 54, 45, 26};
    private byte[] Y;
    private byte[] input;

    /* renamed from: k, reason: collision with root package name */
    private byte[] f11958k;
    private byte[] npub;
    private byte[] offset;

    public GiftCofbEngine() {
        this.KEY_SIZE = 16;
        this.IV_SIZE = 16;
        this.MAC_SIZE = 16;
        this.BlockSize = 16;
        this.AADBufferSize = 16;
        this.algorithmName = "GIFT-COFB AEAD";
        setInnerMembers(AEADBaseEngine.ProcessingBufferType.Buffered, AEADBaseEngine.AADOperatorType.Default, AEADBaseEngine.DataOperatorType.Counter);
    }

    private void double_half_block(byte[] bArr) {
        int i10 = 0;
        int i11 = ((bArr[0] & 255) >>> 7) * 27;
        while (i10 < 7) {
            int i12 = i10 + 1;
            bArr[i10] = (byte) (((bArr[i10] & 255) << 1) | ((bArr[i12] & 255) >>> 7));
            i10 = i12;
        }
        bArr[7] = (byte) (((bArr[7] & 255) << 1) ^ i11);
    }

    private void giftb128(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int[] iArr = {((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255), ((bArr[4] & 255) << 24) | ((bArr[5] & 255) << 16) | ((bArr[6] & 255) << 8) | (bArr[7] & 255), ((bArr[8] & 255) << 24) | ((bArr[9] & 255) << 16) | ((bArr[10] & 255) << 8) | (bArr[11] & 255), ((bArr[13] & 255) << 16) | ((bArr[12] & 255) << 24) | ((bArr[14] & 255) << 8) | (bArr[15] & 255)};
        short[] sArr = {(short) (((bArr2[0] & 255) << 8) | (bArr2[1] & 255)), (short) (((bArr2[2] & 255) << 8) | (bArr2[3] & 255)), (short) (((bArr2[4] & 255) << 8) | (bArr2[5] & 255)), (short) (((bArr2[6] & 255) << 8) | (bArr2[7] & 255)), (short) (((bArr2[8] & 255) << 8) | (bArr2[9] & 255)), (short) (((bArr2[10] & 255) << 8) | (bArr2[11] & 255)), (short) (((bArr2[12] & 255) << 8) | (bArr2[13] & 255)), (short) (((bArr2[14] & 255) << 8) | (bArr2[15] & 255))};
        for (int i10 = 0; i10 < 40; i10++) {
            int i11 = iArr[1];
            int i12 = iArr[0];
            int i13 = iArr[2];
            int i14 = i11 ^ (i12 & i13);
            iArr[1] = i14;
            int i15 = iArr[3];
            int i16 = i12 ^ (i14 & i15);
            iArr[0] = i16;
            int i17 = i13 ^ (i16 | i14);
            iArr[2] = i17;
            int i18 = i15 ^ i17;
            iArr[3] = i18;
            int i19 = i14 ^ i18;
            iArr[1] = i19;
            int i20 = i18 ^ (-1);
            iArr[3] = i20;
            iArr[2] = i17 ^ (i19 & i16);
            iArr[0] = i20;
            iArr[3] = i16;
            iArr[0] = rowperm(i20, 0, 3, 2, 1);
            iArr[1] = rowperm(iArr[1], 1, 0, 3, 2);
            iArr[2] = rowperm(iArr[2], 2, 1, 0, 3);
            int iRowperm = rowperm(iArr[3], 3, 2, 1, 0);
            iArr[3] = iRowperm;
            int i21 = iArr[2];
            short s8 = sArr[2];
            int i22 = (s8 & HPKE.aead_EXPORT_ONLY) << 16;
            short s10 = sArr[3];
            iArr[2] = i21 ^ (i22 | (s10 & HPKE.aead_EXPORT_ONLY));
            int i23 = iArr[1];
            short s11 = sArr[6];
            int i24 = (s11 & HPKE.aead_EXPORT_ONLY) << 16;
            short s12 = sArr[7];
            iArr[1] = i23 ^ (i24 | (s12 & HPKE.aead_EXPORT_ONLY));
            iArr[3] = iRowperm ^ ((GIFT_RC[i10] & 255) ^ Integer.MIN_VALUE);
            short s13 = (short) (((s11 & HPKE.aead_EXPORT_ONLY) >>> 2) | ((s11 & HPKE.aead_EXPORT_ONLY) << 14));
            short s14 = (short) (((s12 & HPKE.aead_EXPORT_ONLY) >>> 12) | ((s12 & HPKE.aead_EXPORT_ONLY) << 4));
            sArr[7] = sArr[5];
            sArr[6] = sArr[4];
            sArr[5] = s10;
            sArr[4] = s8;
            sArr[3] = sArr[1];
            sArr[2] = sArr[0];
            sArr[1] = s14;
            sArr[0] = s13;
        }
        int i25 = iArr[0];
        bArr3[0] = (byte) (i25 >>> 24);
        bArr3[1] = (byte) (i25 >>> 16);
        bArr3[2] = (byte) (i25 >>> 8);
        bArr3[3] = (byte) i25;
        int i26 = iArr[1];
        bArr3[4] = (byte) (i26 >>> 24);
        bArr3[5] = (byte) (i26 >>> 16);
        bArr3[6] = (byte) (i26 >>> 8);
        bArr3[7] = (byte) i26;
        int i27 = iArr[2];
        bArr3[8] = (byte) (i27 >>> 24);
        bArr3[9] = (byte) (i27 >>> 16);
        bArr3[10] = (byte) (i27 >>> 8);
        bArr3[11] = (byte) i27;
        int i28 = iArr[3];
        bArr3[12] = (byte) (i28 >>> 24);
        bArr3[13] = (byte) (i28 >>> 16);
        bArr3[14] = (byte) (i28 >>> 8);
        bArr3[15] = (byte) i28;
    }

    private void pho1(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10, int i11) {
        byte[] bArr4 = new byte[16];
        byte[] bArr5 = new byte[16];
        if (i11 == 0) {
            bArr4[0] = Byte.MIN_VALUE;
        } else {
            System.arraycopy(bArr3, i10, bArr4, 0, i11);
            if (i11 < 16) {
                bArr4[i11] = Byte.MIN_VALUE;
            }
        }
        System.arraycopy(bArr2, 8, bArr5, 0, 8);
        int i12 = 0;
        while (i12 < 7) {
            int i13 = i12 + 8;
            int i14 = (bArr2[i12] & 255) << 1;
            i12++;
            bArr5[i13] = (byte) (((bArr2[i12] & 255) >>> 7) | i14);
        }
        bArr5[15] = (byte) (((bArr2[7] & 255) << 1) | ((bArr2[0] & 255) >>> 7));
        System.arraycopy(bArr5, 0, bArr2, 0, 16);
        Bytes.xor(16, bArr2, bArr4, bArr);
    }

    private int rowperm(int i10, int i11, int i12, int i13, int i14) {
        int i15 = 0;
        for (int i16 = 0; i16 < 8; i16++) {
            int i17 = i16 * 4;
            i15 = i15 | (((i10 >>> i17) & 1) << ((i11 * 8) + i16)) | (((i10 >>> (i17 + 1)) & 1) << ((i12 * 8) + i16)) | (((i10 >>> (i17 + 2)) & 1) << ((i13 * 8) + i16)) | (((i10 >>> (i17 + 3)) & 1) << ((i14 * 8) + i16));
        }
        return i15;
    }

    private void triple_half_block(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        int i10 = 0;
        while (i10 < 7) {
            int i11 = i10 + 1;
            bArr2[i10] = (byte) (((bArr[i11] & 255) >>> 7) | ((bArr[i10] & 255) << 1));
            i10 = i11;
        }
        bArr2[7] = (byte) ((((bArr[0] & 255) >>> 7) * 27) ^ ((bArr[7] & 255) << 1));
        Bytes.xorTo(8, bArr2, bArr);
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
        pho1(this.input, this.Y, bArr, i10, 16);
        double_half_block(this.offset);
        Bytes.xorTo(8, this.offset, this.input);
        giftb128(this.input, this.f11958k, this.Y);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        double_half_block(this.offset);
        Bytes.xor(this.BlockSize, this.Y, bArr, i10, bArr2, i11);
        pho1(this.input, this.Y, bArr2, i11, this.BlockSize);
        Bytes.xorTo(8, this.offset, this.input);
        giftb128(this.input, this.f11958k, this.Y);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        double_half_block(this.offset);
        Bytes.xor(this.BlockSize, this.Y, bArr, i10, bArr2, i11);
        pho1(this.input, this.Y, bArr, i10, this.BlockSize);
        Bytes.xorTo(8, this.offset, this.input);
        giftb128(this.input, this.f11958k, this.Y);
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
        AEADBaseEngine.State state;
        int len = this.dataOperator.getLen() - (this.forEncryption ? 0 : this.MAC_SIZE);
        triple_half_block(this.offset);
        if ((this.m_aadPos & 15) != 0 || (state = this.m_state) == AEADBaseEngine.State.DecInit || state == AEADBaseEngine.State.EncInit) {
            triple_half_block(this.offset);
        }
        if (len == 0) {
            triple_half_block(this.offset);
            triple_half_block(this.offset);
        }
        pho1(this.input, this.Y, this.m_aad, 0, this.m_aadPos);
        Bytes.xorTo(8, this.offset, this.input);
        giftb128(this.input, this.f11958k, this.Y);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalBlock(byte[] bArr, int i10) {
        int len = this.dataOperator.getLen() - (this.forEncryption ? 0 : this.MAC_SIZE);
        if (len != 0) {
            triple_half_block(this.offset);
            if ((len & 15) != 0) {
                triple_half_block(this.offset);
            }
            Bytes.xor(this.m_bufPos, this.Y, this.m_buf, 0, bArr, i10);
            boolean z = this.forEncryption;
            byte[] bArr2 = this.input;
            byte[] bArr3 = this.Y;
            if (z) {
                pho1(bArr2, bArr3, this.m_buf, 0, this.m_bufPos);
            } else {
                pho1(bArr2, bArr3, bArr, i10, this.m_bufPos);
            }
            Bytes.xorTo(8, this.offset, this.input);
            giftb128(this.input, this.f11958k, this.Y);
        }
        System.arraycopy(this.Y, 0, this.mac, 0, this.BlockSize);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void init(byte[] bArr, byte[] bArr2) {
        this.npub = bArr2;
        this.f11958k = bArr;
        this.Y = new byte[this.BlockSize];
        this.input = new byte[16];
        this.offset = new byte[8];
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void reset(boolean z) {
        super.reset(z);
        System.arraycopy(this.npub, 0, this.input, 0, this.IV_SIZE);
        giftb128(this.input, this.f11958k, this.Y);
        System.arraycopy(this.Y, 0, this.offset, 0, 8);
    }
}
