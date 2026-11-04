package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.engines.AEADBaseEngine;
import org.bouncycastle.crypto.engines.AsconPermutationFriend;

/* loaded from: classes3.dex */
abstract class AsconBaseEngine extends AEADBaseEngine {
    protected long ASCON_IV;
    protected long K0;
    protected long K1;
    protected long N0;
    protected long N1;
    protected long dsep;
    protected int nr;

    /* renamed from: p, reason: collision with root package name */
    AsconPermutationFriend.AsconPermutation f11945p = new AsconPermutationFriend.AsconPermutation();

    public abstract void ascon_aeadinit();

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void finishAAD(AEADBaseEngine.State state, boolean z) {
        int i10 = this.m_state.ord;
        if (i10 == 2 || i10 == 6) {
            processFinalAAD();
            this.f11945p.p(this.nr);
        }
        this.f11945p.f11950x4 ^= this.dsep;
        this.m_aadPos = 0;
        this.m_state = state;
    }

    public abstract String getAlgorithmVersion();

    public abstract long loadBytes(byte[] bArr, int i10);

    public abstract long pad(int i10);

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferAAD(byte[] bArr, int i10) {
        this.f11945p.f11946x0 ^= loadBytes(bArr, i10);
        if (this.BlockSize == 16) {
            AsconPermutationFriend.AsconPermutation asconPermutation = this.f11945p;
            asconPermutation.f11947x1 = loadBytes(bArr, i10 + 8) ^ asconPermutation.f11947x1;
        }
        this.f11945p.p(this.nr);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        long jLoadBytes = loadBytes(bArr, i10);
        setBytes(this.f11945p.f11946x0 ^ jLoadBytes, bArr2, i11);
        this.f11945p.f11946x0 = jLoadBytes;
        if (this.BlockSize == 16) {
            long jLoadBytes2 = loadBytes(bArr, i10 + 8);
            setBytes(this.f11945p.f11947x1 ^ jLoadBytes2, bArr2, i11 + 8);
            this.f11945p.f11947x1 = jLoadBytes2;
        }
        this.f11945p.p(this.nr);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        this.f11945p.f11946x0 ^= loadBytes(bArr, i10);
        setBytes(this.f11945p.f11946x0, bArr2, i11);
        if (this.BlockSize == 16) {
            AsconPermutationFriend.AsconPermutation asconPermutation = this.f11945p;
            asconPermutation.f11947x1 = loadBytes(bArr, i10 + 8) ^ asconPermutation.f11947x1;
            setBytes(this.f11945p.f11947x1, bArr2, i11 + 8);
        }
        this.f11945p.p(this.nr);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalBlock(byte[] bArr, int i10) {
        if (this.forEncryption) {
            processFinalEncrypt(this.m_buf, this.m_bufPos, bArr, i10);
        } else {
            processFinalDecrypt(this.m_buf, this.m_bufPos, bArr, i10);
        }
        setBytes(this.f11945p.f11949x3, this.mac, 0);
        setBytes(this.f11945p.f11950x4, this.mac, 8);
    }

    public abstract void processFinalDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11);

    public abstract void processFinalEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11);

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void reset(boolean z) {
        super.reset(z);
        ascon_aeadinit();
    }

    public abstract void setBytes(long j10, byte[] bArr, int i10);
}
