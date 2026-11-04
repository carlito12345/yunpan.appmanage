package org.bouncycastle.jcajce.provider.symmetric;

import g.b;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.spec.IvParameterSpec;
import l2.z;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.bc.BCObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DefaultBufferedBlockCipher;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.engines.AESWrapEngine;
import org.bouncycastle.crypto.engines.AESWrapPadEngine;
import org.bouncycastle.crypto.engines.RFC3211WrapEngine;
import org.bouncycastle.crypto.engines.RFC5649WrapEngine;
import org.bouncycastle.crypto.generators.Poly1305KeyGenerator;
import org.bouncycastle.crypto.macs.CMac;
import org.bouncycastle.crypto.macs.GMac;
import org.bouncycastle.crypto.modes.AEADBlockCipher;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.modes.CCMBlockCipher;
import org.bouncycastle.crypto.modes.CCMModeCipher;
import org.bouncycastle.crypto.modes.CFBBlockCipher;
import org.bouncycastle.crypto.modes.GCMBlockCipher;
import org.bouncycastle.crypto.modes.OFBBlockCipher;
import org.bouncycastle.internal.asn1.cms.CCMParameters;
import org.bouncycastle.internal.asn1.cms.GCMParameters;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.digest.a;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseMac;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseSecretKeyFactory;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.GcmSpecUtil;
import org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
import org.bouncycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;
import org.bouncycastle.jcajce.spec.AEADParameterSpec;

/* loaded from: classes3.dex */
public final class AES {
    private static final Map<String, String> generalAesAttributes;

    public static class AESCCMMAC extends BaseMac {
        public AESCCMMAC() {
            super(new CCMMac());
        }
    }

    public static class AESCCMMAC128 extends BaseMac {
        public AESCCMMAC128() {
            super(128, new CCMMac());
        }
    }

    public static class AESCCMMAC192 extends BaseMac {
        public AESCCMMAC192() {
            super(192, new CCMMac());
        }
    }

    public static class AESCCMMAC256 extends BaseMac {
        public AESCCMMAC256() {
            super(256, new CCMMac());
        }
    }

    public static class AESCMAC extends BaseMac {
        public AESCMAC() {
            super(new CMac(AESEngine.newInstance()));
        }
    }

    public static class AESGMAC extends BaseMac {
        public AESGMAC() {
            super(new GMac(GCMBlockCipher.newInstance(AESEngine.newInstance())));
        }
    }

    public static class AlgParamGen extends BaseAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[16];
            if (this.random == null) {
                this.random = CryptoServicesRegistrar.getSecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersCreateParametersInstance = createParametersInstance("AES");
                algorithmParametersCreateParametersInstance.init(new IvParameterSpec(bArr));
                return algorithmParametersCreateParametersInstance;
            } catch (Exception e7) {
                throw new RuntimeException(e7.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
        }
    }

    public static class AlgParamGenCCM extends BaseAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws IOException {
            byte[] bArr = new byte[12];
            if (this.random == null) {
                this.random = new SecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersCreateParametersInstance = createParametersInstance("CCM");
                algorithmParametersCreateParametersInstance.init(new CCMParameters(bArr, 12).getEncoded());
                return algorithmParametersCreateParametersInstance;
            } catch (Exception e7) {
                throw new RuntimeException(e7.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
        }
    }

    public static class AlgParamGenGCM extends BaseAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws IOException {
            byte[] bArr = new byte[12];
            if (this.random == null) {
                this.random = new SecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersCreateParametersInstance = createParametersInstance("GCM");
                algorithmParametersCreateParametersInstance.init(new GCMParameters(bArr, 16).getEncoded());
                return algorithmParametersCreateParametersInstance;
            } catch (Exception e7) {
                throw new RuntimeException(e7.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
        }
    }

    public static class AlgParams extends IvAlgorithmParameters {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "AES IV";
        }
    }

    public static class AlgParamsCCM extends BaseAlgorithmParameters {
        private CCMParameters ccmParams;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            return this.ccmParams.getEncoded();
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (GcmSpecUtil.isGcmSpec(algorithmParameterSpec)) {
                this.ccmParams = CCMParameters.getInstance(GcmSpecUtil.extractGcmParameters(algorithmParameterSpec));
            } else {
                if (!(algorithmParameterSpec instanceof AEADParameterSpec)) {
                    throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: ".concat(algorithmParameterSpec.getClass().getName()));
                }
                AEADParameterSpec aEADParameterSpec = (AEADParameterSpec) algorithmParameterSpec;
                this.ccmParams = new CCMParameters(aEADParameterSpec.getNonce(), aEADParameterSpec.getMacSizeInBits() / 8);
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "CCM";
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
            if (cls == AlgorithmParameterSpec.class || GcmSpecUtil.isGcmSpec(cls)) {
                return GcmSpecUtil.gcmSpecExtractable() ? GcmSpecUtil.extractGcmSpec(this.ccmParams.toASN1Primitive()) : new AEADParameterSpec(this.ccmParams.getNonce(), this.ccmParams.getIcvLen() * 8);
            }
            if (cls == AEADParameterSpec.class) {
                return new AEADParameterSpec(this.ccmParams.getNonce(), this.ccmParams.getIcvLen() * 8);
            }
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.ccmParams.getNonce());
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: ".concat(cls.getName()));
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) throws IOException {
            if (isASN1FormatString(str)) {
                return this.ccmParams.getEncoded();
            }
            throw new IOException("unknown format specified");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            this.ccmParams = CCMParameters.getInstance(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!isASN1FormatString(str)) {
                throw new IOException("unknown format specified");
            }
            this.ccmParams = CCMParameters.getInstance(bArr);
        }
    }

    public static class AlgParamsGCM extends BaseAlgorithmParameters {
        private GCMParameters gcmParams;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            return this.gcmParams.getEncoded();
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (GcmSpecUtil.isGcmSpec(algorithmParameterSpec)) {
                this.gcmParams = GcmSpecUtil.extractGcmParameters(algorithmParameterSpec);
            } else {
                if (!(algorithmParameterSpec instanceof AEADParameterSpec)) {
                    throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: ".concat(algorithmParameterSpec.getClass().getName()));
                }
                AEADParameterSpec aEADParameterSpec = (AEADParameterSpec) algorithmParameterSpec;
                this.gcmParams = new GCMParameters(aEADParameterSpec.getNonce(), aEADParameterSpec.getMacSizeInBits() / 8);
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "GCM";
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
            if (cls == AlgorithmParameterSpec.class || GcmSpecUtil.isGcmSpec(cls)) {
                return GcmSpecUtil.gcmSpecExtractable() ? GcmSpecUtil.extractGcmSpec(this.gcmParams.toASN1Primitive()) : new AEADParameterSpec(this.gcmParams.getNonce(), this.gcmParams.getIcvLen() * 8);
            }
            if (cls == AEADParameterSpec.class) {
                return new AEADParameterSpec(this.gcmParams.getNonce(), this.gcmParams.getIcvLen() * 8);
            }
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.gcmParams.getNonce());
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: ".concat(cls.getName()));
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) throws IOException {
            if (isASN1FormatString(str)) {
                return this.gcmParams.getEncoded();
            }
            throw new IOException("unknown format specified");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            this.gcmParams = GCMParameters.getInstance(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!isASN1FormatString(str)) {
                throw new IOException("unknown format specified");
            }
            this.gcmParams = GCMParameters.getInstance(bArr);
        }
    }

    public static class CBC extends BaseBlockCipher {
        public CBC() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()), 128);
        }
    }

    public static class CBC128 extends BaseBlockCipher {
        public CBC128() {
            super(128, CBCBlockCipher.newInstance(AESEngine.newInstance()), 128);
        }
    }

    public static class CBC192 extends BaseBlockCipher {
        public CBC192() {
            super(192, CBCBlockCipher.newInstance(AESEngine.newInstance()), 128);
        }
    }

    public static class CBC256 extends BaseBlockCipher {
        public CBC256() {
            super(192, CBCBlockCipher.newInstance(AESEngine.newInstance()), 128);
        }
    }

    public static class CCM extends BaseBlockCipher {
        public CCM() {
            super((AEADBlockCipher) CCMBlockCipher.newInstance(AESEngine.newInstance()), false, 12);
        }
    }

    public static class CCM128 extends BaseBlockCipher {
        public CCM128() {
            super(128, CCMBlockCipher.newInstance(AESEngine.newInstance()), false, 12);
        }
    }

    public static class CCM192 extends BaseBlockCipher {
        public CCM192() {
            super(192, CCMBlockCipher.newInstance(AESEngine.newInstance()), false, 12);
        }
    }

    public static class CCM256 extends BaseBlockCipher {
        public CCM256() {
            super(256, CCMBlockCipher.newInstance(AESEngine.newInstance()), false, 12);
        }
    }

    public static class CCMMac implements Mac {
        private final CCMModeCipher ccm = CCMBlockCipher.newInstance(AESEngine.newInstance());
        private int macLength = 8;

        @Override // org.bouncycastle.crypto.Mac
        public int doFinal(byte[] bArr, int i10) {
            try {
                return this.ccm.doFinal(bArr, 0);
            } catch (InvalidCipherTextException e7) {
                throw new IllegalStateException("exception on doFinal(): " + e7.toString());
            }
        }

        @Override // org.bouncycastle.crypto.Mac
        public String getAlgorithmName() {
            return this.ccm.getAlgorithmName() + "Mac";
        }

        @Override // org.bouncycastle.crypto.Mac
        public int getMacSize() {
            return this.macLength;
        }

        @Override // org.bouncycastle.crypto.Mac
        public void init(CipherParameters cipherParameters) {
            this.ccm.init(true, cipherParameters);
            this.macLength = this.ccm.getMac().length;
        }

        @Override // org.bouncycastle.crypto.Mac
        public void reset() {
            this.ccm.reset();
        }

        @Override // org.bouncycastle.crypto.Mac
        public void update(byte b10) {
            this.ccm.processAADByte(b10);
        }

        @Override // org.bouncycastle.crypto.Mac
        public void update(byte[] bArr, int i10, int i11) {
            this.ccm.processAADBytes(bArr, i10, i11);
        }
    }

    public static class CFB extends BaseBlockCipher {
        public CFB() {
            super(new DefaultBufferedBlockCipher(CFBBlockCipher.newInstance(AESEngine.newInstance(), 128)), 128);
        }
    }

    public static class CFB128 extends BaseBlockCipher {
        public CFB128() {
            super(128, new DefaultBufferedBlockCipher(CFBBlockCipher.newInstance(AESEngine.newInstance(), 128)), 128);
        }
    }

    public static class CFB192 extends BaseBlockCipher {
        public CFB192() {
            super(192, new DefaultBufferedBlockCipher(CFBBlockCipher.newInstance(AESEngine.newInstance(), 128)), 128);
        }
    }

    public static class CFB256 extends BaseBlockCipher {
        public CFB256() {
            super(256, new DefaultBufferedBlockCipher(CFBBlockCipher.newInstance(AESEngine.newInstance(), 128)), 128);
        }
    }

    public static class ECB extends BaseBlockCipher {
        public ECB() {
            super(new BlockCipherProvider() { // from class: org.bouncycastle.jcajce.provider.symmetric.AES.ECB.1
                @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
                public BlockCipher get() {
                    return AESEngine.newInstance();
                }
            });
        }
    }

    public static class ECB128 extends BaseBlockCipher {
        public ECB128() {
            super(128, new BlockCipherProvider() { // from class: org.bouncycastle.jcajce.provider.symmetric.AES.ECB128.1
                @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
                public BlockCipher get() {
                    return AESEngine.newInstance();
                }
            });
        }
    }

    public static class ECB192 extends BaseBlockCipher {
        public ECB192() {
            super(192, new BlockCipherProvider() { // from class: org.bouncycastle.jcajce.provider.symmetric.AES.ECB192.1
                @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
                public BlockCipher get() {
                    return AESEngine.newInstance();
                }
            });
        }
    }

    public static class ECB256 extends BaseBlockCipher {
        public ECB256() {
            super(256, new BlockCipherProvider() { // from class: org.bouncycastle.jcajce.provider.symmetric.AES.ECB256.1
                @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
                public BlockCipher get() {
                    return AESEngine.newInstance();
                }
            });
        }
    }

    public static class GCM extends BaseBlockCipher {
        public GCM() {
            super(GCMBlockCipher.newInstance(AESEngine.newInstance()));
        }
    }

    public static class GCM128 extends BaseBlockCipher {
        public GCM128() {
            super(128, GCMBlockCipher.newInstance(AESEngine.newInstance()));
        }
    }

    public static class GCM192 extends BaseBlockCipher {
        public GCM192() {
            super(192, GCMBlockCipher.newInstance(AESEngine.newInstance()));
        }
    }

    public static class GCM256 extends BaseBlockCipher {
        public GCM256() {
            super(256, GCMBlockCipher.newInstance(AESEngine.newInstance()));
        }
    }

    public static class KeyFactory extends BaseSecretKeyFactory {
        public KeyFactory() {
            super("AES", null);
        }
    }

    public static class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            this(192);
        }

        public KeyGen(int i10) {
            super("AES", i10, new CipherKeyGenerator());
        }
    }

    public static class KeyGen128 extends KeyGen {
        public KeyGen128() {
            super(128);
        }
    }

    public static class KeyGen192 extends KeyGen {
        public KeyGen192() {
            super(192);
        }
    }

    public static class KeyGen256 extends KeyGen {
        public KeyGen256() {
            super(256);
        }
    }

    public static class Mappings extends SymmetricAlgorithmProvider {
        private static final String PREFIX = AES.class.getName();
        private static final String wrongAES128 = "2.16.840.1.101.3.4.2";
        private static final String wrongAES192 = "2.16.840.1.101.3.4.22";
        private static final String wrongAES256 = "2.16.840.1.101.3.4.42";

        @Override // org.bouncycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            StringBuilder sb2 = new StringBuilder();
            String str = PREFIX;
            a.q(str, "$AlgParams", "AlgorithmParameters.AES", sb2, configurableProvider);
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42", "AES");
            StringBuilder sb3 = new StringBuilder("Alg.Alias.AlgorithmParameters.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier = NISTObjectIdentifiers.id_aes128_CBC;
            StringBuilder sbU = z.u("AES", "Alg.Alias.AlgorithmParameters.", sb3, aSN1ObjectIdentifier, configurableProvider);
            ASN1ObjectIdentifier aSN1ObjectIdentifier2 = NISTObjectIdentifiers.id_aes192_CBC;
            StringBuilder sbU2 = z.u("AES", "Alg.Alias.AlgorithmParameters.", sbU, aSN1ObjectIdentifier2, configurableProvider);
            ASN1ObjectIdentifier aSN1ObjectIdentifier3 = NISTObjectIdentifiers.id_aes256_CBC;
            StringBuilder sbA = z.A("AES", str, sbU2, aSN1ObjectIdentifier3, configurableProvider);
            sbA.append("$AlgParamsGCM");
            configurableProvider.addAlgorithm("AlgorithmParameters.GCM", sbA.toString());
            StringBuilder sb4 = new StringBuilder("Alg.Alias.AlgorithmParameters.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier4 = NISTObjectIdentifiers.id_aes128_GCM;
            StringBuilder sbU3 = z.u("GCM", "Alg.Alias.AlgorithmParameters.", sb4, aSN1ObjectIdentifier4, configurableProvider);
            ASN1ObjectIdentifier aSN1ObjectIdentifier5 = NISTObjectIdentifiers.id_aes192_GCM;
            StringBuilder sbU4 = z.u("GCM", "Alg.Alias.AlgorithmParameters.", sbU3, aSN1ObjectIdentifier5, configurableProvider);
            ASN1ObjectIdentifier aSN1ObjectIdentifier6 = NISTObjectIdentifiers.id_aes256_GCM;
            StringBuilder sbA2 = z.A("GCM", str, sbU4, aSN1ObjectIdentifier6, configurableProvider);
            sbA2.append("$AlgParamsCCM");
            configurableProvider.addAlgorithm("AlgorithmParameters.CCM", sbA2.toString());
            StringBuilder sb5 = new StringBuilder("Alg.Alias.AlgorithmParameters.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier7 = NISTObjectIdentifiers.id_aes128_CCM;
            StringBuilder sbU5 = z.u("CCM", "Alg.Alias.AlgorithmParameters.", sb5, aSN1ObjectIdentifier7, configurableProvider);
            ASN1ObjectIdentifier aSN1ObjectIdentifier8 = NISTObjectIdentifiers.id_aes192_CCM;
            StringBuilder sbU6 = z.u("CCM", "Alg.Alias.AlgorithmParameters.", sbU5, aSN1ObjectIdentifier8, configurableProvider);
            ASN1ObjectIdentifier aSN1ObjectIdentifier9 = NISTObjectIdentifiers.id_aes256_CCM;
            a.r(z.A("CCM", str, sbU6, aSN1ObjectIdentifier9, configurableProvider), "$AlgParamGen", configurableProvider, "AlgorithmParameterGenerator.AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.2", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.22", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.42", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + aSN1ObjectIdentifier, "AES");
            StringBuilder sbU7 = z.u("AES", "Alg.Alias.AlgorithmParameterGenerator.", new StringBuilder("Alg.Alias.AlgorithmParameterGenerator."), aSN1ObjectIdentifier2, configurableProvider);
            sbU7.append(aSN1ObjectIdentifier3);
            configurableProvider.addAlgorithm(sbU7.toString(), "AES");
            configurableProvider.addAttributes("Cipher.AES", AES.generalAesAttributes);
            a.q(str, "$ECB", "Cipher.AES", new StringBuilder(), configurableProvider);
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.2.16.840.1.101.3.4.2", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.2.16.840.1.101.3.4.22", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.2.16.840.1.101.3.4.42", "AES");
            ASN1ObjectIdentifier aSN1ObjectIdentifier10 = NISTObjectIdentifiers.id_aes128_ECB;
            a.s(configurableProvider, str, "$ECB128", "Cipher", aSN1ObjectIdentifier10);
            ASN1ObjectIdentifier aSN1ObjectIdentifier11 = NISTObjectIdentifiers.id_aes192_ECB;
            a.s(configurableProvider, str, "$ECB192", "Cipher", aSN1ObjectIdentifier11);
            ASN1ObjectIdentifier aSN1ObjectIdentifier12 = NISTObjectIdentifiers.id_aes256_ECB;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier12, str + "$ECB256");
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier3, b.l(str, "$CBC256", a.j("$CBC192", "Cipher", a.k(configurableProvider, "Cipher", b.l(str, "$CBC128", new StringBuilder()), str, aSN1ObjectIdentifier), aSN1ObjectIdentifier2, configurableProvider)));
            ASN1ObjectIdentifier aSN1ObjectIdentifier13 = NISTObjectIdentifiers.id_aes128_OFB;
            a.s(configurableProvider, str, "$OFB128", "Cipher", aSN1ObjectIdentifier13);
            ASN1ObjectIdentifier aSN1ObjectIdentifier14 = NISTObjectIdentifiers.id_aes192_OFB;
            a.s(configurableProvider, str, "$OFB192", "Cipher", aSN1ObjectIdentifier14);
            ASN1ObjectIdentifier aSN1ObjectIdentifier15 = NISTObjectIdentifiers.id_aes256_OFB;
            a.s(configurableProvider, str, "$OFB256", "Cipher", aSN1ObjectIdentifier15);
            ASN1ObjectIdentifier aSN1ObjectIdentifier16 = NISTObjectIdentifiers.id_aes128_CFB;
            a.s(configurableProvider, str, "$CFB128", "Cipher", aSN1ObjectIdentifier16);
            ASN1ObjectIdentifier aSN1ObjectIdentifier17 = NISTObjectIdentifiers.id_aes192_CFB;
            a.s(configurableProvider, str, "$CFB192", "Cipher", aSN1ObjectIdentifier17);
            ASN1ObjectIdentifier aSN1ObjectIdentifier18 = NISTObjectIdentifiers.id_aes256_CFB;
            configurableProvider.addAlgorithm("Cipher", aSN1ObjectIdentifier18, str + "$CFB256");
            configurableProvider.addAttributes("Cipher.AESWRAP", AES.generalAesAttributes);
            configurableProvider.addAlgorithm("Cipher.AESWRAP", str + "$Wrap");
            ASN1ObjectIdentifier aSN1ObjectIdentifier19 = NISTObjectIdentifiers.id_aes128_wrap;
            a.s(configurableProvider, str, "$Wrap128", "Cipher", aSN1ObjectIdentifier19);
            ASN1ObjectIdentifier aSN1ObjectIdentifier20 = NISTObjectIdentifiers.id_aes192_wrap;
            a.s(configurableProvider, str, "$Wrap192", "Cipher", aSN1ObjectIdentifier20);
            ASN1ObjectIdentifier aSN1ObjectIdentifier21 = NISTObjectIdentifiers.id_aes256_wrap;
            a.s(configurableProvider, str, "$Wrap256", "Cipher", aSN1ObjectIdentifier21);
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.AESKW", "AESWRAP");
            configurableProvider.addAttributes("Cipher.AESWRAPPAD", AES.generalAesAttributes);
            StringBuilder sb6 = new StringBuilder();
            sb6.append(str);
            a.r(sb6, "$WrapPad", configurableProvider, "Cipher.AESWRAPPAD");
            ASN1ObjectIdentifier aSN1ObjectIdentifier22 = NISTObjectIdentifiers.id_aes128_wrap_pad;
            a.s(configurableProvider, str, "$WrapPad128", "Cipher", aSN1ObjectIdentifier22);
            ASN1ObjectIdentifier aSN1ObjectIdentifier23 = NISTObjectIdentifiers.id_aes192_wrap_pad;
            a.s(configurableProvider, str, "$WrapPad192", "Cipher", aSN1ObjectIdentifier23);
            ASN1ObjectIdentifier aSN1ObjectIdentifier24 = NISTObjectIdentifiers.id_aes256_wrap_pad;
            a.s(configurableProvider, str, "$WrapPad256", "Cipher", aSN1ObjectIdentifier24);
            configurableProvider.addAlgorithm(z.q(configurableProvider, z.q(configurableProvider, z.q(configurableProvider, "AlgorithmParameterGenerator.CCM", a.e("Cipher.AESRFC5649WRAP", a.e("Cipher.AESRFC3211WRAP", a.e("Alg.Alias.Cipher.AESKWP", "AESWRAPPAD", str, "$RFC3211Wrap", configurableProvider), str, "$RFC5649Wrap", configurableProvider), str, "$AlgParamGenCCM", configurableProvider), "Alg.Alias.AlgorithmParameterGenerator.", aSN1ObjectIdentifier7), "CCM", "Alg.Alias.AlgorithmParameterGenerator.", aSN1ObjectIdentifier8), "CCM", "Alg.Alias.AlgorithmParameterGenerator.", aSN1ObjectIdentifier9), "CCM");
            configurableProvider.addAttributes("Cipher.CCM", AES.generalAesAttributes);
            StringBuilder sb7 = new StringBuilder();
            sb7.append(str);
            StringBuilder sbJ = a.j("$CCM256", "Cipher", a.k(configurableProvider, "Cipher", b.l(str, "$CCM192", a.j("$CCM128", "Cipher", a.i("$CCM", "Cipher.CCM", str, sb7, configurableProvider), aSN1ObjectIdentifier7, configurableProvider)), str, aSN1ObjectIdentifier8), aSN1ObjectIdentifier9, configurableProvider);
            sbJ.append(str);
            sbJ.append("$AlgParamGenGCM");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.GCM", sbJ.toString());
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + aSN1ObjectIdentifier4, "GCM");
            StringBuilder sbU8 = z.u("GCM", "Alg.Alias.AlgorithmParameterGenerator.", new StringBuilder("Alg.Alias.AlgorithmParameterGenerator."), aSN1ObjectIdentifier5, configurableProvider);
            sbU8.append(aSN1ObjectIdentifier6);
            configurableProvider.addAlgorithm(sbU8.toString(), "GCM");
            configurableProvider.addAttributes("Cipher.GCM", AES.generalAesAttributes);
            StringBuilder sbI = a.i("$AESCMAC", "Mac.AESCMAC", str, a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen256", a.j("$KeyGen192", "KeyGenerator", a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen128", z.t(str, "$KeyGen", "KeyGenerator.AESWRAPPAD", a.j("$KeyGen256", "KeyGenerator", a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen192", a.j("$KeyGen128", "KeyGenerator", a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen256", a.j("$KeyGen192", "KeyGenerator", a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen128", a.j("$KeyGen256", "KeyGenerator", a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen192", a.j("$KeyGen128", "KeyGenerator", a.i("$KeyGen", "KeyGenerator.AESWRAP", str, a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen256", a.j("$KeyGen256", "KeyGenerator", a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen256", a.j("$KeyGen256", "KeyGenerator", a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen192", a.j("$KeyGen192", "KeyGenerator", a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen192", a.j("$KeyGen192", "KeyGenerator", a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen128", a.j("$KeyGen128", "KeyGenerator", a.k(configurableProvider, "KeyGenerator", b.l(str, "$KeyGen128", a.j("$KeyGen128", "KeyGenerator", a.i("$KeyGen256", "KeyGenerator.2.16.840.1.101.3.4.42", str, a.i("$KeyGen192", "KeyGenerator.2.16.840.1.101.3.4.22", str, a.i("$KeyGen128", "KeyGenerator.2.16.840.1.101.3.4.2", str, a.i("$KeyGen", "KeyGenerator.AES", str, a.k(configurableProvider, "Cipher", b.l(str, "$GCM256", a.j("$GCM192", "Cipher", a.k(configurableProvider, "Cipher", b.l(str, "$GCM128", z.t(str, "$GCM", "Cipher.GCM", new StringBuilder(), configurableProvider)), str, aSN1ObjectIdentifier4), aSN1ObjectIdentifier5, configurableProvider)), str, aSN1ObjectIdentifier6), configurableProvider), configurableProvider), configurableProvider), configurableProvider), aSN1ObjectIdentifier10, configurableProvider)), str, aSN1ObjectIdentifier), aSN1ObjectIdentifier13, configurableProvider)), str, aSN1ObjectIdentifier16), aSN1ObjectIdentifier11, configurableProvider)), str, aSN1ObjectIdentifier2), aSN1ObjectIdentifier14, configurableProvider)), str, aSN1ObjectIdentifier17), aSN1ObjectIdentifier12, configurableProvider)), str, aSN1ObjectIdentifier3), aSN1ObjectIdentifier15, configurableProvider)), str, aSN1ObjectIdentifier18), configurableProvider), aSN1ObjectIdentifier19, configurableProvider)), str, aSN1ObjectIdentifier20), aSN1ObjectIdentifier21, configurableProvider)), str, aSN1ObjectIdentifier4), aSN1ObjectIdentifier5, configurableProvider)), str, aSN1ObjectIdentifier6), aSN1ObjectIdentifier7, configurableProvider)), str, aSN1ObjectIdentifier8), aSN1ObjectIdentifier9, configurableProvider), configurableProvider)), str, aSN1ObjectIdentifier22), aSN1ObjectIdentifier23, configurableProvider)), str, aSN1ObjectIdentifier24), configurableProvider);
            sbI.append("$AESCCMMAC");
            configurableProvider.addAlgorithm("Mac.AESCCMMAC", sbI.toString());
            StringBuilder sbS = z.s(str, "$AESCCMMAC128", "Mac." + aSN1ObjectIdentifier7.getId(), "Mac.", configurableProvider);
            sbS.append(aSN1ObjectIdentifier8.getId());
            StringBuilder sbS2 = z.s(str, "$AESCCMMAC192", sbS.toString(), "Mac.", configurableProvider);
            sbS2.append(aSN1ObjectIdentifier9.getId());
            configurableProvider.addAlgorithm(sbS2.toString(), str + "$AESCCMMAC256");
            ASN1ObjectIdentifier aSN1ObjectIdentifier25 = BCObjectIdentifiers.bc_pbe_sha1_pkcs12_aes128_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", aSN1ObjectIdentifier25, "PBEWITHSHAAND128BITAES-CBC-BC");
            ASN1ObjectIdentifier aSN1ObjectIdentifier26 = BCObjectIdentifiers.bc_pbe_sha1_pkcs12_aes192_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", aSN1ObjectIdentifier26, "PBEWITHSHAAND192BITAES-CBC-BC");
            ASN1ObjectIdentifier aSN1ObjectIdentifier27 = BCObjectIdentifiers.bc_pbe_sha1_pkcs12_aes256_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", aSN1ObjectIdentifier27, "PBEWITHSHAAND256BITAES-CBC-BC");
            ASN1ObjectIdentifier aSN1ObjectIdentifier28 = BCObjectIdentifiers.bc_pbe_sha256_pkcs12_aes128_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", aSN1ObjectIdentifier28, "PBEWITHSHA256AND128BITAES-CBC-BC");
            ASN1ObjectIdentifier aSN1ObjectIdentifier29 = BCObjectIdentifiers.bc_pbe_sha256_pkcs12_aes192_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", aSN1ObjectIdentifier29, "PBEWITHSHA256AND192BITAES-CBC-BC");
            ASN1ObjectIdentifier aSN1ObjectIdentifier30 = BCObjectIdentifiers.bc_pbe_sha256_pkcs12_aes256_cbc;
            a.r(a.i("$PBEWithSHA256AESCBC192", "Cipher.PBEWITHSHA256AND192BITAES-CBC-BC", str, a.i("$PBEWithSHA256AESCBC128", "Cipher.PBEWITHSHA256AND128BITAES-CBC-BC", str, a.i("$PBEWithSHA1AESCBC256", "Cipher.PBEWITHSHAAND256BITAES-CBC-BC", str, a.i("$PBEWithSHA1AESCBC192", "Cipher.PBEWITHSHAAND192BITAES-CBC-BC", str, a.i("$PBEWithSHA1AESCBC128", "Cipher.PBEWITHSHAAND128BITAES-CBC-BC", str, a.k(configurableProvider, "Alg.Alias.Cipher", "PBEWITHSHA256AND256BITAES-CBC-BC", str, aSN1ObjectIdentifier30), configurableProvider), configurableProvider), configurableProvider), configurableProvider), configurableProvider), "$PBEWithSHA256AESCBC256", configurableProvider, "Cipher.PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHAAND128BITAES-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHAAND192BITAES-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHAAND256BITAES-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-CBC-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-CBC-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-CBC-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA256AND128BITAES-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA256AND192BITAES-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA256AND256BITAES-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            a.q(str, "$KeyFactory", "SecretKeyFactory.AES", z.t(str, "$PBEWithAESCBC", "Cipher.PBEWITHMD5AND256BITAES-CBC-OPENSSL", z.t(str, "$PBEWithAESCBC", "Cipher.PBEWITHMD5AND192BITAES-CBC-OPENSSL", z.t(str, "$PBEWithAESCBC", "Cipher.PBEWITHMD5AND128BITAES-CBC-OPENSSL", a.h("Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-BC", "PBEWITHSHA256AND192BITAES-CBC-BC", "Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-BC", "PBEWITHSHA256AND256BITAES-CBC-BC", configurableProvider), configurableProvider), configurableProvider), configurableProvider), configurableProvider);
            configurableProvider.addAlgorithm("SecretKeyFactory", NISTObjectIdentifiers.aes, str + "$KeyFactory");
            a.q(str, "$PBEWithSHA256And256BitAESBC", "SecretKeyFactory.PBEWITHSHA256AND256BITAES-CBC-BC", z.t(str, "$PBEWithSHA256And192BitAESBC", "SecretKeyFactory.PBEWITHSHA256AND192BITAES-CBC-BC", z.t(str, "$PBEWithSHA256And128BitAESBC", "SecretKeyFactory.PBEWITHSHA256AND128BITAES-CBC-BC", z.t(str, "$PBEWithSHAAnd256BitAESBC", "SecretKeyFactory.PBEWITHSHAAND256BITAES-CBC-BC", z.t(str, "$PBEWithSHAAnd192BitAESBC", "SecretKeyFactory.PBEWITHSHAAND192BITAES-CBC-BC", z.t(str, "$PBEWithSHAAnd128BitAESBC", "SecretKeyFactory.PBEWITHSHAAND128BITAES-CBC-BC", z.t(str, "$PBEWithMD5And256BitAESCBCOpenSSL", "SecretKeyFactory.PBEWITHMD5AND256BITAES-CBC-OPENSSL", z.t(str, "$PBEWithMD5And192BitAESCBCOpenSSL", "SecretKeyFactory.PBEWITHMD5AND192BITAES-CBC-OPENSSL", z.t(str, "$PBEWithMD5And128BitAESCBCOpenSSL", "SecretKeyFactory.PBEWITHMD5AND128BITAES-CBC-OPENSSL", new StringBuilder(), configurableProvider), configurableProvider), configurableProvider), configurableProvider), configurableProvider), configurableProvider), configurableProvider), configurableProvider), configurableProvider);
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-CBC-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-CBC-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-CBC-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", aSN1ObjectIdentifier25, "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", aSN1ObjectIdentifier26, "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", aSN1ObjectIdentifier27, "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", aSN1ObjectIdentifier28, "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", aSN1ObjectIdentifier29, "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", aSN1ObjectIdentifier30, "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + aSN1ObjectIdentifier25.getId(), "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + aSN1ObjectIdentifier26.getId(), "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + aSN1ObjectIdentifier27.getId(), "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + aSN1ObjectIdentifier28.getId(), "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + aSN1ObjectIdentifier29.getId(), "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + aSN1ObjectIdentifier30.getId(), "PKCS12PBE");
            addGMacAlgorithm(configurableProvider, "AES", str + "$AESGMAC", b.j(str, "$KeyGen128"));
            addPoly1305Algorithm(configurableProvider, "AES", b.j(str, "$Poly1305"), b.j(str, "$Poly1305KeyGen"));
        }
    }

    public static class OFB extends BaseBlockCipher {
        public OFB() {
            super(new DefaultBufferedBlockCipher(new OFBBlockCipher(AESEngine.newInstance(), 128)), 128);
        }
    }

    public static class OFB128 extends BaseBlockCipher {
        public OFB128() {
            super(128, new DefaultBufferedBlockCipher(new OFBBlockCipher(AESEngine.newInstance(), 128)), 128);
        }
    }

    public static class OFB192 extends BaseBlockCipher {
        public OFB192() {
            super(192, new DefaultBufferedBlockCipher(new OFBBlockCipher(AESEngine.newInstance(), 128)), 128);
        }
    }

    public static class OFB256 extends BaseBlockCipher {
        public OFB256() {
            super(256, new DefaultBufferedBlockCipher(new OFBBlockCipher(AESEngine.newInstance(), 128)), 128);
        }
    }

    public static class PBEWithAESCBC extends BaseBlockCipher {
        public PBEWithAESCBC() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()));
        }
    }

    public static class PBEWithMD5And128BitAESCBCOpenSSL extends PBESecretKeyFactory {
        public PBEWithMD5And128BitAESCBCOpenSSL() {
            super("PBEWithMD5And128BitAES-CBC-OpenSSL", null, true, 3, 0, 128, 128);
        }
    }

    public static class PBEWithMD5And192BitAESCBCOpenSSL extends PBESecretKeyFactory {
        public PBEWithMD5And192BitAESCBCOpenSSL() {
            super("PBEWithMD5And192BitAES-CBC-OpenSSL", null, true, 3, 0, 192, 128);
        }
    }

    public static class PBEWithMD5And256BitAESCBCOpenSSL extends PBESecretKeyFactory {
        public PBEWithMD5And256BitAESCBCOpenSSL() {
            super("PBEWithMD5And256BitAES-CBC-OpenSSL", null, true, 3, 0, 256, 128);
        }
    }

    public static class PBEWithSHA1AESCBC128 extends BaseBlockCipher {
        public PBEWithSHA1AESCBC128() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()), 2, 1, 128, 16);
        }
    }

    public static class PBEWithSHA1AESCBC192 extends BaseBlockCipher {
        public PBEWithSHA1AESCBC192() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()), 2, 1, 192, 16);
        }
    }

    public static class PBEWithSHA1AESCBC256 extends BaseBlockCipher {
        public PBEWithSHA1AESCBC256() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()), 2, 1, 256, 16);
        }
    }

    public static class PBEWithSHA256AESCBC128 extends BaseBlockCipher {
        public PBEWithSHA256AESCBC128() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()), 2, 4, 128, 16);
        }
    }

    public static class PBEWithSHA256AESCBC192 extends BaseBlockCipher {
        public PBEWithSHA256AESCBC192() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()), 2, 4, 192, 16);
        }
    }

    public static class PBEWithSHA256AESCBC256 extends BaseBlockCipher {
        public PBEWithSHA256AESCBC256() {
            super(CBCBlockCipher.newInstance(AESEngine.newInstance()), 2, 4, 256, 16);
        }
    }

    public static class PBEWithSHA256And128BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHA256And128BitAESBC() {
            super("PBEWithSHA256And128BitAES-CBC-BC", null, true, 2, 4, 128, 128);
        }
    }

    public static class PBEWithSHA256And192BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHA256And192BitAESBC() {
            super("PBEWithSHA256And192BitAES-CBC-BC", null, true, 2, 4, 192, 128);
        }
    }

    public static class PBEWithSHA256And256BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHA256And256BitAESBC() {
            super("PBEWithSHA256And256BitAES-CBC-BC", null, true, 2, 4, 256, 128);
        }
    }

    public static class PBEWithSHAAnd128BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHAAnd128BitAESBC() {
            super("PBEWithSHA1And128BitAES-CBC-BC", null, true, 2, 1, 128, 128);
        }
    }

    public static class PBEWithSHAAnd192BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHAAnd192BitAESBC() {
            super("PBEWithSHA1And192BitAES-CBC-BC", null, true, 2, 1, 192, 128);
        }
    }

    public static class PBEWithSHAAnd256BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHAAnd256BitAESBC() {
            super("PBEWithSHA1And256BitAES-CBC-BC", null, true, 2, 1, 256, 128);
        }
    }

    public static class Poly1305 extends BaseMac {
        public Poly1305() {
            super(new org.bouncycastle.crypto.macs.Poly1305(AESEngine.newInstance()));
        }
    }

    public static class Poly1305KeyGen extends BaseKeyGenerator {
        public Poly1305KeyGen() {
            super("Poly1305-AES", 256, new Poly1305KeyGenerator());
        }
    }

    public static class RFC3211Wrap extends BaseWrapCipher {
        public RFC3211Wrap() {
            super(new RFC3211WrapEngine(AESEngine.newInstance()), 16);
        }
    }

    public static class RFC5649Wrap extends BaseWrapCipher {
        public RFC5649Wrap() {
            super(new RFC5649WrapEngine(AESEngine.newInstance()));
        }
    }

    public static class Wrap extends BaseWrapCipher {
        public Wrap() {
            super(new AESWrapEngine());
        }
    }

    public static class Wrap128 extends BaseWrapCipher {
        public Wrap128() {
            super(new AESWrapEngine());
        }
    }

    public static class Wrap192 extends BaseWrapCipher {
        public Wrap192() {
            super(new AESWrapEngine());
        }
    }

    public static class Wrap256 extends BaseWrapCipher {
        public Wrap256() {
            super(new AESWrapEngine());
        }
    }

    public static class WrapPad extends BaseWrapCipher {
        public WrapPad() {
            super(new AESWrapPadEngine());
        }
    }

    public static class WrapPad128 extends BaseWrapCipher {
        public WrapPad128() {
            super(new AESWrapPadEngine());
        }
    }

    public static class WrapPad192 extends BaseWrapCipher {
        public WrapPad192() {
            super(new AESWrapPadEngine());
        }
    }

    public static class WrapPad256 extends BaseWrapCipher {
        public WrapPad256() {
            super(new AESWrapPadEngine());
        }
    }

    static {
        HashMap map = new HashMap();
        generalAesAttributes = map;
        map.put("SupportedKeyClasses", "javax.crypto.SecretKey");
        map.put("SupportedKeyFormats", "RAW");
    }

    private AES() {
    }
}
