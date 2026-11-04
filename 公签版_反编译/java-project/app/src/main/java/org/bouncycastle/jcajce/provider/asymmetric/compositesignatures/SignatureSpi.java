package org.bouncycastle.jcajce.provider.asymmetric.compositesignatures;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.bouncycastle.asn1.ASN1BitString;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.internal.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.jcajce.CompositePrivateKey;
import org.bouncycastle.jcajce.CompositePublicKey;
import org.bouncycastle.jcajce.spec.ContextParameterSpec;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.util.Exceptions;

/* loaded from: classes3.dex */
public class SignatureSpi extends java.security.SignatureSpi {
    private static final String ML_DSA_44 = "ML-DSA-44";
    private static final String ML_DSA_65 = "ML-DSA-65";
    private static final String ML_DSA_87 = "ML-DSA-87";
    private static final Map<String, String> canonicalNames;
    private final ASN1ObjectIdentifier algorithm;
    private final Signature[] componentSignatures;
    private Key compositeKey;
    private ContextParameterSpec contextSpec;
    private final byte[] domain;
    private AlgorithmParameters engineParams;
    private final byte[] hashOID;
    private final JcaJceHelper helper;
    private final Digest preHashDigest;
    private boolean unprimed;

    public static final class HashMLDSA44_ECDSA_P256_SHA256 extends SignatureSpi {
        public HashMLDSA44_ECDSA_P256_SHA256() {
            super(MiscObjectIdentifiers.id_HashMLDSA44_ECDSA_P256_SHA256, new SHA256Digest(), NISTObjectIdentifiers.id_sha256);
        }
    }

    public static final class HashMLDSA44_Ed25519_SHA512 extends SignatureSpi {
        public HashMLDSA44_Ed25519_SHA512() {
            super(MiscObjectIdentifiers.id_HashMLDSA44_Ed25519_SHA512, new SHA512Digest(), NISTObjectIdentifiers.id_sha512);
        }
    }

    public static final class HashMLDSA44_RSA2048_PKCS15_SHA256 extends SignatureSpi {
        public HashMLDSA44_RSA2048_PKCS15_SHA256() {
            super(MiscObjectIdentifiers.id_HashMLDSA44_RSA2048_PKCS15_SHA256, new SHA256Digest(), NISTObjectIdentifiers.id_sha256);
        }
    }

    public static final class HashMLDSA44_RSA2048_PSS_SHA256 extends SignatureSpi {
        public HashMLDSA44_RSA2048_PSS_SHA256() {
            super(MiscObjectIdentifiers.id_HashMLDSA44_RSA2048_PSS_SHA256, new SHA256Digest(), NISTObjectIdentifiers.id_sha256);
        }
    }

    public static final class HashMLDSA65_ECDSA_P384_SHA512 extends SignatureSpi {
        public HashMLDSA65_ECDSA_P384_SHA512() {
            super(MiscObjectIdentifiers.id_HashMLDSA65_ECDSA_P384_SHA512, new SHA512Digest(), NISTObjectIdentifiers.id_sha512);
        }
    }

    public static final class HashMLDSA65_ECDSA_brainpoolP256r1_SHA512 extends SignatureSpi {
        public HashMLDSA65_ECDSA_brainpoolP256r1_SHA512() {
            super(MiscObjectIdentifiers.id_HashMLDSA65_ECDSA_brainpoolP256r1_SHA512, new SHA512Digest(), NISTObjectIdentifiers.id_sha512);
        }
    }

    public static final class HashMLDSA65_Ed25519_SHA512 extends SignatureSpi {
        public HashMLDSA65_Ed25519_SHA512() {
            super(MiscObjectIdentifiers.id_HashMLDSA65_Ed25519_SHA512, new SHA512Digest(), NISTObjectIdentifiers.id_sha512);
        }
    }

    public static final class HashMLDSA65_RSA3072_PKCS15_SHA512 extends SignatureSpi {
        public HashMLDSA65_RSA3072_PKCS15_SHA512() {
            super(MiscObjectIdentifiers.id_HashMLDSA65_RSA3072_PKCS15_SHA512, new SHA512Digest(), NISTObjectIdentifiers.id_sha512);
        }
    }

    public static final class HashMLDSA65_RSA3072_PSS_SHA512 extends SignatureSpi {
        public HashMLDSA65_RSA3072_PSS_SHA512() {
            super(MiscObjectIdentifiers.id_HashMLDSA65_RSA3072_PSS_SHA512, new SHA512Digest(), NISTObjectIdentifiers.id_sha512);
        }
    }

    public static final class HashMLDSA65_RSA4096_PKCS15_SHA512 extends SignatureSpi {
        public HashMLDSA65_RSA4096_PKCS15_SHA512() {
            super(MiscObjectIdentifiers.id_HashMLDSA65_RSA4096_PKCS15_SHA512, new SHA512Digest(), NISTObjectIdentifiers.id_sha512);
        }
    }

    public static final class HashMLDSA65_RSA4096_PSS_SHA512 extends SignatureSpi {
        public HashMLDSA65_RSA4096_PSS_SHA512() {
            super(MiscObjectIdentifiers.id_HashMLDSA65_RSA4096_PSS_SHA512, new SHA512Digest(), NISTObjectIdentifiers.id_sha512);
        }
    }

    public static final class HashMLDSA87_ECDSA_P384_SHA512 extends SignatureSpi {
        public HashMLDSA87_ECDSA_P384_SHA512() {
            super(MiscObjectIdentifiers.id_HashMLDSA87_ECDSA_P384_SHA512, new SHA512Digest(), NISTObjectIdentifiers.id_sha512);
        }
    }

    public static final class HashMLDSA87_ECDSA_brainpoolP384r1_SHA512 extends SignatureSpi {
        public HashMLDSA87_ECDSA_brainpoolP384r1_SHA512() {
            super(MiscObjectIdentifiers.id_HashMLDSA87_ECDSA_brainpoolP384r1_SHA512, new SHA512Digest(), NISTObjectIdentifiers.id_sha512);
        }
    }

    public static final class HashMLDSA87_Ed448_SHA512 extends SignatureSpi {
        public HashMLDSA87_Ed448_SHA512() {
            super(MiscObjectIdentifiers.id_HashMLDSA87_Ed448_SHA512, new SHA512Digest(), NISTObjectIdentifiers.id_sha512);
        }
    }

    public static final class MLDSA44_ECDSA_P256_SHA256 extends SignatureSpi {
        public MLDSA44_ECDSA_P256_SHA256() {
            super(MiscObjectIdentifiers.id_MLDSA44_ECDSA_P256_SHA256);
        }
    }

    public static final class MLDSA44_Ed25519_SHA512 extends SignatureSpi {
        public MLDSA44_Ed25519_SHA512() {
            super(MiscObjectIdentifiers.id_MLDSA44_Ed25519_SHA512);
        }
    }

    public static final class MLDSA44_RSA2048_PKCS15_SHA256 extends SignatureSpi {
        public MLDSA44_RSA2048_PKCS15_SHA256() {
            super(MiscObjectIdentifiers.id_MLDSA44_RSA2048_PKCS15_SHA256);
        }
    }

    public static final class MLDSA44_RSA2048_PSS_SHA256 extends SignatureSpi {
        public MLDSA44_RSA2048_PSS_SHA256() {
            super(MiscObjectIdentifiers.id_MLDSA44_RSA2048_PSS_SHA256);
        }
    }

    public static final class MLDSA65_ECDSA_P384_SHA384 extends SignatureSpi {
        public MLDSA65_ECDSA_P384_SHA384() {
            super(MiscObjectIdentifiers.id_MLDSA65_ECDSA_P384_SHA384);
        }
    }

    public static final class MLDSA65_ECDSA_brainpoolP256r1_SHA256 extends SignatureSpi {
        public MLDSA65_ECDSA_brainpoolP256r1_SHA256() {
            super(MiscObjectIdentifiers.id_MLDSA65_ECDSA_brainpoolP256r1_SHA256);
        }
    }

    public static final class MLDSA65_Ed25519_SHA512 extends SignatureSpi {
        public MLDSA65_Ed25519_SHA512() {
            super(MiscObjectIdentifiers.id_MLDSA65_Ed25519_SHA512);
        }
    }

    public static final class MLDSA65_RSA3072_PKCS15_SHA256 extends SignatureSpi {
        public MLDSA65_RSA3072_PKCS15_SHA256() {
            super(MiscObjectIdentifiers.id_MLDSA65_RSA3072_PKCS15_SHA256);
        }
    }

    public static final class MLDSA65_RSA3072_PSS_SHA256 extends SignatureSpi {
        public MLDSA65_RSA3072_PSS_SHA256() {
            super(MiscObjectIdentifiers.id_MLDSA65_RSA3072_PSS_SHA256);
        }
    }

    public static final class MLDSA65_RSA4096_PKCS15_SHA384 extends SignatureSpi {
        public MLDSA65_RSA4096_PKCS15_SHA384() {
            super(MiscObjectIdentifiers.id_MLDSA65_RSA4096_PKCS15_SHA384);
        }
    }

    public static final class MLDSA65_RSA4096_PSS_SHA384 extends SignatureSpi {
        public MLDSA65_RSA4096_PSS_SHA384() {
            super(MiscObjectIdentifiers.id_MLDSA65_RSA4096_PSS_SHA384);
        }
    }

    public static final class MLDSA87_ECDSA_P384_SHA384 extends SignatureSpi {
        public MLDSA87_ECDSA_P384_SHA384() {
            super(MiscObjectIdentifiers.id_MLDSA87_ECDSA_P384_SHA384);
        }
    }

    public static final class MLDSA87_ECDSA_brainpoolP384r1_SHA384 extends SignatureSpi {
        public MLDSA87_ECDSA_brainpoolP384r1_SHA384() {
            super(MiscObjectIdentifiers.id_MLDSA87_ECDSA_brainpoolP384r1_SHA384);
        }
    }

    public static final class MLDSA87_Ed448_SHA512 extends SignatureSpi {
        public MLDSA87_Ed448_SHA512() {
            super(MiscObjectIdentifiers.id_MLDSA87_Ed448_SHA512);
        }
    }

    static {
        HashMap map = new HashMap();
        canonicalNames = map;
        map.put("MLDSA44", ML_DSA_44);
        map.put("MLDSA65", ML_DSA_65);
        map.put("MLDSA87", ML_DSA_87);
        map.put(NISTObjectIdentifiers.id_ml_dsa_44.getId(), ML_DSA_44);
        map.put(NISTObjectIdentifiers.id_ml_dsa_65.getId(), ML_DSA_65);
        map.put(NISTObjectIdentifiers.id_ml_dsa_87.getId(), ML_DSA_87);
    }

    public SignatureSpi(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this(aSN1ObjectIdentifier, null, null);
    }

    private void baseSigInit() throws SignatureException, InvalidAlgorithmParameterException {
        try {
            this.componentSignatures[0].setParameter(new ContextParameterSpec(this.domain));
            if (this.preHashDigest == null) {
                int i10 = 0;
                while (true) {
                    Signature[] signatureArr = this.componentSignatures;
                    if (i10 >= signatureArr.length) {
                        break;
                    }
                    Signature signature = signatureArr[i10];
                    signature.update(this.domain);
                    ContextParameterSpec contextParameterSpec = this.contextSpec;
                    if (contextParameterSpec == null) {
                        signature.update((byte) 0);
                    } else {
                        byte[] context = contextParameterSpec.getContext();
                        signature.update((byte) context.length);
                        signature.update(context);
                    }
                    i10++;
                }
            }
            this.unprimed = false;
        } catch (InvalidAlgorithmParameterException unused) {
            throw new IllegalStateException("unable to set context on ML-DSA");
        }
    }

    private String getCanonicalName(String str) {
        String str2 = canonicalNames.get(str);
        return str2 != null ? str2 : str;
    }

    private void processPreHashedMessage() throws SignatureException {
        int digestSize = this.preHashDigest.getDigestSize();
        byte[] bArr = new byte[digestSize];
        this.preHashDigest.doFinal(bArr, 0);
        int i10 = 0;
        while (true) {
            Signature[] signatureArr = this.componentSignatures;
            if (i10 >= signatureArr.length) {
                return;
            }
            Signature signature = signatureArr[i10];
            byte[] bArr2 = this.domain;
            signature.update(bArr2, 0, bArr2.length);
            ContextParameterSpec contextParameterSpec = this.contextSpec;
            if (contextParameterSpec == null) {
                signature.update((byte) 0);
            } else {
                byte[] context = contextParameterSpec.getContext();
                signature.update((byte) context.length);
                signature.update(context);
            }
            byte[] bArr3 = this.hashOID;
            signature.update(bArr3, 0, bArr3.length);
            signature.update(bArr, 0, digestSize);
            i10++;
        }
    }

    private void setSigParameter(Signature signature, String str, List<String> list, List<AlgorithmParameterSpec> list2) throws InvalidAlgorithmParameterException {
        for (int i10 = 0; i10 != list.size(); i10++) {
            getCanonicalName(list.get(i10));
            if (list.get(i10).equals(str)) {
                signature.setParameter(list2.get(i10));
            }
        }
    }

    private void sigInitSign() throws InvalidKeyException {
        CompositePrivateKey compositePrivateKey = (CompositePrivateKey) this.compositeKey;
        int i10 = 0;
        while (true) {
            Signature[] signatureArr = this.componentSignatures;
            if (i10 >= signatureArr.length) {
                this.unprimed = true;
                return;
            } else {
                signatureArr[i10].initSign(compositePrivateKey.getPrivateKeys().get(i10));
                i10++;
            }
        }
    }

    private void sigInitVerify() throws InvalidKeyException {
        CompositePublicKey compositePublicKey = (CompositePublicKey) this.compositeKey;
        int i10 = 0;
        while (true) {
            Signature[] signatureArr = this.componentSignatures;
            if (i10 >= signatureArr.length) {
                this.unprimed = true;
                return;
            } else {
                signatureArr[i10].initVerify(compositePublicKey.getPublicKeys().get(i10));
                i10++;
            }
        }
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineGetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public final AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException {
        if (this.engineParams == null && this.contextSpec != null) {
            try {
                AlgorithmParameters algorithmParametersCreateAlgorithmParameters = this.helper.createAlgorithmParameters("CONTEXT");
                this.engineParams = algorithmParametersCreateAlgorithmParameters;
                algorithmParametersCreateAlgorithmParameters.init(this.contextSpec);
            } catch (Exception e7) {
                throw Exceptions.illegalStateException(e7.toString(), e7);
            }
        }
        return this.engineParams;
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof CompositePrivateKey)) {
            throw new InvalidKeyException("Private key is not composite.");
        }
        this.compositeKey = privateKey;
        if (!((CompositePrivateKey) privateKey).getAlgorithmIdentifier().equals((ASN1Primitive) this.algorithm)) {
            throw new InvalidKeyException("Provided composite private key cannot be used with the composite signature algorithm.");
        }
        sigInitSign();
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof CompositePublicKey)) {
            throw new InvalidKeyException("Public key is not composite.");
        }
        this.compositeKey = publicKey;
        if (!((CompositePublicKey) publicKey).getAlgorithmIdentifier().equals((ASN1Primitive) this.algorithm)) {
            throw new InvalidKeyException("Provided composite public key cannot be used with the composite signature algorithm.");
        }
        sigInitVerify();
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public byte[] engineSign() throws SignatureException {
        if (this.preHashDigest != null) {
            processPreHashedMessage();
        }
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        int i10 = 0;
        while (true) {
            try {
                Signature[] signatureArr = this.componentSignatures;
                if (i10 >= signatureArr.length) {
                    return new DERSequence(aSN1EncodableVector).getEncoded(ASN1Encoding.DER);
                }
                aSN1EncodableVector.add(new DERBitString(signatureArr[i10].sign()));
                i10++;
            } catch (IOException e7) {
                throw new SignatureException(e7.getMessage());
            }
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b10) throws SignatureException, InvalidAlgorithmParameterException {
        if (this.unprimed) {
            baseSigInit();
        }
        Digest digest = this.preHashDigest;
        if (digest != null) {
            digest.update(b10);
            return;
        }
        int i10 = 0;
        while (true) {
            Signature[] signatureArr = this.componentSignatures;
            if (i10 >= signatureArr.length) {
                return;
            }
            signatureArr[i10].update(b10);
            i10++;
        }
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(bArr);
        int i10 = 0;
        if (aSN1Sequence.size() != this.componentSignatures.length) {
            return false;
        }
        Digest digest = this.preHashDigest;
        if (digest != null && digest != null) {
            processPreHashedMessage();
        }
        boolean z = false;
        while (true) {
            Signature[] signatureArr = this.componentSignatures;
            if (i10 >= signatureArr.length) {
                return !z;
            }
            if (!signatureArr[i10].verify(ASN1BitString.getInstance(aSN1Sequence.getObjectAt(i10)).getOctets())) {
                z = true;
            }
            i10++;
        }
    }

    public SignatureSpi(ASN1ObjectIdentifier aSN1ObjectIdentifier, Digest digest, ASN1ObjectIdentifier aSN1ObjectIdentifier2) {
        this.helper = new BCJcaJceHelper();
        this.engineParams = null;
        this.unprimed = true;
        this.algorithm = aSN1ObjectIdentifier;
        this.preHashDigest = digest;
        String[] pairing = CompositeIndex.getPairing(aSN1ObjectIdentifier);
        if (digest != null) {
            try {
                this.hashOID = aSN1ObjectIdentifier2.getEncoded();
            } catch (IOException unused) {
                throw new IllegalStateException("unable to encode domain value");
            }
        } else {
            this.hashOID = null;
        }
        try {
            this.domain = aSN1ObjectIdentifier.getEncoded();
            this.componentSignatures = new Signature[pairing.length];
            int i10 = 0;
            while (true) {
                try {
                    Signature[] signatureArr = this.componentSignatures;
                    if (i10 == signatureArr.length) {
                        return;
                    }
                    signatureArr[i10] = Signature.getInstance(pairing[i10], BouncyCastleProvider.PROVIDER_NAME);
                    i10++;
                } catch (GeneralSecurityException e7) {
                    throw Exceptions.illegalStateException(e7.getMessage(), e7);
                }
            }
        } catch (IOException unused2) {
            throw new IllegalStateException("unable to encode domain value");
        }
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        if (!this.unprimed) {
            throw new InvalidAlgorithmParameterException("attempt to set parameter after update");
        }
        if (!(algorithmParameterSpec instanceof ContextParameterSpec)) {
            throw new InvalidAlgorithmParameterException("unknown parameterSpec passed to composite signature");
        }
        this.contextSpec = (ContextParameterSpec) algorithmParameterSpec;
        try {
            if (this.compositeKey instanceof PublicKey) {
                sigInitVerify();
            } else {
                sigInitSign();
            }
        } catch (InvalidKeyException e7) {
            throw new InvalidAlgorithmParameterException("keys invalid on reset: " + e7.getMessage(), e7);
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException, InvalidAlgorithmParameterException {
        if (this.unprimed) {
            baseSigInit();
        }
        Digest digest = this.preHashDigest;
        if (digest != null) {
            digest.update(bArr, i10, i11);
            return;
        }
        int i12 = 0;
        while (true) {
            Signature[] signatureArr = this.componentSignatures;
            if (i12 >= signatureArr.length) {
                return;
            }
            signatureArr[i12].update(bArr, i10, i11);
            i12++;
        }
    }
}
