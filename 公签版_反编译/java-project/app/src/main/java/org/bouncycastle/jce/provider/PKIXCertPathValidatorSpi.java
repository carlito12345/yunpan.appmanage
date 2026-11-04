package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.TBSCertificate;
import org.bouncycastle.jcajce.PKIXExtendedBuilderParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.interfaces.BCX509Certificate;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.x509.ExtendedPKIXParameters;

/* loaded from: classes3.dex */
public class PKIXCertPathValidatorSpi extends CertPathValidatorSpi {
    private final JcaJceHelper helper;
    private final boolean isForCRLCheck;

    public PKIXCertPathValidatorSpi() {
        this(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void checkCertificate(X509Certificate x509Certificate) throws AnnotatedException {
        if (x509Certificate instanceof BCX509Certificate) {
            try {
            } catch (RuntimeException e7) {
                e = e7;
            }
            if (((BCX509Certificate) x509Certificate).getTBSCertificateNative() != null) {
                return;
            }
            e = null;
            throw new AnnotatedException("unable to process TBSCertificate", e);
        }
        try {
            TBSCertificate.getInstance(x509Certificate.getTBSCertificate());
        } catch (IllegalArgumentException e10) {
            throw new AnnotatedException(e10.getMessage());
        } catch (CertificateEncodingException e11) {
            throw new AnnotatedException("unable to process TBSCertificate", e11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v8, types: [org.bouncycastle.asn1.x509.AlgorithmIdentifier] */
    @Override // java.security.cert.CertPathValidatorSpi
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) throws CertificateNotYetValidException, CertPathValidatorException, CertificateExpiredException, InvalidAlgorithmParameterException {
        PKIXExtendedParameters baseParameters;
        List<? extends Certificate> list;
        int i10;
        X500Name ca2;
        PublicKey cAPublicKey;
        HashSet hashSet;
        ArrayList[] arrayListArr;
        int iPrepareNextCertI2;
        List list2;
        int iPrepareNextCertI1;
        HashSet hashSet2;
        if (certPathParameters instanceof PKIXParameters) {
            PKIXExtendedParameters.Builder builder = new PKIXExtendedParameters.Builder((PKIXParameters) certPathParameters);
            if (certPathParameters instanceof ExtendedPKIXParameters) {
                ExtendedPKIXParameters extendedPKIXParameters = (ExtendedPKIXParameters) certPathParameters;
                builder.setUseDeltasEnabled(extendedPKIXParameters.isUseDeltasEnabled());
                builder.setValidityModel(extendedPKIXParameters.getValidityModel());
            }
            baseParameters = builder.build();
        } else if (certPathParameters instanceof PKIXExtendedBuilderParameters) {
            baseParameters = ((PKIXExtendedBuilderParameters) certPathParameters).getBaseParameters();
        } else {
            if (!(certPathParameters instanceof PKIXExtendedParameters)) {
                throw new InvalidAlgorithmParameterException("Parameters must be a " + PKIXParameters.class.getName() + " instance.");
            }
            baseParameters = (PKIXExtendedParameters) certPathParameters;
        }
        if (baseParameters.getTrustAnchors() == null) {
            throw new InvalidAlgorithmParameterException("trustAnchors is null, this is not allowed for certification path validation.");
        }
        List<? extends Certificate> certificates = certPath.getCertificates();
        int size = certificates.size();
        int algorithmIdentifier = -1;
        if (certificates.isEmpty()) {
            throw new CertPathValidatorException("Certification path is empty.", null, certPath, -1);
        }
        Date validityDate = CertPathValidatorUtilities.getValidityDate(baseParameters, new Date());
        Set initialPolicies = baseParameters.getInitialPolicies();
        try {
            TrustAnchor trustAnchorFindTrustAnchor = CertPathValidatorUtilities.findTrustAnchor((X509Certificate) certificates.get(certificates.size() - 1), baseParameters.getTrustAnchors(), baseParameters.getSigProvider());
            if (trustAnchorFindTrustAnchor == null) {
                list = certificates;
                i10 = 1;
                try {
                    throw new CertPathValidatorException("Trust anchor for certification path not found.", null, certPath, -1);
                } catch (AnnotatedException e7) {
                    e = e7;
                    throw new CertPathValidatorException(e.getMessage(), e.getUnderlyingException(), certPath, list.size() - i10);
                }
            }
            checkCertificate(trustAnchorFindTrustAnchor.getTrustedCert());
            PKIXExtendedParameters pKIXExtendedParametersBuild = new PKIXExtendedParameters.Builder(baseParameters).setTrustAnchor(trustAnchorFindTrustAnchor).build();
            int i11 = size + 1;
            ArrayList[] arrayListArr2 = new ArrayList[i11];
            for (int i12 = 0; i12 < i11; i12++) {
                arrayListArr2[i12] = new ArrayList();
            }
            HashSet hashSet3 = new HashSet();
            hashSet3.add(RFC3280CertPathUtilities.ANY_POLICY);
            PKIXPolicyNode pKIXPolicyNode = new PKIXPolicyNode(new ArrayList(), 0, hashSet3, null, new HashSet(), RFC3280CertPathUtilities.ANY_POLICY, false);
            arrayListArr2[0].add(pKIXPolicyNode);
            PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
            HashSet hashSet4 = new HashSet();
            int i13 = pKIXExtendedParametersBuild.isExplicitPolicyRequired() ? 0 : i11;
            int i14 = pKIXExtendedParametersBuild.isAnyPolicyInhibited() ? 0 : i11;
            if (pKIXExtendedParametersBuild.isPolicyMappingInhibited()) {
                i11 = 0;
            }
            X509Certificate trustedCert = trustAnchorFindTrustAnchor.getTrustedCert();
            try {
                if (trustedCert != null) {
                    ca2 = PrincipalUtils.getSubjectPrincipal(trustedCert);
                    cAPublicKey = trustedCert.getPublicKey();
                } else {
                    ca2 = PrincipalUtils.getCA(trustAnchorFindTrustAnchor);
                    cAPublicKey = trustAnchorFindTrustAnchor.getCAPublicKey();
                }
                try {
                    algorithmIdentifier = CertPathValidatorUtilities.getAlgorithmIdentifier(cAPublicKey);
                    algorithmIdentifier.getAlgorithm();
                    algorithmIdentifier.getParameters();
                    if (pKIXExtendedParametersBuild.getTargetConstraints() != null && !pKIXExtendedParametersBuild.getTargetConstraints().match((Certificate) certificates.get(0))) {
                        throw new ExtCertPathValidatorException("Target certificate in certification path does not match targetConstraints.", null, certPath, 0);
                    }
                    List certPathCheckers = pKIXExtendedParametersBuild.getCertPathCheckers();
                    Iterator it = certPathCheckers.iterator();
                    while (it.hasNext()) {
                        ((PKIXCertPathChecker) it.next()).init(false);
                    }
                    ProvCrlRevocationChecker provCrlRevocationChecker = pKIXExtendedParametersBuild.isRevocationEnabled() ? new ProvCrlRevocationChecker(this.helper) : null;
                    TrustAnchor trustAnchor = trustAnchorFindTrustAnchor;
                    int iPrepareNextCertM = size;
                    X509Certificate x509Certificate = null;
                    int i15 = i11;
                    int i16 = i14;
                    PKIXPolicyNode pKIXPolicyNode2 = pKIXPolicyNode;
                    int i17 = i13;
                    int size2 = certificates.size() - 1;
                    int i18 = i17;
                    while (size2 >= 0) {
                        int i19 = size - size2;
                        int i20 = size;
                        X509Certificate x509Certificate2 = (X509Certificate) certificates.get(size2);
                        boolean z = size2 == certificates.size() + (-1);
                        try {
                            checkCertificate(x509Certificate2);
                            int i21 = i16;
                            List<? extends Certificate> list3 = certificates;
                            int i22 = i18;
                            int i23 = size2;
                            Date date = validityDate;
                            Date date2 = validityDate;
                            int i24 = i15;
                            ProvCrlRevocationChecker provCrlRevocationChecker2 = provCrlRevocationChecker;
                            ProvCrlRevocationChecker provCrlRevocationChecker3 = provCrlRevocationChecker;
                            PKIXNameConstraintValidator pKIXNameConstraintValidator2 = pKIXNameConstraintValidator;
                            ArrayList[] arrayListArr3 = arrayListArr2;
                            boolean z4 = z;
                            TrustAnchor trustAnchor2 = trustAnchor;
                            PKIXExtendedParameters pKIXExtendedParameters = pKIXExtendedParametersBuild;
                            List list4 = certPathCheckers;
                            RFC3280CertPathUtilities.processCertA(certPath, pKIXExtendedParametersBuild, date, provCrlRevocationChecker2, i23, cAPublicKey, z4, ca2, trustedCert);
                            RFC3280CertPathUtilities.processCertBC(certPath, i23, pKIXNameConstraintValidator2, this.isForCRLCheck);
                            PKIXPolicyNode pKIXPolicyNodeProcessCertE = RFC3280CertPathUtilities.processCertE(certPath, i23, RFC3280CertPathUtilities.processCertD(certPath, i23, hashSet4, pKIXPolicyNode2, arrayListArr3, i21, this.isForCRLCheck));
                            RFC3280CertPathUtilities.processCertF(certPath, i23, pKIXPolicyNodeProcessCertE, i22);
                            if (i19 == i20) {
                                arrayListArr = arrayListArr3;
                                iPrepareNextCertI2 = i24;
                                list2 = list4;
                                pKIXPolicyNode2 = pKIXPolicyNodeProcessCertE;
                                i16 = i21;
                                iPrepareNextCertM = iPrepareNextCertM;
                                iPrepareNextCertI1 = i22;
                            } else if (x509Certificate2 == null || x509Certificate2.getVersion() != 1) {
                                RFC3280CertPathUtilities.prepareNextCertA(certPath, i23);
                                arrayListArr = arrayListArr3;
                                PKIXPolicyNode pKIXPolicyNodePrepareCertB = RFC3280CertPathUtilities.prepareCertB(certPath, i23, arrayListArr, pKIXPolicyNodeProcessCertE, i24);
                                RFC3280CertPathUtilities.prepareNextCertG(certPath, i23, pKIXNameConstraintValidator2);
                                int iPrepareNextCertH1 = RFC3280CertPathUtilities.prepareNextCertH1(certPath, i23, i22);
                                int iPrepareNextCertH2 = RFC3280CertPathUtilities.prepareNextCertH2(certPath, i23, i24);
                                int iPrepareNextCertH3 = RFC3280CertPathUtilities.prepareNextCertH3(certPath, i23, i21);
                                iPrepareNextCertI1 = RFC3280CertPathUtilities.prepareNextCertI1(certPath, i23, iPrepareNextCertH1);
                                iPrepareNextCertI2 = RFC3280CertPathUtilities.prepareNextCertI2(certPath, i23, iPrepareNextCertH2);
                                int iPrepareNextCertJ = RFC3280CertPathUtilities.prepareNextCertJ(certPath, i23, iPrepareNextCertH3);
                                RFC3280CertPathUtilities.prepareNextCertK(certPath, i23);
                                iPrepareNextCertM = RFC3280CertPathUtilities.prepareNextCertM(certPath, i23, RFC3280CertPathUtilities.prepareNextCertL(certPath, i23, iPrepareNextCertM));
                                RFC3280CertPathUtilities.prepareNextCertN(certPath, i23);
                                Set<String> criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                if (criticalExtensionOIDs != null) {
                                    hashSet2 = new HashSet(criticalExtensionOIDs);
                                    hashSet2.remove(RFC3280CertPathUtilities.KEY_USAGE);
                                    hashSet2.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                                    hashSet2.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                                    hashSet2.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                                    hashSet2.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                                    hashSet2.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                                    hashSet2.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                                    hashSet2.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                                    hashSet2.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                                    hashSet2.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                                } else {
                                    hashSet2 = new HashSet();
                                }
                                list2 = list4;
                                RFC3280CertPathUtilities.prepareNextCertO(certPath, i23, hashSet2, list2);
                                X500Name subjectPrincipal = PrincipalUtils.getSubjectPrincipal(x509Certificate2);
                                try {
                                    PublicKey nextWorkingKey = CertPathValidatorUtilities.getNextWorkingKey(certPath.getCertificates(), i23, this.helper);
                                    AlgorithmIdentifier algorithmIdentifier2 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey);
                                    algorithmIdentifier2.getAlgorithm();
                                    algorithmIdentifier2.getParameters();
                                    pKIXPolicyNode2 = pKIXPolicyNodePrepareCertB;
                                    i16 = iPrepareNextCertJ;
                                    ca2 = subjectPrincipal;
                                    cAPublicKey = nextWorkingKey;
                                    trustedCert = x509Certificate2;
                                } catch (CertPathValidatorException e10) {
                                    throw new CertPathValidatorException("Next working key could not be retrieved.", e10, certPath, i23);
                                }
                            } else {
                                if (i19 != 1 || !x509Certificate2.equals(trustAnchor2.getTrustedCert())) {
                                    throw new CertPathValidatorException("Version 1 certificates can't be used as CA ones.", null, certPath, i23);
                                }
                                arrayListArr = arrayListArr3;
                                iPrepareNextCertI2 = i24;
                                list2 = list4;
                                pKIXPolicyNode2 = pKIXPolicyNodeProcessCertE;
                                i16 = i21;
                                iPrepareNextCertM = iPrepareNextCertM;
                                iPrepareNextCertI1 = i22;
                            }
                            arrayListArr2 = arrayListArr;
                            certPathCheckers = list2;
                            x509Certificate = x509Certificate2;
                            certificates = list3;
                            validityDate = date2;
                            pKIXExtendedParametersBuild = pKIXExtendedParameters;
                            size = i20;
                            i18 = iPrepareNextCertI1;
                            trustAnchor = trustAnchor2;
                            i15 = iPrepareNextCertI2;
                            size2 = i23 - 1;
                            pKIXNameConstraintValidator = pKIXNameConstraintValidator2;
                            provCrlRevocationChecker = provCrlRevocationChecker3;
                        } catch (AnnotatedException e11) {
                            throw new CertPathValidatorException(e11.getMessage(), e11.getUnderlyingException(), certPath, size2);
                        }
                    }
                    TrustAnchor trustAnchor3 = trustAnchor;
                    PKIXExtendedParameters pKIXExtendedParameters2 = pKIXExtendedParametersBuild;
                    ArrayList[] arrayListArr4 = arrayListArr2;
                    List list5 = certPathCheckers;
                    int i25 = size2;
                    int i26 = i25 + 1;
                    int iWrapupCertB = RFC3280CertPathUtilities.wrapupCertB(certPath, i26, RFC3280CertPathUtilities.wrapupCertA(i18, x509Certificate));
                    Set<String> criticalExtensionOIDs2 = x509Certificate.getCriticalExtensionOIDs();
                    if (criticalExtensionOIDs2 != null) {
                        hashSet = new HashSet(criticalExtensionOIDs2);
                        hashSet.remove(RFC3280CertPathUtilities.KEY_USAGE);
                        hashSet.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                        hashSet.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                        hashSet.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                        hashSet.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                        hashSet.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                        hashSet.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                        hashSet.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.CRL_DISTRIBUTION_POINTS);
                        hashSet.remove(Extension.extendedKeyUsage.getId());
                    } else {
                        hashSet = new HashSet();
                    }
                    RFC3280CertPathUtilities.wrapupCertF(certPath, i26, list5, hashSet);
                    PKIXPolicyNode pKIXPolicyNodeWrapupCertG = RFC3280CertPathUtilities.wrapupCertG(certPath, pKIXExtendedParameters2, initialPolicies, i26, arrayListArr4, pKIXPolicyNode2, hashSet4);
                    if (iWrapupCertB > 0 || pKIXPolicyNodeWrapupCertG != null) {
                        return new PKIXCertPathValidatorResult(trustAnchor3, pKIXPolicyNodeWrapupCertG, x509Certificate.getPublicKey());
                    }
                    throw new CertPathValidatorException("Path processing failed on policy.", null, certPath, i25);
                } catch (CertPathValidatorException e12) {
                    throw new ExtCertPathValidatorException("Algorithm identifier of public key of trust anchor could not be read.", e12, certPath, -1);
                }
            } catch (RuntimeException e13) {
                throw new ExtCertPathValidatorException("Subject of trust anchor could not be (re)encoded.", e13, certPath, algorithmIdentifier);
            }
        } catch (AnnotatedException e14) {
            e = e14;
            list = certificates;
            i10 = 1;
        }
    }

    public PKIXCertPathValidatorSpi(boolean z) {
        this.helper = new BCJcaJceHelper();
        this.isForCRLCheck = z;
    }
}
