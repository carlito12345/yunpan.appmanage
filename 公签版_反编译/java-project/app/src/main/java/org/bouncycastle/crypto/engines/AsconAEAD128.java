package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.engines.AEADBaseEngine;
import org.bouncycastle.crypto.engines.AsconPermutationFriend;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public class AsconAEAD128 extends AsconBaseEngine {
    public AsconAEAD128() {
        this.BlockSize = 16;
        this.AADBufferSize = 16;
        this.MAC_SIZE = 16;
        this.IV_SIZE = 16;
        this.KEY_SIZE = 16;
        this.ASCON_IV = 17594342703105L;
        this.algorithmName = "Ascon-AEAD128";
        this.nr = 8;
        this.dsep = Long.MIN_VALUE;
        setInnerMembers(AEADBaseEngine.ProcessingBufferType.Immediate, AEADBaseEngine.AADOperatorType.Default, AEADBaseEngine.DataOperatorType.Default);
    }

    private void finishData(AEADBaseEngine.State state) {
        AsconPermutationFriend.AsconPermutation asconPermutation = this.f11945p;
        asconPermutation.f11948x2 ^= this.K0;
        asconPermutation.f11949x3 ^= this.K1;
        asconPermutation.p(12);
        AsconPermutationFriend.AsconPermutation asconPermutation2 = this.f11945p;
        asconPermutation2.f11949x3 ^= this.K0;
        asconPermutation2.f11950x4 ^= this.K1;
        this.m_state = state;
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public void ascon_aeadinit() {
        this.f11945p.set(this.ASCON_IV, this.K0, this.K1, this.N0, this.N1);
        this.f11945p.p(12);
        AsconPermutationFriend.AsconPermutation asconPermutation = this.f11945p;
        asconPermutation.f11949x3 ^= this.K0;
        asconPermutation.f11950x4 ^= this.K1;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int i10) {
        return super.doFinal(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ String getAlgorithmName() {
        return super.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public String getAlgorithmVersion() {
        return "v1.3";
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
        return Pack.littleEndianToLong(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public long pad(int i10) {
        return 1 << (i10 << 3);
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
        if (this.m_aadPos == this.BlockSize) {
            this.f11945p.f11946x0 ^= loadBytes(this.m_aad, 0);
            this.f11945p.f11947x1 ^= loadBytes(this.m_aad, 8);
            this.m_aadPos -= this.BlockSize;
            this.f11945p.p(this.nr);
        }
        Arrays.fill(this.m_aad, this.m_aadPos, this.AADBufferSize, (byte) 0);
        if (this.m_aadPos < 8) {
            this.f11945p.f11946x0 ^= Pack.littleEndianToLong(this.m_aad, 0) ^ pad(this.m_aadPos);
            return;
        }
        this.f11945p.f11946x0 ^= Pack.littleEndianToLong(this.m_aad, 0);
        AsconPermutationFriend.AsconPermutation asconPermutation = this.f11945p;
        asconPermutation.f11947x1 = (Pack.littleEndianToLong(this.m_aad, 8) ^ pad(this.m_aadPos)) ^ asconPermutation.f11947x1;
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public void processFinalDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (i10 >= 8) {
            long jLittleEndianToLong = Pack.littleEndianToLong(bArr, 0);
            int i12 = i10 - 8;
            long jLittleEndianToLong2 = Pack.littleEndianToLong(bArr, 8, i12);
            Pack.longToLittleEndian(this.f11945p.f11946x0 ^ jLittleEndianToLong, bArr2, i11);
            Pack.longToLittleEndian(this.f11945p.f11947x1 ^ jLittleEndianToLong2, bArr2, i11 + 8, i12);
            AsconPermutationFriend.AsconPermutation asconPermutation = this.f11945p;
            asconPermutation.f11946x0 = jLittleEndianToLong;
            long j10 = (asconPermutation.f11947x1 & (-(1 << (i12 << 3)))) | jLittleEndianToLong2;
            asconPermutation.f11947x1 = j10;
            asconPermutation.f11947x1 = j10 ^ pad(i12);
        } else {
            if (i10 != 0) {
                long jLittleEndianToLong3 = Pack.littleEndianToLong(bArr, 0, i10);
                Pack.longToLittleEndian(this.f11945p.f11946x0 ^ jLittleEndianToLong3, bArr2, i11, i10);
                AsconPermutationFriend.AsconPermutation asconPermutation2 = this.f11945p;
                asconPermutation2.f11946x0 = (asconPermutation2.f11946x0 & (-(1 << (i10 << 3)))) | jLittleEndianToLong3;
            }
            this.f11945p.f11946x0 ^= pad(i10);
        }
        finishData(AEADBaseEngine.State.DecFinal);
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public void processFinalEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (i10 >= 8) {
            this.f11945p.f11946x0 ^= Pack.littleEndianToLong(bArr, 0);
            int i12 = i10 - 8;
            this.f11945p.f11947x1 ^= Pack.littleEndianToLong(bArr, 8, i12);
            Pack.longToLittleEndian(this.f11945p.f11946x0, bArr2, i11);
            Pack.longToLittleEndian(this.f11945p.f11947x1, bArr2, i11 + 8);
            this.f11945p.f11947x1 ^= pad(i12);
        } else {
            if (i10 != 0) {
                this.f11945p.f11946x0 ^= Pack.littleEndianToLong(bArr, 0, i10);
                Pack.longToLittleEndian(this.f11945p.f11946x0, bArr2, i11, i10);
            }
            this.f11945p.f11946x0 ^= pad(i10);
        }
        finishData(AEADBaseEngine.State.EncFinal);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    @Override // org.bouncycastle.crypto.engines.AsconBaseEngine
    public void setBytes(long j10, byte[] bArr, int i10) {
        Pack.longToLittleEndian(j10, bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void init(byte[] bArr, byte[] bArr2) {
        this.K0 = Pack.littleEndianToLong(bArr, 0);
        this.K1 = Pack.littleEndianToLong(bArr, 8);
        this.N0 = Pack.littleEndianToLong(bArr2, 0);
        this.N1 = Pack.littleEndianToLong(bArr2, 8);
    }
}
