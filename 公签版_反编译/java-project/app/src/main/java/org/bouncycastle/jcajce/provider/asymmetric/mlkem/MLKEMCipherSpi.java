package org.bouncycastle.jcajce.provider.asymmetric.mlkem;

import da.b;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.DestroyFailedException;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.SecretWithEncapsulation;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.jcajce.spec.KEMParameterSpec;
import org.bouncycastle.jcajce.spec.KTSParameterSpec;
import org.bouncycastle.jcajce.spec.MLKEMParameterSpec;
import org.bouncycastle.pqc.crypto.mlkem.MLKEMExtractor;
import org.bouncycastle.pqc.crypto.mlkem.MLKEMGenerator;
import org.bouncycastle.pqc.crypto.mlkem.MLKEMParameters;
import org.bouncycastle.pqc.jcajce.provider.util.WrapUtil;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Exceptions;

/* loaded from: classes3.dex */
class MLKEMCipherSpi extends CipherSpi {
    private final String algorithmName;
    private AlgorithmParameters engineParams;
    private MLKEMGenerator kemGen;
    private KTSParameterSpec kemParameterSpec;
    private MLKEMParameters mlkemParamters;
    private BCMLKEMPrivateKey unwrapKey;
    private BCMLKEMPublicKey wrapKey;

    public static class Base extends MLKEMCipherSpi {
        public Base() {
            super("MLKEM");
        }
    }

    public static class MLKEM1024 extends MLKEMCipherSpi {
        public MLKEM1024() {
            super(MLKEMParameters.ml_kem_1024);
        }
    }

    public static class MLKEM512 extends MLKEMCipherSpi {
        public MLKEM512() {
            super(MLKEMParameters.ml_kem_512);
        }
    }

    public static class MLKEM768 extends MLKEMCipherSpi {
        public MLKEM768() {
            super(MLKEMParameters.ml_kem_768);
        }
    }

    public MLKEMCipherSpi(String str) {
        this.algorithmName = str;
        this.mlkemParamters = null;
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        return 2048;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetOutputSize(int i10) {
        return -1;
    }

    @Override // javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() throws NoSuchAlgorithmException, InvalidParameterSpecException, NoSuchProviderException {
        if (this.engineParams == null) {
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(this.algorithmName, "BCPQC");
                this.engineParams = algorithmParameters;
                algorithmParameters.init(this.kemParameterSpec);
            } catch (Exception e7) {
                throw Exceptions.illegalStateException(e7.toString(), e7);
            }
        }
        return this.engineParams;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidParameterSpecException, InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(KEMParameterSpec.class);
            } catch (Exception unused) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        } else {
            parameterSpec = null;
        }
        engineInit(i10, key, parameterSpec, secureRandom);
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        throw new NoSuchAlgorithmException(b.c("Cannot support mode ", str));
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        throw new NoSuchPaddingException(g.b.A("Padding ", str, " unknown"));
    }

    @Override // javax.crypto.CipherSpi
    public Key engineUnwrap(byte[] bArr, String str, int i10) throws InvalidKeyException {
        if (i10 != 3) {
            throw new InvalidKeyException("only SECRET_KEY supported");
        }
        byte[] bArrExtractSecret = null;
        try {
            try {
                MLKEMExtractor mLKEMExtractor = new MLKEMExtractor(this.unwrapKey.getKeyParams());
                bArrExtractSecret = mLKEMExtractor.extractSecret(Arrays.copyOfRange(bArr, 0, mLKEMExtractor.getEncapsulationLength()));
                Wrapper keyUnwrapper = WrapUtil.getKeyUnwrapper(this.kemParameterSpec, bArrExtractSecret);
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, mLKEMExtractor.getEncapsulationLength(), bArr.length);
                return new SecretKeySpec(keyUnwrapper.unwrap(bArrCopyOfRange, 0, bArrCopyOfRange.length), str);
            } catch (IllegalArgumentException e7) {
                throw new NoSuchAlgorithmException("unable to extract KTS secret: " + e7.getMessage());
            } catch (InvalidCipherTextException e10) {
                throw new InvalidKeyException("unable to extract KTS secret: " + e10.getMessage());
            }
        } finally {
            if (bArrExtractSecret != null) {
                Arrays.clear(bArrExtractSecret);
            }
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineWrap(Key key) throws DestroyFailedException, IllegalBlockSizeException, InvalidKeyException {
        if (key.getEncoded() == null) {
            throw new InvalidKeyException("Cannot wrap key, null encoding.");
        }
        SecretWithEncapsulation secretWithEncapsulationGenerateEncapsulated = null;
        try {
            try {
                secretWithEncapsulationGenerateEncapsulated = this.kemGen.generateEncapsulated(this.wrapKey.getKeyParams());
                Wrapper keyWrapper = WrapUtil.getKeyWrapper(this.kemParameterSpec, secretWithEncapsulationGenerateEncapsulated.getSecret());
                byte[] encapsulation = secretWithEncapsulationGenerateEncapsulated.getEncapsulation();
                byte[] encoded = key.getEncoded();
                byte[] bArrConcatenate = Arrays.concatenate(encapsulation, keyWrapper.wrap(encoded, 0, encoded.length));
                Arrays.clear(encoded);
                try {
                    secretWithEncapsulationGenerateEncapsulated.destroy();
                    return bArrConcatenate;
                } catch (DestroyFailedException e7) {
                    throw new IllegalBlockSizeException("unable to destroy interim values: " + e7.getMessage());
                }
            } catch (IllegalArgumentException e10) {
                throw new IllegalBlockSizeException("unable to generate KTS secret: " + e10.getMessage());
            }
        } catch (Throwable th2) {
            if (secretWithEncapsulationGenerateEncapsulated != null) {
                try {
                    secretWithEncapsulationGenerateEncapsulated.destroy();
                } catch (DestroyFailedException e11) {
                    throw new IllegalBlockSizeException("unable to destroy interim values: " + e11.getMessage());
                }
            }
            throw th2;
        }
    }

    public MLKEMCipherSpi(MLKEMParameters mLKEMParameters) {
        this.mlkemParamters = mLKEMParameters;
        this.algorithmName = mLKEMParameters.getName();
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e7) {
            throw Exceptions.illegalArgumentException(e7.getMessage(), e7);
        }
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i10, int i11) {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        KTSParameterSpec kEMParameterSpec;
        if (algorithmParameterSpec == null) {
            kEMParameterSpec = new KEMParameterSpec("AES-KWP");
        } else {
            if (!(algorithmParameterSpec instanceof KTSParameterSpec)) {
                throw new InvalidAlgorithmParameterException(g.b.l(this.algorithmName, " can only accept KTSParameterSpec", new StringBuilder()));
            }
            kEMParameterSpec = (KTSParameterSpec) algorithmParameterSpec;
        }
        this.kemParameterSpec = kEMParameterSpec;
        if (i10 == 3) {
            if (!(key instanceof BCMLKEMPublicKey)) {
                throw new InvalidKeyException(g.b.l(this.algorithmName, " public key can be used for wrapping", new StringBuilder("Only a ")));
            }
            this.wrapKey = (BCMLKEMPublicKey) key;
            this.kemGen = new MLKEMGenerator(CryptoServicesRegistrar.getSecureRandom(secureRandom));
        } else {
            if (i10 != 4) {
                throw new InvalidParameterException("Cipher only valid for wrapping/unwrapping");
            }
            if (!(key instanceof BCMLKEMPrivateKey)) {
                throw new InvalidKeyException(g.b.l(this.algorithmName, " private key can be used for unwrapping", new StringBuilder("Only a ")));
            }
            this.unwrapKey = (BCMLKEMPrivateKey) key;
        }
        MLKEMParameters mLKEMParameters = this.mlkemParamters;
        if (mLKEMParameters != null) {
            String name = MLKEMParameterSpec.fromName(mLKEMParameters.getName()).getName();
            if (!name.equals(key.getAlgorithm())) {
                throw new InvalidKeyException("cipher locked to ".concat(name));
            }
        }
    }
}
