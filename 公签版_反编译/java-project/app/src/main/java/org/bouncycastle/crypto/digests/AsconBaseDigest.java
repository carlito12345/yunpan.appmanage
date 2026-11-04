package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.digests.BufferBaseDigest;
import org.bouncycastle.crypto.digests.ISAPDigest;
import org.bouncycastle.crypto.engines.AsconPermutationFriend;

/* loaded from: classes3.dex */
abstract class AsconBaseDigest extends BufferBaseDigest {
    protected int ASCON_PB_ROUNDS;

    /* renamed from: p, reason: collision with root package name */
    AsconPermutationFriend.AsconPermutation f11898p;

    public static class Friend {
        private static final Friend INSTANCE = new Friend();

        private Friend() {
        }
    }

    public AsconBaseDigest() {
        super(BufferBaseDigest.ProcessingBufferType.Immediate, 8);
        this.ASCON_PB_ROUNDS = 12;
        this.f11898p = AsconPermutationFriend.getAsconPermutation(ISAPDigest.Friend.getFriend(Friend.INSTANCE));
        this.DigestSize = 32;
    }

    public void ensureSufficientOutputBuffer(byte[] bArr, int i10, int i11) {
        if (i10 + i11 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest
    public void finish(byte[] bArr, int i10) {
        padAndAbsorb();
        squeeze(bArr, i10, this.DigestSize);
    }

    public int hash(byte[] bArr, int i10, int i11) {
        ensureSufficientOutputBuffer(bArr, i10, i11);
        padAndAbsorb();
        squeeze(bArr, i10, i11);
        return i11;
    }

    public abstract long loadBytes(byte[] bArr, int i10);

    public abstract long loadBytes(byte[] bArr, int i10, int i11);

    public abstract long pad(int i10);

    public void padAndAbsorb() {
        this.f11898p.f11946x0 ^= loadBytes(this.m_buf, 0, this.m_bufPos) ^ pad(this.m_bufPos);
        this.f11898p.p(12);
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest
    public void processBytes(byte[] bArr, int i10) {
        AsconPermutationFriend.AsconPermutation asconPermutation = this.f11898p;
        asconPermutation.f11946x0 = loadBytes(bArr, i10) ^ asconPermutation.f11946x0;
        this.f11898p.p(this.ASCON_PB_ROUNDS);
    }

    public abstract void setBytes(long j10, byte[] bArr, int i10);

    public abstract void setBytes(long j10, byte[] bArr, int i10, int i11);

    public void squeeze(byte[] bArr, int i10, int i11) {
        int i12 = i10;
        int i13 = i11;
        while (i13 > this.BlockSize) {
            setBytes(this.f11898p.f11946x0, bArr, i12);
            this.f11898p.p(this.ASCON_PB_ROUNDS);
            int i14 = this.BlockSize;
            i12 += i14;
            i13 -= i14;
        }
        setBytes(this.f11898p.f11946x0, bArr, i12, i13);
    }
}
