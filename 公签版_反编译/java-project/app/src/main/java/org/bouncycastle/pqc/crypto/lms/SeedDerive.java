package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
class SeedDerive {
    private final byte[] I;
    private final Digest digest;

    /* renamed from: j, reason: collision with root package name */
    private int f12340j;
    private final byte[] masterSeed;

    /* renamed from: q, reason: collision with root package name */
    private int f12341q;

    public SeedDerive(byte[] bArr, byte[] bArr2, Digest digest) {
        this.I = bArr;
        this.masterSeed = bArr2;
        this.digest = digest;
    }

    public void deriveSeed(byte[] bArr, boolean z) {
        deriveSeed(bArr, z, 0);
    }

    public byte[] getI() {
        return this.I;
    }

    public int getJ() {
        return this.f12340j;
    }

    public byte[] getMasterSeed() {
        return this.masterSeed;
    }

    public int getQ() {
        return this.f12341q;
    }

    public void setJ(int i10) {
        this.f12340j = i10;
    }

    public void setQ(int i10) {
        this.f12341q = i10;
    }

    public void deriveSeed(byte[] bArr, boolean z, int i10) {
        deriveSeed(bArr, i10);
        if (z) {
            this.f12340j++;
        }
    }

    public byte[] deriveSeed(byte[] bArr, int i10) {
        if (bArr.length - i10 < this.digest.getDigestSize()) {
            throw new IllegalArgumentException("target length is less than digest size.");
        }
        Digest digest = this.digest;
        byte[] bArr2 = this.I;
        digest.update(bArr2, 0, bArr2.length);
        this.digest.update((byte) (this.f12341q >>> 24));
        this.digest.update((byte) (this.f12341q >>> 16));
        this.digest.update((byte) (this.f12341q >>> 8));
        this.digest.update((byte) this.f12341q);
        this.digest.update((byte) (this.f12340j >>> 8));
        this.digest.update((byte) this.f12340j);
        this.digest.update((byte) -1);
        Digest digest2 = this.digest;
        byte[] bArr3 = this.masterSeed;
        digest2.update(bArr3, 0, bArr3.length);
        this.digest.doFinal(bArr, i10);
        return bArr;
    }
}
