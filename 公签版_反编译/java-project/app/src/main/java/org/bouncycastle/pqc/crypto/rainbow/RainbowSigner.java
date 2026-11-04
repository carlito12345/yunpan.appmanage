package org.bouncycastle.pqc.crypto.rainbow;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class RainbowSigner implements MessageSigner {
    private static final int MAXITS = 65536;
    private ComputeInField cf = new ComputeInField();
    private Digest hashAlgo;
    private RainbowKeyParameters key;
    private SecureRandom random;
    int signableDocumentLength;
    private Version version;

    /* renamed from: org.bouncycastle.pqc.crypto.rainbow.RainbowSigner$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version;

        static {
            int[] iArr = new int[Version.values().length];
            $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version = iArr;
            try {
                iArr[Version.CLASSIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version[Version.CIRCUMZENITHAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version[Version.COMPRESSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private byte[] genSignature(byte[] bArr) {
        short[][] sArr;
        byte[] bArr2;
        byte[] bArr3 = new byte[this.hashAlgo.getDigestSize()];
        this.hashAlgo.update(bArr, 0, bArr.length);
        this.hashAlgo.doFinal(bArr3, 0);
        int v12 = this.key.getParameters().getV1();
        int o12 = this.key.getParameters().getO1();
        int o22 = this.key.getParameters().getO2();
        int m10 = this.key.getParameters().getM();
        int n6 = this.key.getParameters().getN();
        RainbowPrivateKeyParameters rainbowPrivateKeyParameters = (RainbowPrivateKeyParameters) this.key;
        Digest digest = this.hashAlgo;
        this.random = new RainbowDRBG(RainbowUtil.hash(digest, rainbowPrivateKeyParameters.sk_seed, bArr3, new byte[digest.getDigestSize()]), rainbowPrivateKeyParameters.getParameters().getHash_algo());
        short[] sArr2 = new short[v12];
        short[] sArr3 = new short[o12];
        short[] sArr4 = new short[o22];
        Class cls = Short.TYPE;
        short[][] sArr5 = (short[][]) Array.newInstance((Class<?>) cls, o22, o12);
        short[][] sArr6 = (short[][]) Array.newInstance((Class<?>) cls, o22, o22);
        byte[] bArr4 = new byte[rainbowPrivateKeyParameters.getParameters().getLen_salt()];
        short[] sArr7 = new short[o12];
        short[] sArr8 = null;
        short[] sArr9 = new short[o22];
        short[] sArr10 = new short[m10];
        short[][] sArrInverse = null;
        int i10 = 0;
        while (sArrInverse == null && i10 < 65536) {
            byte[] bArr5 = new byte[v12];
            this.random.nextBytes(bArr5);
            int i11 = 0;
            while (true) {
                bArr2 = bArr3;
                if (i11 >= v12) {
                    break;
                }
                sArr2[i11] = (short) (bArr5[i11] & 255);
                i11++;
                bArr3 = bArr2;
            }
            short[][] sArr11 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, o12, o12);
            for (int i12 = 0; i12 < v12; i12++) {
                int i13 = 0;
                while (i13 < o12) {
                    byte[] bArr6 = bArr4;
                    int i14 = 0;
                    while (i14 < o12) {
                        int i15 = m10;
                        short[][] sArr12 = sArr6;
                        short sMultElem = GF2Field.multElem(rainbowPrivateKeyParameters.l1_F2[i13][i12][i14], sArr2[i12]);
                        short[] sArr13 = sArr11[i13];
                        sArr13[i14] = GF2Field.addElem(sArr13[i14], sMultElem);
                        i14++;
                        m10 = i15;
                        sArr6 = sArr12;
                        sArr5 = sArr5;
                    }
                    i13++;
                    bArr4 = bArr6;
                }
            }
            sArrInverse = this.cf.inverse(sArr11);
            i10++;
            bArr3 = bArr2;
            sArr6 = sArr6;
        }
        byte[] bArr7 = bArr3;
        short[][] sArr14 = sArr6;
        int i16 = m10;
        byte[] bArr8 = bArr4;
        short[][] sArr15 = sArr5;
        for (int i17 = 0; i17 < o12; i17++) {
            sArr3[i17] = this.cf.multiplyMatrix_quad(rainbowPrivateKeyParameters.l1_F1[i17], sArr2);
        }
        for (int i18 = 0; i18 < v12; i18++) {
            for (int i19 = 0; i19 < o22; i19++) {
                sArr4[i19] = this.cf.multiplyMatrix_quad(rainbowPrivateKeyParameters.l2_F1[i19], sArr2);
                for (int i20 = 0; i20 < o12; i20++) {
                    short sMultElem2 = GF2Field.multElem(rainbowPrivateKeyParameters.l2_F2[i19][i18][i20], sArr2[i18]);
                    short[] sArr16 = sArr15[i19];
                    sArr16[i20] = GF2Field.addElem(sArr16[i20], sMultElem2);
                }
                for (int i21 = 0; i21 < o22; i21++) {
                    short sMultElem3 = GF2Field.multElem(rainbowPrivateKeyParameters.l2_F3[i19][i18][i21], sArr2[i18]);
                    short[] sArr17 = sArr14[i19];
                    sArr17[i21] = GF2Field.addElem(sArr17[i21], sMultElem3);
                }
            }
        }
        int i22 = i16;
        byte[] bArr9 = new byte[i22];
        short[] sArr18 = sArr7;
        while (sArr8 == null && i10 < 65536) {
            short[][] sArr19 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, o22, o22);
            this.random.nextBytes(bArr8);
            short[] sArrMakeMessageRepresentative = makeMessageRepresentative(RainbowUtil.hash(this.hashAlgo, bArr7, bArr8, bArr9));
            byte[] bArr10 = bArr9;
            short[] sArr20 = sArr10;
            System.arraycopy(this.cf.addVect(Arrays.copyOf(sArrMakeMessageRepresentative, o12), this.cf.multiplyMatrix(rainbowPrivateKeyParameters.f12384s1, Arrays.copyOfRange(sArrMakeMessageRepresentative, o12, i22))), 0, sArr20, 0, o12);
            System.arraycopy(sArrMakeMessageRepresentative, o12, sArr20, o12, o22);
            short[] sArrMultiplyMatrix = this.cf.multiplyMatrix(sArrInverse, this.cf.addVect(sArr3, Arrays.copyOf(sArr20, o12)));
            short[][] sArr21 = sArr15;
            short[] sArrMultiplyMatrix2 = this.cf.multiplyMatrix(sArr21, sArrMultiplyMatrix);
            short[] sArr22 = sArr3;
            int i23 = 0;
            while (true) {
                sArr = sArrInverse;
                if (i23 >= o22) {
                    break;
                }
                sArr9[i23] = this.cf.multiplyMatrix_quad(rainbowPrivateKeyParameters.l2_F5[i23], sArrMultiplyMatrix);
                i23++;
                sArrInverse = sArr;
                sArr21 = sArr21;
            }
            sArr15 = sArr21;
            short[] sArr23 = sArr9;
            short[] sArrAddVect = this.cf.addVect(this.cf.addVect(this.cf.addVect(sArrMultiplyMatrix2, sArr23), sArr4), Arrays.copyOfRange(sArr20, o12, i22));
            for (int i24 = 0; i24 < o12; i24++) {
                int i25 = 0;
                while (true) {
                    int i26 = i22;
                    if (i25 < o22) {
                        int i27 = 0;
                        while (i27 < o22) {
                            short[] sArr24 = sArr4;
                            short[] sArr25 = sArr23;
                            short sMultElem4 = GF2Field.multElem(rainbowPrivateKeyParameters.l2_F6[i25][i24][i27], sArrMultiplyMatrix[i24]);
                            short[] sArr26 = sArr19[i25];
                            sArr26[i27] = GF2Field.addElem(sArr26[i27], sMultElem4);
                            i27++;
                            sArrMultiplyMatrix = sArrMultiplyMatrix;
                            sArr4 = sArr24;
                            sArr23 = sArr25;
                        }
                        i25++;
                        i22 = i26;
                    }
                }
            }
            int i28 = i22;
            short[] sArr27 = sArr23;
            short[] sArrSolveEquation = this.cf.solveEquation(this.cf.addMatrix(sArr19, sArr14), sArrAddVect);
            i10++;
            sArr18 = sArrMultiplyMatrix;
            bArr9 = bArr10;
            sArr3 = sArr22;
            sArrInverse = sArr;
            sArr8 = sArrSolveEquation;
            sArr10 = sArr20;
            i22 = i28;
            sArr9 = sArr27;
        }
        short[] sArr28 = sArr8 == null ? new short[o22] : sArr8;
        short[] sArrAddVect2 = this.cf.addVect(this.cf.addVect(sArr2, this.cf.multiplyMatrix(rainbowPrivateKeyParameters.f12385t1, sArr18)), this.cf.multiplyMatrix(rainbowPrivateKeyParameters.f12387t4, sArr28));
        short[] sArrAddVect3 = this.cf.addVect(sArr18, this.cf.multiplyMatrix(rainbowPrivateKeyParameters.f12386t3, sArr28));
        short[] sArrCopyOf = Arrays.copyOf(sArrAddVect2, n6);
        System.arraycopy(sArrAddVect3, 0, sArrCopyOf, v12, o12);
        System.arraycopy(sArr28, 0, sArrCopyOf, o12 + v12, o22);
        if (i10 != 65536) {
            return Arrays.concatenate(RainbowUtil.convertArray(sArrCopyOf), bArr8);
        }
        throw new IllegalStateException("unable to generate signature - LES not solvable");
    }

    private short[] makeMessageRepresentative(byte[] bArr) {
        int i10 = this.signableDocumentLength;
        short[] sArr = new short[i10];
        int i11 = 0;
        int i12 = 0;
        while (i11 < bArr.length) {
            sArr[i11] = (short) (bArr[i12] & 255);
            i12++;
            i11++;
            if (i11 >= i10) {
                break;
            }
        }
        return sArr;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        return genSignature(bArr);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        RainbowKeyParameters rainbowKeyParameters;
        if (z) {
            if (cipherParameters instanceof ParametersWithRandom) {
                ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
                this.random = parametersWithRandom.getRandom();
                rainbowKeyParameters = (RainbowKeyParameters) parametersWithRandom.getParameters();
            } else {
                rainbowKeyParameters = (RainbowKeyParameters) cipherParameters;
                SecureRandom secureRandom = CryptoServicesRegistrar.getSecureRandom();
                byte[] bArr = new byte[rainbowKeyParameters.getParameters().getLen_skseed()];
                secureRandom.nextBytes(bArr);
                this.random = new RainbowDRBG(bArr, rainbowKeyParameters.getParameters().getHash_algo());
            }
            this.version = rainbowKeyParameters.getParameters().getVersion();
            this.key = rainbowKeyParameters;
        } else {
            RainbowKeyParameters rainbowKeyParameters2 = (RainbowKeyParameters) cipherParameters;
            this.key = rainbowKeyParameters2;
            this.version = rainbowKeyParameters2.getParameters().getVersion();
        }
        this.signableDocumentLength = this.key.getDocLength();
        this.hashAlgo = this.key.getParameters().getHash_algo();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        short[] sArrPublicMap;
        byte[] bArr3 = new byte[this.hashAlgo.getDigestSize()];
        this.hashAlgo.update(bArr, 0, bArr.length);
        this.hashAlgo.doFinal(bArr3, 0);
        int m10 = this.key.getParameters().getM();
        int n6 = this.key.getParameters().getN();
        RainbowPublicMap rainbowPublicMap = new RainbowPublicMap(this.key.getParameters());
        short[] sArrMakeMessageRepresentative = makeMessageRepresentative(RainbowUtil.hash(this.hashAlgo, bArr3, Arrays.copyOfRange(bArr2, n6, bArr2.length), new byte[m10]));
        short[] sArrConvertArray = RainbowUtil.convertArray(Arrays.copyOfRange(bArr2, 0, n6));
        int i10 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version[this.version.ordinal()];
        if (i10 == 1) {
            sArrPublicMap = rainbowPublicMap.publicMap((RainbowPublicKeyParameters) this.key, sArrConvertArray);
        } else {
            if (i10 != 2 && i10 != 3) {
                throw new IllegalArgumentException("No valid version. Please choose one of the following: classic, circumzenithal, compressed");
            }
            sArrPublicMap = rainbowPublicMap.publicMap_cyclic((RainbowPublicKeyParameters) this.key, sArrConvertArray);
        }
        return RainbowUtil.equals(sArrMakeMessageRepresentative, sArrPublicMap);
    }
}
