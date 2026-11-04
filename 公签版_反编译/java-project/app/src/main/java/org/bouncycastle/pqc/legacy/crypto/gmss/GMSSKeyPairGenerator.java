package org.bouncycastle.pqc.legacy.crypto.gmss;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.WinternitzOTSVerify;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.WinternitzOTSignature;

/* loaded from: classes3.dex */
public class GMSSKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    public static final String OID = "1.3.6.1.4.1.8301.3.1.3.3";
    private int[] K;
    private byte[][] currentRootSigs;
    private byte[][] currentSeeds;
    private GMSSDigestProvider digestProvider;
    private GMSSParameters gmssPS;
    private GMSSKeyGenerationParameters gmssParams;
    private GMSSRandom gmssRandom;
    private int[] heightOfTrees;
    private boolean initialized = false;
    private int mdLength;
    private Digest messDigestTree;
    private byte[][] nextNextSeeds;
    private int numLayer;
    private int[] otsIndex;

    public GMSSKeyPairGenerator(GMSSDigestProvider gMSSDigestProvider) {
        this.digestProvider = gMSSDigestProvider;
        Digest digest = gMSSDigestProvider.get();
        this.messDigestTree = digest;
        this.mdLength = digest.getDigestSize();
        this.gmssRandom = new GMSSRandom(this.messDigestTree);
    }

    private AsymmetricCipherKeyPair genKeyPair() {
        int i10;
        int i11;
        if (!this.initialized) {
            initializeDefault();
        }
        int i12 = this.numLayer;
        byte[][][] bArr = new byte[i12][][];
        byte[][][] bArr2 = new byte[i12 - 1][][];
        Treehash[][] treehashArr = new Treehash[i12][];
        Treehash[][] treehashArr2 = new Treehash[i12 - 1][];
        Vector[] vectorArr = new Vector[i12];
        Vector[] vectorArr2 = new Vector[i12 - 1];
        Vector[][] vectorArr3 = new Vector[i12][];
        int i13 = 1;
        Vector[][] vectorArr4 = new Vector[i12 - 1][];
        char c7 = 0;
        int i14 = 0;
        while (true) {
            i10 = this.numLayer;
            if (i14 >= i10) {
                break;
            }
            int i15 = this.heightOfTrees[i14];
            int[] iArr = new int[2];
            iArr[1] = this.mdLength;
            iArr[c7] = i15;
            Class cls = Byte.TYPE;
            bArr[i14] = (byte[][]) Array.newInstance((Class<?>) cls, iArr);
            int i16 = this.heightOfTrees[i14];
            treehashArr[i14] = new Treehash[i16 - this.K[i14]];
            if (i14 > 0) {
                int i17 = i14 - 1;
                bArr2[i17] = (byte[][]) Array.newInstance((Class<?>) cls, i16, this.mdLength);
                treehashArr2[i17] = new Treehash[this.heightOfTrees[i14] - this.K[i14]];
            }
            vectorArr[i14] = new Vector();
            if (i14 > 0) {
                vectorArr2[i14 - 1] = new Vector();
            }
            i14++;
            c7 = 0;
        }
        int[] iArr2 = {i10, this.mdLength};
        Class cls2 = Byte.TYPE;
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) cls2, iArr2);
        byte[][] bArr4 = (byte[][]) Array.newInstance((Class<?>) cls2, this.numLayer - 1, this.mdLength);
        byte[][] bArr5 = (byte[][]) Array.newInstance((Class<?>) cls2, this.numLayer, this.mdLength);
        int i18 = 0;
        while (true) {
            i11 = this.numLayer;
            if (i18 >= i11) {
                break;
            }
            System.arraycopy(this.currentSeeds[i18], 0, bArr5[i18], 0, this.mdLength);
            i18++;
        }
        this.currentRootSigs = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i11 - 1, this.mdLength);
        int i19 = this.numLayer - 1;
        while (i19 >= 0) {
            GMSSRootCalc gMSSRootCalcGenerateCurrentAuthpathAndRoot = i19 == this.numLayer - i13 ? generateCurrentAuthpathAndRoot(null, vectorArr[i19], bArr5[i19], i19) : generateCurrentAuthpathAndRoot(bArr3[i19 + 1], vectorArr[i19], bArr5[i19], i19);
            int i20 = 0;
            while (i20 < this.heightOfTrees[i19]) {
                System.arraycopy(gMSSRootCalcGenerateCurrentAuthpathAndRoot.getAuthPath()[i20], 0, bArr[i19][i20], 0, this.mdLength);
                i20++;
                vectorArr = vectorArr;
            }
            vectorArr3[i19] = gMSSRootCalcGenerateCurrentAuthpathAndRoot.getRetain();
            treehashArr[i19] = gMSSRootCalcGenerateCurrentAuthpathAndRoot.getTreehash();
            System.arraycopy(gMSSRootCalcGenerateCurrentAuthpathAndRoot.getRoot(), 0, bArr3[i19], 0, this.mdLength);
            i19--;
            vectorArr = vectorArr;
            i13 = 1;
        }
        Vector[] vectorArr5 = vectorArr;
        int i21 = this.numLayer - 2;
        while (i21 >= 0) {
            int i22 = i21 + 1;
            GMSSRootCalc gMSSRootCalcGenerateNextAuthpathAndRoot = generateNextAuthpathAndRoot(vectorArr2[i21], bArr5[i22], i22);
            int i23 = 0;
            while (i23 < this.heightOfTrees[i22]) {
                System.arraycopy(gMSSRootCalcGenerateNextAuthpathAndRoot.getAuthPath()[i23], 0, bArr2[i21][i23], 0, this.mdLength);
                i23++;
                vectorArr3 = vectorArr3;
            }
            vectorArr4[i21] = gMSSRootCalcGenerateNextAuthpathAndRoot.getRetain();
            treehashArr2[i21] = gMSSRootCalcGenerateNextAuthpathAndRoot.getTreehash();
            System.arraycopy(gMSSRootCalcGenerateNextAuthpathAndRoot.getRoot(), 0, bArr4[i21], 0, this.mdLength);
            System.arraycopy(bArr5[i22], 0, this.nextNextSeeds[i21], 0, this.mdLength);
            i21--;
            vectorArr3 = vectorArr3;
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new GMSSPublicKeyParameters(bArr3[0], this.gmssPS), (AsymmetricKeyParameter) new GMSSPrivateKeyParameters(this.currentSeeds, this.nextNextSeeds, bArr, bArr2, treehashArr, treehashArr2, vectorArr5, vectorArr2, vectorArr3, vectorArr4, bArr4, this.currentRootSigs, this.gmssPS, this.digestProvider));
    }

    private GMSSRootCalc generateCurrentAuthpathAndRoot(byte[] bArr, Vector vector, byte[] bArr2, int i10) {
        byte[] bArrVerify;
        int i11 = this.mdLength;
        byte[] bArr3 = new byte[i11];
        byte[] bArr4 = new byte[i11];
        byte[] bArrNextSeed = this.gmssRandom.nextSeed(bArr2);
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.heightOfTrees[i10], this.K[i10], this.digestProvider);
        gMSSRootCalc.initialize(vector);
        if (i10 == this.numLayer - 1) {
            bArrVerify = new WinternitzOTSignature(bArrNextSeed, this.digestProvider.get(), this.otsIndex[i10]).getPublicKey();
        } else {
            this.currentRootSigs[i10] = new WinternitzOTSignature(bArrNextSeed, this.digestProvider.get(), this.otsIndex[i10]).getSignature(bArr);
            bArrVerify = new WinternitzOTSVerify(this.digestProvider.get(), this.otsIndex[i10]).Verify(bArr, this.currentRootSigs[i10]);
        }
        gMSSRootCalc.update(bArrVerify);
        int i12 = 3;
        int i13 = 0;
        int i14 = 1;
        while (true) {
            int i15 = this.heightOfTrees[i10];
            if (i14 >= (1 << i15)) {
                break;
            }
            if (i14 == i12 && i13 < i15 - this.K[i10]) {
                gMSSRootCalc.initializeTreehashSeed(bArr2, i13);
                i12 *= 2;
                i13++;
            }
            gMSSRootCalc.update(new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr2), this.digestProvider.get(), this.otsIndex[i10]).getPublicKey());
            i14++;
        }
        if (gMSSRootCalc.wasFinished()) {
            return gMSSRootCalc;
        }
        System.err.getClass();
        return null;
    }

    private GMSSRootCalc generateNextAuthpathAndRoot(Vector vector, byte[] bArr, int i10) {
        byte[] bArr2 = new byte[this.numLayer];
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.heightOfTrees[i10], this.K[i10], this.digestProvider);
        gMSSRootCalc.initialize(vector);
        int i11 = 3;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = this.heightOfTrees[i10];
            if (i12 >= (1 << i14)) {
                break;
            }
            if (i12 == i11 && i13 < i14 - this.K[i10]) {
                gMSSRootCalc.initializeTreehashSeed(bArr, i13);
                i11 *= 2;
                i13++;
            }
            gMSSRootCalc.update(new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr), this.digestProvider.get(), this.otsIndex[i10]).getPublicKey());
            i12++;
        }
        if (gMSSRootCalc.wasFinished()) {
            return gMSSRootCalc;
        }
        System.err.getClass();
        return null;
    }

    private void initializeDefault() {
        initialize(new GMSSKeyGenerationParameters(null, new GMSSParameters(4, new int[]{10, 10, 10, 10}, new int[]{3, 3, 3, 3}, new int[]{2, 2, 2, 2})));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        return genKeyPair();
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        initialize(keyGenerationParameters);
    }

    public void initialize(int i10, SecureRandom secureRandom) {
        initialize(i10 <= 10 ? new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(1, new int[]{10}, new int[]{3}, new int[]{2})) : i10 <= 20 ? new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(2, new int[]{10, 10}, new int[]{5, 4}, new int[]{2, 2})) : new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(4, new int[]{10, 10, 10, 10}, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2})));
    }

    public void initialize(KeyGenerationParameters keyGenerationParameters) {
        GMSSKeyGenerationParameters gMSSKeyGenerationParameters = (GMSSKeyGenerationParameters) keyGenerationParameters;
        this.gmssParams = gMSSKeyGenerationParameters;
        GMSSParameters gMSSParameters = new GMSSParameters(gMSSKeyGenerationParameters.getParameters().getNumOfLayers(), this.gmssParams.getParameters().getHeightOfTrees(), this.gmssParams.getParameters().getWinternitzParameter(), this.gmssParams.getParameters().getK());
        this.gmssPS = gMSSParameters;
        this.numLayer = gMSSParameters.getNumOfLayers();
        this.heightOfTrees = this.gmssPS.getHeightOfTrees();
        this.otsIndex = this.gmssPS.getWinternitzParameter();
        this.K = this.gmssPS.getK();
        int[] iArr = {this.numLayer, this.mdLength};
        Class cls = Byte.TYPE;
        this.currentSeeds = (byte[][]) Array.newInstance((Class<?>) cls, iArr);
        this.nextNextSeeds = (byte[][]) Array.newInstance((Class<?>) cls, this.numLayer - 1, this.mdLength);
        SecureRandom random = keyGenerationParameters.getRandom();
        for (int i10 = 0; i10 < this.numLayer; i10++) {
            random.nextBytes(this.currentSeeds[i10]);
            this.gmssRandom.nextSeed(this.currentSeeds[i10]);
        }
        this.initialized = true;
    }
}
