package org.bouncycastle.pqc.legacy.crypto.gmss.util;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class WinternitzOTSignature {
    private int checksumsize;
    private GMSSRandom gmssRandom;
    private int keysize;
    private int mdsize;
    private Digest messDigestOTS;
    private int messagesize;
    private byte[][] privateKeyOTS;

    /* renamed from: w, reason: collision with root package name */
    private int f12455w;

    public WinternitzOTSignature(byte[] bArr, Digest digest, int i10) {
        this.f12455w = i10;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        this.mdsize = this.messDigestOTS.getDigestSize();
        int i11 = (((r3 << 3) + i10) - 1) / i10;
        this.messagesize = i11;
        this.checksumsize = getLog((i11 << i10) + 1);
        int i12 = (((r3 + i10) - 1) / i10) + this.messagesize;
        this.keysize = i12;
        this.privateKeyOTS = new byte[i12][];
        int i13 = this.mdsize;
        byte[] bArr2 = new byte[i13];
        System.arraycopy(bArr, 0, bArr2, 0, i13);
        for (int i14 = 0; i14 < this.keysize; i14++) {
            this.privateKeyOTS[i14] = this.gmssRandom.nextSeed(bArr2);
        }
    }

    private void hashPrivateKeyBlock(int i10, int i11, byte[] bArr, int i12) {
        if (i11 < 1) {
            System.arraycopy(this.privateKeyOTS[i10], 0, bArr, i12, this.mdsize);
            return;
        }
        this.messDigestOTS.update(this.privateKeyOTS[i10], 0, this.mdsize);
        while (true) {
            this.messDigestOTS.doFinal(bArr, i12);
            i11--;
            if (i11 <= 0) {
                return;
            } else {
                this.messDigestOTS.update(bArr, i12, this.mdsize);
            }
        }
    }

    public int getLog(int i10) {
        int i11 = 1;
        int i12 = 2;
        while (i12 < i10) {
            i12 <<= 1;
            i11++;
        }
        return i11;
    }

    public byte[][] getPrivateKey() {
        return this.privateKeyOTS;
    }

    public byte[] getPublicKey() {
        int i10 = this.keysize * this.mdsize;
        byte[] bArr = new byte[i10];
        int i11 = (1 << this.f12455w) - 1;
        int i12 = 0;
        for (int i13 = 0; i13 < this.keysize; i13++) {
            hashPrivateKeyBlock(i13, i11, bArr, i12);
            i12 += this.mdsize;
        }
        this.messDigestOTS.update(bArr, 0, i10);
        byte[] bArr2 = new byte[this.mdsize];
        this.messDigestOTS.doFinal(bArr2, 0);
        return bArr2;
    }

    public byte[] getSignature(byte[] bArr) {
        int i10;
        int i11 = this.keysize;
        int i12 = this.mdsize;
        byte[] bArr2 = new byte[i11 * i12];
        byte[] bArr3 = new byte[i12];
        int i13 = 0;
        this.messDigestOTS.update(bArr, 0, bArr.length);
        this.messDigestOTS.doFinal(bArr3, 0);
        int i14 = this.f12455w;
        int i15 = 8;
        if (8 % i14 == 0) {
            int i16 = 8 / i14;
            int i17 = (1 << i14) - 1;
            int i18 = 0;
            int i19 = 0;
            for (int i20 = 0; i20 < i12; i20++) {
                for (int i21 = 0; i21 < i16; i21++) {
                    int i22 = bArr3[i20] & i17;
                    i18 += i22;
                    hashPrivateKeyBlock(i19, i22, bArr2, this.mdsize * i19);
                    bArr3[i20] = (byte) (bArr3[i20] >>> this.f12455w);
                    i19++;
                }
            }
            int i23 = (this.messagesize << this.f12455w) - i18;
            while (i13 < this.checksumsize) {
                hashPrivateKeyBlock(i19, i23 & i17, bArr2, this.mdsize * i19);
                int i24 = this.f12455w;
                i23 >>>= i24;
                i19++;
                i13 += i24;
            }
        } else if (i14 < 8) {
            int i25 = this.mdsize / i14;
            int i26 = (1 << i14) - 1;
            int i27 = 0;
            int i28 = 0;
            int i29 = 0;
            int i30 = 0;
            while (i27 < i25) {
                long j10 = 0;
                for (int i31 = 0; i31 < this.f12455w; i31++) {
                    j10 ^= (bArr3[i28] & 255) << (i31 << 3);
                    i28++;
                }
                long j11 = j10;
                int i32 = 0;
                while (i32 < i15) {
                    int i33 = ((int) j11) & i26;
                    i30 += i33;
                    hashPrivateKeyBlock(i29, i33, bArr2, this.mdsize * i29);
                    j11 >>>= this.f12455w;
                    i29++;
                    i32++;
                    i15 = 8;
                }
                i27++;
                i15 = 8;
            }
            int i34 = this.mdsize % this.f12455w;
            long j12 = 0;
            for (int i35 = 0; i35 < i34; i35++) {
                j12 ^= (bArr3[i28] & 255) << (i35 << 3);
                i28++;
            }
            int i36 = i34 << 3;
            int i37 = 0;
            while (i37 < i36) {
                int i38 = ((int) j12) & i26;
                i30 += i38;
                hashPrivateKeyBlock(i29, i38, bArr2, this.mdsize * i29);
                int i39 = this.f12455w;
                j12 >>>= i39;
                i29++;
                i37 += i39;
            }
            int i40 = (this.messagesize << this.f12455w) - i30;
            while (i13 < this.checksumsize) {
                hashPrivateKeyBlock(i29, i40 & i26, bArr2, this.mdsize * i29);
                int i41 = this.f12455w;
                i40 >>>= i41;
                i29++;
                i13 += i41;
            }
        } else if (i14 < 57) {
            int i42 = this.mdsize;
            int i43 = (i42 << 3) - i14;
            int i44 = (1 << i14) - 1;
            byte[] bArr4 = new byte[i42];
            int i45 = 0;
            int i46 = 0;
            int i47 = 0;
            while (i45 <= i43) {
                int i48 = i45 >>> 3;
                int i49 = i45 % 8;
                i45 += this.f12455w;
                int i50 = 0;
                long j13 = 0;
                while (i48 < ((i45 + 7) >>> 3)) {
                    j13 ^= (bArr3[i48] & 255) << (i50 << 3);
                    i50++;
                    i48++;
                    bArr3 = bArr3;
                    i43 = i43;
                }
                byte[] bArr5 = bArr3;
                int i51 = i43;
                long j14 = (j13 >>> i49) & i44;
                i47 = (int) (i47 + j14);
                System.arraycopy(this.privateKeyOTS[i46], 0, bArr4, 0, this.mdsize);
                while (j14 > 0) {
                    this.messDigestOTS.update(bArr4, 0, i42);
                    this.messDigestOTS.doFinal(bArr4, 0);
                    j14--;
                }
                int i52 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, i46 * i52, i52);
                i46++;
                bArr3 = bArr5;
                i43 = i51;
            }
            byte[] bArr6 = bArr3;
            int i53 = i45 >>> 3;
            if (i53 < this.mdsize) {
                int i54 = i45 % 8;
                int i55 = 0;
                long j15 = 0;
                while (true) {
                    i10 = this.mdsize;
                    if (i53 >= i10) {
                        break;
                    }
                    j15 ^= (bArr6[i53] & 255) << (i55 << 3);
                    i55++;
                    i53++;
                }
                long j16 = (j15 >>> i54) & i44;
                i47 = (int) (i47 + j16);
                System.arraycopy(this.privateKeyOTS[i46], 0, bArr4, 0, i10);
                while (j16 > 0) {
                    this.messDigestOTS.update(bArr4, 0, i42);
                    this.messDigestOTS.doFinal(bArr4, 0);
                    j16--;
                }
                int i56 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, i46 * i56, i56);
                i46++;
            }
            int i57 = (this.messagesize << this.f12455w) - i47;
            int i58 = 0;
            while (i58 < this.checksumsize) {
                System.arraycopy(this.privateKeyOTS[i46], 0, bArr4, 0, this.mdsize);
                for (long j17 = i57 & i44; j17 > 0; j17--) {
                    this.messDigestOTS.update(bArr4, 0, i42);
                    this.messDigestOTS.doFinal(bArr4, 0);
                }
                int i59 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, i46 * i59, i59);
                int i60 = this.f12455w;
                i57 >>>= i60;
                i46++;
                i58 += i60;
            }
        }
        return bArr2;
    }
}
