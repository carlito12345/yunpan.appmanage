package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;
import ta.q;

/* loaded from: classes3.dex */
public class SHA1Digest extends GeneralDigest implements EncodableDigest {
    private static final int DIGEST_LENGTH = 20;
    private static final int Y1 = 1518500249;
    private static final int Y2 = 1859775393;
    private static final int Y3 = -1894007588;
    private static final int Y4 = -899497514;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int H5;
    private int[] X;
    private int xOff;

    public SHA1Digest() {
        this(CryptoServicePurpose.ANY);
    }

    private void copyIn(SHA1Digest sHA1Digest) {
        this.H1 = sHA1Digest.H1;
        this.H2 = sHA1Digest.H2;
        this.H3 = sHA1Digest.H3;
        this.H4 = sHA1Digest.H4;
        this.H5 = sHA1Digest.H5;
        int[] iArr = sHA1Digest.X;
        System.arraycopy(iArr, 0, this.X, 0, iArr.length);
        this.xOff = sHA1Digest.xOff;
    }

    private int f(int i10, int i11, int i12) {
        return ((i10 ^ (-1)) & i12) | (i11 & i10);
    }

    private int g(int i10, int i11, int i12) {
        return (i10 & (i11 | i12)) | (i11 & i12);
    }

    private int h(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA1Digest(this);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, 128, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i10) {
        finish();
        Pack.intToBigEndian(this.H1, bArr, i10);
        Pack.intToBigEndian(this.H2, bArr, i10 + 4);
        Pack.intToBigEndian(this.H3, bArr, i10 + 8);
        Pack.intToBigEndian(this.H4, bArr, i10 + 12);
        Pack.intToBigEndian(this.H5, bArr, i10 + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return McElieceCCA2KeyGenParameterSpec.SHA1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        int i10 = this.xOff * 4;
        byte[] bArr = new byte[i10 + 41];
        super.populateState(bArr);
        Pack.intToBigEndian(this.H1, bArr, 16);
        Pack.intToBigEndian(this.H2, bArr, 20);
        Pack.intToBigEndian(this.H3, bArr, 24);
        Pack.intToBigEndian(this.H4, bArr, 28);
        Pack.intToBigEndian(this.H5, bArr, 32);
        Pack.intToBigEndian(this.xOff, bArr, 36);
        for (int i11 = 0; i11 != this.xOff; i11++) {
            Pack.intToBigEndian(this.X[i11], bArr, (i11 * 4) + 40);
        }
        bArr[i10 + 40] = (byte) this.purpose.ordinal();
        return bArr;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        for (int i10 = 16; i10 < 80; i10++) {
            int[] iArr = this.X;
            int i11 = ((iArr[i10 - 3] ^ iArr[i10 - 8]) ^ iArr[i10 - 14]) ^ iArr[i10 - 16];
            iArr[i10] = (i11 >>> 31) | (i11 << 1);
        }
        int iX = this.H1;
        int iX2 = this.H2;
        int i12 = this.H3;
        int i13 = this.H4;
        int i14 = this.H5;
        int i15 = 0;
        for (int i16 = 0; i16 < 4; i16++) {
            int iX3 = q.x(((iX << 5) | (iX >>> 27)) + f(iX2, i12, i13), this.X[i15], Y1, i14);
            int i17 = (iX2 >>> 2) | (iX2 << 30);
            int iX4 = q.x(((iX3 << 5) | (iX3 >>> 27)) + f(iX, i17, i12), this.X[i15 + 1], Y1, i13);
            int i18 = (iX >>> 2) | (iX << 30);
            int iX5 = q.x(((iX4 << 5) | (iX4 >>> 27)) + f(iX3, i18, i17), this.X[i15 + 2], Y1, i12);
            i14 = (iX3 >>> 2) | (iX3 << 30);
            int i19 = i15 + 4;
            iX2 = q.x(((iX5 << 5) | (iX5 >>> 27)) + f(iX4, i14, i18), this.X[i15 + 3], Y1, i17);
            i13 = (iX4 >>> 2) | (iX4 << 30);
            i15 += 5;
            iX = q.x(((iX2 << 5) | (iX2 >>> 27)) + f(iX5, i13, i14), this.X[i19], Y1, i18);
            i12 = (iX5 >>> 2) | (iX5 << 30);
        }
        for (int i20 = 0; i20 < 4; i20++) {
            int iX6 = q.x(((iX << 5) | (iX >>> 27)) + h(iX2, i12, i13), this.X[i15], Y2, i14);
            int i21 = (iX2 >>> 2) | (iX2 << 30);
            int iX7 = q.x(((iX6 << 5) | (iX6 >>> 27)) + h(iX, i21, i12), this.X[i15 + 1], Y2, i13);
            int i22 = (iX >>> 2) | (iX << 30);
            int iX8 = q.x(((iX7 << 5) | (iX7 >>> 27)) + h(iX6, i22, i21), this.X[i15 + 2], Y2, i12);
            i14 = (iX6 >>> 2) | (iX6 << 30);
            int i23 = i15 + 4;
            iX2 = q.x(((iX8 << 5) | (iX8 >>> 27)) + h(iX7, i14, i22), this.X[i15 + 3], Y2, i21);
            i13 = (iX7 >>> 2) | (iX7 << 30);
            i15 += 5;
            iX = q.x(((iX2 << 5) | (iX2 >>> 27)) + h(iX8, i13, i14), this.X[i23], Y2, i22);
            i12 = (iX8 >>> 2) | (iX8 << 30);
        }
        for (int i24 = 0; i24 < 4; i24++) {
            int iX9 = q.x(((iX << 5) | (iX >>> 27)) + g(iX2, i12, i13), this.X[i15], Y3, i14);
            int i25 = (iX2 >>> 2) | (iX2 << 30);
            int iX10 = q.x(((iX9 << 5) | (iX9 >>> 27)) + g(iX, i25, i12), this.X[i15 + 1], Y3, i13);
            int i26 = (iX >>> 2) | (iX << 30);
            int iX11 = q.x(((iX10 << 5) | (iX10 >>> 27)) + g(iX9, i26, i25), this.X[i15 + 2], Y3, i12);
            i14 = (iX9 >>> 2) | (iX9 << 30);
            int i27 = i15 + 4;
            iX2 = q.x(((iX11 << 5) | (iX11 >>> 27)) + g(iX10, i14, i26), this.X[i15 + 3], Y3, i25);
            i13 = (iX10 >>> 2) | (iX10 << 30);
            i15 += 5;
            iX = q.x(((iX2 << 5) | (iX2 >>> 27)) + g(iX11, i13, i14), this.X[i27], Y3, i26);
            i12 = (iX11 >>> 2) | (iX11 << 30);
        }
        for (int i28 = 0; i28 <= 3; i28++) {
            int iX12 = q.x(((iX << 5) | (iX >>> 27)) + h(iX2, i12, i13), this.X[i15], Y4, i14);
            int i29 = (iX2 >>> 2) | (iX2 << 30);
            int iX13 = q.x(((iX12 << 5) | (iX12 >>> 27)) + h(iX, i29, i12), this.X[i15 + 1], Y4, i13);
            int i30 = (iX >>> 2) | (iX << 30);
            int iX14 = q.x(((iX13 << 5) | (iX13 >>> 27)) + h(iX12, i30, i29), this.X[i15 + 2], Y4, i12);
            i14 = (iX12 >>> 2) | (iX12 << 30);
            int i31 = i15 + 4;
            iX2 = q.x(((iX14 << 5) | (iX14 >>> 27)) + h(iX13, i14, i30), this.X[i15 + 3], Y4, i29);
            i13 = (iX13 >>> 2) | (iX13 << 30);
            i15 += 5;
            iX = q.x(((iX2 << 5) | (iX2 >>> 27)) + h(iX14, i13, i14), this.X[i31], Y4, i30);
            i12 = (iX14 >>> 2) | (iX14 << 30);
        }
        this.H1 += iX;
        this.H2 += iX2;
        this.H3 += i12;
        this.H4 += i13;
        this.H5 += i14;
        this.xOff = 0;
        for (int i32 = 0; i32 < 16; i32++) {
            this.X[i32] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processLength(long j10) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.X;
        iArr[14] = (int) (j10 >>> 32);
        iArr[15] = (int) j10;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int i10) {
        this.X[this.xOff] = Pack.bigEndianToInt(bArr, i10);
        int i11 = this.xOff + 1;
        this.xOff = i11;
        if (i11 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.H1 = 1732584193;
        this.H2 = -271733879;
        this.H3 = -1732584194;
        this.H4 = 271733878;
        this.H5 = -1009589776;
        this.xOff = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.X;
            if (i10 == iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    public SHA1Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.X = new int[80];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        reset();
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        SHA1Digest sHA1Digest = (SHA1Digest) memoable;
        super.copyIn((GeneralDigest) sHA1Digest);
        copyIn(sHA1Digest);
    }

    public SHA1Digest(SHA1Digest sHA1Digest) {
        super(sHA1Digest);
        this.X = new int[80];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        copyIn(sHA1Digest);
    }

    public SHA1Digest(byte[] bArr) {
        super(bArr);
        this.X = new int[80];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        this.H1 = Pack.bigEndianToInt(bArr, 16);
        this.H2 = Pack.bigEndianToInt(bArr, 20);
        this.H3 = Pack.bigEndianToInt(bArr, 24);
        this.H4 = Pack.bigEndianToInt(bArr, 28);
        this.H5 = Pack.bigEndianToInt(bArr, 32);
        this.xOff = Pack.bigEndianToInt(bArr, 36);
        for (int i10 = 0; i10 != this.xOff; i10++) {
            this.X[i10] = Pack.bigEndianToInt(bArr, (i10 * 4) + 40);
        }
    }
}
