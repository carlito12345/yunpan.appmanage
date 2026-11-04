package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.Xof;

/* loaded from: classes3.dex */
abstract class AsconXofBase extends AsconBaseDigest implements Xof {
    private final byte[] buffer = new byte[this.BlockSize];
    private int bytesInBuffer;
    private boolean m_squeezing;

    private void ensureNoAbsorbWhileSqueezing(boolean z) {
        if (z) {
            throw new IllegalStateException("attempt to absorb while squeezing");
        }
    }

    public int doFinal(byte[] bArr, int i10, int i11) {
        int iDoOutput = doOutput(bArr, i10, i11);
        reset();
        return iDoOutput;
    }

    public int doOutput(byte[] bArr, int i10, int i11) {
        int iHash;
        ensureSufficientOutputBuffer(bArr, i10, i11);
        int i12 = this.bytesInBuffer;
        if (i12 != 0) {
            int i13 = this.BlockSize - i12;
            iHash = Math.min(i11, i12);
            System.arraycopy(this.buffer, i13, bArr, i10, iHash);
            this.bytesInBuffer -= iHash;
        } else {
            iHash = 0;
        }
        int i14 = i11 - iHash;
        int i15 = this.BlockSize;
        if (i14 >= i15) {
            iHash += hash(bArr, i10 + iHash, i14 - (i14 % i15));
        }
        if (iHash >= i11) {
            return iHash;
        }
        hash(this.buffer, 0, this.BlockSize);
        int i16 = i11 - iHash;
        System.arraycopy(this.buffer, 0, bArr, i10 + iHash, i16);
        this.bytesInBuffer = this.buffer.length - i16;
        return iHash + i16;
    }

    @Override // org.bouncycastle.crypto.digests.AsconBaseDigest
    public void padAndAbsorb() {
        if (this.m_squeezing) {
            this.f11898p.p(this.ASCON_PB_ROUNDS);
        } else {
            this.m_squeezing = true;
            super.padAndAbsorb();
        }
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        this.m_squeezing = false;
        this.bytesInBuffer = 0;
        super.reset();
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        ensureNoAbsorbWhileSqueezing(this.m_squeezing);
        super.update(b10);
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i10, int i11) {
        ensureNoAbsorbWhileSqueezing(this.m_squeezing);
        super.update(bArr, i10, i11);
    }
}
