package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.digests.AsconBaseDigest;
import org.bouncycastle.crypto.digests.BufferBaseDigest;
import org.bouncycastle.crypto.engines.AsconPermutationFriend;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public class ISAPDigest extends BufferBaseDigest {

    /* renamed from: p, reason: collision with root package name */
    private final AsconPermutationFriend.AsconPermutation f11915p;

    public static class Friend {
        private static final Friend INSTANCE = new Friend();

        private Friend() {
        }

        public static Friend getFriend(AsconBaseDigest.Friend friend) {
            if (friend != null) {
                return INSTANCE;
            }
            throw new NullPointerException("This method is only for use by AsconBaseDigest");
        }
    }

    public ISAPDigest() {
        super(BufferBaseDigest.ProcessingBufferType.Immediate, 8);
        this.f11915p = AsconPermutationFriend.getAsconPermutation(Friend.INSTANCE);
        this.DigestSize = 32;
        this.algorithmName = "ISAP Hash";
        reset();
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int i10) {
        return super.doFinal(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest
    public void finish(byte[] bArr, int i10) {
        this.f11915p.f11946x0 ^= 128 << ((7 - this.m_bufPos) << 3);
        while (true) {
            int i11 = this.m_bufPos;
            if (i11 <= 0) {
                break;
            }
            AsconPermutationFriend.AsconPermutation asconPermutation = this.f11915p;
            long j10 = asconPermutation.f11946x0;
            byte[] bArr2 = this.m_buf;
            int i12 = i11 - 1;
            this.m_bufPos = i12;
            asconPermutation.f11946x0 = j10 ^ ((bArr2[i12] & 255) << ((7 - i12) << 3));
        }
        for (int i13 = 0; i13 < 4; i13++) {
            this.f11915p.p(12);
            Pack.longToBigEndian(this.f11915p.f11946x0, bArr, i10);
            i10 += 8;
        }
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public /* bridge */ /* synthetic */ String getAlgorithmName() {
        return super.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.ExtendedDigest
    public /* bridge */ /* synthetic */ int getByteLength() {
        return super.getByteLength();
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public /* bridge */ /* synthetic */ int getDigestSize() {
        return super.getDigestSize();
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest
    public void processBytes(byte[] bArr, int i10) {
        AsconPermutationFriend.AsconPermutation asconPermutation = this.f11915p;
        asconPermutation.f11946x0 = Pack.bigEndianToLong(bArr, i10) ^ asconPermutation.f11946x0;
        this.f11915p.p(12);
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f11915p.set(-1255492011513352131L, -8380609354527731710L, -5437372128236807582L, 4834782570098516968L, 3787428097924915520L);
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public /* bridge */ /* synthetic */ void update(byte b10) {
        super.update(b10);
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public /* bridge */ /* synthetic */ void update(byte[] bArr, int i10, int i11) {
        super.update(bArr, i10, i11);
    }
}
