package org.bouncycastle.pkix.util;

import android.support.v4.media.session.a;
import java.io.FileReader;
import java.io.PrintStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.util.ASN1Dump;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.ExtendedKeyUsage;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.Extensions;
import org.bouncycastle.asn1.x509.KeyPurposeId;
import org.bouncycastle.asn1.x509.KeyUsage;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.openssl.PEMParser;
import org.bouncycastle.operator.DefaultSignatureNameFinder;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes3.dex */
public class X509CertificateFormatter {
    private static Map<KeyPurposeId, String> extUsageMap = null;
    private static Map<ASN1ObjectIdentifier, String> keyAlgMap = null;
    private static Map<ASN1ObjectIdentifier, String> oidMap = null;
    private static final String spaceStr = "                                                              ";
    private static Map<Integer, String> usageMap;

    static {
        oidMap = new HashMap();
        keyAlgMap = new HashMap();
        extUsageMap = new HashMap();
        usageMap = new HashMap();
        oidMap.put(Extension.subjectDirectoryAttributes, "subjectDirectoryAttributes");
        oidMap.put(Extension.subjectKeyIdentifier, "subjectKeyIdentifier");
        oidMap.put(Extension.keyUsage, "keyUsage");
        oidMap.put(Extension.privateKeyUsagePeriod, "privateKeyUsagePeriod");
        oidMap.put(Extension.subjectAlternativeName, "subjectAlternativeName");
        oidMap.put(Extension.issuerAlternativeName, "issuerAlternativeName");
        oidMap.put(Extension.basicConstraints, "basicConstraints");
        oidMap.put(Extension.cRLNumber, "cRLNumber");
        oidMap.put(Extension.reasonCode, "reasonCode");
        oidMap.put(Extension.instructionCode, "instructionCode");
        oidMap.put(Extension.invalidityDate, "invalidityDate");
        oidMap.put(Extension.deltaCRLIndicator, "deltaCRLIndicator");
        oidMap.put(Extension.issuingDistributionPoint, "issuingDistributionPoint");
        oidMap.put(Extension.certificateIssuer, "certificateIssuer");
        oidMap.put(Extension.nameConstraints, "nameConstraints");
        oidMap.put(Extension.cRLDistributionPoints, "cRLDistributionPoints");
        oidMap.put(Extension.certificatePolicies, "certificatePolicies");
        oidMap.put(Extension.policyMappings, "policyMappings");
        oidMap.put(Extension.authorityKeyIdentifier, "authorityKeyIdentifier");
        oidMap.put(Extension.policyConstraints, "policyConstraints");
        oidMap.put(Extension.extendedKeyUsage, "extendedKeyUsage");
        oidMap.put(Extension.freshestCRL, "freshestCRL");
        oidMap.put(Extension.inhibitAnyPolicy, "inhibitAnyPolicy");
        oidMap.put(Extension.authorityInfoAccess, "authorityInfoAccess");
        oidMap.put(Extension.subjectInfoAccess, "subjectInfoAccess");
        oidMap.put(Extension.logoType, "logoType");
        oidMap.put(Extension.biometricInfo, "biometricInfo");
        oidMap.put(Extension.qCStatements, "qCStatements");
        oidMap.put(Extension.auditIdentity, "auditIdentity");
        oidMap.put(Extension.noRevAvail, "noRevAvail");
        oidMap.put(Extension.targetInformation, "targetInformation");
        oidMap.put(Extension.expiredCertsOnCRL, "expiredCertsOnCRL");
        usageMap.put(128, "digitalSignature");
        usageMap.put(64, "nonRepudiation");
        usageMap.put(32, "keyEncipherment");
        usageMap.put(16, "dataEncipherment");
        usageMap.put(8, "keyAgreement");
        usageMap.put(4, "keyCertSign");
        usageMap.put(2, "cRLSign");
        usageMap.put(1, "encipherOnly");
        usageMap.put(32768, "decipherOnly");
        extUsageMap.put(KeyPurposeId.anyExtendedKeyUsage, "anyExtendedKeyUsage");
        extUsageMap.put(KeyPurposeId.id_kp_serverAuth, "id_kp_serverAuth");
        extUsageMap.put(KeyPurposeId.id_kp_clientAuth, "id_kp_clientAuth");
        extUsageMap.put(KeyPurposeId.id_kp_codeSigning, "id_kp_codeSigning");
        extUsageMap.put(KeyPurposeId.id_kp_emailProtection, "id_kp_emailProtection");
        extUsageMap.put(KeyPurposeId.id_kp_ipsecEndSystem, "id_kp_ipsecEndSystem");
        extUsageMap.put(KeyPurposeId.id_kp_ipsecTunnel, "id_kp_ipsecTunnel");
        extUsageMap.put(KeyPurposeId.id_kp_ipsecUser, "id_kp_ipsecUser");
        extUsageMap.put(KeyPurposeId.id_kp_timeStamping, "id_kp_timeStamping");
        extUsageMap.put(KeyPurposeId.id_kp_OCSPSigning, "id_kp_OCSPSigning");
        extUsageMap.put(KeyPurposeId.id_kp_dvcs, "id_kp_dvcs");
        extUsageMap.put(KeyPurposeId.id_kp_sbgpCertAAServerAuth, "id_kp_sbgpCertAAServerAuth");
        extUsageMap.put(KeyPurposeId.id_kp_scvp_responder, "id_kp_scvp_responder");
        extUsageMap.put(KeyPurposeId.id_kp_eapOverPPP, "id_kp_eapOverPPP");
        extUsageMap.put(KeyPurposeId.id_kp_eapOverLAN, "id_kp_eapOverLAN");
        extUsageMap.put(KeyPurposeId.id_kp_scvpServer, "id_kp_scvpServer");
        extUsageMap.put(KeyPurposeId.id_kp_scvpClient, "id_kp_scvpClient");
        extUsageMap.put(KeyPurposeId.id_kp_ipsecIKE, "id_kp_ipsecIKE");
        extUsageMap.put(KeyPurposeId.id_kp_capwapAC, "id_kp_capwapAC");
        extUsageMap.put(KeyPurposeId.id_kp_capwapWTP, "id_kp_capwapWTP");
        extUsageMap.put(KeyPurposeId.id_kp_cmcCA, "id_kp_cmcCA");
        extUsageMap.put(KeyPurposeId.id_kp_cmcRA, "id_kp_cmcRA");
        extUsageMap.put(KeyPurposeId.id_kp_cmKGA, "id_kp_cmKGA");
        extUsageMap.put(KeyPurposeId.id_kp_smartcardlogon, "id_kp_smartcardlogon");
        extUsageMap.put(KeyPurposeId.id_kp_macAddress, "id_kp_macAddress");
        extUsageMap.put(KeyPurposeId.id_kp_msSGC, "id_kp_msSGC");
        extUsageMap.put(KeyPurposeId.id_kp_nsSGC, "id_kp_nsSGC");
        keyAlgMap.put(PKCSObjectIdentifiers.rsaEncryption, "rsaEncryption");
        keyAlgMap.put(X9ObjectIdentifiers.id_ecPublicKey, "id_ecPublicKey");
        keyAlgMap.put(EdECObjectIdentifiers.id_Ed25519, "id_Ed25519");
        keyAlgMap.put(EdECObjectIdentifiers.id_Ed448, "id_Ed448");
    }

    public X509CertificateFormatter() {
    }

    public static String asString(X509CertificateHolder r14) {
        StringBuilder r02 = new StringBuilder();
        String r12 = Strings.lineSeparator();
        String r22 = new DefaultSignatureNameFinder().getAlgorithmName(r14.getSignatureAlgorithm()).replace("WITH", "with");
        String r32 = keyAlgToLabel(r14.getSubjectPublicKeyInfo().getAlgorithm().getAlgorithm());
        r02.append("  [0]         Version: ");
        r02.append(r14.getVersionNumber());
        r02.append(r12);
        r02.append("         SerialNumber: ");
        r02.append(r14.getSerialNumber());
        r02.append(r12);
        r02.append("             IssuerDN: ");
        r02.append(r14.getIssuer());
        r02.append(r12);
        r02.append("           Start Date: ");
        r02.append(r14.getNotBefore());
        r02.append(r12);
        r02.append("           Final Date: ");
        r02.append(r14.getNotAfter());
        r02.append(r12);
        r02.append("            SubjectDN: ");
        r02.append(r14.getSubject());
        r02.append(r12);
        a.C(r02, "           Public Key: ", r32, r12, "                       ");
        prettyPrintData(r14.getSubjectPublicKeyInfo().getPublicKeyData().getOctets(), r02, r12);
        Extensions r33 = r14.getExtensions();
        if (r33 == null) goto L47;
        Enumeration r4 = r33.oids();
        if (r4.hasMoreElements() == false) goto L10;
        String r62 = "           Extensions: ";
    L7:
        r02.append(r62);
        r02.append(r12);
    L10:
        if (r4.hasMoreElements() == false) goto L47;
        ASN1ObjectIdentifier r63 = (ASN1ObjectIdentifier) r4.nextElement();
        Extension r72 = r33.getExtension(r63);
        if (r72.getExtnValue() != null) goto L13;
        r02.append(r12);
        goto L10
    L13:
        ASN1InputStream r92 = new ASN1InputStream(r72.getExtnValue().getOctets());
        String r82 = oidToLabel(r63);     // Catch: Exception -> L46
        r02.append("                       ");     // Catch: Exception -> L46
        r02.append(r82);     // Catch: Exception -> L46
        r02.append(": critical(");     // Catch: Exception -> L46
        r02.append(r72.isCritical());     // Catch: Exception -> L46
        r02.append(") ");     // Catch: Exception -> L46
        r02.append(r12);     // Catch: Exception -> L46
        String r73 = "                       " + spaces(r82.length() + 2);     // Catch: Exception -> L46
        if (r63.equals(Extension.basicConstraints) == false) goto L22;
        BasicConstraints r93 = BasicConstraints.getInstance(r92.readObject());     // Catch: Exception -> L46
        r02.append(r73);     // Catch: Exception -> L46
        r02.append("isCA : " + r93.isCA());     // Catch: Exception -> L46
        r02.append(r12);     // Catch: Exception -> L46
        if (r93.isCA() == false) goto L10;
        r02.append(spaces(r82.length() + 2));     // Catch: Exception -> L46
        String r74 = "pathLenConstraint : " + r93.getPathLenConstraint();     // Catch: Exception -> L46
    L19:
        r02.append(r74);     // Catch: Exception -> L46
    L20:
        r02.append(r12);     // Catch: Exception -> L46
        goto L10
    L22:
        boolean r122 = true;
        if (r63.equals(Extension.keyUsage) == false) goto L34;
        KeyUsage r83 = KeyUsage.getInstance(r92.readObject());     // Catch: Exception -> L46
        r02.append(r73);     // Catch: Exception -> L46
        Iterator<Integer> r75 = usageMap.keySet().iterator();     // Catch: Exception -> L46
    L26:
        if (r75.hasNext() == false) goto L20;
        Integer r94 = r75.next();     // Catch: Exception -> L46
        if (r83.hasUsages(r94.intValue()) == false) goto L26;
        if (r122 == true) goto L31;
        r02.append(", ");     // Catch: Exception -> L46
    L32:
        r02.append(usageMap.get(r94));     // Catch: Exception -> L46
        goto L26
    L31:
        r122 = false;
        goto L32
    L34:
        if (r63.equals(Extension.extendedKeyUsage) == false) goto L44;
        ExtendedKeyUsage r84 = ExtendedKeyUsage.getInstance(r92.readObject());     // Catch: Exception -> L46
        r02.append(r73);     // Catch: Exception -> L46
        Iterator<KeyPurposeId> r76 = extUsageMap.keySet().iterator();     // Catch: Exception -> L46
    L37:
        if (r76.hasNext() == false) goto L20;
        KeyPurposeId r95 = r76.next();     // Catch: Exception -> L46
        if (r84.hasKeyPurposeId(r95) == false) goto L37;
        if (r122 == true) goto L42;
        r02.append(", ");     // Catch: Exception -> L46
    L43:
        r02.append(extUsageMap.get(r95));     // Catch: Exception -> L46
        goto L37
    L42:
        r122 = false;
        goto L43
    L44:
        r02.append(r73);     // Catch: Exception -> L46
        r02.append("value = ");     // Catch: Exception -> L46
        r74 = indent(r73 + spaces(8), ASN1Dump.dumpAsString(r92.readObject()), r12);     // Catch: Exception -> L46
    L46:
        r02.append(r63.getId());
        r02.append(" value = ");
        r62 = "*****";
        goto L7
    L52:
        r02.append(r63.getId());
        r02.append(" value = ");
        r62 = "*****";
    L47:
        a.C(r02, "  Signature Algorithm: ", r22, r12, "            Signature: ");
        prettyPrintData(r14.getSignature(), r02, r12);
        return r02.toString();
    }

    public static void format(StringBuilder r4, byte[] r5, String r62) {
        int r12 = 20;
    L4:
        if (r12 >= r5.length) goto L11;
        int r22 = r5.length - 20;
        r4.append("                       ");
        if (r12 >= r22) goto L9;
        String r23 = Hex.toHexString(r5, r12, 20);
    L8:
        r4.append(r23);
        r4.append(r62);
        r12 = r12 + 20;
        goto L4
    L9:
        r23 = Hex.toHexString(r5, r12, r5.length - r12);
        goto L8
    }

    private static String indent(String r4, String r5, String r62) {
        StringBuilder r02 = new StringBuilder();
        String r52 = r5.substring(0, r5.length() - r62.length());
    L3:
        int r12 = r52.indexOf(r62);
        if (r12 <= 0) goto L9;
        r02.append(r52.substring(0, r12));
        r02.append(r62);
        r02.append(r4);
        if (r52.length() <= 0) goto L3;
        r52 = r52.substring(r62.length() + r12);
        goto L3
    L9:
        if (r02.length() != 0) goto L11;
        return r52;
    L11:
        r02.append(r52);
        return r02.toString();
    }

    private static String keyAlgToLabel(ASN1ObjectIdentifier r12) {
        String r02 = keyAlgMap.get(r12);
        if (r02 == null) goto L6;
        return r02;
    L6:
        return r12.getId();
    }

    public static void main(String[] r32) {
        PEMParser r02 = new PEMParser(new FileReader(r32[0]));
        PrintStream r33 = System.out;
        asString((X509CertificateHolder) r02.readObject());
        r33.getClass();
    }

    private static String oidToLabel(ASN1ObjectIdentifier r12) {
        String r02 = oidMap.get(r12);
        if (r02 == null) goto L6;
        return r02;
    L6:
        return r12.getId();
    }

    public static void prettyPrintData(byte[] r22, StringBuilder r32, String r4) {
        if (r22.length <= 20) goto L5;
        r32.append(Hex.toHexString(r22, 0, 20));
        r32.append(r4);
        format(r32, r22, r4);
        return;
    L5:
        r32.append(Hex.toHexString(r22));
        r32.append(r4);
    }

    private static String spaces(int r22) {
        return spaceStr.substring(0, r22);
    }
}