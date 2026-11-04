package org.bouncycastle.crypto.engines;

import com.android.apksig.internal.apk.v4.V4Signature;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.digests.PhotonBeetleDigest;
import org.bouncycastle.crypto.engines.AEADBaseEngine;
import org.bouncycastle.util.Bytes;

/* loaded from: classes3.dex */
public class PhotonBeetleEngine extends AEADBaseEngine {
    private static final int D = 8;
    private byte[] K;
    private final int LAST_THREE_BITS_OFFSET;
    private byte[] N;
    private final int RATE_INBYTES_HALF;
    private final int STATE_INBYTES;
    private boolean input_empty;
    private byte[] state;
    private static final byte[][] RC = {new byte[]{1, 3, 7, 14, 13, 11, 6, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 9, 2, 5, 10}, new byte[]{0, 2, 6, 15, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 10, 7, 13, 8, 3, 4, 11}, new byte[]{2, 0, 4, 13, 14, 8, 5, 15, 10, 1, 6, 9}, new byte[]{6, 4, 0, 9, 10, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 1, 11, 14, 5, 2, 13}, new byte[]{14, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 8, 1, 2, 4, 9, 3, 6, 13, 10, 5}, new byte[]{15, 13, 9, 0, 3, 5, 8, 2, 7, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 11, 4}, new byte[]{13, 15, 11, 2, 1, 7, 10, 0, 5, 14, 9, 6}, new byte[]{9, 11, 15, 6, 5, 3, 14, 4, 1, 10, 13, 2}};
    private static final byte[][] MixColMatrix = {new byte[]{2, 4, 2, 11, 2, 8, 5, 6}, new byte[]{V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 9, 8, 13, 7, 7, 5, 2}, new byte[]{4, 4, 13, 13, 9, 4, 13, 9}, new byte[]{1, 6, 5, 1, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 13, 15, 14}, new byte[]{15, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 9, 13, 14, 5, 14, 13}, new byte[]{9, 14, 5, 15, 4, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 9, 6}, new byte[]{V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 2, 2, 10, 3, 1, 1, 14}, new byte[]{15, 1, 13, 10, 5, 10, 2, 3}};
    private static final byte[] sbox = {V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 5, 6, 11, 9, 0, 10, 13, 3, 14, 15, 8, 4, 7, 1, 2};

    /* renamed from: org.bouncycastle.crypto.engines.PhotonBeetleEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters;

        static {
            int[] iArr = new int[PhotonBeetleParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters = iArr;
            try {
                iArr[PhotonBeetleParameters.pb32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters[PhotonBeetleParameters.pb128.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum PhotonBeetleParameters {
        pb32,
        pb128
    }

    public PhotonBeetleEngine(PhotonBeetleParameters photonBeetleParameters) {
        int i10;
        int i11;
        this.MAC_SIZE = 16;
        this.IV_SIZE = 16;
        this.KEY_SIZE = 16;
        int i12 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters[photonBeetleParameters.ordinal()];
        if (i12 == 1) {
            i10 = 32;
            i11 = 224;
        } else if (i12 != 2) {
            i10 = 0;
            i11 = 0;
        } else {
            i10 = 128;
            i11 = 128;
        }
        int i13 = i10 + 7;
        int i14 = i13 >>> 3;
        this.BlockSize = i14;
        this.AADBufferSize = i14;
        this.RATE_INBYTES_HALF = i13 >>> 4;
        int i15 = ((i10 + i11) + 7) >>> 3;
        this.STATE_INBYTES = i15;
        this.LAST_THREE_BITS_OFFSET = (r4 - ((i15 - 1) << 3)) - 3;
        this.algorithmName = "Photon-Beetle AEAD";
        this.state = new byte[i15];
        setInnerMembers(AEADBaseEngine.ProcessingBufferType.Buffered, AEADBaseEngine.AADOperatorType.Counter, AEADBaseEngine.DataOperatorType.Counter);
    }

    public static void photonPermutation(PhotonBeetleDigest.Friend friend, byte[] bArr) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by PhotonBeetleDigest");
        }
        photonPermutation(bArr);
    }

    private void rhoohr(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        photonPermutation(this.state);
        byte[] bArr3 = new byte[8];
        int iMin = Math.min(i12, this.RATE_INBYTES_HALF);
        int i13 = 0;
        while (true) {
            int i14 = this.RATE_INBYTES_HALF;
            if (i13 >= i14 - 1) {
                byte[] bArr4 = this.state;
                bArr3[i14 - 1] = (byte) (((bArr4[0] & 1) << 7) | ((bArr4[i13] & 255) >>> 1));
                Bytes.xor(iMin, bArr4, i14, bArr2, i11, bArr, i10);
                Bytes.xor(i12 - iMin, bArr3, iMin - this.RATE_INBYTES_HALF, bArr2, i11 + iMin, bArr, i10 + iMin);
                return;
            }
            byte[] bArr5 = this.state;
            int i15 = i13 + 1;
            bArr3[i13] = (byte) (((bArr5[i15] & 1) << 7) | ((bArr5[i13] & 255) >>> 1));
            i13 = i15;
        }
    }

    private byte select(boolean z, boolean z4, byte b10, byte b11) {
        if (z && z4) {
            return (byte) 1;
        }
        if (z) {
            return (byte) 2;
        }
        return z4 ? b10 : b11;
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
        photonPermutation(this.state);
        Bytes.xorTo(this.BlockSize, bArr, i10, this.state);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        rhoohr(bArr2, i11, bArr, i10, this.BlockSize);
        Bytes.xorTo(this.BlockSize, bArr2, i11, this.state);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        rhoohr(bArr2, i11, bArr, i10, this.BlockSize);
        Bytes.xorTo(this.BlockSize, bArr, i10, this.state);
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
        int len = this.aadOperator.getLen();
        if (len != 0) {
            if (this.m_aadPos != 0) {
                photonPermutation(this.state);
                Bytes.xorTo(this.m_aadPos, this.m_aad, this.state);
                int i10 = this.m_aadPos;
                if (i10 < this.BlockSize) {
                    byte[] bArr = this.state;
                    bArr[i10] = (byte) (bArr[i10] ^ 1);
                }
            }
            byte[] bArr2 = this.state;
            int i11 = this.STATE_INBYTES - 1;
            bArr2[i11] = (byte) ((select(this.dataOperator.getLen() - (this.forEncryption ? 0 : this.MAC_SIZE) > 0, len % this.BlockSize == 0, (byte) 3, (byte) 4) << this.LAST_THREE_BITS_OFFSET) ^ bArr2[i11]);
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalBlock(byte[] bArr, int i10) {
        int len = this.dataOperator.getLen() - (this.forEncryption ? 0 : this.MAC_SIZE);
        int i11 = this.m_bufPos;
        int len2 = this.aadOperator.getLen();
        if (len2 != 0 || len != 0) {
            this.input_empty = false;
        }
        byte bSelect = select(len2 != 0, len % this.BlockSize == 0, (byte) 5, (byte) 6);
        if (len != 0) {
            if (i11 != 0) {
                rhoohr(bArr, i10, this.m_buf, 0, i11);
                if (this.forEncryption) {
                    Bytes.xorTo(i11, this.m_buf, this.state);
                } else {
                    Bytes.xorTo(i11, bArr, i10, this.state);
                }
                if (i11 < this.BlockSize) {
                    byte[] bArr2 = this.state;
                    bArr2[i11] = (byte) (bArr2[i11] ^ 1);
                }
            }
            byte[] bArr3 = this.state;
            int i12 = this.STATE_INBYTES - 1;
            bArr3[i12] = (byte) (bArr3[i12] ^ (bSelect << this.LAST_THREE_BITS_OFFSET));
        } else if (this.input_empty) {
            byte[] bArr4 = this.state;
            int i13 = this.STATE_INBYTES - 1;
            bArr4[i13] = (byte) (bArr4[i13] ^ (1 << this.LAST_THREE_BITS_OFFSET));
        }
        photonPermutation(this.state);
        System.arraycopy(this.state, 0, this.mac, 0, this.MAC_SIZE);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    private static void photonPermutation(byte[] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 8, 8);
        for (int i10 = 0; i10 < 64; i10++) {
            bArr2[i10 >>> 3][i10 & 7] = (byte) (((bArr[i10 >> 1] & 255) >>> ((i10 & 1) * 4)) & 15);
        }
        for (int i11 = 0; i11 < 12; i11++) {
            for (int i12 = 0; i12 < 8; i12++) {
                byte[] bArr3 = bArr2[i12];
                bArr3[0] = (byte) (bArr3[0] ^ RC[i12][i11]);
            }
            for (int i13 = 0; i13 < 8; i13++) {
                for (int i14 = 0; i14 < 8; i14++) {
                    byte[] bArr4 = bArr2[i13];
                    bArr4[i14] = sbox[bArr4[i14]];
                }
            }
            for (int i15 = 1; i15 < 8; i15++) {
                System.arraycopy(bArr2[i15], 0, bArr, 0, 8);
                int i16 = 8 - i15;
                System.arraycopy(bArr, i15, bArr2[i15], 0, i16);
                System.arraycopy(bArr, 0, bArr2[i15], i16, i15);
            }
            for (int i17 = 0; i17 < 8; i17++) {
                for (int i18 = 0; i18 < 8; i18++) {
                    int i19 = 0;
                    for (int i20 = 0; i20 < 8; i20++) {
                        byte b10 = MixColMatrix[i18][i20];
                        byte b11 = bArr2[i20][i17];
                        i19 = (((i19 ^ ((b11 & 1) * b10)) ^ ((b11 & 2) * b10)) ^ ((b11 & 4) * b10)) ^ (b10 * (b11 & 8));
                    }
                    int i21 = i19 >>> 4;
                    int i22 = (i21 << 1) ^ ((i19 & 15) ^ i21);
                    int i23 = i22 >>> 4;
                    bArr[i18] = (byte) (((i22 & 15) ^ i23) ^ (i23 << 1));
                }
                for (int i24 = 0; i24 < 8; i24++) {
                    bArr2[i24][i17] = bArr[i24];
                }
            }
        }
        for (int i25 = 0; i25 < 64; i25 += 2) {
            byte[] bArr5 = bArr2[i25 >>> 3];
            bArr[i25 >>> 1] = (byte) (((bArr5[(i25 + 1) & 7] & 15) << 4) | (bArr5[i25 & 7] & 15));
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void init(byte[] bArr, byte[] bArr2) {
        this.K = bArr;
        this.N = bArr2;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void reset(boolean z) {
        super.reset(z);
        this.input_empty = true;
        byte[] bArr = this.K;
        System.arraycopy(bArr, 0, this.state, 0, bArr.length);
        byte[] bArr2 = this.N;
        System.arraycopy(bArr2, 0, this.state, this.K.length, bArr2.length);
    }
}
