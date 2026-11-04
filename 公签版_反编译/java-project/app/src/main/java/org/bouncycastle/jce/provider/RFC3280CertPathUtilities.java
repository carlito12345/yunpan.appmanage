package org.bouncycastle.jce.provider;

import android.support.v4.media.session.a;
import d0.f;
import j$.util.DesugarTimeZone;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CRLException;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderSpi;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.X509CRL;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x500.style.BCStyle;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.GeneralSubtree;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.NameConstraints;
import org.bouncycastle.asn1.x509.PolicyInformation;
import org.bouncycastle.jcajce.PKIXCRLStore;
import org.bouncycastle.jcajce.PKIXCertRevocationChecker;
import org.bouncycastle.jcajce.PKIXCertRevocationCheckerParameters;
import org.bouncycastle.jcajce.PKIXCertStoreSelector;
import org.bouncycastle.jcajce.PKIXExtendedBuilderParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.provider.symmetric.util.ClassUtil;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Properties;

/* loaded from: classes3.dex */
class RFC3280CertPathUtilities {
    public static final String ANY_POLICY = "2.5.29.32.0";
    protected static final int CRL_SIGN = 6;
    protected static final int KEY_CERT_SIGN = 5;
    private static final Class revChkClass = ClassUtil.loadClass(RFC3280CertPathUtilities.class, "java.security.cert.PKIXRevocationChecker");
    public static final String CERTIFICATE_POLICIES = Extension.certificatePolicies.getId();
    public static final String POLICY_MAPPINGS = Extension.policyMappings.getId();
    public static final String INHIBIT_ANY_POLICY = Extension.inhibitAnyPolicy.getId();
    public static final String ISSUING_DISTRIBUTION_POINT = Extension.issuingDistributionPoint.getId();
    public static final String FRESHEST_CRL = Extension.freshestCRL.getId();
    public static final String DELTA_CRL_INDICATOR = Extension.deltaCRLIndicator.getId();
    public static final String POLICY_CONSTRAINTS = Extension.policyConstraints.getId();
    public static final String BASIC_CONSTRAINTS = Extension.basicConstraints.getId();
    public static final String CRL_DISTRIBUTION_POINTS = Extension.cRLDistributionPoints.getId();
    public static final String SUBJECT_ALTERNATIVE_NAME = Extension.subjectAlternativeName.getId();
    public static final String NAME_CONSTRAINTS = Extension.nameConstraints.getId();
    public static final String AUTHORITY_KEY_IDENTIFIER = Extension.authorityKeyIdentifier.getId();
    public static final String KEY_USAGE = Extension.keyUsage.getId();
    public static final String CRL_NUMBER = Extension.cRLNumber.getId();
    protected static final String[] crlReasons = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    private static void checkCRL(PKIXCertRevocationCheckerParameters pKIXCertRevocationCheckerParameters, DistributionPoint distributionPoint, PKIXExtendedParameters pKIXExtendedParameters, Date date, Date date2, X509Certificate x509Certificate, X509Certificate x509Certificate2, PublicKey publicKey, CertStatus certStatus, ReasonsMask reasonsMask, List list, JcaJceHelper jcaJceHelper) throws NoSuchAlgorithmException, SignatureException, AnnotatedException, InvalidKeyException, CRLException, NoSuchProviderException {
        Iterator it;
        X509CRL x509crlProcessCRLH;
        if (date2.getTime() > date.getTime()) {
            throw new AnnotatedException("Validation time is in future.");
        }
        Iterator it2 = CertPathValidatorUtilities.getCompleteCRLs(pKIXCertRevocationCheckerParameters, distributionPoint, x509Certificate, pKIXExtendedParameters, date2).iterator();
        AnnotatedException e7 = null;
        boolean z = false;
        while (it2.hasNext() && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
            try {
                X509CRL x509crl = (X509CRL) it2.next();
                ReasonsMask reasonsMaskProcessCRLD = processCRLD(x509crl, distributionPoint);
                if (reasonsMaskProcessCRLD.hasNewReasons(reasonsMask)) {
                    it = it2;
                    AnnotatedException annotatedException = e7;
                    try {
                        PublicKey publicKeyProcessCRLG = processCRLG(x509crl, processCRLF(x509crl, x509Certificate, x509Certificate2, publicKey, pKIXExtendedParameters, list, jcaJceHelper));
                        if (pKIXExtendedParameters.isUseDeltasEnabled()) {
                            try {
                                x509crlProcessCRLH = processCRLH(CertPathValidatorUtilities.getDeltaCRLs(date2, x509crl, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores(), jcaJceHelper), publicKeyProcessCRLG);
                            } catch (AnnotatedException e10) {
                                e7 = e10;
                                it2 = it;
                            }
                        } else {
                            x509crlProcessCRLH = null;
                        }
                        if (pKIXExtendedParameters.getValidityModel() != 1 && x509Certificate.getNotAfter().getTime() < x509crl.getThisUpdate().getTime()) {
                            throw new AnnotatedException("No valid CRL for current time found.");
                        }
                        processCRLB1(distributionPoint, x509Certificate, x509crl);
                        processCRLB2(distributionPoint, x509Certificate, x509crl);
                        processCRLC(x509crlProcessCRLH, x509crl, pKIXExtendedParameters);
                        processCRLI(date2, x509crlProcessCRLH, x509Certificate, certStatus, pKIXExtendedParameters);
                        processCRLJ(date2, x509crl, x509Certificate, certStatus);
                        if (certStatus.getCertStatus() == 8) {
                            certStatus.setCertStatus(11);
                        }
                        reasonsMask.addReasons(reasonsMaskProcessCRLD);
                        CertPathValidatorUtilities.checkCRLCriticalExtensions(x509crl, "CRL contains unsupported critical extensions.");
                        if (x509crlProcessCRLH != null) {
                            CertPathValidatorUtilities.checkCRLCriticalExtensions(x509crlProcessCRLH, "Delta CRL contains unsupported critical extensions.");
                        }
                        it2 = it;
                        e7 = annotatedException;
                        z = true;
                    } catch (AnnotatedException e11) {
                        e7 = e11;
                    }
                } else {
                    continue;
                }
            } catch (AnnotatedException e12) {
                e7 = e12;
                it = it2;
            }
        }
        AnnotatedException annotatedException2 = e7;
        if (!z) {
            throw annotatedException2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void checkCRLs(PKIXCertRevocationCheckerParameters pKIXCertRevocationCheckerParameters, PKIXExtendedParameters pKIXExtendedParameters, Date date, Date date2, X509Certificate x509Certificate, X509Certificate x509Certificate2, PublicKey publicKey, List list, JcaJceHelper jcaJceHelper) throws NoSuchAlgorithmException, SignatureException, AnnotatedException, InvalidKeyException, CRLException, NoSuchProviderException {
        AnnotatedException e7;
        boolean z;
        CertStatus certStatus;
        int i10;
        int i11;
        DistributionPoint[] distributionPointArr;
        CertStatus certStatus2;
        CertStatus certStatus3;
        try {
            CRLDistPoint cRLDistPoint = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CRL_DISTRIBUTION_POINTS));
            PKIXExtendedParameters.Builder builder = new PKIXExtendedParameters.Builder(pKIXExtendedParameters);
            try {
                Iterator<PKIXCRLStore> it = CertPathValidatorUtilities.getAdditionalStoresFromCRLDistributionPoint(cRLDistPoint, pKIXExtendedParameters.getNamedCRLStoreMap(), date2, jcaJceHelper).iterator();
                while (it.hasNext()) {
                    builder.addCRLStore(it.next());
                }
                CertStatus certStatus4 = new CertStatus();
                ReasonsMask reasonsMask = new ReasonsMask();
                PKIXExtendedParameters pKIXExtendedParametersBuild = builder.build();
                boolean z4 = true;
                Object obj = null;
                if (cRLDistPoint != null) {
                    try {
                        DistributionPoint[] distributionPoints = cRLDistPoint.getDistributionPoints();
                        if (distributionPoints != null) {
                            e7 = null;
                            int i12 = 0;
                            z = false;
                            for (int i13 = 11; i12 < distributionPoints.length && certStatus4.getCertStatus() == i13 && !reasonsMask.isAllReasons(); i13 = 11) {
                                try {
                                    i11 = i12;
                                    distributionPointArr = distributionPoints;
                                    certStatus2 = certStatus4;
                                    try {
                                        checkCRL(pKIXCertRevocationCheckerParameters, distributionPoints[i12], pKIXExtendedParametersBuild, date, date2, x509Certificate, x509Certificate2, publicKey, certStatus4, reasonsMask, list, jcaJceHelper);
                                        z = true;
                                    } catch (AnnotatedException e10) {
                                        e7 = e10;
                                    }
                                } catch (AnnotatedException e11) {
                                    e7 = e11;
                                    i11 = i12;
                                    distributionPointArr = distributionPoints;
                                    certStatus2 = certStatus4;
                                }
                                i12 = i11 + 1;
                                distributionPoints = distributionPointArr;
                                certStatus4 = certStatus2;
                                obj = null;
                            }
                            certStatus = certStatus4;
                            i10 = 11;
                        } else {
                            certStatus = certStatus4;
                            i10 = 11;
                            e7 = null;
                            z = false;
                        }
                    } catch (Exception e12) {
                        throw new AnnotatedException("Distribution points could not be read.", e12);
                    }
                }
                if (certStatus.getCertStatus() != i10 || reasonsMask.isAllReasons()) {
                    z4 = z;
                } else {
                    try {
                        try {
                            checkCRL(pKIXCertRevocationCheckerParameters, new DistributionPoint(new DistributionPointName(0, new GeneralNames(new GeneralName(4, PrincipalUtils.getIssuerPrincipal(x509Certificate)))), null, null), (PKIXExtendedParameters) pKIXExtendedParameters.clone(), date, date2, x509Certificate, x509Certificate2, publicKey, certStatus, reasonsMask, list, jcaJceHelper);
                        } catch (RuntimeException e13) {
                            throw new AnnotatedException("Issuer from certificate for CRL could not be reencoded.", e13);
                        }
                    } catch (AnnotatedException e14) {
                        e7 = e14;
                    }
                }
                if (!z4) {
                    if (!(e7 instanceof AnnotatedException)) {
                        throw new AnnotatedException("No valid CRL found.", e7);
                    }
                    throw e7;
                }
                if (certStatus.getCertStatus() == i10) {
                    if (reasonsMask.isAllReasons() || certStatus.getCertStatus() != i10) {
                        certStatus3 = certStatus;
                    } else {
                        certStatus3 = certStatus;
                        certStatus3.setCertStatus(12);
                    }
                    if (certStatus3.getCertStatus() == 12) {
                        throw new AnnotatedException("Certificate status could not be determined.");
                    }
                    return;
                }
                CertStatus certStatus5 = certStatus;
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z");
                simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
                StringBuilder sbB = f.b("Certificate revocation after " + simpleDateFormat.format(certStatus5.getRevocationDate()), ", reason: ");
                sbB.append(crlReasons[certStatus5.getCertStatus()]);
                throw new AnnotatedException(sbB.toString());
            } catch (AnnotatedException e15) {
                throw new AnnotatedException("No additional CRL locations could be decoded from CRL distribution point extension.", e15);
            }
        } catch (Exception e16) {
            throw new AnnotatedException("CRL distribution point extension could not be read.", e16);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00fd, code lost:
    
        r7 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.getQualifierSet(r9.getPolicyQualifiers());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static PKIXPolicyNode prepareCertB(CertPath certPath, int i10, List[] listArr, PKIXPolicyNode pKIXPolicyNode, int i11) throws CertPathValidatorException {
        Set qualifierSet;
        X509Certificate x509Certificate;
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate2 = (X509Certificate) certificates.get(i10);
        int size = certificates.size() - i10;
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate2, POLICY_MAPPINGS));
            if (aSN1Sequence == null) {
                return pKIXPolicyNode;
            }
            HashMap map = new HashMap();
            for (int i12 = 0; i12 < aSN1Sequence.size(); i12++) {
                ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.getObjectAt(i12);
                String id2 = ((ASN1ObjectIdentifier) aSN1Sequence2.getObjectAt(0)).getId();
                String id3 = ((ASN1ObjectIdentifier) aSN1Sequence2.getObjectAt(1)).getId();
                HashSet hashSet = (HashSet) map.get(id2);
                if (hashSet == null) {
                    hashSet = new HashSet();
                    map.put(id2, hashSet);
                }
                hashSet.add(id3);
            }
            PKIXPolicyNode pKIXPolicyNodeRemoveChildlessPolicyNodes = pKIXPolicyNode;
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                HashSet hashSet2 = (HashSet) entry.getValue();
                if (i11 <= 0) {
                    List list = listArr[size];
                    int size2 = list.size();
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        PKIXPolicyNode pKIXPolicyNode2 = (PKIXPolicyNode) list.get(size2);
                        if (pKIXPolicyNode2.getValidPolicy().equals(str)) {
                            ((PKIXPolicyNode) pKIXPolicyNode2.getParent()).removeChild(pKIXPolicyNode2);
                            list.remove(size2);
                        }
                    }
                    pKIXPolicyNodeRemoveChildlessPolicyNodes = CertPathValidatorUtilities.removeChildlessPolicyNodes(pKIXPolicyNodeRemoveChildlessPolicyNodes, listArr, size);
                } else {
                    PKIXPolicyNode pKIXPolicyNodeFindValidPolicy = CertPathValidatorUtilities.findValidPolicy(listArr[size].iterator(), str);
                    if (pKIXPolicyNodeFindValidPolicy != null) {
                        pKIXPolicyNodeFindValidPolicy.setExpectedPolicies(hashSet2);
                    } else {
                        PKIXPolicyNode pKIXPolicyNodeFindValidPolicy2 = CertPathValidatorUtilities.findValidPolicy(listArr[size].iterator(), ANY_POLICY);
                        if (pKIXPolicyNodeFindValidPolicy2 != null) {
                            try {
                                Enumeration objects = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate2, CERTIFICATE_POLICIES)).getObjects();
                                while (true) {
                                    if (!objects.hasMoreElements()) {
                                        qualifierSet = null;
                                        break;
                                    }
                                    try {
                                        PolicyInformation policyInformation = PolicyInformation.getInstance(objects.nextElement());
                                        if (ANY_POLICY.equals(policyInformation.getPolicyIdentifier().getId())) {
                                            try {
                                                break;
                                            } catch (CertPathValidatorException e7) {
                                                throw new ExtCertPathValidatorException("Policy qualifier info set could not be decoded.", e7, certPath, i10);
                                            }
                                        }
                                    } catch (Exception e10) {
                                        throw new CertPathValidatorException("Policy information could not be decoded.", e10, certPath, i10);
                                    }
                                }
                                Set set = qualifierSet;
                                boolean zHasCriticalExtension = CertPathValidatorUtilities.hasCriticalExtension(x509Certificate2, CERTIFICATE_POLICIES);
                                PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) pKIXPolicyNodeFindValidPolicy2.getParent();
                                if (ANY_POLICY.equals(pKIXPolicyNode3.getValidPolicy())) {
                                    x509Certificate = x509Certificate2;
                                    PKIXPolicyNode pKIXPolicyNode4 = new PKIXPolicyNode(new ArrayList(), size, hashSet2, pKIXPolicyNode3, set, str, zHasCriticalExtension);
                                    pKIXPolicyNode3.addChild(pKIXPolicyNode4);
                                    listArr[size].add(pKIXPolicyNode4);
                                }
                                x509Certificate2 = x509Certificate;
                            } catch (AnnotatedException e11) {
                                throw new ExtCertPathValidatorException("Certificate policies extension could not be decoded.", e11, certPath, i10);
                            }
                        }
                    }
                    x509Certificate = x509Certificate2;
                    x509Certificate2 = x509Certificate;
                }
            }
            return pKIXPolicyNodeRemoveChildlessPolicyNodes;
        } catch (AnnotatedException e12) {
            throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", e12, certPath, i10);
        }
    }

    public static void prepareNextCertA(CertPath certPath, int i10) throws CertPathValidatorException {
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i10), POLICY_MAPPINGS));
            if (aSN1Sequence != null) {
                for (int i11 = 0; i11 < aSN1Sequence.size(); i11++) {
                    try {
                        ASN1Sequence aSN1Sequence2 = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(i11));
                        ASN1ObjectIdentifier aSN1ObjectIdentifier = ASN1ObjectIdentifier.getInstance(aSN1Sequence2.getObjectAt(0));
                        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = ASN1ObjectIdentifier.getInstance(aSN1Sequence2.getObjectAt(1));
                        if (ANY_POLICY.equals(aSN1ObjectIdentifier.getId())) {
                            throw new CertPathValidatorException("IssuerDomainPolicy is anyPolicy", null, certPath, i10);
                        }
                        if (ANY_POLICY.equals(aSN1ObjectIdentifier2.getId())) {
                            throw new CertPathValidatorException("SubjectDomainPolicy is anyPolicy", null, certPath, i10);
                        }
                    } catch (Exception e7) {
                        throw new ExtCertPathValidatorException("Policy mappings extension contents could not be decoded.", e7, certPath, i10);
                    }
                }
            }
        } catch (AnnotatedException e10) {
            throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", e10, certPath, i10);
        }
    }

    public static void prepareNextCertG(CertPath certPath, int i10, PKIXNameConstraintValidator pKIXNameConstraintValidator) throws ExtCertPathValidatorException {
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i10), NAME_CONSTRAINTS));
            NameConstraints nameConstraints = aSN1Sequence != null ? NameConstraints.getInstance(aSN1Sequence) : null;
            if (nameConstraints != null) {
                GeneralSubtree[] permittedSubtrees = nameConstraints.getPermittedSubtrees();
                if (permittedSubtrees != null) {
                    try {
                        pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                    } catch (Exception e7) {
                        throw new ExtCertPathValidatorException("Permitted subtrees cannot be build from name constraints extension.", e7, certPath, i10);
                    }
                }
                GeneralSubtree[] excludedSubtrees = nameConstraints.getExcludedSubtrees();
                if (excludedSubtrees != null) {
                    for (int i11 = 0; i11 != excludedSubtrees.length; i11++) {
                        try {
                            pKIXNameConstraintValidator.addExcludedSubtree(excludedSubtrees[i11]);
                        } catch (Exception e10) {
                            throw new ExtCertPathValidatorException("Excluded subtrees cannot be build from name constraints extension.", e10, certPath, i10);
                        }
                    }
                }
            }
        } catch (Exception e11) {
            throw new ExtCertPathValidatorException("Name constraints extension could not be decoded.", e11, certPath, i10);
        }
    }

    public static int prepareNextCertH1(CertPath certPath, int i10, int i11) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i10)) || i11 == 0) ? i11 : i11 - 1;
    }

    public static int prepareNextCertH2(CertPath certPath, int i10, int i11) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i10)) || i11 == 0) ? i11 : i11 - 1;
    }

    public static int prepareNextCertH3(CertPath certPath, int i10, int i11) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i10)) || i11 == 0) ? i11 : i11 - 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002e, code lost:
    
        r3 = org.bouncycastle.asn1.ASN1Integer.getInstance(r1, false).intValueExact();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
    
        if (r3 >= r5) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int prepareNextCertI1(CertPath certPath, int i10, int i11) throws ExtCertPathValidatorException {
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i10), POLICY_CONSTRAINTS));
            if (aSN1Sequence != null) {
                Enumeration objects = aSN1Sequence.getObjects();
                while (true) {
                    if (!objects.hasMoreElements()) {
                        break;
                    }
                    try {
                        ASN1TaggedObject aSN1TaggedObject = ASN1TaggedObject.getInstance(objects.nextElement());
                        if (aSN1TaggedObject.getTagNo() == 0) {
                            break;
                        }
                    } catch (IllegalArgumentException e7) {
                        throw new ExtCertPathValidatorException("Policy constraints extension contents cannot be decoded.", e7, certPath, i10);
                    }
                }
            }
            return i11;
        } catch (Exception e10) {
            throw new ExtCertPathValidatorException("Policy constraints extension cannot be decoded.", e10, certPath, i10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002f, code lost:
    
        r4 = org.bouncycastle.asn1.ASN1Integer.getInstance(r1, false).intValueExact();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
    
        if (r4 >= r6) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003a, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int prepareNextCertI2(CertPath certPath, int i10, int i11) throws ExtCertPathValidatorException {
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i10), POLICY_CONSTRAINTS));
            if (aSN1Sequence != null) {
                Enumeration objects = aSN1Sequence.getObjects();
                while (true) {
                    if (!objects.hasMoreElements()) {
                        break;
                    }
                    try {
                        ASN1TaggedObject aSN1TaggedObject = ASN1TaggedObject.getInstance(objects.nextElement());
                        if (aSN1TaggedObject.getTagNo() == 1) {
                            break;
                        }
                    } catch (IllegalArgumentException e7) {
                        throw new ExtCertPathValidatorException("Policy constraints extension contents cannot be decoded.", e7, certPath, i10);
                    }
                }
            }
            return i11;
        } catch (Exception e10) {
            throw new ExtCertPathValidatorException("Policy constraints extension cannot be decoded.", e10, certPath, i10);
        }
    }

    public static int prepareNextCertJ(CertPath certPath, int i10, int i11) throws ExtCertPathValidatorException {
        int iIntValueExact;
        try {
            ASN1Integer aSN1Integer = ASN1Integer.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i10), INHIBIT_ANY_POLICY));
            return (aSN1Integer == null || (iIntValueExact = aSN1Integer.intValueExact()) >= i11) ? i11 : iIntValueExact;
        } catch (Exception e7) {
            throw new ExtCertPathValidatorException("Inhibit any-policy extension cannot be decoded.", e7, certPath, i10);
        }
    }

    public static void prepareNextCertK(CertPath certPath, int i10) throws CertPathValidatorException {
        try {
            BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i10), BASIC_CONSTRAINTS));
            if (basicConstraints == null) {
                throw new CertPathValidatorException("Intermediate certificate lacks BasicConstraints", null, certPath, i10);
            }
            if (!basicConstraints.isCA()) {
                throw new CertPathValidatorException("Not a CA certificate", null, certPath, i10);
            }
        } catch (Exception e7) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e7, certPath, i10);
        }
    }

    public static int prepareNextCertL(CertPath certPath, int i10, int i11) throws ExtCertPathValidatorException {
        if (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i10))) {
            return i11;
        }
        if (i11 > 0) {
            return i11 - 1;
        }
        throw new ExtCertPathValidatorException("Max path length not greater than zero", null, certPath, i10);
    }

    public static int prepareNextCertM(CertPath certPath, int i10, int i11) throws ExtCertPathValidatorException {
        ASN1Integer pathLenConstraintInteger;
        try {
            BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i10), BASIC_CONSTRAINTS));
            return (basicConstraints == null || !basicConstraints.isCA() || (pathLenConstraintInteger = basicConstraints.getPathLenConstraintInteger()) == null) ? i11 : Math.min(i11, pathLenConstraintInteger.intPositiveValueExact());
        } catch (Exception e7) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e7, certPath, i10);
        }
    }

    public static void prepareNextCertN(CertPath certPath, int i10) throws ExtCertPathValidatorException {
        boolean[] keyUsage = ((X509Certificate) certPath.getCertificates().get(i10)).getKeyUsage();
        if (keyUsage != null) {
            if (keyUsage.length <= 5 || !keyUsage[5]) {
                throw new ExtCertPathValidatorException("Issuer certificate keyusage extension is critical and does not permit key signing.", null, certPath, i10);
            }
        }
    }

    public static void prepareNextCertO(CertPath certPath, int i10, Set set, List list) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i10);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e7) {
                throw new CertPathValidatorException(e7.getMessage(), e7.getCause(), certPath, i10);
            }
        }
        if (set.isEmpty()) {
            return;
        }
        throw new ExtCertPathValidatorException("Certificate has unsupported critical extension: " + set, null, certPath, i10);
    }

    public static void processCRLB1(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        ASN1Primitive extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT);
        boolean z = true;
        boolean z4 = extensionValue != null && IssuingDistributionPoint.getInstance(extensionValue).isIndirectCRL();
        try {
            byte[] encoded = PrincipalUtils.getIssuerPrincipal(x509crl).getEncoded();
            if (distributionPoint.getCRLIssuer() != null) {
                GeneralName[] names = distributionPoint.getCRLIssuer().getNames();
                boolean z10 = false;
                for (int i10 = 0; i10 < names.length; i10++) {
                    if (names[i10].getTagNo() == 4) {
                        try {
                            if (Arrays.areEqual(names[i10].getName().toASN1Primitive().getEncoded(), encoded)) {
                                z10 = true;
                            }
                        } catch (IOException e7) {
                            throw new AnnotatedException("CRL issuer information from distribution point cannot be decoded.", e7);
                        }
                    }
                }
                if (z10 && !z4) {
                    throw new AnnotatedException("Distribution point contains cRLIssuer field but CRL is not indirect.");
                }
                if (!z10) {
                    throw new AnnotatedException("CRL issuer of CRL does not match CRL issuer of distribution point.");
                }
                z = z10;
            } else if (!PrincipalUtils.getIssuerPrincipal(x509crl).equals(PrincipalUtils.getEncodedIssuerPrincipal(obj))) {
                z = false;
            }
            if (!z) {
                throw new AnnotatedException("Cannot find matching CRL issuer for certificate.");
            }
        } catch (IOException e10) {
            throw new AnnotatedException(a.n(e10, new StringBuilder("Exception encoding CRL issuer: ")), e10);
        }
    }

    public static void processCRLB2(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        int i10;
        GeneralName[] names;
        try {
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (issuingDistributionPoint != null) {
                if (issuingDistributionPoint.getDistributionPoint() != null) {
                    DistributionPointName distributionPoint2 = IssuingDistributionPoint.getInstance(issuingDistributionPoint).getDistributionPoint();
                    ArrayList arrayList = new ArrayList();
                    if (distributionPoint2.getType() == 0) {
                        for (GeneralName generalName : GeneralNames.getInstance(distributionPoint2.getName()).getNames()) {
                            arrayList.add(generalName);
                        }
                    }
                    if (distributionPoint2.getType() == 1) {
                        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                        try {
                            Enumeration objects = ASN1Sequence.getInstance(PrincipalUtils.getIssuerPrincipal(x509crl)).getObjects();
                            while (objects.hasMoreElements()) {
                                aSN1EncodableVector.add((ASN1Encodable) objects.nextElement());
                            }
                            aSN1EncodableVector.add(distributionPoint2.getName());
                            arrayList.add(new GeneralName(X500Name.getInstance(new DERSequence(aSN1EncodableVector))));
                        } catch (Exception e7) {
                            throw new AnnotatedException("Could not read CRL issuer.", e7);
                        }
                    }
                    if (distributionPoint.getDistributionPoint() == null) {
                        if (distributionPoint.getCRLIssuer() == null) {
                            throw new AnnotatedException("Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint.");
                        }
                        GeneralName[] names2 = distributionPoint.getCRLIssuer().getNames();
                        while (i10 < names2.length) {
                            i10 = arrayList.contains(names2[i10]) ? 0 : i10 + 1;
                        }
                        throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                    }
                    DistributionPointName distributionPoint3 = distributionPoint.getDistributionPoint();
                    GeneralName[] names3 = distributionPoint3.getType() == 0 ? GeneralNames.getInstance(distributionPoint3.getName()).getNames() : null;
                    if (distributionPoint3.getType() == 1) {
                        if (distributionPoint.getCRLIssuer() != null) {
                            names = distributionPoint.getCRLIssuer().getNames();
                        } else {
                            names = new GeneralName[1];
                            try {
                                names[0] = new GeneralName(PrincipalUtils.getEncodedIssuerPrincipal(obj));
                            } catch (Exception e10) {
                                throw new AnnotatedException("Could not read certificate issuer.", e10);
                            }
                        }
                        names3 = names;
                        for (int i11 = 0; i11 < names3.length; i11++) {
                            Enumeration objects2 = ASN1Sequence.getInstance(names3[i11].getName().toASN1Primitive()).getObjects();
                            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                            while (objects2.hasMoreElements()) {
                                aSN1EncodableVector2.add((ASN1Encodable) objects2.nextElement());
                            }
                            aSN1EncodableVector2.add(distributionPoint3.getName());
                            names3[i11] = new GeneralName(X500Name.getInstance(new DERSequence(aSN1EncodableVector2)));
                        }
                    }
                    if (names3 != null) {
                        while (i10 < names3.length) {
                            i10 = arrayList.contains(names3[i10]) ? 0 : i10 + 1;
                        }
                    }
                    throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                }
                try {
                    BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Extension) obj, BASIC_CONSTRAINTS));
                    if (obj instanceof X509Certificate) {
                        if (issuingDistributionPoint.onlyContainsUserCerts() && basicConstraints != null && basicConstraints.isCA()) {
                            throw new AnnotatedException("CA Cert CRL only contains user certificates.");
                        }
                        if (issuingDistributionPoint.onlyContainsCACerts() && (basicConstraints == null || !basicConstraints.isCA())) {
                            throw new AnnotatedException("End CRL only contains CA certificates.");
                        }
                    }
                    if (issuingDistributionPoint.onlyContainsAttributeCerts()) {
                        throw new AnnotatedException("onlyContainsAttributeCerts boolean is asserted.");
                    }
                } catch (Exception e11) {
                    throw new AnnotatedException("Basic constraints extension could not be decoded.", e11);
                }
            }
        } catch (Exception e12) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e12);
        }
    }

    public static void processCRLC(X509CRL x509crl, X509CRL x509crl2, PKIXExtendedParameters pKIXExtendedParameters) throws AnnotatedException {
        if (x509crl == null) {
            return;
        }
        if (x509crl.hasUnsupportedCriticalExtension()) {
            throw new AnnotatedException("delta CRL has unsupported critical extensions");
        }
        try {
            String str = ISSUING_DISTRIBUTION_POINT;
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl2, str));
            if (pKIXExtendedParameters.isUseDeltasEnabled()) {
                if (!PrincipalUtils.getIssuerPrincipal(x509crl).equals(PrincipalUtils.getIssuerPrincipal(x509crl2))) {
                    throw new AnnotatedException("Complete CRL issuer does not match delta CRL issuer.");
                }
                try {
                    IssuingDistributionPoint issuingDistributionPoint2 = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, str));
                    if (issuingDistributionPoint != null ? !issuingDistributionPoint.equals(issuingDistributionPoint2) : issuingDistributionPoint2 != null) {
                        throw new AnnotatedException("Issuing distribution point extension from delta CRL and complete CRL does not match.");
                    }
                    try {
                        String str2 = AUTHORITY_KEY_IDENTIFIER;
                        ASN1Primitive extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl2, str2);
                        try {
                            ASN1Primitive extensionValue2 = CertPathValidatorUtilities.getExtensionValue(x509crl, str2);
                            if (extensionValue == null) {
                                throw new AnnotatedException("CRL authority key identifier is null.");
                            }
                            if (extensionValue2 == null) {
                                throw new AnnotatedException("Delta CRL authority key identifier is null.");
                            }
                            if (!extensionValue.equals(extensionValue2)) {
                                throw new AnnotatedException("Delta CRL authority key identifier does not match complete CRL authority key identifier.");
                            }
                        } catch (AnnotatedException e7) {
                            throw new AnnotatedException("Authority key identifier extension could not be extracted from delta CRL.", e7);
                        }
                    } catch (AnnotatedException e10) {
                        throw new AnnotatedException("Authority key identifier extension could not be extracted from complete CRL.", e10);
                    }
                } catch (Exception e11) {
                    throw new AnnotatedException("Issuing distribution point extension from delta CRL could not be decoded.", e11);
                }
            }
        } catch (Exception e12) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e12);
        }
    }

    public static ReasonsMask processCRLD(X509CRL x509crl, DistributionPoint distributionPoint) throws AnnotatedException {
        try {
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (issuingDistributionPoint != null && issuingDistributionPoint.getOnlySomeReasons() != null && distributionPoint.getReasons() != null) {
                return new ReasonsMask(distributionPoint.getReasons()).intersect(new ReasonsMask(issuingDistributionPoint.getOnlySomeReasons()));
            }
            if ((issuingDistributionPoint == null || issuingDistributionPoint.getOnlySomeReasons() == null) && distributionPoint.getReasons() == null) {
                return ReasonsMask.allReasons;
            }
            return (distributionPoint.getReasons() == null ? ReasonsMask.allReasons : new ReasonsMask(distributionPoint.getReasons())).intersect(issuingDistributionPoint == null ? ReasonsMask.allReasons : new ReasonsMask(issuingDistributionPoint.getOnlySomeReasons()));
        } catch (Exception e7) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e7);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Set processCRLF(X509CRL x509crl, Object obj, X509Certificate x509Certificate, PublicKey publicKey, PKIXExtendedParameters pKIXExtendedParameters, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException, IOException {
        int i10;
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(PrincipalUtils.getIssuerPrincipal(x509crl).getEncoded());
            PKIXCertStoreSelector<? extends Certificate> pKIXCertStoreSelectorBuild = new PKIXCertStoreSelector.Builder(x509CertSelector).build();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            try {
                CertPathValidatorUtilities.findCertificates(linkedHashSet, pKIXCertStoreSelectorBuild, pKIXExtendedParameters.getCertificateStores());
                CertPathValidatorUtilities.findCertificates(linkedHashSet, pKIXCertStoreSelectorBuild, pKIXExtendedParameters.getCertStores());
                linkedHashSet.add(x509Certificate);
                Iterator it = linkedHashSet.iterator();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (x509Certificate2.equals(x509Certificate)) {
                        arrayList.add(x509Certificate2);
                        arrayList2.add(publicKey);
                    } else {
                        try {
                            CertPathBuilderSpi pKIXCertPathBuilderSpi_8 = revChkClass != null ? new PKIXCertPathBuilderSpi_8(true) : new PKIXCertPathBuilderSpi(true);
                            X509CertSelector x509CertSelector2 = new X509CertSelector();
                            x509CertSelector2.setCertificate(x509Certificate2);
                            PKIXExtendedParameters.Builder targetConstraints = new PKIXExtendedParameters.Builder(pKIXExtendedParameters).setTargetConstraints(new PKIXCertStoreSelector.Builder(x509CertSelector2).build());
                            if (list.contains(x509Certificate2)) {
                                targetConstraints.setRevocationEnabled(false);
                            } else {
                                targetConstraints.setRevocationEnabled(true);
                            }
                            List<? extends Certificate> certificates = pKIXCertPathBuilderSpi_8.engineBuild(new PKIXExtendedBuilderParameters.Builder(targetConstraints.build()).build()).getCertPath().getCertificates();
                            arrayList.add(x509Certificate2);
                            arrayList2.add(CertPathValidatorUtilities.getNextWorkingKey(certificates, 0, jcaJceHelper));
                        } catch (CertPathBuilderException e7) {
                            throw new AnnotatedException("CertPath for CRL signer failed to validate.", e7);
                        } catch (CertPathValidatorException e10) {
                            throw new AnnotatedException("Public key of issuer certificate of CRL could not be retrieved.", e10);
                        } catch (Exception e11) {
                            throw new AnnotatedException(e11.getMessage());
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                AnnotatedException annotatedException = null;
                for (i10 = 0; i10 < arrayList.size(); i10++) {
                    boolean[] keyUsage = ((X509Certificate) arrayList.get(i10)).getKeyUsage();
                    if (keyUsage == null) {
                        if (Properties.isOverrideSet("org.bouncycastle.x509.allow_ca_without_crl_sign", true)) {
                            hashSet.add(arrayList2.get(i10));
                        } else {
                            annotatedException = new AnnotatedException("No key usage extension on CRL issuer certificate.");
                        }
                    } else if (keyUsage.length <= 6 || !keyUsage[6]) {
                        annotatedException = new AnnotatedException("Issuer certificate key usage extension does not permit CRL signing.");
                    }
                }
                if (hashSet.isEmpty() && annotatedException == null) {
                    throw new AnnotatedException("Cannot find a valid issuer certificate.");
                }
                if (!hashSet.isEmpty() || annotatedException == null) {
                    return hashSet;
                }
                throw annotatedException;
            } catch (AnnotatedException e12) {
                throw new AnnotatedException("Issuer certificate for CRL cannot be searched.", e12);
            }
        } catch (IOException e13) {
            throw new AnnotatedException("Subject criteria for certificate selector to find issuer certificate for CRL could not be set.", e13);
        }
    }

    public static PublicKey processCRLG(X509CRL x509crl, Set set) throws NoSuchAlgorithmException, SignatureException, AnnotatedException, InvalidKeyException, CRLException, NoSuchProviderException {
        Iterator it = set.iterator();
        Exception e7 = null;
        while (it.hasNext()) {
            PublicKey publicKey = (PublicKey) it.next();
            try {
                x509crl.verify(publicKey);
                return publicKey;
            } catch (Exception e10) {
                e7 = e10;
            }
        }
        throw new AnnotatedException("Cannot verify CRL.", e7);
    }

    public static X509CRL processCRLH(Set set, PublicKey publicKey) throws NoSuchAlgorithmException, SignatureException, AnnotatedException, InvalidKeyException, CRLException, NoSuchProviderException {
        Iterator it = set.iterator();
        Exception e7 = null;
        while (it.hasNext()) {
            X509CRL x509crl = (X509CRL) it.next();
            try {
                x509crl.verify(publicKey);
                return x509crl;
            } catch (Exception e10) {
                e7 = e10;
            }
        }
        if (e7 == null) {
            return null;
        }
        throw new AnnotatedException("Cannot verify delta CRL.", e7);
    }

    public static void processCRLI(Date date, X509CRL x509crl, Object obj, CertStatus certStatus, PKIXExtendedParameters pKIXExtendedParameters) throws AnnotatedException {
        if (!pKIXExtendedParameters.isUseDeltasEnabled() || x509crl == null) {
            return;
        }
        CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
    }

    public static void processCRLJ(Date date, X509CRL x509crl, Object obj, CertStatus certStatus) throws AnnotatedException {
        if (certStatus.getCertStatus() == 11) {
            CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
        }
    }

    public static void processCertA(CertPath certPath, PKIXExtendedParameters pKIXExtendedParameters, Date date, PKIXCertRevocationChecker pKIXCertRevocationChecker, int i10, PublicKey publicKey, boolean z, X500Name x500Name, X509Certificate x509Certificate) throws CertificateNotYetValidException, ExtCertPathValidatorException, CertificateExpiredException {
        X509Certificate x509Certificate2 = (X509Certificate) certPath.getCertificates().get(i10);
        if (!z) {
            try {
                CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, publicKey, pKIXExtendedParameters.getSigProvider());
            } catch (GeneralSecurityException e7) {
                throw new ExtCertPathValidatorException("Could not validate certificate signature.", e7, certPath, i10);
            }
        }
        try {
            Date validCertDateFromValidityModel = CertPathValidatorUtilities.getValidCertDateFromValidityModel(date, pKIXExtendedParameters.getValidityModel(), certPath, i10);
            try {
                x509Certificate2.checkValidity(validCertDateFromValidityModel);
                if (pKIXCertRevocationChecker != null) {
                    pKIXCertRevocationChecker.initialize(new PKIXCertRevocationCheckerParameters(pKIXExtendedParameters, validCertDateFromValidityModel, certPath, i10, x509Certificate, publicKey));
                    pKIXCertRevocationChecker.check(x509Certificate2);
                }
                X500Name issuerPrincipal = PrincipalUtils.getIssuerPrincipal(x509Certificate2);
                if (issuerPrincipal.equals(x500Name)) {
                    return;
                }
                throw new ExtCertPathValidatorException("IssuerName(" + issuerPrincipal + ") does not match SubjectName(" + x500Name + ") of signing certificate.", null, certPath, i10);
            } catch (CertificateExpiredException e10) {
                throw new ExtCertPathValidatorException("Could not validate certificate: " + e10.getMessage(), e10, certPath, i10);
            } catch (CertificateNotYetValidException e11) {
                throw new ExtCertPathValidatorException("Could not validate certificate: " + e11.getMessage(), e11, certPath, i10);
            }
        } catch (AnnotatedException e12) {
            throw new ExtCertPathValidatorException("Could not validate time of certificate.", e12, certPath, i10);
        }
    }

    public static void processCertBC(CertPath certPath, int i10, PKIXNameConstraintValidator pKIXNameConstraintValidator, boolean z) throws CertPathValidatorException {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i10);
        int size = certificates.size();
        int i11 = size - i10;
        if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate) || (i11 >= size && !z)) {
            try {
                ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(PrincipalUtils.getSubjectPrincipal(x509Certificate));
                try {
                    pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                    pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                    try {
                        GeneralNames generalNames = GeneralNames.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, SUBJECT_ALTERNATIVE_NAME));
                        RDN[] rDNs = X500Name.getInstance(aSN1Sequence).getRDNs(BCStyle.EmailAddress);
                        for (int i12 = 0; i12 != rDNs.length; i12++) {
                            GeneralName generalName = new GeneralName(1, ((ASN1String) rDNs[i12].getFirst().getValue()).getString());
                            try {
                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                pKIXNameConstraintValidator.checkExcluded(generalName);
                            } catch (PKIXNameConstraintValidatorException e7) {
                                throw new CertPathValidatorException("Subtree check for certificate subject alternative email failed.", e7, certPath, i10);
                            }
                        }
                        if (generalNames != null) {
                            try {
                                GeneralName[] names = generalNames.getNames();
                                for (int i13 = 0; i13 < names.length; i13++) {
                                    try {
                                        pKIXNameConstraintValidator.checkPermitted(names[i13]);
                                        pKIXNameConstraintValidator.checkExcluded(names[i13]);
                                    } catch (PKIXNameConstraintValidatorException e10) {
                                        throw new CertPathValidatorException("Subtree check for certificate subject alternative name failed.", e10, certPath, i10);
                                    }
                                }
                            } catch (Exception e11) {
                                throw new CertPathValidatorException("Subject alternative name contents could not be decoded.", e11, certPath, i10);
                            }
                        }
                    } catch (Exception e12) {
                        throw new CertPathValidatorException("Subject alternative name extension could not be decoded.", e12, certPath, i10);
                    }
                } catch (PKIXNameConstraintValidatorException e13) {
                    throw new CertPathValidatorException("Subtree check for certificate subject failed.", e13, certPath, i10);
                }
            } catch (Exception e14) {
                throw new CertPathValidatorException("Exception extracting subject name when checking subtrees.", e14, certPath, i10);
            }
        }
    }

    public static PKIXPolicyNode processCertD(CertPath certPath, int i10, Set set, PKIXPolicyNode pKIXPolicyNode, List[] listArr, int i11, boolean z) throws ExtCertPathValidatorException {
        String id2;
        Set set2;
        PKIXPolicyNode pKIXPolicyNode2;
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i10);
        int size = certificates.size();
        int i12 = size - i10;
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CERTIFICATE_POLICIES));
            if (aSN1Sequence == null || pKIXPolicyNode == null) {
                return null;
            }
            Enumeration objects = aSN1Sequence.getObjects();
            HashSet hashSet = new HashSet();
            while (objects.hasMoreElements()) {
                PolicyInformation policyInformation = PolicyInformation.getInstance(objects.nextElement());
                ASN1ObjectIdentifier policyIdentifier = policyInformation.getPolicyIdentifier();
                hashSet.add(policyIdentifier.getId());
                if (!ANY_POLICY.equals(policyIdentifier.getId())) {
                    try {
                        Set qualifierSet = CertPathValidatorUtilities.getQualifierSet(policyInformation.getPolicyQualifiers());
                        if (!CertPathValidatorUtilities.processCertD1i(i12, listArr, policyIdentifier, qualifierSet)) {
                            CertPathValidatorUtilities.processCertD1ii(i12, listArr, policyIdentifier, qualifierSet);
                        }
                    } catch (CertPathValidatorException e7) {
                        throw new ExtCertPathValidatorException("Policy qualifier info set could not be build.", e7, certPath, i10);
                    }
                }
            }
            if (set.isEmpty() || set.contains(ANY_POLICY)) {
                set.clear();
                set.addAll(hashSet);
            } else {
                HashSet hashSet2 = new HashSet();
                for (Object obj : set) {
                    if (hashSet.contains(obj)) {
                        hashSet2.add(obj);
                    }
                }
                set.clear();
                set.addAll(hashSet2);
            }
            if (i11 > 0 || ((i12 < size || z) && CertPathValidatorUtilities.isSelfIssued(x509Certificate))) {
                Enumeration objects2 = aSN1Sequence.getObjects();
                while (true) {
                    if (!objects2.hasMoreElements()) {
                        break;
                    }
                    PolicyInformation policyInformation2 = PolicyInformation.getInstance(objects2.nextElement());
                    if (ANY_POLICY.equals(policyInformation2.getPolicyIdentifier().getId())) {
                        Set qualifierSet2 = CertPathValidatorUtilities.getQualifierSet(policyInformation2.getPolicyQualifiers());
                        List list = listArr[i12 - 1];
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) list.get(i13);
                            for (Object obj2 : pKIXPolicyNode3.getExpectedPolicies()) {
                                if (obj2 instanceof String) {
                                    id2 = (String) obj2;
                                } else if (obj2 instanceof ASN1ObjectIdentifier) {
                                    id2 = ((ASN1ObjectIdentifier) obj2).getId();
                                }
                                String str = id2;
                                if (CertPathValidatorUtilities.findValidPolicy(pKIXPolicyNode3.getChildren(), str) == null) {
                                    HashSet hashSet3 = new HashSet();
                                    hashSet3.add(str);
                                    Set set3 = qualifierSet2;
                                    set2 = qualifierSet2;
                                    pKIXPolicyNode2 = pKIXPolicyNode3;
                                    PKIXPolicyNode pKIXPolicyNode4 = new PKIXPolicyNode(new ArrayList(), i12, hashSet3, pKIXPolicyNode3, set3, str, false);
                                    pKIXPolicyNode2.addChild(pKIXPolicyNode4);
                                    listArr[i12].add(pKIXPolicyNode4);
                                } else {
                                    set2 = qualifierSet2;
                                    pKIXPolicyNode2 = pKIXPolicyNode3;
                                }
                                pKIXPolicyNode3 = pKIXPolicyNode2;
                                qualifierSet2 = set2;
                            }
                        }
                    }
                }
            }
            PKIXPolicyNode pKIXPolicyNodeRemoveChildlessPolicyNodes = CertPathValidatorUtilities.removeChildlessPolicyNodes(pKIXPolicyNode, listArr, i12);
            if (CertPathValidatorUtilities.hasCriticalExtension(x509Certificate, CERTIFICATE_POLICIES)) {
                List list2 = listArr[i12];
                for (int i14 = 0; i14 < list2.size(); i14++) {
                    ((PKIXPolicyNode) list2.get(i14)).setCritical(true);
                }
            }
            return pKIXPolicyNodeRemoveChildlessPolicyNodes;
        } catch (AnnotatedException e10) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e10, certPath, i10);
        }
    }

    public static PKIXPolicyNode processCertE(CertPath certPath, int i10, PKIXPolicyNode pKIXPolicyNode) throws ExtCertPathValidatorException {
        try {
            if (ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i10), CERTIFICATE_POLICIES)) == null) {
                return null;
            }
            return pKIXPolicyNode;
        } catch (AnnotatedException e7) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e7, certPath, i10);
        }
    }

    public static void processCertF(CertPath certPath, int i10, PKIXPolicyNode pKIXPolicyNode, int i11) throws ExtCertPathValidatorException {
        if (i11 <= 0 && pKIXPolicyNode == null) {
            throw new ExtCertPathValidatorException("No valid policy tree found when one expected.", null, certPath, i10);
        }
    }

    public static int wrapupCertA(int i10, X509Certificate x509Certificate) {
        return (CertPathValidatorUtilities.isSelfIssued(x509Certificate) || i10 == 0) ? i10 : i10 - 1;
    }

    public static int wrapupCertB(CertPath certPath, int i10, int i11) throws ExtCertPathValidatorException {
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i10), POLICY_CONSTRAINTS));
            if (aSN1Sequence != null) {
                Enumeration objects = aSN1Sequence.getObjects();
                while (objects.hasMoreElements()) {
                    ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects.nextElement();
                    if (aSN1TaggedObject.getTagNo() == 0) {
                        try {
                            if (ASN1Integer.getInstance(aSN1TaggedObject, false).intValueExact() == 0) {
                                return 0;
                            }
                        } catch (Exception e7) {
                            throw new ExtCertPathValidatorException("Policy constraints requireExplicitPolicy field could not be decoded.", e7, certPath, i10);
                        }
                    }
                }
            }
            return i11;
        } catch (AnnotatedException e10) {
            throw new ExtCertPathValidatorException("Policy constraints could not be decoded.", e10, certPath, i10);
        }
    }

    public static void wrapupCertF(CertPath certPath, int i10, List list, Set set) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i10);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e7) {
                throw new ExtCertPathValidatorException(e7.getMessage(), e7, certPath, i10);
            } catch (Exception e10) {
                throw new CertPathValidatorException("Additional certificate path checker failed.", e10, certPath, i10);
            }
        }
        if (set.isEmpty()) {
            return;
        }
        throw new ExtCertPathValidatorException("Certificate has unsupported critical extension: " + set, null, certPath, i10);
    }

    public static PKIXPolicyNode wrapupCertG(CertPath certPath, PKIXExtendedParameters pKIXExtendedParameters, Set set, int i10, List[] listArr, PKIXPolicyNode pKIXPolicyNode, Set set2) throws ExtCertPathValidatorException {
        int size = certPath.getCertificates().size();
        if (pKIXPolicyNode == null) {
            if (pKIXExtendedParameters.isExplicitPolicyRequired()) {
                throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i10);
            }
            return null;
        }
        if (CertPathValidatorUtilities.isAnyPolicy(set)) {
            if (pKIXExtendedParameters.isExplicitPolicyRequired()) {
                if (set2.isEmpty()) {
                    throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i10);
                }
                HashSet hashSet = new HashSet();
                for (List list : listArr) {
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        PKIXPolicyNode pKIXPolicyNode2 = (PKIXPolicyNode) list.get(i11);
                        if (ANY_POLICY.equals(pKIXPolicyNode2.getValidPolicy())) {
                            Iterator children = pKIXPolicyNode2.getChildren();
                            while (children.hasNext()) {
                                hashSet.add(children.next());
                            }
                        }
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    set2.contains(((PKIXPolicyNode) it.next()).getValidPolicy());
                }
                pKIXPolicyNode = CertPathValidatorUtilities.removeChildlessPolicyNodes(pKIXPolicyNode, listArr, size);
            }
            return pKIXPolicyNode;
        }
        HashSet hashSet2 = new HashSet();
        for (List list2 : listArr) {
            for (int i12 = 0; i12 < list2.size(); i12++) {
                PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) list2.get(i12);
                if (ANY_POLICY.equals(pKIXPolicyNode3.getValidPolicy())) {
                    Iterator children2 = pKIXPolicyNode3.getChildren();
                    while (children2.hasNext()) {
                        PKIXPolicyNode pKIXPolicyNode4 = (PKIXPolicyNode) children2.next();
                        if (!ANY_POLICY.equals(pKIXPolicyNode4.getValidPolicy())) {
                            hashSet2.add(pKIXPolicyNode4);
                        }
                    }
                }
            }
        }
        Iterator it2 = hashSet2.iterator();
        while (it2.hasNext()) {
            PKIXPolicyNode pKIXPolicyNode5 = (PKIXPolicyNode) it2.next();
            if (!set.contains(pKIXPolicyNode5.getValidPolicy())) {
                pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode5);
            }
        }
        return CertPathValidatorUtilities.removeChildlessPolicyNodes(pKIXPolicyNode, listArr, size);
    }
}
