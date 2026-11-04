package org.bouncycastle.pqc.crypto.snova;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.GF16;

/* loaded from: classes3.dex */
public class SnovaSigner implements MessageSigner {
    private SnovaEngine engine;
    private SnovaParameters params;
    private SnovaPrivateKeyParameters privKey;
    private SnovaPublicKeyParameters pubKey;
    private SecureRandom random;
    private final SHAKEDigest shake = new SHAKEDigest(256);

    private void evaluation(byte[] bArr, MapGroup1 mapGroup1, byte[][][][] bArr2, byte[] bArr3) {
        int m10 = this.params.getM();
        int alpha = this.params.getAlpha();
        int n6 = this.params.getN();
        int l = this.params.getL();
        int lsq = this.params.getLsq();
        int o10 = this.params.getO();
        Class cls = Byte.TYPE;
        byte[][][] bArr4 = (byte[][][]) Array.newInstance((Class<?>) cls, alpha, n6, lsq);
        byte[][][] bArr5 = (byte[][][]) Array.newInstance((Class<?>) cls, alpha, n6, lsq);
        byte[] bArr6 = new byte[lsq];
        int i10 = 0;
        int i11 = 0;
        while (i11 < m10) {
            int i12 = 0;
            int i13 = 0;
            while (i12 < n6) {
                int i14 = 0;
                while (i14 < alpha) {
                    GF16Utils.gf16mTranMulMul(bArr3, i13, mapGroup1.aAlpha[i11][i14], mapGroup1.bAlpha[i11][i14], mapGroup1.qAlpha1[i11][i14], mapGroup1.qAlpha2[i11][i14], bArr6, bArr4[i14][i12], bArr5[i14][i12], l);
                    i14++;
                    i12 = i12;
                }
                i12++;
                i13 += lsq;
            }
            int i15 = i11;
            int i16 = 0;
            while (i16 < alpha) {
                if (i15 >= o10) {
                    i15 -= o10;
                }
                int i17 = 0;
                while (i17 < n6) {
                    int i18 = i10;
                    int i19 = i11;
                    byte[] bArr7 = bArr6;
                    int i20 = o10;
                    int i21 = lsq;
                    int i22 = l;
                    GF16Utils.gf16mMul(getPMatrix(mapGroup1, bArr2, i15, i17, 0), bArr5[i16][0], bArr7, i22);
                    int i23 = 1;
                    while (i23 < n6) {
                        int i24 = i23;
                        GF16Utils.gf16mMulTo(getPMatrix(mapGroup1, bArr2, i15, i17, i23), bArr5[i16][i24], bArr7, i22);
                        i23 = i24 + 1;
                    }
                    GF16Utils.gf16mMulTo(bArr4[i16][i17], bArr7, bArr, i18, i22);
                    i17++;
                    l = i22;
                    bArr6 = bArr7;
                    i10 = i18;
                    i11 = i19;
                    o10 = i20;
                    lsq = i21;
                }
                i16++;
                i15++;
                i11 = i11;
            }
            i11++;
            i10 += lsq;
            bArr6 = bArr6;
        }
    }

    private byte[] getMessageHash(byte[] bArr) {
        byte[] bArr2 = new byte[this.shake.getDigestSize()];
        this.shake.update(bArr, 0, bArr.length);
        this.shake.doFinal(bArr2, 0);
        return bArr2;
    }

    private byte[] getPMatrix(MapGroup1 mapGroup1, byte[][][][] bArr, int i10, int i11, int i12) {
        int v10 = this.params.getV();
        return i11 < v10 ? i12 < v10 ? mapGroup1.p11[i10][i11][i12] : mapGroup1.p12[i10][i11][i12 - v10] : i12 < v10 ? mapGroup1.p21[i10][i11 - v10][i12] : bArr[i10][i11 - v10][i12 - v10];
    }

    private int performGaussianElimination(byte[][] bArr, byte[] bArr2, int i10) {
        int i11 = i10 + 1;
        int i12 = 0;
        while (i12 < i10) {
            int i13 = i12;
            while (i13 < i10 && bArr[i13][i12] == 0) {
                i13++;
            }
            if (i13 >= i10) {
                return 1;
            }
            if (i13 != i12) {
                byte[] bArr3 = bArr[i12];
                bArr[i12] = bArr[i13];
                bArr[i13] = bArr3;
            }
            byte bInv = GF16.inv(bArr[i12][i12]);
            for (int i14 = i12; i14 < i11; i14++) {
                byte[] bArr4 = bArr[i12];
                bArr4[i14] = GF16.mul(bArr4[i14], bInv);
            }
            int i15 = i12 + 1;
            for (int i16 = i15; i16 < i10; i16++) {
                byte b10 = bArr[i16][i12];
                if (b10 != 0) {
                    for (int i17 = i12; i17 < i11; i17++) {
                        byte[] bArr5 = bArr[i16];
                        bArr5[i17] = (byte) (bArr5[i17] ^ GF16.mul(bArr[i12][i17], b10));
                    }
                }
            }
            i12 = i15;
        }
        for (int i18 = i10 - 1; i18 >= 0; i18--) {
            byte bMul = bArr[i18][i10];
            for (int i19 = i18 + 1; i19 < i10; i19++) {
                bMul = (byte) (bMul ^ GF16.mul(bArr[i18][i19], bArr2[i19]));
            }
            bArr2[i18] = bMul;
        }
        return 0;
    }

    public void createSignedHash(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12, int i13, byte[] bArr4, int i14) {
        this.shake.update(bArr, 0, i10);
        this.shake.update(bArr2, 0, i11);
        this.shake.update(bArr3, i12, i13);
        this.shake.doFinal(bArr4, 0, i14);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        byte[] bArrCopyOfRange;
        byte[] bArrCopyOfRange2;
        byte[] messageHash = getMessageHash(bArr);
        byte[] bArr2 = new byte[this.params.getSaltLength()];
        this.random.nextBytes(bArr2);
        byte[] bArr3 = new byte[this.params.getSaltLength() + (((this.params.getLsq() * this.params.getN()) + 1) >>> 1)];
        SnovaKeyElements snovaKeyElements = new SnovaKeyElements(this.params);
        if (this.params.isSkIsSeed()) {
            byte[] privateKey = this.privKey.getPrivateKey();
            bArrCopyOfRange = Arrays.copyOfRange(privateKey, 0, 16);
            bArrCopyOfRange2 = Arrays.copyOfRange(privateKey, 16, privateKey.length);
            this.engine.genMap1T12Map2(snovaKeyElements, bArrCopyOfRange, bArrCopyOfRange2);
        } else {
            byte[] privateKey2 = this.privKey.getPrivateKey();
            int length = (privateKey2.length - 48) << 1;
            byte[] bArr4 = new byte[length];
            GF16Utils.decodeMergeInHalf(privateKey2, bArr4, length);
            SnovaKeyElements.copy4d(bArr4, SnovaKeyElements.copy4d(bArr4, SnovaKeyElements.copy4d(bArr4, SnovaKeyElements.copy3d(bArr4, SnovaKeyElements.copy3d(bArr4, SnovaKeyElements.copy3d(bArr4, SnovaKeyElements.copy3d(bArr4, SnovaKeyElements.copy3d(bArr4, 0, snovaKeyElements.map1.aAlpha), snovaKeyElements.map1.bAlpha), snovaKeyElements.map1.qAlpha1), snovaKeyElements.map1.qAlpha2), snovaKeyElements.T12), snovaKeyElements.map2.f11), snovaKeyElements.map2.f12), snovaKeyElements.map2.f21);
            bArrCopyOfRange = Arrays.copyOfRange(privateKey2, privateKey2.length - 48, privateKey2.length - 32);
            bArrCopyOfRange2 = Arrays.copyOfRange(privateKey2, privateKey2.length - 32, privateKey2.length);
        }
        byte[] bArr5 = bArrCopyOfRange2;
        byte[] bArr6 = bArrCopyOfRange;
        MapGroup1 mapGroup1 = snovaKeyElements.map1;
        byte[][][] bArr7 = mapGroup1.aAlpha;
        byte[][][] bArr8 = mapGroup1.bAlpha;
        byte[][][] bArr9 = mapGroup1.qAlpha1;
        byte[][][] bArr10 = mapGroup1.qAlpha2;
        byte[][][] bArr11 = snovaKeyElements.T12;
        MapGroup2 mapGroup2 = snovaKeyElements.map2;
        signDigestCore(bArr3, messageHash, bArr2, bArr7, bArr8, bArr9, bArr10, bArr11, mapGroup2.f11, mapGroup2.f12, mapGroup2.f21, bArr6, bArr5);
        return Arrays.concatenate(bArr3, bArr);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        SecureRandom secureRandom;
        if (z) {
            this.pubKey = null;
            if (cipherParameters instanceof ParametersWithRandom) {
                ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
                this.privKey = (SnovaPrivateKeyParameters) parametersWithRandom.getParameters();
                secureRandom = parametersWithRandom.getRandom();
            } else {
                this.privKey = (SnovaPrivateKeyParameters) cipherParameters;
                secureRandom = CryptoServicesRegistrar.getSecureRandom();
            }
            this.random = secureRandom;
            this.params = this.privKey.getParameters();
        } else {
            SnovaPublicKeyParameters snovaPublicKeyParameters = (SnovaPublicKeyParameters) cipherParameters;
            this.pubKey = snovaPublicKeyParameters;
            this.params = snovaPublicKeyParameters.getParameters();
            this.privKey = null;
            this.random = null;
        }
        this.engine = new SnovaEngine(this.params);
    }

    public void signDigestCore(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[][][] bArr4, byte[][][] bArr5, byte[][][] bArr6, byte[][][] bArr7, byte[][][] bArr8, byte[][][][] bArr9, byte[][][][] bArr10, byte[][][][] bArr11, byte[] bArr12, byte[] bArr13) {
        int i10;
        int i11;
        byte[] bArr14;
        int i12;
        int i13;
        int i14;
        int i15;
        byte b10;
        byte b11;
        byte[] bArr15 = bArr2;
        byte[] bArr16 = bArr13;
        int m10 = this.params.getM();
        int l = this.params.getL();
        int lsq = this.params.getLsq();
        int alpha = this.params.getAlpha();
        int v10 = this.params.getV();
        int o10 = this.params.getO();
        int n6 = this.params.getN();
        int i16 = m10 * lsq;
        int i17 = o10 * lsq;
        int i18 = v10 * lsq;
        int i19 = (i17 + 1) >>> 1;
        Class cls = Byte.TYPE;
        byte[][] bArr17 = (byte[][]) Array.newInstance((Class<?>) cls, i16, i16 + 1);
        byte[][] bArr18 = (byte[][]) Array.newInstance((Class<?>) cls, lsq, lsq);
        byte[][][] bArr19 = (byte[][][]) Array.newInstance((Class<?>) cls, alpha, v10, lsq);
        byte[][][] bArr20 = (byte[][][]) Array.newInstance((Class<?>) cls, alpha, v10, lsq);
        byte[] bArr21 = new byte[lsq];
        byte[] bArr22 = new byte[lsq];
        int i20 = n6 * lsq;
        byte[] bArr23 = new byte[i19];
        int i21 = (i18 + 1) >>> 1;
        byte[] bArr24 = new byte[i21];
        byte[] bArr25 = new byte[l];
        int i22 = m10;
        int i23 = o10;
        byte[] bArr26 = new byte[i16];
        int i24 = v10;
        byte[] bArr27 = new byte[lsq];
        byte[] bArr28 = new byte[i20];
        int i25 = i21;
        byte[] bArr29 = bArr24;
        byte[] bArr30 = new byte[i16];
        int i26 = alpha;
        int i27 = lsq;
        int i28 = l;
        createSignedHash(bArr12, bArr12.length, bArr2, bArr15.length, bArr3, 0, bArr3.length, bArr23, i19);
        byte b12 = 0;
        GF16.decode(bArr23, 0, bArr30, 0, i16);
        byte b13 = 0;
        while (true) {
            for (byte[] bArr31 : bArr17) {
                Arrays.fill(bArr31, b12);
            }
            byte b14 = (byte) (b13 + 1);
            for (int i29 = 0; i29 < i16; i29++) {
                bArr17[i29][i16] = bArr30[i29];
            }
            this.shake.update(bArr16, b12, bArr16.length);
            this.shake.update(bArr15, b12, bArr15.length);
            this.shake.update(bArr3, b12, bArr3.length);
            this.shake.update(b14);
            byte[] bArr32 = bArr29;
            int i30 = i25;
            this.shake.doFinal(bArr32, b12, i30);
            byte[] bArr33 = bArr28;
            GF16.decode(bArr32, bArr33, i30 << 1);
            int i31 = i22;
            int i32 = 0;
            int i33 = 0;
            while (i32 < i31) {
                Arrays.fill(bArr27, b12);
                int i34 = i32;
                int i35 = i26;
                int i36 = 0;
                while (i36 < i35) {
                    byte b15 = b14;
                    int i37 = i23;
                    if (i34 >= i37) {
                        i34 -= i37;
                    }
                    int i38 = i34;
                    int i39 = i30;
                    int i40 = i24;
                    int i41 = 0;
                    int i42 = 0;
                    while (i41 < i40) {
                        GF16Utils.gf16mTranMulMul(bArr33, i42, bArr4[i32][i36], bArr5[i32][i36], bArr6[i32][i36], bArr7[i32][i36], bArr25, bArr19[i36][i41], bArr20[i36][i41], i28);
                        i41++;
                        i42 += i27;
                        bArr30 = bArr30;
                    }
                    byte[] bArr34 = bArr30;
                    int i43 = i27;
                    int i44 = 0;
                    while (i44 < i40) {
                        int i45 = 0;
                        while (i45 < i40) {
                            GF16Utils.gf16mMulMulTo(bArr19[i36][i44], bArr9[i38][i44][i45], bArr20[i36][i45], bArr25, bArr27, i28);
                            i45++;
                            i31 = i31;
                            i32 = i32;
                            i36 = i36;
                            i44 = i44;
                            bArr32 = bArr32;
                            bArr33 = bArr33;
                        }
                        i44++;
                    }
                    i36++;
                    i34 = i38 + 1;
                    i23 = i37;
                    i24 = i40;
                    i27 = i43;
                    bArr30 = bArr34;
                    b14 = b15;
                    i30 = i39;
                }
                int i46 = i31;
                int i47 = i32;
                byte[] bArr35 = bArr33;
                byte[] bArr36 = bArr32;
                byte b16 = b14;
                int i48 = i30;
                byte[] bArr37 = bArr30;
                int i49 = i23;
                int i50 = i24;
                byte[] bArr38 = bArr27;
                int i51 = i27;
                int i52 = i28;
                int i53 = 0;
                for (int i54 = 0; i54 < i52; i54++) {
                    int i55 = 0;
                    while (i55 < i52) {
                        byte[] bArr39 = bArr17[i33 + i53];
                        bArr39[i16] = (byte) (bArr38[i53] ^ bArr39[i16]);
                        i55++;
                        i53++;
                    }
                }
                int i56 = 0;
                int i57 = 0;
                while (i56 < i49) {
                    int i58 = i47;
                    int i59 = 0;
                    while (i59 < i35) {
                        if (i58 >= i49) {
                            i58 -= i49;
                        }
                        int i60 = i58;
                        for (int i61 = 0; i61 < i51; i61++) {
                            Arrays.fill(bArr18[i61], (byte) 0);
                        }
                        int i62 = 0;
                        while (i62 < i50) {
                            int i63 = i62;
                            int i64 = i59;
                            int i65 = i56;
                            GF16Utils.gf16mMulMul(bArr19[i59][i62], bArr10[i60][i62][i56], bArr7[i47][i59], bArr25, bArr21, i52);
                            GF16Utils.gf16mMulMul(bArr6[i47][i64], bArr11[i60][i65][i63], bArr20[i64][i63], bArr25, bArr22, i52);
                            int i66 = 0;
                            int i67 = 0;
                            int i68 = 0;
                            while (i68 < i51) {
                                if (i66 == i52) {
                                    i67 += i52;
                                    i66 = 0;
                                }
                                byte b17 = bArr21[i67];
                                byte b18 = bArr22[i66];
                                int i69 = 0;
                                int i70 = 0;
                                int i71 = 0;
                                int i72 = 0;
                                int i73 = 0;
                                while (i69 < i51) {
                                    if (i70 == i52) {
                                        int i74 = i71 + 1;
                                        i72 += i52;
                                        byte b19 = bArr21[i67 + i74];
                                        i14 = i74;
                                        i15 = i35;
                                        b11 = bArr22[i72 + i66];
                                        i73 = 0;
                                        b10 = b19;
                                        i70 = 0;
                                    } else {
                                        i14 = i71;
                                        i15 = i35;
                                        b10 = b17;
                                        b11 = b18;
                                    }
                                    byte b20 = bArr5[i47][i64][i73 + i66];
                                    int i75 = i67;
                                    byte b21 = bArr4[i47][i64][i67 + i70];
                                    byte[] bArr40 = bArr18[i68];
                                    bArr40[i69] = (byte) (bArr40[i69] ^ (GF16.mul(b21, b11) ^ GF16.mul(b10, b20)));
                                    i69++;
                                    i70++;
                                    i73 += i52;
                                    b17 = b10;
                                    b18 = b11;
                                    i67 = i75;
                                    i35 = i15;
                                    i71 = i14;
                                }
                                i68++;
                                i66++;
                            }
                            i62 = i63 + 1;
                            i59 = i64;
                            i56 = i65;
                        }
                        int i76 = i59;
                        int i77 = i56;
                        int i78 = i35;
                        for (int i79 = 0; i79 < i51; i79++) {
                            for (int i80 = 0; i80 < i51; i80++) {
                                byte[] bArr41 = bArr17[i33 + i79];
                                int i81 = i57 + i80;
                                bArr41[i81] = (byte) (bArr41[i81] ^ bArr18[i79][i80]);
                            }
                        }
                        i59 = i76 + 1;
                        i58 = i60 + 1;
                        i56 = i77;
                        i35 = i78;
                    }
                    i56++;
                    i57 += i51;
                }
                i26 = i35;
                i32 = i47 + 1;
                i33 += i51;
                i23 = i49;
                i24 = i50;
                i27 = i51;
                i28 = i52;
                bArr27 = bArr38;
                i31 = i46;
                bArr32 = bArr36;
                bArr30 = bArr37;
                b14 = b16;
                bArr33 = bArr35;
                i30 = i48;
                b12 = 0;
            }
            int i82 = i31;
            bArr28 = bArr33;
            byte[] bArr42 = bArr32;
            byte b22 = b14;
            i25 = i30;
            byte[] bArr43 = bArr30;
            i10 = i28;
            i11 = i23;
            bArr14 = bArr26;
            i12 = i24;
            byte[] bArr44 = bArr27;
            i13 = i27;
            if (performGaussianElimination(bArr17, bArr14, i16) == 0) {
                break;
            }
            bArr16 = bArr13;
            bArr26 = bArr14;
            i23 = i11;
            i24 = i12;
            i27 = i13;
            i28 = i10;
            bArr27 = bArr44;
            i22 = i82;
            bArr29 = bArr42;
            bArr30 = bArr43;
            b13 = b22;
            b12 = 0;
            bArr15 = bArr2;
        }
        int i83 = 0;
        int i84 = 0;
        while (i83 < i12) {
            int i85 = 0;
            int i86 = 0;
            while (i85 < i11) {
                GF16Utils.gf16mMulTo(bArr8[i83][i85], bArr14, i86, bArr28, i84, i10);
                i85++;
                i86 += i13;
            }
            i83++;
            i84 += i13;
        }
        System.arraycopy(bArr14, 0, bArr28, i18, i17);
        GF16.encode(bArr28, bArr, i20);
        System.arraycopy(bArr3, 0, bArr, bArr.length - 16, 16);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        byte[] messageHash = getMessageHash(bArr);
        MapGroup1 mapGroup1 = new MapGroup1(this.params);
        byte[] encoded = this.pubKey.getEncoded();
        byte[] bArrCopyOf = Arrays.copyOf(encoded, 16);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(encoded, 16, encoded.length);
        this.engine.genABQP(mapGroup1, bArrCopyOf);
        byte[][][][] bArr3 = (byte[][][][]) Array.newInstance((Class<?>) Byte.TYPE, this.params.getM(), this.params.getO(), this.params.getO(), this.params.getLsq());
        if ((this.params.getLsq() & 1) == 0) {
            MapGroup1.decodeP(bArrCopyOfRange, 0, bArr3, bArrCopyOfRange.length << 1);
        } else {
            int length = bArrCopyOfRange.length << 1;
            byte[] bArr4 = new byte[length];
            GF16.decode(bArrCopyOfRange, bArr4, length);
            MapGroup1.fillP(bArr4, 0, bArr3, length);
        }
        return verifySignatureCore(messageHash, bArr2, bArrCopyOf, mapGroup1, bArr3);
    }

    public boolean verifySignatureCore(byte[] bArr, byte[] bArr2, byte[] bArr3, MapGroup1 mapGroup1, byte[][][][] bArr4) {
        int lsq = this.params.getLsq();
        int o10 = this.params.getO() * lsq;
        int i10 = (o10 + 1) >>> 1;
        int saltLength = this.params.getSaltLength();
        int m10 = this.params.getM();
        int n6 = this.params.getN() * lsq;
        byte[] bArr5 = new byte[i10];
        createSignedHash(bArr3, bArr3.length, bArr, bArr.length, bArr2, (n6 + 1) >>> 1, saltLength, bArr5, i10);
        if ((o10 & 1) != 0) {
            int i11 = i10 - 1;
            bArr5[i11] = (byte) (bArr5[i11] & 15);
        }
        byte[] bArr6 = new byte[n6];
        GF16.decode(bArr2, 0, bArr6, 0, n6);
        int i12 = m10 * lsq;
        byte[] bArr7 = new byte[i12];
        evaluation(bArr7, mapGroup1, bArr4, bArr6);
        byte[] bArr8 = new byte[i10];
        GF16.encode(bArr7, bArr8, i12);
        return Arrays.areEqual(bArr5, bArr8);
    }
}
