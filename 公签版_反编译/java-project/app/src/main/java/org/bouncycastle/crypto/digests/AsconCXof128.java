package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.engines.AsconPermutationFriend;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public class AsconCXof128 extends AsconXofBase {

    /* renamed from: z0, reason: collision with root package name */
    private final long f11899z0;

    /* renamed from: z1, reason: collision with root package name */
    private final long f11900z1;

    /* renamed from: z2, reason: collision with root package name */
    private final long f11901z2;

    /* renamed from: z3, reason: collision with root package name */
    private final long f11902z3;
    private final long z4;

    public AsconCXof128() {
        this(new byte[0], 0, 0);
    }

    private void initState(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            this.f11898p.set(5768210384618244584L, 6623958265790276749L, 4252419465292010770L, 1238191464582506891L, 56353695744608240L);
        } else {
            this.f11898p.set(7445901275803737603L, 4886737088792722364L, -1616759365661982283L, 3076320316797452470L, -8124743304765850554L);
            AsconPermutationFriend.AsconPermutation asconPermutation = this.f11898p;
            asconPermutation.f11946x0 ^= i11 << 3;
            asconPermutation.p(12);
            update(bArr, i10, i11);
            padAndAbsorb();
        }
        super.reset();
    }

    @Override // org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int i10) {
        return super.doFinal(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.digests.AsconXofBase, org.bouncycastle.crypto.Xof
    public /* bridge */ /* synthetic */ int doOutput(byte[] bArr, int i10, int i11) {
        return super.doOutput(bArr, i10, i11);
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

    @Override // org.bouncycastle.crypto.digests.AsconBaseDigest
    public long loadBytes(byte[] bArr, int i10) {
        return Pack.littleEndianToLong(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.digests.AsconBaseDigest
    public long pad(int i10) {
        return 1 << (i10 << 3);
    }

    @Override // org.bouncycastle.crypto.digests.AsconXofBase, org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f11898p.set(this.f11899z0, this.f11900z1, this.f11901z2, this.f11902z3, this.z4);
    }

    @Override // org.bouncycastle.crypto.digests.AsconBaseDigest
    public void setBytes(long j10, byte[] bArr, int i10) {
        Pack.longToLittleEndian(j10, bArr, i10);
    }

    @Override // org.bouncycastle.crypto.digests.AsconXofBase, org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public /* bridge */ /* synthetic */ void update(byte b10) {
        super.update(b10);
    }

    public AsconCXof128(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.digests.AsconXofBase, org.bouncycastle.crypto.Xof
    public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int i10, int i11) {
        return super.doFinal(bArr, i10, i11);
    }

    @Override // org.bouncycastle.crypto.digests.AsconBaseDigest
    public long loadBytes(byte[] bArr, int i10, int i11) {
        return Pack.littleEndianToLong(bArr, i10, i11);
    }

    @Override // org.bouncycastle.crypto.digests.AsconBaseDigest
    public void setBytes(long j10, byte[] bArr, int i10, int i11) {
        Pack.longToLittleEndian(j10, bArr, i10, i11);
    }

    @Override // org.bouncycastle.crypto.digests.AsconXofBase, org.bouncycastle.crypto.digests.BufferBaseDigest, org.bouncycastle.crypto.Digest
    public /* bridge */ /* synthetic */ void update(byte[] bArr, int i10, int i11) {
        super.update(bArr, i10, i11);
    }

    public AsconCXof128(byte[] bArr, int i10, int i11) {
        this.algorithmName = "Ascon-CXOF128";
        ensureSufficientInputBuffer(bArr, i10, i11);
        if (i11 > 256) {
            throw new DataLengthException("customized string is too long");
        }
        initState(bArr, i10, i11);
        AsconPermutationFriend.AsconPermutation asconPermutation = this.f11898p;
        this.f11899z0 = asconPermutation.f11946x0;
        this.f11900z1 = asconPermutation.f11947x1;
        this.f11901z2 = asconPermutation.f11948x2;
        this.f11902z3 = asconPermutation.f11949x3;
        this.z4 = asconPermutation.f11950x4;
    }
}
