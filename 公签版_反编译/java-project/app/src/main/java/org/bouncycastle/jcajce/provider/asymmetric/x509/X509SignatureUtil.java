package org.bouncycastle.jcajce.provider.asymmetric.x509;

import android.support.v4.media.session.a;
import g.b;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.PSSParameterSpec;
import java.util.HashMap;
import java.util.Map;
import l2.z;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.RSASSAPSSparams;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.Extensions;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.internal.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.internal.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.internal.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.jcajce.spec.EdDSAParameterSpec;
import org.bouncycastle.jcajce.util.MessageDigestUtils;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.util.Exceptions;
import org.bouncycastle.util.Objects;
import org.bouncycastle.util.Properties;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes3.dex */
class X509SignatureUtil {
    private static final Map<ASN1ObjectIdentifier, String> algNames;

    static {
        HashMap map = new HashMap();
        algNames = map;
        map.put(EdECObjectIdentifiers.id_Ed25519, EdDSAParameterSpec.Ed25519);
        map.put(EdECObjectIdentifiers.id_Ed448, EdDSAParameterSpec.Ed448);
        map.put(OIWObjectIdentifiers.dsaWithSHA1, "SHA1withDSA");
        map.put(X9ObjectIdentifiers.id_dsa_with_sha1, "SHA1withDSA");
    }

    public static boolean areEquivalentAlgorithms(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2) {
        if (!algorithmIdentifier.getAlgorithm().equals((ASN1Primitive) algorithmIdentifier2.getAlgorithm())) {
            return false;
        }
        if (Properties.isOverrideSet("org.bouncycastle.x509.allow_absent_equiv_NULL") && isAbsentOrEmptyParameters(algorithmIdentifier.getParameters()) && isAbsentOrEmptyParameters(algorithmIdentifier2.getParameters())) {
            return true;
        }
        return Objects.areEqual(algorithmIdentifier.getParameters(), algorithmIdentifier2.getParameters());
    }

    private static String findAlgName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String strLookupAlg;
        String strLookupAlg2;
        Provider provider = Security.getProvider(BouncyCastleProvider.PROVIDER_NAME);
        if (provider != null && (strLookupAlg2 = lookupAlg(provider, aSN1ObjectIdentifier)) != null) {
            return strLookupAlg2;
        }
        Provider[] providers = Security.getProviders();
        for (int i10 = 0; i10 != providers.length; i10++) {
            Provider provider2 = providers[i10];
            if (provider != provider2 && (strLookupAlg = lookupAlg(provider2, aSN1ObjectIdentifier)) != null) {
                return strLookupAlg;
            }
        }
        return aSN1ObjectIdentifier.getId();
    }

    private static String getDigestAlgName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String digestName = MessageDigestUtils.getDigestName(aSN1ObjectIdentifier);
        int iIndexOf = digestName.indexOf(45);
        if (iIndexOf <= 0 || digestName.startsWith("SHA3")) {
            return digestName;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(digestName.substring(0, iIndexOf));
        return a.p(digestName, iIndexOf + 1, sb2);
    }

    public static byte[] getExtensionValue(Extensions extensions, String str) {
        ASN1ObjectIdentifier aSN1ObjectIdentifierTryFromID;
        ASN1OctetString extensionValue;
        if (str == null || (aSN1ObjectIdentifierTryFromID = ASN1ObjectIdentifier.tryFromID(str)) == null || (extensionValue = Extensions.getExtensionValue(extensions, aSN1ObjectIdentifierTryFromID)) == null) {
            return null;
        }
        try {
            return extensionValue.getEncoded();
        } catch (Exception e7) {
            throw Exceptions.illegalStateException("error parsing " + e7.getMessage(), e7);
        }
    }

    public static String getSignatureName(AlgorithmIdentifier algorithmIdentifier) {
        StringBuilder sb2;
        String digestAlgName;
        String str;
        ASN1ObjectIdentifier algorithm = algorithmIdentifier.getAlgorithm();
        ASN1Encodable parameters = algorithmIdentifier.getParameters();
        if (!isAbsentOrEmptyParameters(parameters)) {
            if (PKCSObjectIdentifiers.id_RSASSA_PSS.equals((ASN1Primitive) algorithm)) {
                RSASSAPSSparams rSASSAPSSparams = RSASSAPSSparams.getInstance(parameters);
                sb2 = new StringBuilder();
                digestAlgName = getDigestAlgName(rSASSAPSSparams.getHashAlgorithm().getAlgorithm());
                str = "withRSAandMGF1";
            } else if (X9ObjectIdentifiers.ecdsa_with_SHA2.equals((ASN1Primitive) algorithm)) {
                AlgorithmIdentifier algorithmIdentifier2 = AlgorithmIdentifier.getInstance(parameters);
                sb2 = new StringBuilder();
                digestAlgName = getDigestAlgName(algorithmIdentifier2.getAlgorithm());
                str = "withECDSA";
            }
            return b.l(digestAlgName, str, sb2);
        }
        String str2 = algNames.get(algorithm);
        return str2 != null ? str2 : findAlgName(algorithm);
    }

    private static boolean isAbsentOrEmptyParameters(ASN1Encodable aSN1Encodable) {
        return aSN1Encodable == null || DERNull.INSTANCE.equals(aSN1Encodable);
    }

    public static boolean isCompositeAlgorithm(AlgorithmIdentifier algorithmIdentifier) {
        return MiscObjectIdentifiers.id_alg_composite.equals((ASN1Primitive) algorithmIdentifier.getAlgorithm());
    }

    private static String lookupAlg(Provider provider, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String property = provider.getProperty("Alg.Alias.Signature." + aSN1ObjectIdentifier);
        if (property != null) {
            return property;
        }
        String property2 = provider.getProperty("Alg.Alias.Signature.OID." + aSN1ObjectIdentifier);
        if (property2 != null) {
            return property2;
        }
        return null;
    }

    public static void prettyPrintSignature(byte[] bArr, StringBuffer stringBuffer, String str) {
        int length = bArr.length;
        stringBuffer.append("            Signature: ");
        if (length <= 20) {
            stringBuffer.append(Hex.toHexString(bArr));
            stringBuffer.append(str);
            return;
        }
        stringBuffer.append(Hex.toHexString(bArr, 0, 20));
        stringBuffer.append(str);
        int i10 = 20;
        while (i10 < bArr.length) {
            int length2 = bArr.length - 20;
            stringBuffer.append("                       ");
            stringBuffer.append(i10 < length2 ? Hex.toHexString(bArr, i10, 20) : Hex.toHexString(bArr, i10, bArr.length - i10));
            stringBuffer.append(str);
            i10 += 20;
        }
    }

    public static void setSignatureParameters(Signature signature, ASN1Encodable aSN1Encodable) throws NoSuchAlgorithmException, SignatureException, IOException, InvalidAlgorithmParameterException {
        if (isAbsentOrEmptyParameters(aSN1Encodable)) {
            return;
        }
        String algorithm = signature.getAlgorithm();
        AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(algorithm, signature.getProvider());
        try {
            algorithmParameters.init(aSN1Encodable.toASN1Primitive().getEncoded());
            if (algorithm.endsWith("MGF1")) {
                try {
                    signature.setParameter(algorithmParameters.getParameterSpec(PSSParameterSpec.class));
                } catch (GeneralSecurityException e7) {
                    throw new SignatureException(z.m(e7, new StringBuilder("Exception extracting parameters: ")));
                }
            }
        } catch (IOException e10) {
            throw new SignatureException(a.n(e10, new StringBuilder("IOException decoding parameters: ")));
        }
    }
}
