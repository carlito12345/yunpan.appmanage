package org.bouncycastle.pqc.legacy.crypto.gmss.util;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class WinternitzOTSVerify {
    private int mdsize;
    private Digest messDigestOTS;

    /* renamed from: w, reason: collision with root package name */
    private int f12454w;

    public WinternitzOTSVerify(Digest digest, int i10) {
        this.f12454w = i10;
        this.messDigestOTS = digest;
        this.mdsize = digest.getDigestSize();
    }

    private void hashSignatureBlock(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (i11 < 1) {
            System.arraycopy(bArr, i10, bArr2, i12, this.mdsize);
            return;
        }
        this.messDigestOTS.update(bArr, i10, this.mdsize);
        while (true) {
            this.messDigestOTS.doFinal(bArr2, i12);
            i11--;
            if (i11 <= 0) {
                return;
            } else {
                this.messDigestOTS.update(bArr2, i12, this.mdsize);
            }
        }
    }

    public byte[] Verify(byte[] bArr, byte[] bArr2) {
        int i10;
        int i11;
        WinternitzOTSVerify winternitzOTSVerify = this;
        int i12 = winternitzOTSVerify.mdsize;
        byte[] bArr3 = new byte[i12];
        winternitzOTSVerify.messDigestOTS.update(bArr, 0, bArr.length);
        winternitzOTSVerify.messDigestOTS.doFinal(bArr3, 0);
        int i13 = winternitzOTSVerify.mdsize << 3;
        int i14 = winternitzOTSVerify.f12454w;
        int i15 = ((i14 - 1) + i13) / i14;
        int log = winternitzOTSVerify.getLog((i15 << i14) + 1);
        int i16 = winternitzOTSVerify.f12454w;
        int i17 = winternitzOTSVerify.mdsize;
        int i18 = i17 * ((((log + i16) - 1) / i16) + i15);
        if (i18 != bArr2.length) {
            return null;
        }
        byte[] bArr4 = new byte[i18];
        int i19 = 8;
        if (8 % i16 == 0) {
            int i20 = 8 / i16;
            int i21 = (1 << i16) - 1;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            while (i24 < i12) {
                int i25 = i23;
                int i26 = 0;
                while (i26 < i20) {
                    int i27 = bArr3[i24] & i21;
                    int i28 = i22 + i27;
                    int i29 = winternitzOTSVerify.mdsize;
                    int i30 = i24;
                    hashSignatureBlock(bArr2, i25 * i29, i21 - i27, bArr4, i25 * i29);
                    bArr3[i30] = (byte) (bArr3[i30] >>> winternitzOTSVerify.f12454w);
                    i25++;
                    i26++;
                    i22 = i28;
                    i24 = i30;
                    i20 = i20;
                }
                i24++;
                i23 = i25;
            }
            int i31 = i23;
            int i32 = (i15 << winternitzOTSVerify.f12454w) - i22;
            int i33 = 0;
            while (i33 < log) {
                int i34 = winternitzOTSVerify.mdsize;
                hashSignatureBlock(bArr2, i31 * i34, i21 - (i32 & i21), bArr4, i31 * i34);
                int i35 = winternitzOTSVerify.f12454w;
                i32 >>>= i35;
                i31++;
                i33 += i35;
            }
        } else {
            long j10 = 0;
            if (i16 >= 8) {
                if (i16 < 57) {
                    int i36 = (i17 << 3) - i16;
                    int i37 = (1 << i16) - 1;
                    byte[] bArr5 = new byte[i17];
                    int i38 = 0;
                    int i39 = 0;
                    int i40 = 0;
                    while (i38 <= i36) {
                        int i41 = i38 >>> 3;
                        int i42 = i38 % 8;
                        int i43 = i36;
                        int i44 = i38 + winternitzOTSVerify.f12454w;
                        int i45 = (i44 + 7) >>> 3;
                        long j11 = 0;
                        int i46 = 0;
                        while (i41 < i45) {
                            j11 ^= (bArr3[i41] & 255) << (i46 << 3);
                            i46++;
                            i41++;
                            i45 = i45;
                            i44 = i44;
                        }
                        int i47 = i44;
                        long j12 = j11 >>> i42;
                        int i48 = i18;
                        long j13 = i37;
                        long j14 = j12 & j13;
                        int i49 = i15;
                        i39 = (int) (i39 + j14);
                        int i50 = winternitzOTSVerify.mdsize;
                        System.arraycopy(bArr2, i40 * i50, bArr5, 0, i50);
                        for (long j15 = j14; j15 < j13; j15++) {
                            winternitzOTSVerify.messDigestOTS.update(bArr5, 0, i17);
                            winternitzOTSVerify.messDigestOTS.doFinal(bArr5, 0);
                        }
                        int i51 = winternitzOTSVerify.mdsize;
                        System.arraycopy(bArr5, 0, bArr4, i40 * i51, i51);
                        i40++;
                        i36 = i43;
                        i15 = i49;
                        i18 = i48;
                        i38 = i47;
                    }
                    int i52 = i15;
                    i10 = i18;
                    int i53 = i38 >>> 3;
                    if (i53 < winternitzOTSVerify.mdsize) {
                        int i54 = i38 % 8;
                        int i55 = 0;
                        while (true) {
                            i11 = winternitzOTSVerify.mdsize;
                            if (i53 >= i11) {
                                break;
                            }
                            j10 ^= (bArr3[i53] & 255) << (i55 << 3);
                            i55++;
                            i53++;
                        }
                        long j16 = i37;
                        long j17 = (j10 >>> i54) & j16;
                        i39 = (int) (i39 + j17);
                        System.arraycopy(bArr2, i40 * i11, bArr5, 0, i11);
                        while (j17 < j16) {
                            winternitzOTSVerify.messDigestOTS.update(bArr5, 0, i17);
                            winternitzOTSVerify.messDigestOTS.doFinal(bArr5, 0);
                            j17++;
                        }
                        int i56 = winternitzOTSVerify.mdsize;
                        System.arraycopy(bArr5, 0, bArr4, i40 * i56, i56);
                        i40++;
                    }
                    int i57 = (i52 << winternitzOTSVerify.f12454w) - i39;
                    int i58 = 0;
                    while (i58 < log) {
                        int i59 = winternitzOTSVerify.mdsize;
                        System.arraycopy(bArr2, i40 * i59, bArr5, 0, i59);
                        for (long j18 = i57 & i37; j18 < i37; j18++) {
                            winternitzOTSVerify.messDigestOTS.update(bArr5, 0, i17);
                            winternitzOTSVerify.messDigestOTS.doFinal(bArr5, 0);
                        }
                        int i60 = winternitzOTSVerify.mdsize;
                        System.arraycopy(bArr5, 0, bArr4, i40 * i60, i60);
                        int i61 = winternitzOTSVerify.f12454w;
                        i57 >>>= i61;
                        i40++;
                        i58 += i61;
                    }
                }
                winternitzOTSVerify.messDigestOTS.update(bArr4, 0, i10);
                byte[] bArr6 = new byte[winternitzOTSVerify.mdsize];
                winternitzOTSVerify.messDigestOTS.doFinal(bArr6, 0);
                return bArr6;
            }
            int i62 = i17 / i16;
            int i63 = (1 << i16) - 1;
            int i64 = 0;
            int i65 = 0;
            int i66 = 0;
            int i67 = 0;
            while (i67 < i62) {
                int i68 = i64;
                long j19 = 0;
                int i69 = 0;
                while (i69 < winternitzOTSVerify.f12454w) {
                    j19 ^= (bArr3[i68] & 255) << (i69 << 3);
                    i68++;
                    i69++;
                    log = log;
                }
                int i70 = log;
                int i71 = i66;
                int i72 = 0;
                while (i72 < i19) {
                    int i73 = (int) (j19 & i63);
                    int i74 = i65 + i73;
                    int i75 = this.mdsize;
                    winternitzOTSVerify = this;
                    hashSignatureBlock(bArr2, i71 * i75, i63 - i73, bArr4, i71 * i75);
                    j19 >>>= winternitzOTSVerify.f12454w;
                    i71++;
                    i72++;
                    i63 = i63;
                    i67 = i67;
                    i65 = i74;
                    i19 = 8;
                }
                i67++;
                i66 = i71;
                i64 = i68;
                log = i70;
                i19 = 8;
            }
            int i76 = log;
            int i77 = i63;
            int i78 = winternitzOTSVerify.mdsize % winternitzOTSVerify.f12454w;
            int i79 = 0;
            while (i79 < i78) {
                j10 ^= (bArr3[i64] & 255) << (i79 << 3);
                i64++;
                i79++;
                i65 = i65;
                i66 = i66;
            }
            int i80 = i66;
            int i81 = i78 << 3;
            int i82 = 0;
            while (i82 < i81) {
                int i83 = (int) (j10 & i77);
                int i84 = i65 + i83;
                int i85 = winternitzOTSVerify.mdsize;
                hashSignatureBlock(bArr2, i80 * i85, i77 - i83, bArr4, i80 * i85);
                int i86 = winternitzOTSVerify.f12454w;
                j10 >>>= i86;
                i80++;
                i82 += i86;
                i65 = i84;
            }
            int i87 = (i15 << winternitzOTSVerify.f12454w) - i65;
            int i88 = 0;
            while (i88 < i76) {
                int i89 = winternitzOTSVerify.mdsize;
                hashSignatureBlock(bArr2, i80 * i89, i77 - (i87 & i77), bArr4, i80 * i89);
                int i90 = winternitzOTSVerify.f12454w;
                i87 >>>= i90;
                i80++;
                i88 += i90;
            }
        }
        i10 = i18;
        winternitzOTSVerify.messDigestOTS.update(bArr4, 0, i10);
        byte[] bArr62 = new byte[winternitzOTSVerify.mdsize];
        winternitzOTSVerify.messDigestOTS.doFinal(bArr62, 0);
        return bArr62;
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

    public int getSignatureLength() {
        int digestSize = this.messDigestOTS.getDigestSize();
        int i10 = this.f12454w;
        int i11 = ((i10 - 1) + (digestSize << 3)) / i10;
        int log = getLog((i11 << i10) + 1);
        return ((((log + r2) - 1) / this.f12454w) + i11) * digestSize;
    }
}
