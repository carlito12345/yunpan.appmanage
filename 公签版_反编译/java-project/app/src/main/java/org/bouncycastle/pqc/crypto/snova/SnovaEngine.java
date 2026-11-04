package org.bouncycastle.pqc.crypto.snova;

import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.modes.CTRModeCipher;
import org.bouncycastle.crypto.modes.SICBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.GF16;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
class SnovaEngine {
    private static final Map<Integer, byte[]> fixedAbqSet = new HashMap();
    private static final Map<Integer, byte[][]> sSet = new HashMap();
    private static final Map<Integer, int[][]> xSSet = new HashMap();
    final byte[][] S;
    private final int alpha;
    private final int l;
    private final int lsq;

    /* renamed from: m, reason: collision with root package name */
    private final int f12403m;

    /* renamed from: n, reason: collision with root package name */
    private final int f12404n;

    /* renamed from: o, reason: collision with root package name */
    private final int f12405o;
    private final SnovaParameters params;

    /* renamed from: v, reason: collision with root package name */
    private final int f12406v;
    final int[][] xS;

    public SnovaEngine(SnovaParameters snovaParameters) {
        int i10;
        this.params = snovaParameters;
        int l = snovaParameters.getL();
        this.l = l;
        int lsq = snovaParameters.getLsq();
        this.lsq = lsq;
        this.f12403m = snovaParameters.getM();
        this.f12406v = snovaParameters.getV();
        this.f12405o = snovaParameters.getO();
        this.alpha = snovaParameters.getAlpha();
        this.f12404n = snovaParameters.getN();
        if (!xSSet.containsKey(Integers.valueOf(l))) {
            int i11 = 2;
            byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, l, lsq);
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, l, lsq);
            be_aI(bArr[0], 0, (byte) 1);
            beTheS(bArr[1]);
            while (true) {
                int i12 = this.l;
                if (i11 >= i12) {
                    break;
                }
                GF16Utils.gf16mMul(bArr[i11 - 1], bArr[1], bArr[i11], i12);
                i11++;
            }
            int i13 = 0;
            while (true) {
                i10 = this.l;
                if (i13 >= i10) {
                    break;
                }
                for (int i14 = 0; i14 < this.lsq; i14++) {
                    iArr[i13][i14] = GF16Utils.gf16FromNibble(bArr[i13][i14]);
                }
                i13++;
            }
            sSet.put(Integers.valueOf(i10), bArr);
            xSSet.put(Integers.valueOf(this.l), iArr);
        }
        this.S = sSet.get(Integers.valueOf(this.l));
        this.xS = xSSet.get(Integers.valueOf(this.l));
        if (this.l >= 4 || fixedAbqSet.containsKey(Integers.valueOf(this.f12405o))) {
            return;
        }
        int i15 = this.alpha;
        int i16 = this.l;
        int i17 = i15 * i16;
        int i18 = i16 * i17;
        int i19 = this.f12405o;
        int i20 = i19 * i17;
        int i21 = i19 * i18;
        byte[] bArr2 = new byte[i21 << 2];
        int i22 = i21 + i20;
        byte[] bArr3 = new byte[i22];
        byte[] bArr4 = new byte[i20 << 2];
        byte[] bytes = "SNOVA_ABQ".getBytes();
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bytes, 0, bytes.length);
        sHAKEDigest.doFinal(bArr3, 0, i22);
        int i23 = i21 << 1;
        GF16.decode(bArr3, bArr2, i23);
        GF16.decode(bArr3, i18, bArr4, 0, i20 << 1);
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        while (true) {
            int i27 = this.f12405o;
            if (i24 >= i27) {
                fixedAbqSet.put(Integers.valueOf(i27), bArr2);
                return;
            }
            int i28 = i25;
            int i29 = i26;
            int i30 = 0;
            while (i30 < this.alpha) {
                makeInvertibleByAddingAS(bArr2, i29);
                makeInvertibleByAddingAS(bArr2, i21 + i29);
                genAFqS(bArr4, i28, bArr2, i23 + i29);
                genAFqS(bArr4, i20 + i28, bArr2, i23 + i21 + i29);
                i30++;
                i28 += this.l;
                i29 += this.lsq;
            }
            i24++;
            i26 += i18;
            i25 += i17;
        }
    }

    private void beTheS(byte[] bArr) {
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            i10 = this.l;
            if (i12 >= i10) {
                break;
            }
            int i14 = 0;
            while (true) {
                i11 = this.l;
                if (i14 < i11) {
                    bArr[i13 + i14] = (byte) ((8 - (i12 + i14)) & 15);
                    i14++;
                }
            }
            i12++;
            i13 += i11;
        }
        if (i10 == 5) {
            bArr[24] = 9;
        }
    }

    private void be_aI(byte[] bArr, int i10, byte b10) {
        int i11 = this.l + 1;
        int i12 = 0;
        while (i12 < this.l) {
            bArr[i10] = b10;
            i12++;
            i10 += i11;
        }
    }

    private static void copy4DMatrix(byte[][][][] bArr, byte[][][][] bArr2, int i10, int i11, int i12, int i13) {
        for (int i14 = 0; i14 < i10; i14++) {
            for (int i15 = 0; i15 < i11; i15++) {
                for (int i16 = 0; i16 < i12; i16++) {
                    System.arraycopy(bArr[i14][i15][i16], 0, bArr2[i14][i15][i16], 0, i13);
                }
            }
        }
    }

    private byte determinant2x2(byte[] bArr, int i10) {
        return (byte) (GF16.mul(bArr[i10 + 1], bArr[i10 + 2]) ^ GF16.mul(bArr[i10], bArr[i10 + 3]));
    }

    private byte determinant3x3(byte[] bArr, int i10) {
        byte b10 = bArr[i10];
        byte b11 = bArr[i10 + 1];
        byte b12 = bArr[i10 + 2];
        byte b13 = bArr[i10 + 3];
        byte b14 = bArr[i10 + 4];
        byte b15 = bArr[i10 + 5];
        byte b16 = bArr[i10 + 6];
        byte b17 = bArr[i10 + 7];
        byte b18 = bArr[i10 + 8];
        return (byte) ((GF16.mul(b11, GF16.mul(b13, b18) ^ GF16.mul(b15, b16)) ^ GF16.mul(b10, GF16.mul(b14, b18) ^ GF16.mul(b15, b17))) ^ GF16.mul(b12, GF16.mul(b13, b17) ^ GF16.mul(b14, b16)));
    }

    private byte determinant4x4(byte[] bArr, int i10) {
        byte b10 = bArr[i10];
        byte b11 = bArr[i10 + 1];
        byte b12 = bArr[i10 + 2];
        byte b13 = bArr[i10 + 3];
        byte b14 = bArr[i10 + 4];
        byte b15 = bArr[i10 + 5];
        byte b16 = bArr[i10 + 6];
        byte b17 = bArr[i10 + 7];
        byte b18 = bArr[i10 + 8];
        byte b19 = bArr[i10 + 9];
        byte b20 = bArr[i10 + 10];
        byte b21 = bArr[i10 + 11];
        byte b22 = bArr[i10 + 12];
        byte b23 = bArr[i10 + 13];
        byte b24 = bArr[i10 + 14];
        byte b25 = bArr[i10 + 15];
        byte bMul = (byte) (GF16.mul(b20, b25) ^ GF16.mul(b21, b24));
        byte bMul2 = (byte) (GF16.mul(b19, b25) ^ GF16.mul(b21, b23));
        byte bMul3 = (byte) (GF16.mul(b19, b24) ^ GF16.mul(b20, b23));
        byte bMul4 = (byte) (GF16.mul(b21, b22) ^ GF16.mul(b18, b25));
        byte bMul5 = (byte) (GF16.mul(b20, b22) ^ GF16.mul(b18, b24));
        byte bMul6 = (byte) (GF16.mul(b18, b23) ^ GF16.mul(b19, b22));
        return (byte) (GF16.mul(b13, (GF16.mul(b14, bMul3) ^ GF16.mul(b15, bMul5)) ^ GF16.mul(b16, bMul6)) ^ ((GF16.mul(b10, (GF16.mul(b15, bMul) ^ GF16.mul(b16, bMul2)) ^ GF16.mul(b17, bMul3)) ^ GF16.mul(b11, (GF16.mul(b14, bMul) ^ GF16.mul(b16, bMul4)) ^ GF16.mul(b17, bMul5))) ^ GF16.mul(b12, (GF16.mul(b14, bMul2) ^ GF16.mul(b15, bMul4)) ^ GF16.mul(b17, bMul6))));
    }

    private byte determinant5x5(byte[] bArr, int i10) {
        byte b10 = bArr[i10];
        byte b11 = bArr[i10 + 1];
        byte b12 = bArr[i10 + 2];
        byte b13 = bArr[i10 + 3];
        byte b14 = bArr[i10 + 4];
        byte b15 = bArr[i10 + 5];
        byte b16 = bArr[i10 + 6];
        byte b17 = bArr[i10 + 7];
        byte b18 = bArr[i10 + 8];
        byte b19 = bArr[i10 + 9];
        byte b20 = bArr[i10 + 10];
        byte b21 = bArr[i10 + 11];
        byte b22 = bArr[i10 + 12];
        byte b23 = bArr[i10 + 13];
        byte b24 = bArr[i10 + 14];
        byte b25 = bArr[i10 + 15];
        byte b26 = bArr[i10 + 16];
        byte b27 = bArr[i10 + 17];
        byte b28 = bArr[i10 + 18];
        byte b29 = bArr[i10 + 19];
        byte b30 = bArr[i10 + 20];
        byte b31 = bArr[i10 + 21];
        byte b32 = bArr[i10 + 22];
        byte b33 = bArr[i10 + 23];
        byte b34 = bArr[i10 + 24];
        byte bMul = (byte) (GF16.mul(b15, b21) ^ GF16.mul(b16, b20));
        byte bMul2 = (byte) (GF16.mul(b15, b22) ^ GF16.mul(b17, b20));
        byte bMul3 = (byte) (GF16.mul(b15, b23) ^ GF16.mul(b18, b20));
        byte bMul4 = (byte) (GF16.mul(b15, b24) ^ GF16.mul(b19, b20));
        byte bMul5 = (byte) (GF16.mul(b16, b22) ^ GF16.mul(b17, b21));
        byte bMul6 = (byte) (GF16.mul(b16, b23) ^ GF16.mul(b18, b21));
        byte bMul7 = (byte) (GF16.mul(b16, b24) ^ GF16.mul(b19, b21));
        byte bMul8 = (byte) (GF16.mul(b17, b23) ^ GF16.mul(b18, b22));
        byte bMul9 = (byte) (GF16.mul(b17, b24) ^ GF16.mul(b19, b22));
        byte bMul10 = (byte) (GF16.mul(b18, b24) ^ GF16.mul(b19, b23));
        return (byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (GF16.mul((GF16.mul(b10, bMul8) ^ GF16.mul(b12, bMul3)) ^ GF16.mul(b13, bMul2), GF16.mul(b26, b34) ^ GF16.mul(b29, b31)) ^ ((byte) (((byte) (((byte) GF16.mul((GF16.mul(b10, bMul5) ^ GF16.mul(b11, bMul2)) ^ GF16.mul(b12, bMul), GF16.mul(b28, b34) ^ GF16.mul(b29, b33))) ^ GF16.mul((GF16.mul(b10, bMul6) ^ GF16.mul(b11, bMul3)) ^ GF16.mul(b13, bMul), GF16.mul(b27, b34) ^ GF16.mul(b29, b32)))) ^ GF16.mul((GF16.mul(b10, bMul7) ^ GF16.mul(b11, bMul4)) ^ GF16.mul(b14, bMul), GF16.mul(b27, b33) ^ GF16.mul(b28, b32)))))) ^ GF16.mul(GF16.mul(b14, bMul2) ^ (GF16.mul(b10, bMul9) ^ GF16.mul(b12, bMul4)), GF16.mul(b26, b33) ^ GF16.mul(b28, b31)))) ^ GF16.mul((GF16.mul(b10, bMul10) ^ GF16.mul(b13, bMul4)) ^ GF16.mul(b14, bMul3), GF16.mul(b26, b32) ^ GF16.mul(b27, b31)))) ^ GF16.mul((GF16.mul(b11, bMul8) ^ GF16.mul(b12, bMul6)) ^ GF16.mul(b13, bMul5), GF16.mul(b25, b34) ^ GF16.mul(b29, b30)))) ^ GF16.mul((GF16.mul(b11, bMul9) ^ GF16.mul(b12, bMul7)) ^ GF16.mul(b14, bMul5), GF16.mul(b25, b33) ^ GF16.mul(b28, b30)))) ^ GF16.mul((GF16.mul(b11, bMul10) ^ GF16.mul(b13, bMul7)) ^ GF16.mul(b14, bMul6), GF16.mul(b25, b32) ^ GF16.mul(b27, b30)))) ^ GF16.mul((GF16.mul(b12, bMul10) ^ GF16.mul(b13, bMul9)) ^ GF16.mul(b14, bMul8), GF16.mul(b25, b31) ^ GF16.mul(b26, b30)));
    }

    private void genAFqS(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12;
        int i13;
        be_aI(bArr2, i11, bArr[i10]);
        int i14 = 1;
        while (true) {
            i12 = this.l;
            if (i14 >= i12 - 1) {
                break;
            }
            gf16mScaleTo(this.S[i14], bArr[i10 + i14], bArr2, i11);
            i14++;
        }
        if (bArr[(i10 + i12) - 1] != 0) {
            i13 = bArr[(i10 + i12) - 1];
        } else {
            int i15 = bArr[i10];
            i13 = 16 - (i15 + (i15 == 0 ? 1 : 0));
        }
        gf16mScaleTo(this.S[i12 - 1], (byte) i13, bArr2, i11);
    }

    private void genAFqSCT(byte[] bArr, int i10, byte[] bArr2) {
        int i11;
        int[] iArr = new int[this.lsq];
        int i12 = this.l + 1;
        int iGf16FromNibble = GF16Utils.gf16FromNibble(bArr[i10]);
        int i13 = 0;
        int i14 = 0;
        while (i13 < this.l) {
            iArr[i14] = iGf16FromNibble;
            i13++;
            i14 += i12;
        }
        int i15 = 1;
        while (true) {
            i11 = this.l;
            if (i15 >= i11 - 1) {
                break;
            }
            int iGf16FromNibble2 = GF16Utils.gf16FromNibble(bArr[i10 + i15]);
            for (int i16 = 0; i16 < this.lsq; i16++) {
                iArr[i16] = iArr[i16] ^ (this.xS[i15][i16] * iGf16FromNibble2);
            }
            i15++;
        }
        int iCtGF16IsNotZero = GF16Utils.ctGF16IsNotZero(bArr[(i11 + i10) - 1]);
        int iGf16FromNibble3 = GF16Utils.gf16FromNibble((byte) ((((GF16Utils.ctGF16IsNotZero(bArr[i10]) + 15) - bArr[i10]) * (1 - iCtGF16IsNotZero)) + (bArr[(this.l + i10) - 1] * iCtGF16IsNotZero)));
        for (int i17 = 0; i17 < this.lsq; i17++) {
            int i18 = iArr[i17] ^ (this.xS[this.l - 1][i17] * iGf16FromNibble3);
            iArr[i17] = i18;
            bArr2[i17] = GF16Utils.gf16ToNibble(i18);
        }
        Arrays.fill(iArr, 0);
    }

    private void genF(MapGroup2 mapGroup2, MapGroup1 mapGroup1, byte[][][] bArr) {
        byte[][][][] bArr2 = mapGroup1.p11;
        byte[][][][] bArr3 = mapGroup2.f11;
        int i10 = this.f12403m;
        int i11 = this.f12406v;
        copy4DMatrix(bArr2, bArr3, i10, i11, i11, this.lsq);
        copy4DMatrix(mapGroup1.p12, mapGroup2.f12, this.f12403m, this.f12406v, this.f12405o, this.lsq);
        copy4DMatrix(mapGroup1.p21, mapGroup2.f21, this.f12403m, this.f12405o, this.f12406v, this.lsq);
        for (int i12 = 0; i12 < this.f12403m; i12++) {
            for (int i13 = 0; i13 < this.f12406v; i13++) {
                for (int i14 = 0; i14 < this.f12405o; i14++) {
                    for (int i15 = 0; i15 < this.f12406v; i15++) {
                        byte[][][] bArr4 = mapGroup1.p11[i12];
                        GF16Utils.gf16mMulToTo(bArr4[i13][i15], bArr[i15][i14], bArr4[i15][i13], mapGroup2.f12[i12][i13][i14], mapGroup2.f21[i12][i14][i13], this.l);
                    }
                }
            }
        }
    }

    private void genSeedsAndT12(byte[][][] bArr, byte[] bArr2) {
        int i10 = this.f12406v * this.f12405o * this.l;
        int i11 = (i10 + 1) >>> 1;
        byte[] bArr3 = new byte[i11];
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr2, 0, bArr2.length);
        sHAKEDigest.doFinal(bArr3, 0, i11);
        byte[] bArr4 = new byte[i10];
        GF16.decode(bArr3, bArr4, i10);
        int i12 = 0;
        for (int i13 = 0; i13 < this.f12406v; i13++) {
            for (int i14 = 0; i14 < this.f12405o; i14++) {
                genAFqSCT(bArr4, i12, bArr[i13][i14]);
                i12 += this.l;
            }
        }
    }

    private void generateASMatrixTo(byte[] bArr, int i10, byte b10) {
        int i11;
        int i12 = 0;
        while (i12 < this.l) {
            int i13 = 0;
            while (true) {
                i11 = this.l;
                if (i13 < i11) {
                    byte b11 = (byte) (8 - (i12 + i13));
                    if (i11 == 5 && i12 == 4 && i13 == 4) {
                        b11 = 9;
                    }
                    int i14 = i10 + i13;
                    bArr[i14] = (byte) (GF16.mul(b11, b10) ^ bArr[i14]);
                    i13++;
                }
            }
            i12++;
            i10 += i11;
        }
    }

    private byte gf16Determinant(byte[] bArr, int i10) {
        int i11 = this.l;
        if (i11 == 2) {
            return determinant2x2(bArr, i10);
        }
        if (i11 == 3) {
            return determinant3x3(bArr, i10);
        }
        if (i11 == 4) {
            return determinant4x4(bArr, i10);
        }
        if (i11 == 5) {
            return determinant5x5(bArr, i10);
        }
        throw new IllegalStateException();
    }

    private void gf16mScaleTo(byte[] bArr, byte b10, byte[] bArr2, int i10) {
        int i11;
        int i12 = 0;
        int i13 = 0;
        while (i12 < this.l) {
            int i14 = 0;
            while (true) {
                i11 = this.l;
                if (i14 < i11) {
                    int i15 = i13 + i14;
                    int i16 = i15 + i10;
                    bArr2[i16] = (byte) (GF16.mul(bArr[i15], b10) ^ bArr2[i16]);
                    i14++;
                }
            }
            i12++;
            i13 += i11;
        }
    }

    private void makeInvertibleByAddingAS(byte[] bArr, int i10) {
        if (gf16Determinant(bArr, i10) != 0) {
            return;
        }
        for (int i11 = 1; i11 < 16; i11++) {
            generateASMatrixTo(bArr, i10, (byte) i11);
            if (gf16Determinant(bArr, i10) != 0) {
                return;
            }
        }
    }

    public void genABQP(MapGroup1 mapGroup1, byte[] bArr) {
        int i10 = this.lsq;
        int i11 = this.f12403m;
        int i12 = this.alpha;
        int i13 = this.f12404n;
        int i14 = ((((i13 * i13) - (i11 * i11)) * i11) + (i11 * 2 * i12)) * i10;
        int i15 = this.l;
        int i16 = (i15 * 2 * i11 * i12) + i14;
        int i17 = ((i11 * i12) * i15) << 1;
        byte[] bArr2 = new byte[i17];
        int i18 = (i16 + 1) >> 1;
        byte[] bArr3 = new byte[i18];
        if (this.params.isPkExpandShake()) {
            byte[] bArr4 = new byte[8];
            SHAKEDigest sHAKEDigest = new SHAKEDigest(128);
            long j10 = 0;
            int i19 = 0;
            while (i18 > 0) {
                sHAKEDigest.update(bArr, 0, bArr.length);
                Pack.longToLittleEndian(j10, bArr4, 0);
                sHAKEDigest.update(bArr4, 0, 8);
                int iMin = Math.min(i18, 168);
                sHAKEDigest.doFinal(bArr3, i19, iMin);
                i19 += iMin;
                i18 -= iMin;
                j10++;
            }
        } else {
            CTRModeCipher cTRModeCipherNewInstance = SICBlockCipher.newInstance(AESEngine.newInstance());
            cTRModeCipherNewInstance.init(true, new ParametersWithIV(new KeyParameter(bArr), new byte[16]));
            int blockSize = cTRModeCipherNewInstance.getBlockSize();
            byte[] bArr5 = new byte[blockSize];
            int i20 = 0;
            while (true) {
                int i21 = i20 + blockSize;
                if (i21 > i18) {
                    break;
                }
                cTRModeCipherNewInstance.processBlock(bArr5, 0, bArr3, i20);
                i20 = i21;
            }
            if (i20 < i18) {
                cTRModeCipherNewInstance.processBlock(bArr5, 0, bArr5, 0);
                System.arraycopy(bArr5, 0, bArr3, i20, i18 - i20);
            }
        }
        if ((this.lsq & 1) == 0) {
            mapGroup1.decode(bArr3, (i16 - i17) >> 1, this.l >= 4);
        } else {
            int i22 = i16 - i17;
            byte[] bArr6 = new byte[i22];
            GF16.decode(bArr3, bArr6, i22);
            mapGroup1.fill(bArr6, this.l >= 4);
        }
        if (this.l < 4) {
            int i23 = this.f12405o;
            int i24 = this.alpha * i23 * this.lsq;
            byte[] bArr7 = fixedAbqSet.get(Integers.valueOf(i23));
            MapGroup1.fillAlpha(bArr7, 0, mapGroup1.aAlpha, this.f12403m * i24);
            MapGroup1.fillAlpha(bArr7, i24, mapGroup1.bAlpha, (this.f12403m - 1) * i24);
            MapGroup1.fillAlpha(bArr7, i24 * 2, mapGroup1.qAlpha1, (this.f12403m - 2) * i24);
            MapGroup1.fillAlpha(bArr7, i24 * 3, mapGroup1.qAlpha2, (this.f12403m - 3) * i24);
            return;
        }
        GF16.decode(bArr3, (i16 - i17) >> 1, bArr2, 0, i17);
        int i25 = this.f12403m * this.alpha * this.l;
        int i26 = 0;
        for (int i27 = 0; i27 < this.f12403m; i27++) {
            for (int i28 = 0; i28 < this.alpha; i28++) {
                makeInvertibleByAddingAS(mapGroup1.aAlpha[i27][i28], 0);
                makeInvertibleByAddingAS(mapGroup1.bAlpha[i27][i28], 0);
                genAFqS(bArr2, i26, mapGroup1.qAlpha1[i27][i28], 0);
                genAFqS(bArr2, i25, mapGroup1.qAlpha2[i27][i28], 0);
                int i29 = this.l;
                i26 += i29;
                i25 += i29;
            }
        }
    }

    public void genMap1T12Map2(SnovaKeyElements snovaKeyElements, byte[] bArr, byte[] bArr2) {
        genSeedsAndT12(snovaKeyElements.T12, bArr2);
        genABQP(snovaKeyElements.map1, bArr);
        genF(snovaKeyElements.map2, snovaKeyElements.map1, snovaKeyElements.T12);
    }

    public void genP22(byte[] bArr, int i10, byte[][][] bArr2, byte[][][][] bArr3, byte[][][][] bArr4) {
        int i11 = this.f12405o;
        int i12 = this.lsq * i11;
        int i13 = i11 * i12;
        int i14 = this.f12403m * i13;
        byte[] bArr5 = new byte[i14];
        int i15 = 0;
        int i16 = 0;
        while (i15 < this.f12403m) {
            int i17 = i16;
            int i18 = 0;
            while (i18 < this.f12405o) {
                int i19 = i17;
                int i20 = 0;
                while (i20 < this.f12405o) {
                    int i21 = 0;
                    while (i21 < this.f12406v) {
                        byte[][] bArr6 = bArr2[i21];
                        int i22 = i21;
                        GF16Utils.gf16mMulTo(bArr6[i18], bArr4[i15][i21][i20], bArr3[i15][i18][i21], bArr6[i20], bArr5, i19, this.l);
                        i21 = i22 + 1;
                        i20 = i20;
                    }
                    i20++;
                    i19 += this.lsq;
                }
                i18++;
                i17 += i12;
            }
            i15++;
            i16 += i13;
        }
        GF16.encode(bArr5, bArr, i10, i14);
    }
}
