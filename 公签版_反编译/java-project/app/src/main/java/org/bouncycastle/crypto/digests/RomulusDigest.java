package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.digests.BufferBaseDigest;
import org.bouncycastle.crypto.engines.RomulusEngine;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class RomulusDigest extends BufferBaseDigest {

    /* renamed from: g, reason: collision with root package name */
    private final byte[] f11916g;

    /* renamed from: h, reason: collision with root package name */
    private final byte[] f11917h;

    public static class Friend {
        private static final Friend INSTANCE = new Friend();

        private Friend() {
        }
    }

    public RomulusDigest() {
        super(BufferBaseDigest.ProcessingBufferType.Immediate, 32);
        this.f11917h = new byte[16];
        this.f11916g = new byte[16];
        this.DigestSize = 32;
        this.algorithmName = "Romulus Hash";
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int i10) {
        return super.doFinal(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest
    public void finish(byte[] bArr, int i10) {
        Arrays.fill(this.m_buf, this.m_bufPos, 31, (byte) 0);
        this.m_buf[31] = (byte) (this.m_bufPos & 31);
        byte[] bArr2 = this.f11917h;
        bArr2[0] = (byte) (bArr2[0] ^ 2);
        RomulusEngine.hirose_128_128_256(Friend.INSTANCE, this.f11917h, this.f11916g, this.m_buf, 0);
        System.arraycopy(this.f11917h, 0, bArr, i10, 16);
        System.arraycopy(this.f11916g, 0, bArr, i10 + 16, 16);
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
        RomulusEngine.hirose_128_128_256(Friend.INSTANCE, this.f11917h, this.f11916g, bArr, i10);
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        Arrays.clear(this.f11917h);
        Arrays.clear(this.f11916g);
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
