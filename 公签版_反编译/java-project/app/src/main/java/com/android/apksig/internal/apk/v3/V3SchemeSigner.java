package com.android.apksig.internal.apk.v3;

import com.android.apksig.SigningCertificateLineage;
import com.android.apksig.internal.apk.ApkSigningBlockUtils;
import com.android.apksig.internal.apk.ContentDigestAlgorithm;
import com.android.apksig.internal.apk.SignatureAlgorithm;
import com.android.apksig.internal.compat.OptionalIntCompat;
import com.android.apksig.internal.util.Pair;
import com.android.apksig.util.DataSource;
import com.android.apksig.util.RunnablesExecutor;
import da.b;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidKeyException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.interfaces.ECKey;
import java.security.interfaces.RSAKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class V3SchemeSigner {
    public static final int APK_SIGNATURE_SCHEME_V3_BLOCK_ID = -262969152;
    public static final int PROOF_OF_ROTATION_ATTR_ID = 1000370060;
    private final DataSource mBeforeCentralDir;
    private final int mBlockId;
    private final DataSource mCentralDir;
    private final DataSource mEocd;
    private final RunnablesExecutor mExecutor;
    private final OptionalIntCompat mOptionalRotationMinSdkVersion;
    private final boolean mRotationTargetsDevRelease;
    private final List<ApkSigningBlockUtils.SignerConfig> mSignerConfigs;

    public static class Builder {
        private final DataSource mBeforeCentralDir;
        private final DataSource mCentralDir;
        private final DataSource mEocd;
        private final List<ApkSigningBlockUtils.SignerConfig> mSignerConfigs;
        private RunnablesExecutor mExecutor = RunnablesExecutor.MULTI_THREADED;
        private int mBlockId = -262969152;
        private OptionalIntCompat mOptionalRotationMinSdkVersion = OptionalIntCompat.empty();
        private boolean mRotationTargetsDevRelease = false;

        public Builder(DataSource dataSource, DataSource dataSource2, DataSource dataSource3, List<ApkSigningBlockUtils.SignerConfig> list) {
            this.mBeforeCentralDir = dataSource;
            this.mCentralDir = dataSource2;
            this.mEocd = dataSource3;
            this.mSignerConfigs = list;
        }

        public V3SchemeSigner build() {
            return new V3SchemeSigner(this.mBeforeCentralDir, this.mCentralDir, this.mEocd, this.mSignerConfigs, this.mExecutor, this.mBlockId, this.mOptionalRotationMinSdkVersion, this.mRotationTargetsDevRelease);
        }

        public Builder setBlockId(int i10) {
            this.mBlockId = i10;
            return this;
        }

        public Builder setRotationMinSdkVersion(int i10) {
            this.mOptionalRotationMinSdkVersion = OptionalIntCompat.of(i10);
            return this;
        }

        public Builder setRotationTargetsDevRelease(boolean z) {
            this.mRotationTargetsDevRelease = z;
            return this;
        }

        public Builder setRunnablesExecutor(RunnablesExecutor runnablesExecutor) {
            this.mExecutor = runnablesExecutor;
            return this;
        }
    }

    public static final class V3SignatureSchemeBlock {

        public static final class SignedData {
            public byte[] additionalAttributes;
            public List<byte[]> certificates;
            public List<Pair<Integer, byte[]>> digests;
            public int maxSdkVersion;
            public int minSdkVersion;

            private SignedData() {
            }
        }

        public static final class Signer {
            public int maxSdkVersion;
            public int minSdkVersion;
            public byte[] publicKey;
            public List<Pair<Integer, byte[]>> signatures;
            public byte[] signedData;

            private Signer() {
            }
        }

        private V3SignatureSchemeBlock() {
        }
    }

    private byte[] encodeSignedData(V3SignatureSchemeBlock.SignedData signedData) {
        byte[] bArrEncodeAsLengthPrefixedElement = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(signedData.digests));
        byte[] bArrEncodeAsLengthPrefixedElement2 = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedElements(signedData.certificates));
        byte[] bArrEncodeAsLengthPrefixedElement3 = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(signedData.additionalAttributes);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArrEncodeAsLengthPrefixedElement.length + bArrEncodeAsLengthPrefixedElement2.length + 8 + bArrEncodeAsLengthPrefixedElement3.length);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put(bArrEncodeAsLengthPrefixedElement);
        byteBufferAllocate.put(bArrEncodeAsLengthPrefixedElement2);
        byteBufferAllocate.putInt(signedData.minSdkVersion);
        byteBufferAllocate.putInt(signedData.maxSdkVersion);
        byteBufferAllocate.put(bArrEncodeAsLengthPrefixedElement3);
        return byteBufferAllocate.array();
    }

    private byte[] encodeSigner(V3SignatureSchemeBlock.Signer signer) {
        byte[] bArrEncodeAsLengthPrefixedElement = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(signer.signedData);
        byte[] bArrEncodeAsLengthPrefixedElement2 = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(signer.signatures));
        byte[] bArrEncodeAsLengthPrefixedElement3 = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(signer.publicKey);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArrEncodeAsLengthPrefixedElement.length + 8 + bArrEncodeAsLengthPrefixedElement2.length + bArrEncodeAsLengthPrefixedElement3.length);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put(bArrEncodeAsLengthPrefixedElement);
        byteBufferAllocate.putInt(signer.minSdkVersion);
        byteBufferAllocate.putInt(signer.maxSdkVersion);
        byteBufferAllocate.put(bArrEncodeAsLengthPrefixedElement2);
        byteBufferAllocate.put(bArrEncodeAsLengthPrefixedElement3);
        return byteBufferAllocate.array();
    }

    private byte[] generateAdditionalAttributes(ApkSigningBlockUtils.SignerConfig signerConfig) {
        SigningCertificateLineage signingCertificateLineage = signerConfig.mSigningCertificateLineage;
        if (signingCertificateLineage == null) {
            return this.mOptionalRotationMinSdkVersion.isPresent() ? generateV3RotationMinSdkVersionStrippingProtectionAttribute(this.mOptionalRotationMinSdkVersion.getAsInt()) : new byte[0];
        }
        byte[] bArrGenerateV3SignerAttribute = generateV3SignerAttribute(signingCertificateLineage);
        if (!this.mRotationTargetsDevRelease || this.mBlockId != 462663009) {
            return bArrGenerateV3SignerAttribute;
        }
        byte[] bArrGenerateV31RotationTargetsDevReleaseAttribute = generateV31RotationTargetsDevReleaseAttribute();
        byte[] bArr = new byte[bArrGenerateV3SignerAttribute.length + bArrGenerateV31RotationTargetsDevReleaseAttribute.length];
        System.arraycopy(bArrGenerateV3SignerAttribute, 0, bArr, 0, bArrGenerateV3SignerAttribute.length);
        System.arraycopy(bArrGenerateV31RotationTargetsDevReleaseAttribute, 0, bArr, bArrGenerateV3SignerAttribute.length, bArrGenerateV31RotationTargetsDevReleaseAttribute.length);
        return bArr;
    }

    public static ApkSigningBlockUtils.SigningSchemeBlockAndDigests generateApkSignatureSchemeV3Block(RunnablesExecutor runnablesExecutor, DataSource dataSource, DataSource dataSource2, DataSource dataSource3, List<ApkSigningBlockUtils.SignerConfig> list) {
        return new Builder(dataSource, dataSource2, dataSource3, list).setRunnablesExecutor(runnablesExecutor).setBlockId(-262969152).build().generateApkSignatureSchemeV3BlockAndDigests();
    }

    private byte[] generateSignerBlock(ApkSigningBlockUtils.SignerConfig signerConfig, Map<ContentDigestAlgorithm, byte[]> map) throws SignatureException, InvalidKeyException {
        if (signerConfig.certificates.isEmpty()) {
            throw new SignatureException("No certificates configured for signer");
        }
        byte[] bArrEncodePublicKey = ApkSigningBlockUtils.encodePublicKey(signerConfig.certificates.get(0).getPublicKey());
        V3SignatureSchemeBlock.SignedData signedData = new V3SignatureSchemeBlock.SignedData();
        try {
            signedData.certificates = ApkSigningBlockUtils.encodeCertificates(signerConfig.certificates);
            ArrayList arrayList = new ArrayList(signerConfig.signatureAlgorithms.size());
            for (SignatureAlgorithm signatureAlgorithm : signerConfig.signatureAlgorithms) {
                ContentDigestAlgorithm contentDigestAlgorithm = signatureAlgorithm.getContentDigestAlgorithm();
                byte[] bArr = map.get(contentDigestAlgorithm);
                if (bArr == null) {
                    throw new RuntimeException(contentDigestAlgorithm + " content digest for " + signatureAlgorithm + " not computed");
                }
                arrayList.add(Pair.of(Integer.valueOf(signatureAlgorithm.getId()), bArr));
            }
            signedData.digests = arrayList;
            signedData.minSdkVersion = signerConfig.minSdkVersion;
            signedData.maxSdkVersion = signerConfig.maxSdkVersion;
            signedData.additionalAttributes = generateAdditionalAttributes(signerConfig);
            V3SignatureSchemeBlock.Signer signer = new V3SignatureSchemeBlock.Signer();
            byte[] bArrEncodeSignedData = encodeSignedData(signedData);
            signer.signedData = bArrEncodeSignedData;
            signer.minSdkVersion = signerConfig.minSdkVersion;
            signer.maxSdkVersion = signerConfig.maxSdkVersion;
            signer.publicKey = bArrEncodePublicKey;
            signer.signatures = ApkSigningBlockUtils.generateSignaturesOverData(signerConfig, bArrEncodeSignedData);
            return encodeSigner(signer);
        } catch (CertificateEncodingException e7) {
            throw new SignatureException("Failed to encode certificates", e7);
        }
    }

    private static byte[] generateV31RotationTargetsDevReleaseAttribute() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(4);
        byteBufferAllocate.putInt(V3SchemeConstants.ROTATION_ON_DEV_RELEASE_ATTR_ID);
        return byteBufferAllocate.array();
    }

    private static byte[] generateV3RotationMinSdkVersionStrippingProtectionAttribute(int i10) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(12);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(8);
        byteBufferAllocate.putInt(V3SchemeConstants.ROTATION_MIN_SDK_VERSION_ATTR_ID);
        byteBufferAllocate.putInt(i10);
        return byteBufferAllocate.array();
    }

    public static byte[] generateV3SignerAttribute(SigningCertificateLineage signingCertificateLineage) {
        byte[] bArrEncodeSigningCertificateLineage = signingCertificateLineage.encodeSigningCertificateLineage();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArrEncodeSigningCertificateLineage.length + 8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(bArrEncodeSigningCertificateLineage.length + 4);
        byteBufferAllocate.putInt(1000370060);
        byteBufferAllocate.put(bArrEncodeSigningCertificateLineage);
        return byteBufferAllocate.array();
    }

    public static List<SignatureAlgorithm> getSuggestedSignatureAlgorithms(PublicKey publicKey, int i10, boolean z, boolean z4) throws InvalidKeyException {
        String algorithm = publicKey.getAlgorithm();
        if ("RSA".equalsIgnoreCase(algorithm)) {
            if (((RSAKey) publicKey).getModulus().bitLength() > 3072) {
                return Collections.singletonList(SignatureAlgorithm.RSA_PKCS1_V1_5_WITH_SHA512);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(SignatureAlgorithm.RSA_PKCS1_V1_5_WITH_SHA256);
            if (z) {
                arrayList.add(SignatureAlgorithm.VERITY_RSA_PKCS1_V1_5_WITH_SHA256);
            }
            return arrayList;
        }
        if ("DSA".equalsIgnoreCase(algorithm)) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(z4 ? SignatureAlgorithm.DETDSA_WITH_SHA256 : SignatureAlgorithm.DSA_WITH_SHA256);
            if (z) {
                arrayList2.add(SignatureAlgorithm.VERITY_DSA_WITH_SHA256);
            }
            return arrayList2;
        }
        if (!"EC".equalsIgnoreCase(algorithm)) {
            throw new InvalidKeyException(b.c("Unsupported key algorithm: ", algorithm));
        }
        if (((ECKey) publicKey).getParams().getOrder().bitLength() > 256) {
            return Collections.singletonList(SignatureAlgorithm.ECDSA_WITH_SHA512);
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(SignatureAlgorithm.ECDSA_WITH_SHA256);
        if (z) {
            arrayList3.add(SignatureAlgorithm.VERITY_ECDSA_WITH_SHA256);
        }
        return arrayList3;
    }

    public ApkSigningBlockUtils.SigningSchemeBlockAndDigests generateApkSignatureSchemeV3BlockAndDigests() {
        Pair<List<ApkSigningBlockUtils.SignerConfig>, Map<ContentDigestAlgorithm, byte[]>> pairComputeContentDigests = ApkSigningBlockUtils.computeContentDigests(this.mExecutor, this.mBeforeCentralDir, this.mCentralDir, this.mEocd, this.mSignerConfigs);
        return new ApkSigningBlockUtils.SigningSchemeBlockAndDigests(generateApkSignatureSchemeV3Block(pairComputeContentDigests.getSecond()), pairComputeContentDigests.getSecond());
    }

    private V3SchemeSigner(DataSource dataSource, DataSource dataSource2, DataSource dataSource3, List<ApkSigningBlockUtils.SignerConfig> list, RunnablesExecutor runnablesExecutor, int i10, OptionalIntCompat optionalIntCompat, boolean z) {
        this.mBeforeCentralDir = dataSource;
        this.mCentralDir = dataSource2;
        this.mEocd = dataSource3;
        this.mSignerConfigs = list;
        this.mExecutor = runnablesExecutor;
        this.mBlockId = i10;
        this.mOptionalRotationMinSdkVersion = optionalIntCompat;
        this.mRotationTargetsDevRelease = z;
    }

    private Pair<byte[], Integer> generateApkSignatureSchemeV3Block(Map<ContentDigestAlgorithm, byte[]> map) throws SignatureException, InvalidKeyException {
        ArrayList arrayList = new ArrayList(this.mSignerConfigs.size());
        Iterator<ApkSigningBlockUtils.SignerConfig> it = this.mSignerConfigs.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10++;
            try {
                arrayList.add(generateSignerBlock(it.next(), map));
            } catch (InvalidKeyException e7) {
                throw new InvalidKeyException(g.b.i("Signer #", i10, " failed"), e7);
            } catch (SignatureException e10) {
                throw new SignatureException(g.b.i("Signer #", i10, " failed"), e10);
            }
        }
        return Pair.of(ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedElements(new byte[][]{ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedElements(arrayList)}), Integer.valueOf(this.mBlockId));
    }
}
