package org.bouncycastle.crypto.macs;

import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public class SipHash128 extends SipHash {
    public SipHash128() {
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i10) {
        this.f12018m = ((this.f12018m >>> ((7 - this.wordPos) << 3)) >>> 8) | ((((this.wordCount << 3) + r2) & 255) << 56);
        processMessageWord();
        this.f12021v2 ^= 238;
        applySipRounds(this.f12015d);
        long j10 = this.f12019v0;
        long j11 = this.f12020v1;
        long j12 = ((j10 ^ j11) ^ this.f12021v2) ^ this.f12022v3;
        this.f12020v1 = j11 ^ 221;
        applySipRounds(this.f12015d);
        long j13 = ((this.f12019v0 ^ this.f12020v1) ^ this.f12021v2) ^ this.f12022v3;
        reset();
        Pack.longToLittleEndian(j12, bArr, i10);
        Pack.longToLittleEndian(j13, bArr, i10 + 8);
        return 16;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash128-" + this.f12014c + "-" + this.f12015d;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public void reset() {
        super.reset();
        this.f12020v1 ^= 238;
    }

    public SipHash128(int i10, int i11) {
        super(i10, i11);
    }

    @Override // org.bouncycastle.crypto.macs.SipHash
    public long doFinal() {
        throw new UnsupportedOperationException("doFinal() is not supported");
    }
}
