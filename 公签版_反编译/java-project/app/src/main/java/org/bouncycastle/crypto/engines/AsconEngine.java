package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.engines.AEADBaseEngine;
import org.bouncycastle.crypto.engines.AsconPermutationFriend;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public class AsconEngine extends AsconBaseEngine {
    private long K2;
    private final AsconParameters asconParameters;

    /* renamed from: org.bouncycastle.crypto.engines.AsconEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters;

        static {
            int[] iArr = new int[AsconParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters = iArr;
            try {
                iArr[AsconParameters.ascon80pq.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[AsconParameters.ascon128a.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[AsconParameters.ascon128.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum AsconParameters {
        ascon80pq,
        ascon128a,
        ascon128
    }

    public AsconEngine(AsconParameters asconParameters) {
        String str;
        this.asconParameters = asconParameters;
        this.MAC_SIZE = 16;
        this.IV_SIZE = 16;
        int i10 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[asconParameters.ordinal()];
        if (i10 == 1) {
            this.KEY_SIZE = 20;
            this.BlockSize = 8;
            this.ASCON_IV = -6899501409222262784L;
            str = "Ascon-80pq AEAD";
        } else if (i10 == 2) {
            this.KEY_SIZE = 16;
            this.BlockSize = 16;
            this.ASCON_IV = -9187330011336540160L;
            str = "Ascon-128a AEAD";
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("invalid parameter setting for ASCON AEAD");
            }
            this.KEY_SIZE = 16;
            this.BlockSize = 8;
            this.ASCON_IV = -9205344418435956736L;
            str = "Ascon-128 AEAD";
        }
        this.algorithmName = str;
        int i11 = this.BlockSize;
        this.nr = i11 == 8 ? 6 : 8;
        this.AADBufferSize = i11;
        this.dsep = 1L;
        setInnerMembers(AEADBaseEngine.ProcessingBufferType.Immediate, AEADBaseEngine.AADOperatorType.Default, AEADBaseEngine.DataOperatorType.Default);
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public void ascon_aeadinit() {
        this.f11945p.set(this.ASCON_IV, this.K1, this.K2, this.N0, this.N1);
        if (this.KEY_SIZE == 20) {
            this.f11945p.f11946x0 ^= this.K0;
        }
        this.f11945p.p(12);
        if (this.KEY_SIZE == 20) {
            this.f11945p.f11948x2 ^= this.K0;
        }
        AsconPermutationFriend.AsconPermutation asconPermutation = this.f11945p;
        asconPermutation.f11949x3 ^= this.K1;
        asconPermutation.f11950x4 ^= this.K2;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int i10) {
        return super.doFinal(bArr, i10);
    }

    public void finishData(AEADBaseEngine.State state) {
        AsconPermutationFriend.AsconPermutation asconPermutation;
        long j10;
        long j11;
        int i10 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[this.asconParameters.ordinal()];
        if (i10 == 1) {
            asconPermutation = this.f11945p;
            long j12 = asconPermutation.f11947x1;
            long j13 = this.K0 << 32;
            long j14 = this.K1;
            asconPermutation.f11947x1 = j12 ^ (j13 | (j14 >> 32));
            long j15 = asconPermutation.f11948x2;
            long j16 = j14 << 32;
            long j17 = this.K2;
            asconPermutation.f11948x2 = j15 ^ (j16 | (j17 >> 32));
            j10 = asconPermutation.f11949x3;
            j11 = j17 << 32;
        } else {
            if (i10 != 2) {
                if (i10 != 3) {
                    throw new IllegalStateException();
                }
                AsconPermutationFriend.AsconPermutation asconPermutation2 = this.f11945p;
                asconPermutation2.f11947x1 ^= this.K1;
                asconPermutation2.f11948x2 ^= this.K2;
                this.f11945p.p(12);
                AsconPermutationFriend.AsconPermutation asconPermutation3 = this.f11945p;
                asconPermutation3.f11949x3 ^= this.K1;
                asconPermutation3.f11950x4 ^= this.K2;
                this.m_state = state;
            }
            asconPermutation = this.f11945p;
            asconPermutation.f11948x2 ^= this.K1;
            j10 = asconPermutation.f11949x3;
            j11 = this.K2;
        }
        asconPermutation.f11949x3 = j10 ^ j11;
        this.f11945p.p(12);
        AsconPermutationFriend.AsconPermutation asconPermutation32 = this.f11945p;
        asconPermutation32.f11949x3 ^= this.K1;
        asconPermutation32.f11950x4 ^= this.K2;
        this.m_state = state;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ String getAlgorithmName() {
        return super.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public String getAlgorithmVersion() {
        return "v1.2";
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

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public long loadBytes(byte[] bArr, int i10) {
        return Pack.bigEndianToLong(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public long pad(int i10) {
        return 128 << (56 - (i10 << 3));
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void processAADByte(byte b10) {
        super.processAADByte(b10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void processAADBytes(byte[] bArr, int i10, int i11) {
        super.processAADBytes(bArr, i10, i11);
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
        byte[] bArr = this.m_aad;
        int i10 = this.m_aadPos;
        bArr[i10] = Byte.MIN_VALUE;
        if (i10 < 8) {
            AsconPermutationFriend.AsconPermutation asconPermutation = this.f11945p;
            asconPermutation.f11946x0 = (((-1) << (56 - (this.m_aadPos << 3))) & Pack.bigEndianToLong(bArr, 0)) ^ asconPermutation.f11946x0;
            return;
        }
        this.f11945p.f11946x0 ^= Pack.bigEndianToLong(bArr, 0);
        AsconPermutationFriend.AsconPermutation asconPermutation2 = this.f11945p;
        asconPermutation2.f11947x1 = (((-1) << (56 - ((this.m_aadPos - 8) << 3))) & Pack.bigEndianToLong(this.m_aad, 8)) ^ asconPermutation2.f11947x1;
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public void processFinalDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (i10 >= 8) {
            long jBigEndianToLong = Pack.bigEndianToLong(bArr, 0);
            AsconPermutationFriend.AsconPermutation asconPermutation = this.f11945p;
            long j10 = asconPermutation.f11946x0 ^ jBigEndianToLong;
            asconPermutation.f11946x0 = j10;
            Pack.longToBigEndian(j10, bArr2, i11);
            AsconPermutationFriend.AsconPermutation asconPermutation2 = this.f11945p;
            asconPermutation2.f11946x0 = jBigEndianToLong;
            int i12 = i11 + 8;
            int i13 = i10 - 8;
            asconPermutation2.f11947x1 ^= pad(i13);
            if (i13 != 0) {
                long jLittleEndianToLong_High = Pack.littleEndianToLong_High(bArr, 8, i13);
                AsconPermutationFriend.AsconPermutation asconPermutation3 = this.f11945p;
                long j11 = asconPermutation3.f11947x1 ^ jLittleEndianToLong_High;
                asconPermutation3.f11947x1 = j11;
                Pack.longToLittleEndian_High(j11, bArr2, i12, i13);
                AsconPermutationFriend.AsconPermutation asconPermutation4 = this.f11945p;
                asconPermutation4.f11947x1 = (asconPermutation4.f11947x1 & ((-1) >>> (i13 << 3))) ^ jLittleEndianToLong_High;
            }
        } else {
            this.f11945p.f11946x0 ^= pad(i10);
            if (i10 != 0) {
                long jLittleEndianToLong_High2 = Pack.littleEndianToLong_High(bArr, 0, i10);
                AsconPermutationFriend.AsconPermutation asconPermutation5 = this.f11945p;
                long j12 = asconPermutation5.f11946x0 ^ jLittleEndianToLong_High2;
                asconPermutation5.f11946x0 = j12;
                Pack.longToLittleEndian_High(j12, bArr2, i11, i10);
                AsconPermutationFriend.AsconPermutation asconPermutation6 = this.f11945p;
                asconPermutation6.f11946x0 = (asconPermutation6.f11946x0 & ((-1) >>> (i10 << 3))) ^ jLittleEndianToLong_High2;
            }
        }
        finishData(AEADBaseEngine.State.DecFinal);
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public void processFinalEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        long j10;
        if (i10 >= 8) {
            this.f11945p.f11946x0 ^= Pack.bigEndianToLong(bArr, 0);
            Pack.longToBigEndian(this.f11945p.f11946x0, bArr2, i11);
            i11 += 8;
            i10 -= 8;
            this.f11945p.f11947x1 ^= pad(i10);
            if (i10 != 0) {
                this.f11945p.f11947x1 ^= Pack.littleEndianToLong_High(bArr, 8, i10);
                j10 = this.f11945p.f11947x1;
                Pack.longToLittleEndian_High(j10, bArr2, i11, i10);
            }
        } else {
            this.f11945p.f11946x0 ^= pad(i10);
            if (i10 != 0) {
                this.f11945p.f11946x0 ^= Pack.littleEndianToLong_High(bArr, 0, i10);
                j10 = this.f11945p.f11946x0;
                Pack.longToLittleEndian_High(j10, bArr2, i11, i10);
            }
        }
        finishData(AEADBaseEngine.State.EncFinal);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public void setBytes(long j10, byte[] bArr, int i10) {
        Pack.longToBigEndian(j10, bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void init(byte[] bArr, byte[] bArr2) {
        long jBigEndianToLong;
        this.N0 = Pack.bigEndianToLong(bArr2, 0);
        this.N1 = Pack.bigEndianToLong(bArr2, 8);
        int i10 = this.KEY_SIZE;
        if (i10 == 16) {
            this.K1 = Pack.bigEndianToLong(bArr, 0);
            jBigEndianToLong = Pack.bigEndianToLong(bArr, 8);
        } else {
            if (i10 != 20) {
                throw new IllegalStateException();
            }
            this.K0 = Pack.bigEndianToInt(bArr, 0);
            this.K1 = Pack.bigEndianToLong(bArr, 4);
            jBigEndianToLong = Pack.bigEndianToLong(bArr, 12);
        }
        this.K2 = jBigEndianToLong;
    }
}
