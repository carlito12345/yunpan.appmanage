package org.bouncycastle.crypto.engines;

import com.android.apksig.internal.apk.v4.V4Signature;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.core.NoConst;
import com.hsae.autosdk.p001os.SocConst;
import g.b;
import java.util.Arrays;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.engines.AEADBaseEngine;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Bytes;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes3.dex */
public class ElephantEngine extends AEADBaseEngine {

    /* renamed from: ad, reason: collision with root package name */
    private byte[] f11957ad;
    private int adOff;
    private int adlen;
    private final byte[] buffer;
    private byte[] current_mask;
    private byte[] expanded_key;
    private final Permutation instance;
    private int nb_its;
    private byte[] next_mask;
    private byte[] npub;
    private byte[] previous_mask;
    private final byte[] previous_outputMessage;
    private final byte[] tag_buffer;

    /* renamed from: org.bouncycastle.crypto.engines.ElephantEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters;

        static {
            int[] iArr = new int[ElephantParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters = iArr;
            try {
                iArr[ElephantParameters.elephant160.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[ElephantParameters.elephant176.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[ElephantParameters.elephant200.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class Delirium implements Permutation {
        private static final int nRounds = 18;
        private final int[] KeccakRhoOffsets;
        private final byte[] KeccakRoundConstants;

        private Delirium() {
            this.KeccakRoundConstants = new byte[]{1, -126, -118, 0, -117, 1, -127, 9, -118, -120, 9, 10, -117, -117, -119, 3, 2, Byte.MIN_VALUE};
            this.KeccakRhoOffsets = new int[]{0, 1, 6, 4, 3, 4, 4, 6, 7, 4, 3, 2, 3, 1, 7, 1, 5, 7, 5, 0, 2, 2, 5, 0, 6};
        }

        private void KeccakP200Round(byte[] bArr, int i10) {
            byte[] bArr2 = new byte[25];
            for (int i11 = 0; i11 < 5; i11++) {
                for (int i12 = 0; i12 < 5; i12++) {
                    bArr2[i11] = (byte) (bArr2[i11] ^ bArr[index(i11, i12)]);
                }
            }
            int i13 = 0;
            while (i13 < 5) {
                int i14 = i13 + 1;
                bArr2[i13 + 5] = (byte) (bArr2[(i13 + 4) % 5] ^ ROL8(bArr2[i14 % 5], 1));
                i13 = i14;
            }
            for (int i15 = 0; i15 < 5; i15++) {
                for (int i16 = 0; i16 < 5; i16++) {
                    int iIndex = index(i15, i16);
                    bArr[iIndex] = (byte) (bArr[iIndex] ^ bArr2[i15 + 5]);
                }
            }
            for (int i17 = 0; i17 < 5; i17++) {
                for (int i18 = 0; i18 < 5; i18++) {
                    bArr2[index(i17, i18)] = ROL8(bArr[index(i17, i18)], this.KeccakRhoOffsets[index(i17, i18)]);
                }
            }
            for (int i19 = 0; i19 < 5; i19++) {
                for (int i20 = 0; i20 < 5; i20++) {
                    bArr[index(i20, ((i20 * 3) + (i19 * 2)) % 5)] = bArr2[index(i19, i20)];
                }
            }
            for (int i21 = 0; i21 < 5; i21++) {
                int i22 = 0;
                while (i22 < 5) {
                    int i23 = i22 + 1;
                    bArr2[i22] = (byte) (bArr[index(i22, i21)] ^ ((bArr[index(i23 % 5, i21)] ^ (-1)) & bArr[index((i22 + 2) % 5, i21)]));
                    i22 = i23;
                }
                for (int i24 = 0; i24 < 5; i24++) {
                    bArr[index(i24, i21)] = bArr2[i24];
                }
            }
            bArr[0] = (byte) (this.KeccakRoundConstants[i10] ^ bArr[0]);
        }

        private byte ROL8(byte b10, int i10) {
            return (byte) (((b10 & 255) >>> (8 - i10)) | (b10 << i10));
        }

        private int index(int i10, int i11) {
            return (i11 * 5) + i10;
        }

        @Override // org.bouncycastle.crypto.engines.ElephantEngine.Permutation
        public void lfsr_step() {
            byte[] bArr = ElephantEngine.this.next_mask;
            ElephantEngine elephantEngine = ElephantEngine.this;
            int i10 = elephantEngine.BlockSize - 1;
            byte bRotl = elephantEngine.rotl(elephantEngine.current_mask[0]);
            ElephantEngine elephantEngine2 = ElephantEngine.this;
            bArr[i10] = (byte) ((bRotl ^ elephantEngine2.rotl(elephantEngine2.current_mask[2])) ^ (ElephantEngine.this.current_mask[13] << 1));
        }

        @Override // org.bouncycastle.crypto.engines.ElephantEngine.Permutation
        public void permutation(byte[] bArr) {
            for (int i10 = 0; i10 < 18; i10++) {
                KeccakP200Round(bArr, i10);
            }
        }

        public /* synthetic */ Delirium(ElephantEngine elephantEngine, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public class Dumbo extends Spongent {
        public Dumbo() {
            super(CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ, 20, 80, (byte) 117);
        }

        @Override // org.bouncycastle.crypto.engines.ElephantEngine.Permutation
        public void lfsr_step() {
            ElephantEngine.this.next_mask[r1.BlockSize - 1] = (byte) (((((ElephantEngine.this.current_mask[0] & 255) << 3) | ((ElephantEngine.this.current_mask[0] & 255) >>> 5)) ^ ((ElephantEngine.this.current_mask[3] & 255) << 7)) ^ ((ElephantEngine.this.current_mask[13] & 255) >>> 7));
        }
    }

    public enum ElephantParameters {
        elephant160,
        elephant176,
        elephant200
    }

    public class Jumbo extends Spongent {
        public Jumbo() {
            super(176, 22, 90, (byte) 69);
        }

        @Override // org.bouncycastle.crypto.engines.ElephantEngine.Permutation
        public void lfsr_step() {
            byte[] bArr = ElephantEngine.this.next_mask;
            ElephantEngine elephantEngine = ElephantEngine.this;
            bArr[elephantEngine.BlockSize - 1] = (byte) ((elephantEngine.rotl(elephantEngine.current_mask[0]) ^ ((ElephantEngine.this.current_mask[3] & 255) << 7)) ^ ((ElephantEngine.this.current_mask[19] & 255) >>> 7));
        }
    }

    public interface Permutation {
        void lfsr_step();

        void permutation(byte[] bArr);
    }

    public static abstract class Spongent implements Permutation {
        private final byte lfsrIV;
        private final int nBits;
        private final int nRounds;
        private final int nSBox;
        private final byte[] sBoxLayer = {-18, -19, -21, -32, -30, -31, -28, -17, -25, -22, -24, -27, -23, -20, -29, -26, -34, -35, -37, -48, -46, -47, -44, -33, -41, -38, -40, -43, -39, -36, -45, -42, -66, -67, -69, -80, -78, -79, -76, -65, -73, -70, -72, -75, -71, PSSSigner.TRAILER_IMPLICIT, -77, -74, 14, 13, 11, 0, 2, 1, 4, 15, 7, 10, 8, 5, 9, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 3, 6, 46, 45, 43, HebrewProber.SPACE, 34, SocConst.Upgrade.CPU_CMD, 36, 47, 39, 42, 40, 37, 41, 44, 35, 38, 30, 29, 27, 16, SocConst.Upgrade.FLASH_DATA, SocConst.Upgrade.FLASH_CMD, 20, 31, 23, 26, 24, 21, 25, 28, 19, 22, 78, 77, 75, 64, 66, 65, 68, 79, 71, 74, 72, 69, 73, 76, 67, 70, -2, -3, -5, -16, -14, -15, -12, -1, -9, -6, -8, -11, -7, -4, -13, -10, NoConst.ESCAPE_0X7E, NoConst.ESCAPE_0X7D, 123, 112, 114, 113, 116, Byte.MAX_VALUE, 119, 122, 120, 117, 121, 124, 115, 118, -82, -83, -85, -96, -94, -95, -92, -81, -89, -86, -88, -91, -87, -84, -93, -90, -114, -115, -117, Byte.MIN_VALUE, -126, -127, -124, -113, -121, -118, -120, -123, -119, -116, -125, -122, 94, 93, 91, 80, 82, 81, 84, 95, 87, 90, 88, 85, 89, 92, 83, 86, -98, -99, -101, -112, -110, -111, -108, -97, -105, -102, -104, -107, -103, -100, -109, -106, -50, -51, -53, -64, -62, -63, -60, -49, -57, -54, -56, -59, -55, -52, -61, -58, 62, 61, 59, 48, SocConst.Upgrade.CUPID_DATA, SocConst.Upgrade.CUPID_CMD, 52, 63, 55, 58, 56, 53, 57, 60, 51, 54, 110, 109, 107, 96, 98, 97, 100, 111, 103, 106, 104, 101, 105, 108, 99, 102};

        public Spongent(int i10, int i11, int i12, byte b10) {
            this.nRounds = i12;
            this.nSBox = i11;
            this.lfsrIV = b10;
            this.nBits = i10;
        }

        @Override // org.bouncycastle.crypto.engines.ElephantEngine.Permutation
        public void permutation(byte[] bArr) {
            int i10;
            byte b10 = this.lfsrIV;
            byte[] bArr2 = new byte[this.nSBox];
            for (int i11 = 0; i11 < this.nRounds; i11++) {
                bArr[0] = (byte) (bArr[0] ^ b10);
                int i12 = this.nSBox - 1;
                byte b11 = bArr[i12];
                int i13 = b10 & HebrewProber.SPACE;
                int i14 = b10 & 64;
                bArr[i12] = (byte) (b11 ^ ((byte) (((((((((b10 & 1) << 7) | ((b10 & 2) << 5)) | ((b10 & 4) << 3)) | ((b10 & 8) << 1)) | ((b10 & 16) >>> 1)) | (i13 >>> 3)) | (i14 >>> 5)) | ((b10 & 128) >>> 7))));
                b10 = (byte) (((b10 << 1) | ((i14 >>> 6) ^ (i13 >>> 5))) & 127);
                for (int i15 = 0; i15 < this.nSBox; i15++) {
                    bArr[i15] = this.sBoxLayer[bArr[i15] & 255];
                }
                Arrays.fill(bArr2, (byte) 0);
                int i16 = 0;
                while (true) {
                    i10 = this.nSBox;
                    if (i16 < i10) {
                        for (int i17 = 0; i17 < 8; i17++) {
                            int i18 = (i16 << 3) + i17;
                            int i19 = this.nBits;
                            if (i18 != i19 - 1) {
                                i18 = ((i18 * i19) >> 2) % (i19 - 1);
                            }
                            int i20 = i18 >>> 3;
                            bArr2[i20] = (byte) (((((bArr[i16] & 255) >>> i17) & 1) << (i18 & 7)) ^ bArr2[i20]);
                        }
                        i16++;
                    }
                }
                System.arraycopy(bArr2, 0, bArr, 0, i10);
            }
        }
    }

    public ElephantEngine(ElephantParameters elephantParameters) {
        this.KEY_SIZE = 16;
        this.IV_SIZE = 12;
        int i10 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[elephantParameters.ordinal()];
        if (i10 == 1) {
            this.BlockSize = 20;
            this.instance = new Dumbo();
            this.MAC_SIZE = 8;
            this.algorithmName = "Elephant 160 AEAD";
        } else if (i10 == 2) {
            this.BlockSize = 22;
            this.instance = new Jumbo();
            this.algorithmName = "Elephant 176 AEAD";
            this.MAC_SIZE = 8;
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("Invalid parameter settings for Elephant");
            }
            this.BlockSize = 25;
            this.instance = new Delirium(this, null);
            this.algorithmName = "Elephant 200 AEAD";
            this.MAC_SIZE = 16;
        }
        int i11 = this.BlockSize;
        this.tag_buffer = new byte[i11];
        this.previous_mask = new byte[i11];
        this.current_mask = new byte[i11];
        this.next_mask = new byte[i11];
        this.buffer = new byte[i11];
        this.previous_outputMessage = new byte[i11];
        setInnerMembers(AEADBaseEngine.ProcessingBufferType.Immediate, AEADBaseEngine.AADOperatorType.Stream, AEADBaseEngine.DataOperatorType.Counter);
    }

    private void absorbAAD() {
        processAADBytes(this.buffer);
        Bytes.xorTo(this.BlockSize, this.next_mask, this.buffer);
        this.instance.permutation(this.buffer);
        Bytes.xorTo(this.BlockSize, this.next_mask, this.buffer);
        Bytes.xorTo(this.BlockSize, this.buffer, this.tag_buffer);
    }

    private void absorbCiphertext() {
        xorTo(this.BlockSize, this.previous_mask, this.next_mask, this.buffer);
        this.instance.permutation(this.buffer);
        xorTo(this.BlockSize, this.previous_mask, this.next_mask, this.buffer);
        Bytes.xorTo(this.BlockSize, this.buffer, this.tag_buffer);
    }

    private void computeCipherBlock(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        System.arraycopy(this.npub, 0, this.buffer, 0, this.IV_SIZE);
        Arrays.fill(this.buffer, this.IV_SIZE, this.BlockSize, (byte) 0);
        xorTo(this.BlockSize, this.current_mask, this.next_mask, this.buffer);
        this.instance.permutation(this.buffer);
        xorTo(this.BlockSize, this.current_mask, this.next_mask, this.buffer);
        Bytes.xorTo(i11, bArr, i10, this.buffer);
        System.arraycopy(this.buffer, 0, bArr2, i12, i11);
    }

    private void lfsr_step() {
        this.instance.lfsr_step();
        System.arraycopy(this.current_mask, 1, this.next_mask, 0, this.BlockSize - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void processAADBytes(byte[] bArr) {
        int i10;
        AEADBaseEngine.State state;
        int i11;
        int i12;
        AEADBaseEngine.State state2;
        int i13 = this.m_state.ord;
        if (i13 != 1) {
            if (i13 == 2) {
                if (this.adOff == this.adlen) {
                    Arrays.fill(bArr, 0, this.BlockSize, (byte) 0);
                    bArr[0] = 1;
                    return;
                }
                i10 = 0;
            } else if (i13 != 5) {
                if (i13 == 6) {
                }
                i10 = 0;
            } else {
                System.arraycopy(this.expanded_key, 0, this.current_mask, 0, this.BlockSize);
                System.arraycopy(this.npub, 0, bArr, 0, this.IV_SIZE);
                i10 = this.IV_SIZE;
                state = AEADBaseEngine.State.DecAad;
            }
            i11 = this.BlockSize - i10;
            int i14 = this.adlen;
            int i15 = this.adOff;
            i12 = i14 - i15;
            if (i11 > i12) {
                System.arraycopy(this.f11957ad, i15, bArr, i10, i11);
                this.adOff += i11;
                return;
            }
            if (i12 > 0) {
                System.arraycopy(this.f11957ad, i15, bArr, i10, i12);
                this.adOff += i12;
            }
            int i16 = i12 + i10;
            Arrays.fill(bArr, i16, i10 + i11, (byte) 0);
            bArr[i16] = 1;
            int i17 = this.m_state.ord;
            if (i17 == 2) {
                state2 = AEADBaseEngine.State.EncData;
            } else if (i17 != 6) {
                return;
            } else {
                state2 = AEADBaseEngine.State.DecData;
            }
            this.m_state = state2;
            return;
        }
        System.arraycopy(this.expanded_key, 0, this.current_mask, 0, this.BlockSize);
        System.arraycopy(this.npub, 0, bArr, 0, this.IV_SIZE);
        i10 = this.IV_SIZE;
        state = AEADBaseEngine.State.EncAad;
        this.m_state = state;
        i11 = this.BlockSize - i10;
        int i142 = this.adlen;
        int i152 = this.adOff;
        i12 = i142 - i152;
        if (i11 > i12) {
        }
    }

    private void processBuffer(byte[] bArr, int i10, byte[] bArr2, int i11, AEADBaseEngine.State state) {
        AEADBaseEngine.State state2 = this.m_state;
        if (state2 == AEADBaseEngine.State.DecInit || state2 == AEADBaseEngine.State.EncInit) {
            processFinalAAD();
        }
        lfsr_step();
        computeCipherBlock(bArr, i10, this.BlockSize, bArr2, i11);
        if (this.nb_its > 0) {
            System.arraycopy(this.previous_outputMessage, 0, this.buffer, 0, this.BlockSize);
            absorbCiphertext();
        }
        if (this.m_state != state) {
            absorbAAD();
        }
        swapMasks();
        this.nb_its++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte rotl(byte b10) {
        return (byte) (((b10 & 255) >>> 7) | (b10 << 1));
    }

    private void swapMasks() {
        byte[] bArr = this.previous_mask;
        this.previous_mask = this.current_mask;
        this.current_mask = this.next_mask;
        this.next_mask = bArr;
    }

    public static void xorTo(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        for (int i11 = 0; i11 < i10; i11++) {
            bArr3[i11] = (byte) (bArr3[i11] ^ (bArr[i11] ^ bArr2[i11]));
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void checkAAD() {
        int i10 = this.m_state.ord;
        if (i10 == 3) {
            throw new IllegalArgumentException(b.l(this.algorithmName, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size", new StringBuilder()));
        }
        if (i10 == 4) {
            throw new IllegalArgumentException(b.l(this.algorithmName, " cannot be reused for encryption", new StringBuilder()));
        }
        if (i10 != 7) {
            return;
        }
        throw new IllegalArgumentException(b.l(this.algorithmName, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size", new StringBuilder()));
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public boolean checkData(boolean z) {
        switch (this.m_state.ord) {
            case 1:
            case 2:
            case 3:
                return true;
            case 4:
                throw new IllegalStateException(getAlgorithmName() + " cannot be reused for encryption");
            case 5:
            case 6:
            case 7:
                return false;
            default:
                throw new IllegalStateException(getAlgorithmName() + " needs to be initialized");
        }
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
    public int getOutputSize(int i10) {
        int i11 = this.m_state.ord;
        if (i11 == 0) {
            throw new IllegalArgumentException(b.l(this.algorithmName, " needs call init function before getUpdateOutputSize", new StringBuilder()));
        }
        if (i11 == 1 || i11 == 2 || i11 == 3) {
            return i10 + this.m_bufPos + this.MAC_SIZE;
        }
        if (i11 == 4 || i11 == 8) {
            return 0;
        }
        return Math.max(0, (i10 + this.m_bufPos) - this.MAC_SIZE);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i10) {
        switch (this.m_state.ord) {
            case 0:
                throw new IllegalArgumentException(b.l(this.algorithmName, " needs call init function before getUpdateOutputSize", new StringBuilder()));
            case 1:
            case 2:
            case 3:
                int i11 = this.m_bufPos + i10;
                return i11 - (i11 % this.BlockSize);
            case 4:
            case 8:
                return 0;
            case 5:
            case 6:
            case 7:
                int iMax = Math.max(0, (this.m_bufPos + i10) - this.MAC_SIZE);
                return iMax - (iMax % this.BlockSize);
            default:
                return Math.max(0, (i10 + this.m_bufPos) - this.MAC_SIZE);
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void init(boolean z, CipherParameters cipherParameters) {
        super.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void processAADByte(byte b10) {
        super.processAADByte(b10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferAAD(byte[] bArr, int i10) {
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        processBuffer(bArr, i10, bArr2, i11, AEADBaseEngine.State.DecData);
        System.arraycopy(bArr, i10, this.previous_outputMessage, 0, this.BlockSize);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        processBuffer(bArr, i10, bArr2, i11, AEADBaseEngine.State.EncData);
        System.arraycopy(bArr2, i11, this.previous_outputMessage, 0, this.BlockSize);
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
        if (this.adOff == -1) {
            this.f11957ad = ((AEADBaseEngine.StreamAADOperator) this.aadOperator).getBytes();
            this.adOff = 0;
            this.adlen = this.aadOperator.getLen();
            this.aadOperator.reset();
        }
        int i10 = this.m_state.ord;
        if (i10 == 1 || i10 == 5) {
            processAADBytes(this.tag_buffer);
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalBlock(byte[] bArr, int i10) {
        int len = this.dataOperator.getLen() - (this.forEncryption ? 0 : this.MAC_SIZE);
        processFinalAAD();
        int i11 = this.BlockSize;
        int i12 = len / i11;
        int i13 = i12 + 1;
        int i14 = len % i11 != 0 ? i13 : i12;
        int i15 = (this.IV_SIZE + this.adlen) / i11;
        processBytes(this.m_buf, bArr, i10, Math.max(i12 + 2, i15), i14, i13, len, i15 + 1);
        Bytes.xorTo(this.BlockSize, this.expanded_key, this.tag_buffer);
        this.instance.permutation(this.tag_buffer);
        Bytes.xorTo(this.BlockSize, this.expanded_key, this.tag_buffer);
        System.arraycopy(this.tag_buffer, 0, this.mac, 0, this.MAC_SIZE);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    private void processBytes(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, int i14, int i15) {
        byte[] bArr3 = new byte[this.BlockSize];
        int i16 = i10;
        int i17 = this.nb_its;
        int i18 = 0;
        while (i17 < i11) {
            int i19 = i17 == i12 + (-1) ? i14 - (this.BlockSize * i17) : this.BlockSize;
            lfsr_step();
            if (i17 < i12) {
                computeCipherBlock(bArr, i18, i19, bArr2, i16);
                if (this.forEncryption) {
                    System.arraycopy(this.buffer, 0, bArr3, 0, i19);
                } else {
                    System.arraycopy(bArr, i18, bArr3, 0, i19);
                }
                i16 += i19;
                i18 += i19;
            }
            if (i17 > 0 && i17 <= i13) {
                int i20 = this.BlockSize;
                int i21 = (i17 - 1) * i20;
                if (i21 == i14) {
                    Arrays.fill(this.buffer, 1, i20, (byte) 0);
                    this.buffer[0] = 1;
                } else {
                    int i22 = i14 - i21;
                    if (i20 <= i22) {
                        System.arraycopy(this.previous_outputMessage, 0, this.buffer, 0, i20);
                    } else if (i22 > 0) {
                        System.arraycopy(this.previous_outputMessage, 0, this.buffer, 0, i22);
                        Arrays.fill(this.buffer, i22, this.BlockSize, (byte) 0);
                        this.buffer[i22] = 1;
                    }
                }
                absorbCiphertext();
            }
            i17++;
            if (i17 < i15) {
                absorbAAD();
            }
            swapMasks();
            System.arraycopy(bArr3, 0, this.previous_outputMessage, 0, this.BlockSize);
        }
        this.nb_its = i17;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void init(byte[] bArr, byte[] bArr2) {
        this.npub = bArr2;
        byte[] bArr3 = new byte[this.BlockSize];
        this.expanded_key = bArr3;
        System.arraycopy(bArr, 0, bArr3, 0, this.KEY_SIZE);
        this.instance.permutation(this.expanded_key);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void processAADBytes(byte[] bArr, int i10, int i11) {
        super.processAADBytes(bArr, i10, i11);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void reset(boolean z) {
        super.reset(z);
        Arrays.fill(this.tag_buffer, (byte) 0);
        Arrays.fill(this.previous_outputMessage, (byte) 0);
        this.nb_its = 0;
        this.adOff = -1;
    }
}
