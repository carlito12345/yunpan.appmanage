package org.bouncycastle.pqc.math.ntru;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet;

/* loaded from: classes3.dex */
public abstract class Polynomial {
    public short[] coeffs;
    protected NTRUParameterSet params;

    public Polynomial(NTRUParameterSet nTRUParameterSet) {
        this.coeffs = new short[nTRUParameterSet.n()];
        this.params = nTRUParameterSet;
    }

    public static short bothNegativeMask(short s8, short s10) {
        return (short) ((s8 & s10) >>> 15);
    }

    public static byte mod3(byte b10) {
        return (byte) ((b10 & 255) % 3);
    }

    public static int modQ(int i10, int i11) {
        return i10 % i11;
    }

    private void r2InvToRqInv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        int length = this.coeffs.length;
        for (int i10 = 0; i10 < length; i10++) {
            polynomial3.coeffs[i10] = (short) (-polynomial2.coeffs[i10]);
        }
        for (int i11 = 0; i11 < length; i11++) {
            this.coeffs[i11] = polynomial.coeffs[i11];
        }
        polynomial4.rqMul(this, polynomial3);
        short[] sArr = polynomial4.coeffs;
        sArr[0] = (short) (sArr[0] + 2);
        polynomial5.rqMul(polynomial4, this);
        polynomial4.rqMul(polynomial5, polynomial3);
        short[] sArr2 = polynomial4.coeffs;
        sArr2[0] = (short) (sArr2[0] + 2);
        rqMul(polynomial4, polynomial5);
        polynomial4.rqMul(this, polynomial3);
        short[] sArr3 = polynomial4.coeffs;
        sArr3[0] = (short) (sArr3[0] + 2);
        polynomial5.rqMul(polynomial4, this);
        polynomial4.rqMul(polynomial5, polynomial3);
        short[] sArr4 = polynomial4.coeffs;
        sArr4[0] = (short) (sArr4[0] + 2);
        rqMul(polynomial4, polynomial5);
    }

    public abstract void lift(Polynomial polynomial);

    public void mod3PhiN() {
        int iN = this.params.n();
        for (int i10 = 0; i10 < iN; i10++) {
            short[] sArr = this.coeffs;
            sArr[i10] = mod3((short) ((sArr[iN - 1] * 2) + sArr[i10]));
        }
    }

    public void modQPhiN() {
        int iN = this.params.n();
        for (int i10 = 0; i10 < iN; i10++) {
            short[] sArr = this.coeffs;
            sArr[i10] = (short) (sArr[i10] - sArr[iN - 1]);
        }
    }

    public void r2Inv(Polynomial polynomial) {
        r2Inv(polynomial, this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial());
    }

    public void rqInv(Polynomial polynomial) {
        rqInv(polynomial, this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial());
    }

    public void rqMul(Polynomial polynomial, Polynomial polynomial2) {
        int i10;
        int length = this.coeffs.length;
        int i11 = 0;
        while (i11 < length) {
            this.coeffs[i11] = 0;
            for (int i12 = 1; i12 < length - i11; i12++) {
                short[] sArr = this.coeffs;
                sArr[i11] = (short) ((polynomial.coeffs[i11 + i12] * polynomial2.coeffs[length - i12]) + sArr[i11]);
            }
            int i13 = 0;
            while (true) {
                i10 = i11 + 1;
                if (i13 < i10) {
                    short[] sArr2 = this.coeffs;
                    sArr2[i11] = (short) ((polynomial.coeffs[i11 - i13] * polynomial2.coeffs[i13]) + sArr2[i11]);
                    i13++;
                }
            }
            i11 = i10;
        }
    }

    public void rqSumZeroFromBytes(byte[] bArr) {
        int length = this.coeffs.length;
        sqFromBytes(bArr);
        int i10 = length - 1;
        this.coeffs[i10] = 0;
        for (int i11 = 0; i11 < this.params.packDegree(); i11++) {
            short[] sArr = this.coeffs;
            sArr[i10] = (short) (sArr[i10] - sArr[i11]);
        }
    }

    public byte[] rqSumZeroToBytes(int i10) {
        return sqToBytes(i10);
    }

    public void rqToS3(Polynomial polynomial) {
        int length = this.coeffs.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.coeffs[i10] = (short) modQ(polynomial.coeffs[i10] & HPKE.aead_EXPORT_ONLY, this.params.q());
            short sLogQ = (short) (this.coeffs[i10] >>> (this.params.logQ() - 1));
            short[] sArr = this.coeffs;
            sArr[i10] = (short) (sArr[i10] + (sLogQ << (1 - (this.params.logQ() & 1))));
        }
        mod3PhiN();
    }

    public void s3FromBytes(byte[] bArr) {
        int length = this.coeffs.length;
        for (int i10 = 0; i10 < this.params.packDegree() / 5; i10++) {
            byte b10 = bArr[i10];
            short[] sArr = this.coeffs;
            int i11 = i10 * 5;
            sArr[i11] = b10;
            int i12 = b10 & 255;
            sArr[i11 + 1] = (short) ((i12 * CarSettingID.Recv.BCM_RLS_AUTO_SRWIN_CLOSE_CFGST) >>> 9);
            sArr[i11 + 2] = (short) ((i12 * 57) >>> 9);
            sArr[i11 + 3] = (short) ((i12 * 19) >>> 9);
            sArr[i11 + 4] = (short) ((i12 * CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE) >>> 14);
        }
        if (this.params.packDegree() > (this.params.packDegree() / 5) * 5) {
            int iPackDegree = this.params.packDegree() / 5;
            byte b11 = bArr[iPackDegree];
            int i13 = 0;
            while (true) {
                int i14 = (iPackDegree * 5) + i13;
                if (i14 >= this.params.packDegree()) {
                    break;
                }
                this.coeffs[i14] = b11;
                b11 = (byte) (((b11 & 255) * CarSettingID.Recv.BCM_RLS_AUTO_SRWIN_CLOSE_CFGST) >> 9);
                i13++;
            }
        }
        this.coeffs[length - 1] = 0;
        mod3PhiN();
    }

    public void s3Inv(Polynomial polynomial) {
        s3Inv(polynomial, this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial());
    }

    public void s3Mul(Polynomial polynomial, Polynomial polynomial2) {
        rqMul(polynomial, polynomial2);
        mod3PhiN();
    }

    public void s3ToBytes(byte[] bArr, int i10) {
        int iPackDegree = this.params.packDegree();
        int i11 = iPackDegree - 5;
        int i12 = 0;
        while (i12 <= i11) {
            short[] sArr = this.coeffs;
            int i13 = sArr[i12] & 255;
            int i14 = (sArr[i12 + 1] & 255) * 3;
            int i15 = (sArr[i12 + 2] & 255) * 9;
            bArr[i10] = (byte) (i13 + i14 + i15 + ((sArr[i12 + 3] & 255) * 27) + ((sArr[i12 + 4] & 255) * 81));
            i12 += 5;
            i10++;
        }
        if (i12 >= iPackDegree) {
            return;
        }
        int i16 = iPackDegree - 1;
        int i17 = this.coeffs[i16] & 255;
        while (true) {
            i16--;
            if (i16 < i12) {
                bArr[i10] = (byte) i17;
                return;
            }
            i17 = (i17 * 3) + (this.coeffs[i16] & 255);
        }
    }

    public abstract void sqFromBytes(byte[] bArr);

    public void sqMul(Polynomial polynomial, Polynomial polynomial2) {
        rqMul(polynomial, polynomial2);
        modQPhiN();
    }

    public abstract byte[] sqToBytes(int i10);

    public void trinaryZqToZ3() {
        int length = this.coeffs.length;
        for (int i10 = 0; i10 < length; i10++) {
            short[] sArr = this.coeffs;
            sArr[i10] = (short) modQ(sArr[i10] & HPKE.aead_EXPORT_ONLY, this.params.q());
            short[] sArr2 = this.coeffs;
            short s8 = sArr2[i10];
            sArr2[i10] = (short) ((s8 ^ (s8 >>> (this.params.logQ() - 1))) & 3);
        }
    }

    public void z3ToZq() {
        int length = this.coeffs.length;
        for (int i10 = 0; i10 < length; i10++) {
            short[] sArr = this.coeffs;
            short s8 = sArr[i10];
            sArr[i10] = (short) (s8 | ((-(s8 >>> 1)) & (this.params.q() - 1)));
        }
    }

    public static short mod3(short s8) {
        return (short) ((s8 & HPKE.aead_EXPORT_ONLY) % 3);
    }

    public void r2Inv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        int i10;
        int length = this.coeffs.length;
        short s8 = 0;
        polynomial5.coeffs[0] = 1;
        for (int i11 = 0; i11 < length; i11++) {
            polynomial2.coeffs[i11] = 1;
        }
        int i12 = 0;
        while (true) {
            i10 = length - 1;
            if (i12 >= i10) {
                break;
            }
            short[] sArr = polynomial.coeffs;
            polynomial3.coeffs[(length - 2) - i12] = (short) ((sArr[i10] ^ sArr[i12]) & 1);
            i12++;
        }
        polynomial3.coeffs[i10] = 0;
        int i13 = 0;
        short s10 = 1;
        for (short s11 = 1; i13 < (i10 * 2) - s11; s11 = 1) {
            for (int i14 = i10; i14 > 0; i14--) {
                short[] sArr2 = polynomial4.coeffs;
                sArr2[i14] = sArr2[i14 - 1];
            }
            polynomial4.coeffs[s8] = s8;
            short s12 = polynomial3.coeffs[s8];
            short s13 = (short) (polynomial2.coeffs[s8] & s12);
            int i15 = -s10;
            short sBothNegativeMask = bothNegativeMask((short) i15, (short) (-s12));
            s10 = (short) (((short) (s10 ^ ((i15 ^ s10) & sBothNegativeMask))) + s11);
            for (int i16 = 0; i16 < length; i16++) {
                short[] sArr3 = polynomial2.coeffs;
                short s14 = sArr3[i16];
                short[] sArr4 = polynomial3.coeffs;
                short s15 = (short) (sBothNegativeMask & (s14 ^ sArr4[i16]));
                sArr3[i16] = (short) (s14 ^ s15);
                sArr4[i16] = (short) (s15 ^ sArr4[i16]);
                short[] sArr5 = polynomial4.coeffs;
                short s16 = sArr5[i16];
                short[] sArr6 = polynomial5.coeffs;
                short s17 = (short) ((sArr6[i16] ^ s16) & sBothNegativeMask);
                sArr5[i16] = (short) (s16 ^ s17);
                sArr6[i16] = (short) (sArr6[i16] ^ s17);
            }
            for (int i17 = 0; i17 < length; i17++) {
                short[] sArr7 = polynomial3.coeffs;
                sArr7[i17] = (short) (sArr7[i17] ^ (polynomial2.coeffs[i17] & s13));
            }
            for (int i18 = 0; i18 < length; i18++) {
                short[] sArr8 = polynomial5.coeffs;
                sArr8[i18] = (short) (sArr8[i18] ^ (polynomial4.coeffs[i18] & s13));
            }
            int i19 = 0;
            while (i19 < i10) {
                short[] sArr9 = polynomial3.coeffs;
                int i20 = i19 + 1;
                sArr9[i19] = sArr9[i20];
                i19 = i20;
            }
            polynomial3.coeffs[i10] = 0;
            i13++;
            s8 = 0;
        }
        int i21 = 0;
        while (true) {
            short[] sArr10 = this.coeffs;
            if (i21 >= i10) {
                sArr10[i10] = 0;
                return;
            } else {
                sArr10[i21] = polynomial4.coeffs[(length - 2) - i21];
                i21++;
            }
        }
    }

    public void rqInv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        polynomial2.r2Inv(polynomial);
        r2InvToRqInv(polynomial2, polynomial, polynomial3, polynomial4, polynomial5);
    }

    public void s3Inv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        int i10;
        int length = this.coeffs.length;
        short s8 = 0;
        polynomial5.coeffs[0] = 1;
        for (int i11 = 0; i11 < length; i11++) {
            polynomial2.coeffs[i11] = 1;
        }
        int i12 = 0;
        while (true) {
            i10 = length - 1;
            if (i12 >= i10) {
                break;
            }
            short[] sArr = polynomial.coeffs;
            polynomial3.coeffs[(length - 2) - i12] = mod3((short) (((sArr[i10] & 3) * 2) + (sArr[i12] & 3)));
            i12++;
        }
        polynomial3.coeffs[i10] = 0;
        int i13 = 0;
        short s10 = 1;
        for (short s11 = 1; i13 < (i10 * 2) - s11; s11 = 1) {
            for (int i14 = i10; i14 > 0; i14--) {
                short[] sArr2 = polynomial4.coeffs;
                sArr2[i14] = sArr2[i14 - 1];
            }
            polynomial4.coeffs[s8] = s8;
            short sMod3 = mod3((byte) (polynomial3.coeffs[s8] * 2 * polynomial2.coeffs[s8]));
            int i15 = -s10;
            short sBothNegativeMask = bothNegativeMask((short) i15, (short) (-polynomial3.coeffs[s8]));
            s10 = (short) (((short) (s10 ^ ((i15 ^ s10) & sBothNegativeMask))) + s11);
            for (int i16 = 0; i16 < length; i16++) {
                short[] sArr3 = polynomial2.coeffs;
                short s12 = sArr3[i16];
                short[] sArr4 = polynomial3.coeffs;
                short s13 = (short) (sBothNegativeMask & (s12 ^ sArr4[i16]));
                sArr3[i16] = (short) (s12 ^ s13);
                sArr4[i16] = (short) (s13 ^ sArr4[i16]);
                short[] sArr5 = polynomial4.coeffs;
                short s14 = sArr5[i16];
                short[] sArr6 = polynomial5.coeffs;
                short s15 = (short) ((sArr6[i16] ^ s14) & sBothNegativeMask);
                sArr5[i16] = (short) (s14 ^ s15);
                sArr6[i16] = (short) (sArr6[i16] ^ s15);
            }
            for (int i17 = 0; i17 < length; i17++) {
                polynomial3.coeffs[i17] = mod3((byte) ((polynomial2.coeffs[i17] * sMod3) + r8[i17]));
            }
            for (int i18 = 0; i18 < length; i18++) {
                polynomial5.coeffs[i18] = mod3((byte) ((polynomial4.coeffs[i18] * sMod3) + r8[i18]));
            }
            int i19 = 0;
            while (i19 < i10) {
                short[] sArr7 = polynomial3.coeffs;
                int i20 = i19 + 1;
                sArr7[i19] = sArr7[i20];
                i19 = i20;
            }
            polynomial3.coeffs[i10] = 0;
            i13++;
            s8 = 0;
        }
        short s16 = polynomial2.coeffs[0];
        for (int i21 = 0; i21 < i10; i21++) {
            this.coeffs[i21] = mod3((byte) (polynomial4.coeffs[(length - 2) - i21] * s16));
        }
        this.coeffs[i10] = 0;
    }

    public byte[] s3ToBytes(int i10) {
        byte[] bArr = new byte[i10];
        s3ToBytes(bArr, 0);
        return bArr;
    }
}
