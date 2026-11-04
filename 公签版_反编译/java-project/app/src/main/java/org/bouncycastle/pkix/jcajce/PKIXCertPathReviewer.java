package org.bouncycastle.pkix.jcajce;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyNode;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.x509.AccessDescription;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.AuthorityInformationAccess;
import org.bouncycastle.asn1.x509.AuthorityKeyIdentifier;
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
import org.bouncycastle.asn1.x509.qualified.ETSIQCObjectIdentifiers;
import org.bouncycastle.asn1.x509.qualified.MonetaryValue;
import org.bouncycastle.asn1.x509.qualified.QCStatement;
import org.bouncycastle.asn1.x509.qualified.RFC3739QCObjectIdentifiers;
import org.bouncycastle.cert.jcajce.JcaX509ExtensionUtils;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.pkix.PKIXNameConstraintValidator;
import org.bouncycastle.pkix.PKIXNameConstraintValidatorException;
import org.bouncycastle.pkix.util.ErrorBundle;
import org.bouncycastle.pkix.util.LocaleString;
import org.bouncycastle.pkix.util.filter.TrustedInput;
import org.bouncycastle.pkix.util.filter.UntrustedInput;
import org.bouncycastle.pkix.util.filter.UntrustedUrlInput;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Objects;

/* loaded from: classes3.dex */
public class PKIXCertPathReviewer extends CertPathValidatorUtilities {
    private static final int NAME_CHECK_MAX = 1024;
    private static final String RESOURCE_NAME = "org.bouncycastle.pkix.CertPathReviewerMessages";
    protected CertPath certPath;
    protected List certs;
    protected Date currentDate;
    protected List[] errors;
    private boolean initialized;

    /* renamed from: n, reason: collision with root package name */
    protected int f12257n;
    protected List[] notifications;
    protected PKIXParameters pkixParams;
    protected PolicyNode policyTree;
    protected PublicKey subjectPublicKey;
    protected TrustAnchor trustAnchor;
    protected Date validDate;
    private static final String QC_STATEMENT = Extension.qCStatements.getId();
    private static final String CRL_DIST_POINTS = Extension.cRLDistributionPoints.getId();
    private static final String AUTH_INFO_ACCESS = Extension.authorityInfoAccess.getId();

    public PKIXCertPathReviewer() {
    }

    private String IPtoString(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr).getHostAddress();
        } catch (Exception unused) {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 != bArr.length; i10++) {
                sb2.append(Integer.toHexString(bArr[i10] & 255));
                sb2.append(' ');
            }
            return sb2.toString();
        }
    }

    private void checkCriticalExtensions() throws CertPathReviewerException, CertPathValidatorException {
        List<PKIXCertPathChecker> certPathCheckers = this.pkixParams.getCertPathCheckers();
        Iterator<PKIXCertPathChecker> it = certPathCheckers.iterator();
        while (it.hasNext()) {
            try {
                try {
                    it.next().init(false);
                } catch (CertPathValidatorException e7) {
                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.certPathCheckerError", new Object[]{e7.getMessage(), e7, e7.getClass().getName()}), e7);
                }
            } catch (CertPathReviewerException e10) {
                addError(e10.getErrorMessage(), e10.getIndex());
                return;
            }
        }
        for (int size = this.certs.size() - 1; size >= 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null && !criticalExtensionOIDs.isEmpty()) {
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.KEY_USAGE);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.CERTIFICATE_POLICIES);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.POLICY_MAPPINGS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.INHIBIT_ANY_POLICY);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.ISSUING_DISTRIBUTION_POINT);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.DELTA_CRL_INDICATOR);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.POLICY_CONSTRAINTS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.BASIC_CONSTRAINTS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.SUBJECT_ALTERNATIVE_NAME);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.NAME_CONSTRAINTS);
                if (size == 0) {
                    criticalExtensionOIDs.remove(Extension.extendedKeyUsage.getId());
                }
                String str = QC_STATEMENT;
                if (criticalExtensionOIDs.contains(str) && processQcStatements(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(str);
                }
                Iterator<PKIXCertPathChecker> it2 = certPathCheckers.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().check(x509Certificate, criticalExtensionOIDs);
                    } catch (CertPathValidatorException e11) {
                        throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.criticalExtensionError", new Object[]{e11.getMessage(), e11, e11.getClass().getName()}), e11.getCause(), this.certPath, size);
                    }
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    Iterator<String> it3 = criticalExtensionOIDs.iterator();
                    while (it3.hasNext()) {
                        addError(createErrorBundle("CertPathReviewer.unknownCriticalExt", new Object[]{new ASN1ObjectIdentifier(it3.next())}), size);
                    }
                }
            }
        }
    }

    private void checkNameConstraints() throws CertPathReviewerException {
        PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
        try {
            for (int size = this.certs.size() - 1; size > 0; size--) {
                X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
                if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
                    X500Principal subjectPrincipal = CertPathValidatorUtilities.getSubjectPrincipal(x509Certificate);
                    try {
                        ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(new ByteArrayInputStream(subjectPrincipal.getEncoded())).readObject();
                        try {
                            pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                            try {
                                pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                                try {
                                    ASN1Sequence aSN1Sequence2 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.SUBJECT_ALTERNATIVE_NAME);
                                    if (aSN1Sequence2 != null) {
                                        if (aSN1Sequence2.size() > 1024) {
                                            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.subjAltNameExtError"), this.certPath, size);
                                        }
                                        for (int i10 = 0; i10 < aSN1Sequence2.size(); i10++) {
                                            GeneralName generalName = GeneralName.getInstance(aSN1Sequence2.getObjectAt(i10));
                                            try {
                                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                                pKIXNameConstraintValidator.checkExcluded(generalName);
                                            } catch (PKIXNameConstraintValidatorException e7) {
                                                throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.notPermittedEmail", new Object[]{new UntrustedInput(generalName)}), e7, this.certPath, size);
                                            }
                                        }
                                    }
                                } catch (AnnotatedException e10) {
                                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.subjAltNameExtError"), e10, this.certPath, size);
                                }
                            } catch (PKIXNameConstraintValidatorException e11) {
                                throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.excludedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e11, this.certPath, size);
                            }
                        } catch (PKIXNameConstraintValidatorException e12) {
                            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.notPermittedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e12, this.certPath, size);
                        }
                    } catch (IOException e13) {
                        throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.ncSubjectNameError", new Object[]{new UntrustedInput(subjectPrincipal)}), e13, this.certPath, size);
                    }
                }
                try {
                    ASN1Sequence aSN1Sequence3 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.NAME_CONSTRAINTS);
                    if (aSN1Sequence3 != null) {
                        NameConstraints nameConstraints = NameConstraints.getInstance(aSN1Sequence3);
                        GeneralSubtree[] permittedSubtrees = nameConstraints.getPermittedSubtrees();
                        if (permittedSubtrees != null) {
                            pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                        }
                        GeneralSubtree[] excludedSubtrees = nameConstraints.getExcludedSubtrees();
                        if (excludedSubtrees != null) {
                            for (int i11 = 0; i11 != excludedSubtrees.length; i11++) {
                                pKIXNameConstraintValidator.addExcludedSubtree(excludedSubtrees[i11]);
                            }
                        }
                    }
                } catch (AnnotatedException e14) {
                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.ncExtError"), e14, this.certPath, size);
                }
            }
        } catch (CertPathReviewerException e15) {
            addError(e15.getErrorMessage(), e15.getIndex());
        }
    }

    private void checkPathLength() {
        BasicConstraints basicConstraints;
        ASN1Integer pathLenConstraintInteger;
        int iMin = this.f12257n;
        int i10 = 0;
        for (int size = this.certs.size() - 1; size > 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
                if (iMin <= 0) {
                    addError(createErrorBundle("CertPathReviewer.pathLengthExtended"));
                }
                iMin--;
                i10++;
            }
            try {
                basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.BASIC_CONSTRAINTS));
            } catch (AnnotatedException unused) {
                addError(createErrorBundle("CertPathReviewer.processLengthConstError"), size);
                basicConstraints = null;
            }
            if (basicConstraints != null && basicConstraints.isCA() && (pathLenConstraintInteger = basicConstraints.getPathLenConstraintInteger()) != null) {
                iMin = Math.min(iMin, pathLenConstraintInteger.intPositiveValueExact());
            }
        }
        addNotification(createErrorBundle("CertPathReviewer.totalPathLength", new Object[]{Integers.valueOf(i10)}));
    }

    /* JADX WARN: Code restructure failed: missing block: B:209:0x0415, code lost:
    
        r27 = r0;
        r26 = r3;
        r28 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0421, code lost:
    
        if (org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.isSelfIssued(r4) != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0423, code lost:
    
        if (r8 <= 0) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x0425, code lost:
    
        r8 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0427, code lost:
    
        r0 = (org.bouncycastle.asn1.ASN1Sequence) org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.getExtensionValue(r4, org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.POLICY_CONSTRAINTS);
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x042f, code lost:
    
        if (r0 == null) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0431, code lost:
    
        r0 = r0.getObjects();
        r14 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x043a, code lost:
    
        if (r0.hasMoreElements() == false) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x043c, code lost:
    
        r2 = (org.bouncycastle.asn1.ASN1TaggedObject) r0.nextElement();
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0446, code lost:
    
        if (r2.getTagNo() == 0) goto L391;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0453, code lost:
    
        if (org.bouncycastle.asn1.ASN1Integer.getInstance(r2, false).intValueExact() != 0) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0455, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0457, code lost:
    
        r8 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x045d, code lost:
    
        if (r28 != null) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0465, code lost:
    
        if (r34.pkixParams.isExplicitPolicyRequired() != false) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0467, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0475, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(createErrorBundle("CertPathReviewer.explicitPolicy"), r34.certPath, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x047a, code lost:
    
        if (org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.isAnyPolicy(r27) == false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0482, code lost:
    
        if (r34.pkixParams.isExplicitPolicyRequired() == false) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0488, code lost:
    
        if (r13.isEmpty() != false) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x048a, code lost:
    
        r0 = new java.util.HashSet();
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0492, code lost:
    
        if (r14 >= r26) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0494, code lost:
    
        r4 = r5[r14];
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x049b, code lost:
    
        if (r6 >= r4.size()) goto L399;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x049d, code lost:
    
        r9 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r4.get(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x04ab, code lost:
    
        if (org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(r9.getValidPolicy()) == false) goto L400;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x04ad, code lost:
    
        r9 = r9.getChildren();
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x04b5, code lost:
    
        if (r9.hasNext() == false) goto L401;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x04b7, code lost:
    
        r0.add(r9.next());
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x04bf, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x04c2, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x04c5, code lost:
    
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x04cd, code lost:
    
        if (r0.hasNext() == false) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x04cf, code lost:
    
        r13.contains(((org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r0.next()).getValidPolicy());
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x04dd, code lost:
    
        r0 = r34.f12257n - 1;
        r15 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x04e3, code lost:
    
        if (r0 < 0) goto L403;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x04e5, code lost:
    
        r2 = r5[r0];
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x04ec, code lost:
    
        if (r14 >= r2.size()) goto L404;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x04ee, code lost:
    
        r4 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r2.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x04f8, code lost:
    
        if (r4.hasChildren() != false) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x04fa, code lost:
    
        r15 = org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.removePolicyNode(r15, r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x04fe, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0501, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0504, code lost:
    
        r9 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x0512, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(createErrorBundle("CertPathReviewer.explicitPolicy"), r34.certPath, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0513, code lost:
    
        r9 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x0517, code lost:
    
        r0 = new java.util.HashSet();
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x051f, code lost:
    
        if (r14 >= r26) goto L407;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0521, code lost:
    
        r4 = r5[r14];
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0528, code lost:
    
        if (r6 >= r4.size()) goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x052a, code lost:
    
        r9 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r4.get(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0538, code lost:
    
        if (org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(r9.getValidPolicy()) == false) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x053a, code lost:
    
        r9 = r9.getChildren();
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x0542, code lost:
    
        if (r9.hasNext() == false) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0544, code lost:
    
        r10 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r9.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0552, code lost:
    
        if (org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(r10.getValidPolicy()) != false) goto L413;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0554, code lost:
    
        r0.add(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x0558, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x055b, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x055e, code lost:
    
        r0 = r0.iterator();
        r15 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0568, code lost:
    
        if (r0.hasNext() == false) goto L415;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x056a, code lost:
    
        r2 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r0.next();
        r6 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x057a, code lost:
    
        if (r6.contains(r2.getValidPolicy()) != false) goto L417;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x057c, code lost:
    
        r15 = org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.removePolicyNode(r15, r5, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x0581, code lost:
    
        r27 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0584, code lost:
    
        if (r15 == null) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0586, code lost:
    
        r0 = r34.f12257n - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x058a, code lost:
    
        if (r0 < 0) goto L418;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x058c, code lost:
    
        r2 = r5[r0];
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x0593, code lost:
    
        if (r14 >= r2.size()) goto L419;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0595, code lost:
    
        r4 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r2.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x059f, code lost:
    
        if (r4.hasChildren() != false) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x05a1, code lost:
    
        r15 = org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.removePolicyNode(r15, r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x05a5, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x05a8, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x05ab, code lost:
    
        if (r8 > 0) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x05ad, code lost:
    
        if (r9 == null) goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x05bb, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(createErrorBundle("CertPathReviewer.invalidPolicy"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x05c7, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(createErrorBundle("CertPathReviewer.policyConstExtError"), r34.certPath, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:?, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0239 A[Catch: CertPathReviewerException -> 0x00da, TryCatch #4 {CertPathReviewerException -> 0x00da, blocks: (B:17:0x006f, B:21:0x007d, B:22:0x0088, B:26:0x0096, B:27:0x00a1, B:29:0x00a7, B:31:0x00c8, B:32:0x00d0, B:34:0x00d6, B:38:0x00de, B:39:0x00e9, B:43:0x00f5, B:46:0x00fc, B:47:0x0105, B:49:0x010b, B:51:0x0115, B:54:0x011c, B:56:0x0120, B:97:0x020a, B:99:0x0210, B:100:0x0213, B:102:0x0219, B:104:0x0225, B:107:0x022d, B:108:0x0230, B:109:0x0233, B:111:0x0239, B:112:0x0242, B:114:0x0248, B:122:0x026b, B:123:0x0276, B:124:0x0277, B:126:0x027b, B:128:0x0283, B:129:0x0287, B:131:0x028d, B:134:0x02ad, B:136:0x02b7, B:137:0x02ba, B:138:0x02c5, B:139:0x02c6, B:140:0x02d1, B:142:0x02d4, B:143:0x02e1, B:145:0x02e7, B:147:0x030d, B:149:0x0325, B:148:0x031c, B:150:0x032c, B:151:0x0332, B:153:0x0338, B:155:0x0340, B:165:0x0362, B:159:0x0346, B:160:0x0351, B:162:0x0353, B:163:0x035f, B:167:0x036a, B:176:0x037f, B:178:0x0389, B:179:0x038d, B:181:0x0393, B:186:0x03a3, B:189:0x03b0, B:192:0x03bd, B:194:0x03c7, B:205:0x03fc, B:197:0x03cf, B:198:0x03dc, B:199:0x03dd, B:200:0x03e8, B:202:0x03ea, B:203:0x03f7, B:61:0x012f, B:62:0x0133, B:64:0x0139, B:66:0x014f, B:68:0x0159, B:69:0x015e, B:71:0x0164, B:72:0x0172, B:74:0x0178, B:76:0x0184, B:80:0x0191, B:81:0x0197, B:83:0x019d, B:88:0x01b6, B:77:0x0187, B:79:0x018b, B:92:0x01ef, B:95:0x01fe, B:96:0x0209, B:207:0x0409, B:208:0x0414, B:209:0x0415, B:213:0x0427, B:215:0x0431, B:216:0x0436, B:218:0x043c, B:221:0x044a, B:228:0x045f, B:306:0x05b0, B:307:0x05bb, B:231:0x046a, B:232:0x0475, B:233:0x0476, B:235:0x047c, B:237:0x0484, B:239:0x048a, B:241:0x0494, B:242:0x0497, B:244:0x049d, B:246:0x04ad, B:247:0x04b1, B:249:0x04b7, B:250:0x04bf, B:251:0x04c2, B:252:0x04c5, B:253:0x04c9, B:255:0x04cf, B:256:0x04dd, B:258:0x04e5, B:259:0x04e8, B:261:0x04ee, B:263:0x04fa, B:264:0x04fe, B:265:0x0501, B:267:0x0507, B:268:0x0512, B:270:0x0517, B:272:0x0521, B:273:0x0524, B:275:0x052a, B:277:0x053a, B:278:0x053e, B:280:0x0544, B:282:0x0554, B:283:0x0558, B:284:0x055b, B:285:0x055e, B:286:0x0564, B:288:0x056a, B:290:0x057c, B:293:0x0586, B:295:0x058c, B:296:0x058f, B:298:0x0595, B:300:0x05a1, B:301:0x05a5, B:302:0x05a8, B:308:0x05bc, B:309:0x05c7), top: B:320:0x006f, inners: #0, #1, #2, #3, #5, #6, #7, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x037d A[PHI: r8 r11
  0x037d: PHI (r8v12 int) = (r8v7 int), (r8v18 int) binds: [B:168:0x036e, B:173:0x0378] A[DONT_GENERATE, DONT_INLINE]
  0x037d: PHI (r11v9 int) = (r11v6 int), (r11v15 int) binds: [B:168:0x036e, B:173:0x0378] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0389 A[Catch: CertPathReviewerException -> 0x00da, AnnotatedException -> 0x03dd, TryCatch #8 {AnnotatedException -> 0x03dd, blocks: (B:176:0x037f, B:178:0x0389, B:179:0x038d, B:181:0x0393, B:186:0x03a3, B:189:0x03b0), top: B:325:0x037f, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0210 A[Catch: CertPathReviewerException -> 0x00da, TryCatch #4 {CertPathReviewerException -> 0x00da, blocks: (B:17:0x006f, B:21:0x007d, B:22:0x0088, B:26:0x0096, B:27:0x00a1, B:29:0x00a7, B:31:0x00c8, B:32:0x00d0, B:34:0x00d6, B:38:0x00de, B:39:0x00e9, B:43:0x00f5, B:46:0x00fc, B:47:0x0105, B:49:0x010b, B:51:0x0115, B:54:0x011c, B:56:0x0120, B:97:0x020a, B:99:0x0210, B:100:0x0213, B:102:0x0219, B:104:0x0225, B:107:0x022d, B:108:0x0230, B:109:0x0233, B:111:0x0239, B:112:0x0242, B:114:0x0248, B:122:0x026b, B:123:0x0276, B:124:0x0277, B:126:0x027b, B:128:0x0283, B:129:0x0287, B:131:0x028d, B:134:0x02ad, B:136:0x02b7, B:137:0x02ba, B:138:0x02c5, B:139:0x02c6, B:140:0x02d1, B:142:0x02d4, B:143:0x02e1, B:145:0x02e7, B:147:0x030d, B:149:0x0325, B:148:0x031c, B:150:0x032c, B:151:0x0332, B:153:0x0338, B:155:0x0340, B:165:0x0362, B:159:0x0346, B:160:0x0351, B:162:0x0353, B:163:0x035f, B:167:0x036a, B:176:0x037f, B:178:0x0389, B:179:0x038d, B:181:0x0393, B:186:0x03a3, B:189:0x03b0, B:192:0x03bd, B:194:0x03c7, B:205:0x03fc, B:197:0x03cf, B:198:0x03dc, B:199:0x03dd, B:200:0x03e8, B:202:0x03ea, B:203:0x03f7, B:61:0x012f, B:62:0x0133, B:64:0x0139, B:66:0x014f, B:68:0x0159, B:69:0x015e, B:71:0x0164, B:72:0x0172, B:74:0x0178, B:76:0x0184, B:80:0x0191, B:81:0x0197, B:83:0x019d, B:88:0x01b6, B:77:0x0187, B:79:0x018b, B:92:0x01ef, B:95:0x01fe, B:96:0x0209, B:207:0x0409, B:208:0x0414, B:209:0x0415, B:213:0x0427, B:215:0x0431, B:216:0x0436, B:218:0x043c, B:221:0x044a, B:228:0x045f, B:306:0x05b0, B:307:0x05bb, B:231:0x046a, B:232:0x0475, B:233:0x0476, B:235:0x047c, B:237:0x0484, B:239:0x048a, B:241:0x0494, B:242:0x0497, B:244:0x049d, B:246:0x04ad, B:247:0x04b1, B:249:0x04b7, B:250:0x04bf, B:251:0x04c2, B:252:0x04c5, B:253:0x04c9, B:255:0x04cf, B:256:0x04dd, B:258:0x04e5, B:259:0x04e8, B:261:0x04ee, B:263:0x04fa, B:264:0x04fe, B:265:0x0501, B:267:0x0507, B:268:0x0512, B:270:0x0517, B:272:0x0521, B:273:0x0524, B:275:0x052a, B:277:0x053a, B:278:0x053e, B:280:0x0544, B:282:0x0554, B:283:0x0558, B:284:0x055b, B:285:0x055e, B:286:0x0564, B:288:0x056a, B:290:0x057c, B:293:0x0586, B:295:0x058c, B:296:0x058f, B:298:0x0595, B:300:0x05a1, B:301:0x05a5, B:302:0x05a8, B:308:0x05bc, B:309:0x05c7), top: B:320:0x006f, inners: #0, #1, #2, #3, #5, #6, #7, #8, #9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkPolicy() throws CertPathReviewerException {
        int i10;
        int i11;
        int size;
        PKIXPolicyNode pKIXPolicyNodePrepareNextCertB2;
        X509Certificate x509Certificate;
        HashSet hashSet;
        Set<String> set;
        int i12;
        int i13;
        String str;
        HashSet hashSet2;
        ASN1Sequence aSN1Sequence;
        ASN1Integer aSN1Integer;
        int iIntValueExact;
        int iIntValueExact2;
        HashSet hashSet3;
        HashSet hashSet4;
        String id2;
        int i14;
        int i15;
        Set<String> criticalExtensionOIDs;
        Set<String> initialPolicies = this.pkixParams.getInitialPolicies();
        int i16 = this.f12257n + 1;
        ArrayList[] arrayListArr = new ArrayList[i16];
        for (int i17 = 0; i17 < i16; i17++) {
            arrayListArr[i17] = new ArrayList();
        }
        HashSet hashSet5 = new HashSet();
        hashSet5.add(org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY);
        PKIXPolicyNode pKIXPolicyNode = new PKIXPolicyNode(new ArrayList(), 0, hashSet5, null, new HashSet(), org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY, false);
        arrayListArr[0].add(pKIXPolicyNode);
        if (this.pkixParams.isExplicitPolicyRequired()) {
            i11 = 0;
            i10 = 1;
        } else {
            i10 = 1;
            i11 = this.f12257n + 1;
        }
        int i18 = this.pkixParams.isAnyPolicyInhibited() ? 0 : this.f12257n + i10;
        int i19 = this.pkixParams.isPolicyMappingInhibited() ? 0 : this.f12257n + i10;
        try {
            size = this.certs.size() - i10;
            pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode;
            x509Certificate = null;
            hashSet = null;
        } catch (CertPathReviewerException e7) {
            addError(e7.getErrorMessage(), e7.getIndex());
            return;
        }
        while (true) {
            String str2 = "CertPathReviewer.policyConstExtError";
            if (size < 0) {
                break;
            }
            int i20 = this.f12257n - size;
            X509Certificate x509Certificate2 = (X509Certificate) this.certs.get(size);
            try {
                ASN1Sequence aSN1Sequence2 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate2, CertPathValidatorUtilities.CERTIFICATE_POLICIES);
                if (aSN1Sequence2 == null || pKIXPolicyNodePrepareNextCertB2 == null) {
                    set = initialPolicies;
                    i12 = i16;
                    i13 = i18;
                    str = "CertPathReviewer.policyConstExtError";
                    pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNodePrepareNextCertB2;
                } else {
                    Enumeration objects = aSN1Sequence2.getObjects();
                    i12 = i16;
                    HashSet hashSet6 = new HashSet();
                    while (objects.hasMoreElements()) {
                        PolicyInformation policyInformation = PolicyInformation.getInstance(objects.nextElement());
                        Set<String> set2 = initialPolicies;
                        ASN1ObjectIdentifier policyIdentifier = policyInformation.getPolicyIdentifier();
                        PKIXPolicyNode pKIXPolicyNode2 = pKIXPolicyNodePrepareNextCertB2;
                        hashSet6.add(policyIdentifier.getId());
                        if (!org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(policyIdentifier.getId())) {
                            try {
                                Set qualifierSet = CertPathValidatorUtilities.getQualifierSet(policyInformation.getPolicyQualifiers());
                                if (!CertPathValidatorUtilities.processCertD1i(i20, arrayListArr, policyIdentifier, qualifierSet)) {
                                    CertPathValidatorUtilities.processCertD1ii(i20, arrayListArr, policyIdentifier, qualifierSet);
                                }
                            } catch (CertPathValidatorException e10) {
                                throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.policyQualifierError"), e10, this.certPath, size);
                            }
                        }
                        initialPolicies = set2;
                        pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode2;
                    }
                    set = initialPolicies;
                    PKIXPolicyNode pKIXPolicyNode3 = pKIXPolicyNodePrepareNextCertB2;
                    if (hashSet == null || hashSet.contains(org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY)) {
                        hashSet3 = hashSet6;
                    } else {
                        hashSet3 = new HashSet();
                        for (Object obj : hashSet) {
                            if (hashSet6.contains(obj)) {
                                hashSet3.add(obj);
                            }
                        }
                    }
                    if (i18 > 0 || (i20 < this.f12257n && CertPathValidatorUtilities.isSelfIssued(x509Certificate2))) {
                        Enumeration objects2 = aSN1Sequence2.getObjects();
                        while (objects2.hasMoreElements()) {
                            PolicyInformation policyInformation2 = PolicyInformation.getInstance(objects2.nextElement());
                            if (org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(policyInformation2.getPolicyIdentifier().getId())) {
                                try {
                                    Set qualifierSet2 = CertPathValidatorUtilities.getQualifierSet(policyInformation2.getPolicyQualifiers());
                                    ArrayList arrayList = arrayListArr[i20 - 1];
                                    hashSet4 = hashSet3;
                                    for (int i21 = 0; i21 < arrayList.size(); i21++) {
                                        PKIXPolicyNode pKIXPolicyNode4 = (PKIXPolicyNode) arrayList.get(i21);
                                        for (Object obj2 : pKIXPolicyNode4.getExpectedPolicies()) {
                                            ArrayList arrayList2 = arrayList;
                                            String str3 = str2;
                                            if (obj2 instanceof String) {
                                                id2 = (String) obj2;
                                            } else if (obj2 instanceof ASN1ObjectIdentifier) {
                                                id2 = ((ASN1ObjectIdentifier) obj2).getId();
                                            } else {
                                                arrayList = arrayList2;
                                                str2 = str3;
                                            }
                                            Iterator children = pKIXPolicyNode4.getChildren();
                                            boolean z = false;
                                            while (children.hasNext()) {
                                                Iterator it = children;
                                                if (id2.equals(((PKIXPolicyNode) children.next()).getValidPolicy())) {
                                                    z = true;
                                                }
                                                children = it;
                                            }
                                            if (z) {
                                                i14 = i18;
                                            } else {
                                                HashSet hashSet7 = new HashSet();
                                                hashSet7.add(id2);
                                                i14 = i18;
                                                PKIXPolicyNode pKIXPolicyNode5 = new PKIXPolicyNode(new ArrayList(), i20, hashSet7, pKIXPolicyNode4, qualifierSet2, id2, false);
                                                pKIXPolicyNode4.addChild(pKIXPolicyNode5);
                                                arrayListArr[i20].add(pKIXPolicyNode5);
                                            }
                                            arrayList = arrayList2;
                                            str2 = str3;
                                            i18 = i14;
                                        }
                                    }
                                    i13 = i18;
                                    str = str2;
                                    pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode3;
                                    for (i15 = i20 - 1; i15 >= 0; i15--) {
                                        ArrayList arrayList3 = arrayListArr[i15];
                                        for (int i22 = 0; i22 < arrayList3.size(); i22++) {
                                            PKIXPolicyNode pKIXPolicyNode6 = (PKIXPolicyNode) arrayList3.get(i22);
                                            if (!pKIXPolicyNode6.hasChildren()) {
                                                PKIXPolicyNode pKIXPolicyNodeRemovePolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNodePrepareNextCertB2, arrayListArr, pKIXPolicyNode6);
                                                pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNodeRemovePolicyNode;
                                                if (pKIXPolicyNodeRemovePolicyNode == null) {
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                    criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                    if (criticalExtensionOIDs != null) {
                                        boolean zContains = criticalExtensionOIDs.contains(CertPathValidatorUtilities.CERTIFICATE_POLICIES);
                                        ArrayList arrayList4 = arrayListArr[i20];
                                        for (int i23 = 0; i23 < arrayList4.size(); i23++) {
                                            ((PKIXPolicyNode) arrayList4.get(i23)).setCritical(zContains);
                                        }
                                    }
                                    hashSet = hashSet4;
                                } catch (CertPathValidatorException e11) {
                                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.policyQualifierError"), e11, this.certPath, size);
                                }
                            }
                        }
                        i13 = i18;
                        hashSet4 = hashSet3;
                        str = str2;
                        pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode3;
                        while (i15 >= 0) {
                        }
                        criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                        if (criticalExtensionOIDs != null) {
                        }
                        hashSet = hashSet4;
                    } else {
                        i13 = i18;
                        hashSet4 = hashSet3;
                        str = str2;
                        pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode3;
                        while (i15 >= 0) {
                        }
                        criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                        if (criticalExtensionOIDs != null) {
                        }
                        hashSet = hashSet4;
                    }
                }
                if (aSN1Sequence2 == null) {
                    pKIXPolicyNodePrepareNextCertB2 = null;
                }
                if (i11 <= 0 && pKIXPolicyNodePrepareNextCertB2 == null) {
                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.noValidPolicyTree"));
                }
                if (i20 != this.f12257n) {
                    try {
                        ASN1Primitive extensionValue = CertPathValidatorUtilities.getExtensionValue(x509Certificate2, CertPathValidatorUtilities.POLICY_MAPPINGS);
                        if (extensionValue != null) {
                            ASN1Sequence aSN1Sequence3 = (ASN1Sequence) extensionValue;
                            for (int i24 = 0; i24 < aSN1Sequence3.size(); i24++) {
                                ASN1Sequence aSN1Sequence4 = (ASN1Sequence) aSN1Sequence3.getObjectAt(i24);
                                ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) aSN1Sequence4.getObjectAt(0);
                                ASN1ObjectIdentifier aSN1ObjectIdentifier2 = (ASN1ObjectIdentifier) aSN1Sequence4.getObjectAt(1);
                                if (org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(aSN1ObjectIdentifier.getId())) {
                                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.invalidPolicyMapping"), this.certPath, size);
                                }
                                if (org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(aSN1ObjectIdentifier2.getId())) {
                                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.invalidPolicyMapping"), this.certPath, size);
                                }
                            }
                        }
                        if (extensionValue != null) {
                            ASN1Sequence aSN1Sequence5 = (ASN1Sequence) extensionValue;
                            HashMap map = new HashMap();
                            HashSet hashSet8 = new HashSet();
                            int i25 = 0;
                            while (i25 < aSN1Sequence5.size()) {
                                ASN1Sequence aSN1Sequence6 = (ASN1Sequence) aSN1Sequence5.getObjectAt(i25);
                                ASN1Sequence aSN1Sequence7 = aSN1Sequence5;
                                String id3 = ((ASN1ObjectIdentifier) aSN1Sequence6.getObjectAt(0)).getId();
                                HashSet hashSet9 = hashSet;
                                String id4 = ((ASN1ObjectIdentifier) aSN1Sequence6.getObjectAt(1)).getId();
                                if (map.containsKey(id3)) {
                                    ((Set) map.get(id3)).add(id4);
                                } else {
                                    HashSet hashSet10 = new HashSet();
                                    hashSet10.add(id4);
                                    map.put(id3, hashSet10);
                                    hashSet8.add(id3);
                                }
                                i25++;
                                aSN1Sequence5 = aSN1Sequence7;
                                hashSet = hashSet9;
                            }
                            hashSet2 = hashSet;
                            Iterator it2 = hashSet8.iterator();
                            while (it2.hasNext()) {
                                String str4 = (String) it2.next();
                                if (i19 > 0) {
                                    try {
                                        try {
                                            CertPathValidatorUtilities.prepareNextCertB1(i20, arrayListArr, str4, map, x509Certificate2);
                                        } catch (AnnotatedException e12) {
                                            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.policyExtError"), e12, this.certPath, size);
                                        }
                                    } catch (CertPathValidatorException e13) {
                                        throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.policyQualifierError"), e13, this.certPath, size);
                                    }
                                } else if (i19 <= 0) {
                                    pKIXPolicyNodePrepareNextCertB2 = CertPathValidatorUtilities.prepareNextCertB2(i20, arrayListArr, str4, pKIXPolicyNodePrepareNextCertB2);
                                }
                            }
                        } else {
                            hashSet2 = hashSet;
                        }
                        if (CertPathValidatorUtilities.isSelfIssued(x509Certificate2)) {
                            i18 = i13;
                            try {
                                aSN1Sequence = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate2, CertPathValidatorUtilities.POLICY_CONSTRAINTS);
                                if (aSN1Sequence != null) {
                                    Enumeration objects3 = aSN1Sequence.getObjects();
                                    while (objects3.hasMoreElements()) {
                                        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects3.nextElement();
                                        int tagNo = aSN1TaggedObject.getTagNo();
                                        if (tagNo == 0) {
                                            int iIntValueExact3 = ASN1Integer.getInstance(aSN1TaggedObject, false).intValueExact();
                                            if (iIntValueExact3 < i11) {
                                                i11 = iIntValueExact3;
                                            }
                                        } else if (tagNo == 1 && (iIntValueExact2 = ASN1Integer.getInstance(aSN1TaggedObject, false).intValueExact()) < i19) {
                                            i19 = iIntValueExact2;
                                        }
                                    }
                                }
                                try {
                                    aSN1Integer = (ASN1Integer) CertPathValidatorUtilities.getExtensionValue(x509Certificate2, CertPathValidatorUtilities.INHIBIT_ANY_POLICY);
                                    if (aSN1Integer == null && (iIntValueExact = aSN1Integer.intValueExact()) < i18) {
                                        i18 = iIntValueExact;
                                    }
                                } catch (AnnotatedException unused) {
                                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.policyInhibitExtError"), this.certPath, size);
                                }
                            } catch (AnnotatedException unused2) {
                                throw new CertPathReviewerException(createErrorBundle(str), this.certPath, size);
                            }
                        } else {
                            if (i11 != 0) {
                                i11--;
                            }
                            if (i19 != 0) {
                                i19--;
                            }
                            if (i13 != 0) {
                                i18 = i13 - 1;
                            }
                            aSN1Sequence = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate2, CertPathValidatorUtilities.POLICY_CONSTRAINTS);
                            if (aSN1Sequence != null) {
                            }
                            aSN1Integer = (ASN1Integer) CertPathValidatorUtilities.getExtensionValue(x509Certificate2, CertPathValidatorUtilities.INHIBIT_ANY_POLICY);
                            if (aSN1Integer == null) {
                            }
                        }
                    } catch (AnnotatedException e14) {
                        throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.policyMapExtError"), e14, this.certPath, size);
                    }
                } else {
                    hashSet2 = hashSet;
                    i18 = i13;
                }
                size--;
                x509Certificate = x509Certificate2;
                hashSet = hashSet2;
                i16 = i12;
                initialPolicies = set;
            } catch (AnnotatedException e15) {
                throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.policyExtError"), e15, this.certPath, size);
            }
            addError(e7.getErrorMessage(), e7.getIndex());
            return;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:59|(3:165|61|62)(2:66|(3:177|68|62)(2:72|(2:79|80)(3:76|(1:78)(0)|80)))|(2:185|81)|87|(16:169|89|(1:91)(1:94)|182|95|(1:97)(1:100)|101|(2:104|102)|192|105|(2:108|106)|173|109|110|163|111)(1:118)|(1:123)(1:122)|124|(15:126|(1:130)|167|132|(11:134|(0)|140|(2:142|(1:146))|149|171|150|175|151|191|155)(1:137)|136|140|(0)(0)|149|171|150|175|151|191|155)(1:148)|147|149|171|150|175|151|191|155) */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x03d0, code lost:
    
        r7 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x03d2, code lost:
    
        addError(createErrorBundle("CertPathReviewer.pubKeyError"), r13);
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0289 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0249  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkSignatures() throws Exception {
        TrustAnchor trustAnchor;
        ErrorBundle errorBundleCreateErrorBundle;
        TrustAnchor trustAnchor2;
        X500Principal subjectPrincipal;
        X509Certificate trustedCert;
        PublicKey publicKey;
        int size;
        ErrorBundle errorBundleCreateErrorBundle2;
        ErrorBundle errorBundleCreateErrorBundle3;
        X509Certificate x509Certificate;
        int i10;
        int i11;
        PublicKey publicKey2;
        X500Principal x500Principal;
        TrustAnchor trustAnchor3;
        ASN1Primitive extensionValue;
        ASN1Primitive extensionValue2;
        boolean[] keyUsage;
        BasicConstraints basicConstraints;
        AuthorityKeyIdentifier authorityKeyIdentifier;
        GeneralNames authorityCertIssuer;
        boolean[] keyUsage2;
        X509Certificate x509Certificate2;
        Collection trustAnchors;
        ErrorBundle errorBundleCreateErrorBundle4;
        int i12 = 3;
        char c7 = 2;
        char c10 = 0;
        char c11 = 1;
        addNotification(createErrorBundle("CertPathReviewer.certPathValidDate", new Object[]{new TrustedInput(this.validDate), new TrustedInput(this.currentDate)}));
        try {
            List list = this.certs;
            x509Certificate2 = (X509Certificate) list.get(list.size() - 1);
            trustAnchors = getTrustAnchors(x509Certificate2, this.pkixParams.getTrustAnchors());
        } catch (CertPathReviewerException e7) {
            e = e7;
            trustAnchor = null;
        } catch (Throwable th2) {
            th = th2;
            trustAnchor = null;
        }
        if (trustAnchors.size() > 1) {
            errorBundleCreateErrorBundle4 = createErrorBundle("CertPathReviewer.conflictingTrustAnchors", new Object[]{Integers.valueOf(trustAnchors.size()), new UntrustedInput(x509Certificate2.getIssuerX500Principal())});
        } else {
            if (!trustAnchors.isEmpty()) {
                trustAnchor = (TrustAnchor) trustAnchors.iterator().next();
                try {
                    try {
                        try {
                            CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, trustAnchor.getTrustedCert() != null ? trustAnchor.getTrustedCert().getPublicKey() : trustAnchor.getCAPublicKey(), this.pkixParams.getSigProvider());
                        } catch (SignatureException unused) {
                            addError(createErrorBundle("CertPathReviewer.trustButInvalidCert"));
                        } catch (Exception unused2) {
                        }
                    } catch (CertPathReviewerException e10) {
                        e = e10;
                        errorBundleCreateErrorBundle = e.getErrorMessage();
                        addError(errorBundleCreateErrorBundle);
                        trustAnchor2 = trustAnchor;
                        if (trustAnchor2 == null) {
                        }
                        if (trustAnchor2 == null) {
                        }
                        X509Certificate x509Certificate3 = trustedCert;
                        X500Principal subjectX500Principal = subjectPrincipal;
                        PublicKey nextWorkingKey = publicKey;
                        size = this.certs.size() - 1;
                        while (size >= 0) {
                        }
                        this.trustAnchor = trustAnchor2;
                        this.subjectPublicKey = nextWorkingKey;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    errorBundleCreateErrorBundle = createErrorBundle("CertPathReviewer.unknown", new Object[]{new UntrustedInput(th.getMessage()), new UntrustedInput(th)});
                    addError(errorBundleCreateErrorBundle);
                    trustAnchor2 = trustAnchor;
                    if (trustAnchor2 == null) {
                    }
                    if (trustAnchor2 == null) {
                    }
                    X509Certificate x509Certificate32 = trustedCert;
                    X500Principal subjectX500Principal2 = subjectPrincipal;
                    PublicKey nextWorkingKey2 = publicKey;
                    size = this.certs.size() - 1;
                    while (size >= 0) {
                    }
                    this.trustAnchor = trustAnchor2;
                    this.subjectPublicKey = nextWorkingKey2;
                }
                trustAnchor2 = trustAnchor;
                if (trustAnchor2 == null) {
                    X509Certificate trustedCert2 = trustAnchor2.getTrustedCert();
                    try {
                        subjectPrincipal = trustedCert2 != null ? CertPathValidatorUtilities.getSubjectPrincipal(trustedCert2) : new X500Principal(trustAnchor2.getCAName());
                    } catch (IllegalArgumentException unused3) {
                        addError(createErrorBundle("CertPathReviewer.trustDNInvalid", new Object[]{new UntrustedInput(trustAnchor2.getCAName())}));
                        subjectPrincipal = null;
                    }
                    if (trustedCert2 != null && (keyUsage2 = trustedCert2.getKeyUsage()) != null && (keyUsage2.length <= 5 || !keyUsage2[5])) {
                        addNotification(createErrorBundle("CertPathReviewer.trustKeyUsage"));
                    }
                } else {
                    subjectPrincipal = null;
                }
                if (trustAnchor2 == null) {
                    trustedCert = trustAnchor2.getTrustedCert();
                    publicKey = trustedCert != null ? trustedCert.getPublicKey() : trustAnchor2.getCAPublicKey();
                    try {
                        AlgorithmIdentifier algorithmIdentifier = CertPathValidatorUtilities.getAlgorithmIdentifier(publicKey);
                        algorithmIdentifier.getAlgorithm();
                        algorithmIdentifier.getParameters();
                    } catch (CertPathValidatorException unused4) {
                        addError(createErrorBundle("CertPathReviewer.trustPubKeyError"));
                    }
                } else {
                    trustedCert = null;
                    publicKey = null;
                }
                X509Certificate x509Certificate322 = trustedCert;
                X500Principal subjectX500Principal22 = subjectPrincipal;
                PublicKey nextWorkingKey22 = publicKey;
                size = this.certs.size() - 1;
                while (size >= 0) {
                    int i13 = this.f12257n - size;
                    X509Certificate x509Certificate4 = (X509Certificate) this.certs.get(size);
                    if (nextWorkingKey22 != null) {
                        try {
                            CertPathValidatorUtilities.verifyX509Certificate(x509Certificate4, nextWorkingKey22, this.pkixParams.getSigProvider());
                        } catch (GeneralSecurityException e11) {
                            String message = e11.getMessage();
                            String name = e11.getClass().getName();
                            Object[] objArr = new Object[i12];
                            objArr[c10] = message;
                            objArr[c11] = e11;
                            objArr[c7] = name;
                            errorBundleCreateErrorBundle2 = createErrorBundle("CertPathReviewer.signatureNotVerified", objArr);
                            addError(errorBundleCreateErrorBundle2, size);
                            x509Certificate4.checkValidity(this.validDate);
                            if (this.pkixParams.isRevocationEnabled()) {
                            }
                            if (x500Principal == null) {
                            }
                            if (i10 == this.f12257n) {
                            }
                            subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                            nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                            AlgorithmIdentifier algorithmIdentifier2 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                            algorithmIdentifier2.getAlgorithm();
                            algorithmIdentifier2.getParameters();
                            size = i11 - 1;
                            trustAnchor2 = trustAnchor3;
                            x509Certificate322 = x509Certificate;
                            i12 = 3;
                            c7 = 2;
                            c10 = 0;
                            c11 = 1;
                        }
                    } else if (CertPathValidatorUtilities.isSelfIssued(x509Certificate4)) {
                        try {
                            CertPathValidatorUtilities.verifyX509Certificate(x509Certificate4, x509Certificate4.getPublicKey(), this.pkixParams.getSigProvider());
                            addError(createErrorBundle("CertPathReviewer.rootKeyIsValidButNotATrustAnchor"), size);
                        } catch (GeneralSecurityException e12) {
                            String message2 = e12.getMessage();
                            String name2 = e12.getClass().getName();
                            Object[] objArr2 = new Object[i12];
                            objArr2[c10] = message2;
                            objArr2[c11] = e12;
                            objArr2[2] = name2;
                            errorBundleCreateErrorBundle2 = createErrorBundle("CertPathReviewer.signatureNotVerified", objArr2);
                            addError(errorBundleCreateErrorBundle2, size);
                            x509Certificate4.checkValidity(this.validDate);
                            if (this.pkixParams.isRevocationEnabled()) {
                            }
                            if (x500Principal == null) {
                            }
                            if (i10 == this.f12257n) {
                            }
                            subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                            nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                            AlgorithmIdentifier algorithmIdentifier22 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                            algorithmIdentifier22.getAlgorithm();
                            algorithmIdentifier22.getParameters();
                            size = i11 - 1;
                            trustAnchor2 = trustAnchor3;
                            x509Certificate322 = x509Certificate;
                            i12 = 3;
                            c7 = 2;
                            c10 = 0;
                            c11 = 1;
                        }
                    } else {
                        ErrorBundle errorBundleCreateErrorBundle5 = createErrorBundle("CertPathReviewer.NoIssuerPublicKey");
                        byte[] extensionValue3 = x509Certificate4.getExtensionValue(Extension.authorityKeyIdentifier.getId());
                        if (extensionValue3 == null || (authorityCertIssuer = (authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(ASN1OctetString.getInstance(extensionValue3).getOctets())).getAuthorityCertIssuer()) == null) {
                            addError(errorBundleCreateErrorBundle5, size);
                        } else {
                            GeneralName generalName = authorityCertIssuer.getNames()[c10];
                            BigInteger authorityCertSerialNumber = authorityKeyIdentifier.getAuthorityCertSerialNumber();
                            if (authorityCertSerialNumber != null) {
                                LocaleString localeString = new LocaleString(RESOURCE_NAME, "missingIssuer");
                                LocaleString localeString2 = new LocaleString(RESOURCE_NAME, "missingSerial");
                                Object[] objArr3 = new Object[7];
                                objArr3[c10] = localeString;
                                objArr3[1] = " \"";
                                objArr3[2] = generalName;
                                objArr3[3] = "\" ";
                                objArr3[4] = localeString2;
                                objArr3[5] = " ";
                                objArr3[6] = authorityCertSerialNumber;
                                errorBundleCreateErrorBundle5.setExtraArguments(objArr3);
                            }
                            addError(errorBundleCreateErrorBundle5, size);
                        }
                    }
                    try {
                        x509Certificate4.checkValidity(this.validDate);
                    } catch (CertificateExpiredException unused5) {
                        Object[] objArr4 = new Object[1];
                        objArr4[c10] = new TrustedInput(x509Certificate4.getNotAfter());
                        errorBundleCreateErrorBundle3 = createErrorBundle("CertPathReviewer.certificateExpired", objArr4);
                        addError(errorBundleCreateErrorBundle3, size);
                        if (this.pkixParams.isRevocationEnabled()) {
                        }
                        if (x500Principal == null) {
                        }
                        if (i10 == this.f12257n) {
                        }
                        subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                        nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                        AlgorithmIdentifier algorithmIdentifier222 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                        algorithmIdentifier222.getAlgorithm();
                        algorithmIdentifier222.getParameters();
                        size = i11 - 1;
                        trustAnchor2 = trustAnchor3;
                        x509Certificate322 = x509Certificate;
                        i12 = 3;
                        c7 = 2;
                        c10 = 0;
                        c11 = 1;
                    } catch (CertificateNotYetValidException unused6) {
                        Object[] objArr5 = new Object[1];
                        objArr5[c10] = new TrustedInput(x509Certificate4.getNotBefore());
                        errorBundleCreateErrorBundle3 = createErrorBundle("CertPathReviewer.certificateNotYetValid", objArr5);
                        addError(errorBundleCreateErrorBundle3, size);
                        if (this.pkixParams.isRevocationEnabled()) {
                        }
                        if (x500Principal == null) {
                        }
                        if (i10 == this.f12257n) {
                        }
                        subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                        nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                        AlgorithmIdentifier algorithmIdentifier2222 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                        algorithmIdentifier2222.getAlgorithm();
                        algorithmIdentifier2222.getParameters();
                        size = i11 - 1;
                        trustAnchor2 = trustAnchor3;
                        x509Certificate322 = x509Certificate;
                        i12 = 3;
                        c7 = 2;
                        c10 = 0;
                        c11 = 1;
                    }
                    if (this.pkixParams.isRevocationEnabled()) {
                        try {
                            extensionValue2 = CertPathValidatorUtilities.getExtensionValue(x509Certificate4, CRL_DIST_POINTS);
                        } catch (AnnotatedException unused7) {
                            addError(createErrorBundle("CertPathReviewer.crlDistPtExtError"), size);
                        }
                        CRLDistPoint cRLDistPoint = extensionValue2 != null ? CRLDistPoint.getInstance(extensionValue2) : null;
                        try {
                            extensionValue = CertPathValidatorUtilities.getExtensionValue(x509Certificate4, AUTH_INFO_ACCESS);
                        } catch (AnnotatedException unused8) {
                            addError(createErrorBundle("CertPathReviewer.crlAuthInfoAccError"), size);
                        }
                        AuthorityInformationAccess authorityInformationAccess = extensionValue != null ? AuthorityInformationAccess.getInstance(extensionValue) : null;
                        Vector cRLDistUrls = getCRLDistUrls(cRLDistPoint);
                        Vector oCSPUrls = getOCSPUrls(authorityInformationAccess);
                        Iterator it = cRLDistUrls.iterator();
                        while (it.hasNext()) {
                            Object[] objArr6 = new Object[1];
                            objArr6[c10] = new UntrustedUrlInput(it.next());
                            addNotification(createErrorBundle("CertPathReviewer.crlDistPoint", objArr6), size);
                        }
                        Iterator it2 = oCSPUrls.iterator();
                        while (it2.hasNext()) {
                            Object[] objArr7 = new Object[1];
                            objArr7[c10] = new UntrustedUrlInput(it2.next());
                            addNotification(createErrorBundle("CertPathReviewer.ocspLocation", objArr7), size);
                        }
                        try {
                            x509Certificate = x509Certificate4;
                            i10 = i13;
                            i11 = size;
                            publicKey2 = nextWorkingKey22;
                            x500Principal = subjectX500Principal22;
                            trustAnchor3 = trustAnchor2;
                            try {
                                checkRevocation(this.pkixParams, x509Certificate4, this.validDate, x509Certificate322, nextWorkingKey22, cRLDistUrls, oCSPUrls, i11);
                            } catch (CertPathReviewerException e13) {
                                e = e13;
                                addError(e.getErrorMessage(), i11);
                                if (x500Principal == null) {
                                }
                                if (i10 == this.f12257n) {
                                }
                                subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                                nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                                AlgorithmIdentifier algorithmIdentifier22222 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                                algorithmIdentifier22222.getAlgorithm();
                                algorithmIdentifier22222.getParameters();
                                size = i11 - 1;
                                trustAnchor2 = trustAnchor3;
                                x509Certificate322 = x509Certificate;
                                i12 = 3;
                                c7 = 2;
                                c10 = 0;
                                c11 = 1;
                            }
                        } catch (CertPathReviewerException e14) {
                            e = e14;
                            x509Certificate = x509Certificate4;
                            i10 = i13;
                            i11 = size;
                            publicKey2 = nextWorkingKey22;
                            x500Principal = subjectX500Principal22;
                            trustAnchor3 = trustAnchor2;
                        }
                    } else {
                        x509Certificate = x509Certificate4;
                        i10 = i13;
                        i11 = size;
                        publicKey2 = nextWorkingKey22;
                        x500Principal = subjectX500Principal22;
                        trustAnchor3 = trustAnchor2;
                    }
                    if (x500Principal == null && !x509Certificate.getIssuerX500Principal().equals(x500Principal)) {
                        addError(createErrorBundle("CertPathReviewer.certWrongIssuer", new Object[]{x500Principal.getName(), x509Certificate.getIssuerX500Principal().getName()}), i11);
                    }
                    if (i10 == this.f12257n) {
                        String str = "CertPathReviewer.noCACert";
                        if (x509Certificate != null && x509Certificate.getVersion() == 1) {
                            addError(createErrorBundle("CertPathReviewer.noCACert"), i11);
                        }
                        try {
                            basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.BASIC_CONSTRAINTS));
                        } catch (AnnotatedException unused9) {
                            addError(createErrorBundle("CertPathReviewer.errorProcesingBC"), i11);
                        }
                        if (basicConstraints != null) {
                            if (!basicConstraints.isCA()) {
                            }
                            keyUsage = x509Certificate.getKeyUsage();
                            if (keyUsage == null) {
                                if (keyUsage.length <= 5 || !keyUsage[5]) {
                                    addError(createErrorBundle("CertPathReviewer.noCertSign"), i11);
                                }
                            }
                            subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                            nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                            AlgorithmIdentifier algorithmIdentifier222222 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                            algorithmIdentifier222222.getAlgorithm();
                            algorithmIdentifier222222.getParameters();
                            size = i11 - 1;
                            trustAnchor2 = trustAnchor3;
                            x509Certificate322 = x509Certificate;
                            i12 = 3;
                            c7 = 2;
                            c10 = 0;
                            c11 = 1;
                        } else {
                            str = "CertPathReviewer.noBasicConstraints";
                        }
                        addError(createErrorBundle(str), i11);
                        keyUsage = x509Certificate.getKeyUsage();
                        if (keyUsage == null) {
                        }
                        subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                        nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                        AlgorithmIdentifier algorithmIdentifier2222222 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                        algorithmIdentifier2222222.getAlgorithm();
                        algorithmIdentifier2222222.getParameters();
                        size = i11 - 1;
                        trustAnchor2 = trustAnchor3;
                        x509Certificate322 = x509Certificate;
                        i12 = 3;
                        c7 = 2;
                        c10 = 0;
                        c11 = 1;
                    }
                    subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                    nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                    AlgorithmIdentifier algorithmIdentifier22222222 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                    algorithmIdentifier22222222.getAlgorithm();
                    algorithmIdentifier22222222.getParameters();
                    size = i11 - 1;
                    trustAnchor2 = trustAnchor3;
                    x509Certificate322 = x509Certificate;
                    i12 = 3;
                    c7 = 2;
                    c10 = 0;
                    c11 = 1;
                }
                this.trustAnchor = trustAnchor2;
                this.subjectPublicKey = nextWorkingKey22;
            }
            errorBundleCreateErrorBundle4 = createErrorBundle("CertPathReviewer.noTrustAnchorFound", new Object[]{new UntrustedInput(x509Certificate2.getIssuerX500Principal()), Integers.valueOf(this.pkixParams.getTrustAnchors().size())});
        }
        addError(errorBundleCreateErrorBundle4);
        trustAnchor = null;
        trustAnchor2 = trustAnchor;
        if (trustAnchor2 == null) {
        }
        if (trustAnchor2 == null) {
        }
        X509Certificate x509Certificate3222 = trustedCert;
        X500Principal subjectX500Principal222 = subjectPrincipal;
        PublicKey nextWorkingKey222 = publicKey;
        size = this.certs.size() - 1;
        while (size >= 0) {
        }
        this.trustAnchor = trustAnchor2;
        this.subjectPublicKey = nextWorkingKey222;
    }

    private static ErrorBundle createErrorBundle(String str) {
        ErrorBundle errorBundle = new ErrorBundle(RESOURCE_NAME, str);
        errorBundle.setClassLoader(PKIXCertPathReviewer.class.getClassLoader());
        return errorBundle;
    }

    private X509CRL getCRL(String str) throws Exception {
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals("http") && !url.getProtocol().equals("https")) {
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                return (X509CRL) CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCRL(httpURLConnection.getInputStream());
            }
            throw new Exception(httpURLConnection.getResponseMessage());
        } catch (Exception e7) {
            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.loadCrlDistPointError", new Object[]{new UntrustedInput(str), e7.getMessage(), e7, e7.getClass().getName()}));
        }
    }

    private boolean processQcStatements(X509Certificate x509Certificate, int i10) {
        ErrorBundle errorBundleCreateErrorBundle;
        String str;
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, QC_STATEMENT);
            boolean z = false;
            for (int i11 = 0; i11 < aSN1Sequence.size(); i11++) {
                QCStatement qCStatement = QCStatement.getInstance(aSN1Sequence.getObjectAt(i11));
                if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcCompliance.equals((ASN1Primitive) qCStatement.getStatementId())) {
                    str = "CertPathReviewer.QcEuCompliance";
                } else {
                    if (!RFC3739QCObjectIdentifiers.id_qcs_pkixQCSyntax_v1.equals((ASN1Primitive) qCStatement.getStatementId())) {
                        if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcSSCD.equals((ASN1Primitive) qCStatement.getStatementId())) {
                            str = "CertPathReviewer.QcSSCD";
                        } else if (ETSIQCObjectIdentifiers.id_etsi_qcs_LimiteValue.equals((ASN1Primitive) qCStatement.getStatementId())) {
                            MonetaryValue monetaryValue = MonetaryValue.getInstance(qCStatement.getStatementInfo());
                            monetaryValue.getCurrency();
                            double dDoubleValue = monetaryValue.getAmount().doubleValue() * Math.pow(10.0d, monetaryValue.getExponent().doubleValue());
                            errorBundleCreateErrorBundle = monetaryValue.getCurrency().isAlphabetic() ? createErrorBundle("CertPathReviewer.QcLimitValueAlpha", new Object[]{monetaryValue.getCurrency().getAlphabetic(), new TrustedInput(new Double(dDoubleValue)), monetaryValue}) : createErrorBundle("CertPathReviewer.QcLimitValueNum", new Object[]{Integers.valueOf(monetaryValue.getCurrency().getNumeric()), new TrustedInput(new Double(dDoubleValue)), monetaryValue});
                            addNotification(errorBundleCreateErrorBundle, i10);
                        } else {
                            addNotification(createErrorBundle("CertPathReviewer.QcUnknownStatement", new Object[]{qCStatement.getStatementId(), new UntrustedInput(qCStatement)}), i10);
                            z = true;
                        }
                    }
                }
                errorBundleCreateErrorBundle = createErrorBundle(str);
                addNotification(errorBundleCreateErrorBundle, i10);
            }
            return !z;
        } catch (AnnotatedException unused) {
            addError(createErrorBundle("CertPathReviewer.QcStatementExtError"), i10);
            return false;
        }
    }

    public void addError(ErrorBundle errorBundle) {
        this.errors[0].add(errorBundle);
    }

    public void addNotification(ErrorBundle errorBundle) {
        this.notifications[0].add(errorBundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x0245  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkCRLs(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, int i10) throws Exception {
        Iterator it;
        X509CRL x509crl;
        boolean z;
        boolean z4;
        ErrorBundle errorBundleCreateErrorBundle;
        boolean[] keyUsage;
        X509CRL x509crl2;
        X500Principal x500Principal;
        Iterator it2;
        boolean z10;
        String str;
        X509CRL crl;
        Object[] objArr;
        X509CRLStoreSelector x509CRLStoreSelector = new X509CRLStoreSelector();
        try {
            x509CRLStoreSelector.addIssuerName(CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            x509CRLStoreSelector.setCertificateChecking(x509Certificate);
            try {
                Set setFindCRLs = PKIXCRLUtil.findCRLs(x509CRLStoreSelector, pKIXParameters);
                it = setFindCRLs.iterator();
                if (setFindCRLs.isEmpty()) {
                    Iterator it3 = PKIXCRLUtil.findCRLs(new X509CRLStoreSelector(), pKIXParameters).iterator();
                    ArrayList arrayList = new ArrayList();
                    while (it3.hasNext()) {
                        arrayList.add(((X509CRL) it3.next()).getIssuerX500Principal());
                    }
                    addNotification(createErrorBundle("CertPathReviewer.noCrlInCertstore", new Object[]{new UntrustedInput(x509CRLStoreSelector.getIssuerNames()), new UntrustedInput(arrayList), Integers.valueOf(arrayList.size())}), i10);
                }
            } catch (AnnotatedException e7) {
                addError(createErrorBundle("CertPathReviewer.crlExtractionError", new Object[]{e7.getCause().getMessage(), e7.getCause(), e7.getCause().getClass().getName()}), i10);
                it = new ArrayList().iterator();
            }
            X509CRL x509crl3 = null;
            while (it.hasNext()) {
                x509crl3 = (X509CRL) it.next();
                Date thisUpdate = x509crl3.getThisUpdate();
                Date nextUpdate = x509crl3.getNextUpdate();
                Object[] objArr2 = {new TrustedInput(thisUpdate), new TrustedInput(nextUpdate)};
                if (nextUpdate == null || date.before(nextUpdate)) {
                    addNotification(createErrorBundle("CertPathReviewer.localValidCRL", objArr2), i10);
                    x509crl = x509crl3;
                    z = true;
                    break;
                }
                addNotification(createErrorBundle("CertPathReviewer.localInvalidCRL", objArr2), i10);
            }
            x509crl = x509crl3;
            z = false;
            if (!z) {
                X500Principal issuerX500Principal = x509Certificate.getIssuerX500Principal();
                Iterator it4 = vector.iterator();
                z4 = z;
                while (true) {
                    if (!it4.hasNext()) {
                        break;
                    }
                    try {
                        str = (String) it4.next();
                        crl = getCRL(str);
                    } catch (CertPathReviewerException e10) {
                        e = e10;
                        x509crl2 = x509crl;
                    }
                    if (crl != null) {
                        X500Principal issuerX500Principal2 = crl.getIssuerX500Principal();
                        if (issuerX500Principal.equals(issuerX500Principal2)) {
                            x509crl2 = x509crl;
                            x500Principal = issuerX500Principal;
                            it2 = it4;
                            Date thisUpdate2 = crl.getThisUpdate();
                            Date nextUpdate2 = crl.getNextUpdate();
                            z10 = z4;
                            try {
                                objArr = new Object[]{new TrustedInput(thisUpdate2), new TrustedInput(nextUpdate2), new UntrustedUrlInput(str)};
                            } catch (CertPathReviewerException e11) {
                                e = e11;
                            }
                            if (nextUpdate2 != null && !date.before(nextUpdate2)) {
                                addNotification(createErrorBundle("CertPathReviewer.onlineInvalidCRL", objArr), i10);
                                it4 = it2;
                                x509crl = x509crl2;
                                issuerX500Principal = x500Principal;
                                z4 = z10;
                            }
                            try {
                                addNotification(createErrorBundle("CertPathReviewer.onlineValidCRL", objArr), i10);
                                x509crl = crl;
                                z4 = true;
                                break;
                            } catch (CertPathReviewerException e12) {
                                e = e12;
                                z10 = true;
                                addNotification(e.getErrorMessage(), i10);
                                it4 = it2;
                                x509crl = x509crl2;
                                issuerX500Principal = x500Principal;
                                z4 = z10;
                            }
                        } else {
                            x509crl2 = x509crl;
                            try {
                                it2 = it4;
                                try {
                                    x500Principal = issuerX500Principal;
                                } catch (CertPathReviewerException e13) {
                                    e = e13;
                                    x500Principal = issuerX500Principal;
                                }
                            } catch (CertPathReviewerException e14) {
                                e = e14;
                                x500Principal = issuerX500Principal;
                                it2 = it4;
                                z10 = z4;
                                addNotification(e.getErrorMessage(), i10);
                                it4 = it2;
                                x509crl = x509crl2;
                                issuerX500Principal = x500Principal;
                                z4 = z10;
                            }
                            try {
                                addNotification(createErrorBundle("CertPathReviewer.onlineCRLWrongCA", new Object[]{new UntrustedInput(issuerX500Principal2.getName()), new UntrustedInput(issuerX500Principal.getName()), new UntrustedUrlInput(str)}), i10);
                            } catch (CertPathReviewerException e15) {
                                e = e15;
                                z10 = z4;
                                addNotification(e.getErrorMessage(), i10);
                                it4 = it2;
                                x509crl = x509crl2;
                                issuerX500Principal = x500Principal;
                                z4 = z10;
                            }
                        }
                    } else {
                        x509crl2 = x509crl;
                        x500Principal = issuerX500Principal;
                        it2 = it4;
                    }
                    z10 = z4;
                    it4 = it2;
                    x509crl = x509crl2;
                    issuerX500Principal = x500Principal;
                    z4 = z10;
                }
            } else {
                z4 = z;
            }
            if (x509crl != null) {
                if (x509Certificate2 != null && (keyUsage = x509Certificate2.getKeyUsage()) != null && (keyUsage.length <= 6 || !keyUsage[6])) {
                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.noCrlSigningPermited"));
                }
                if (publicKey == null) {
                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.crlNoIssuerPublicKey"));
                }
                try {
                    x509crl.verify(publicKey, BouncyCastleProvider.PROVIDER_NAME);
                    X509CRLEntry revokedCertificate = x509crl.getRevokedCertificate(x509Certificate.getSerialNumber());
                    if (revokedCertificate == null) {
                        errorBundleCreateErrorBundle = createErrorBundle("CertPathReviewer.notRevoked");
                    } else if (revokedCertificate.hasExtensions()) {
                        try {
                            ASN1Enumerated aSN1Enumerated = ASN1Enumerated.getInstance(CertPathValidatorUtilities.getExtensionValue(revokedCertificate, Extension.reasonCode.getId()));
                            String str2 = aSN1Enumerated != null ? CertPathValidatorUtilities.crlReasons[aSN1Enumerated.intValueExact()] : null;
                            if (str2 == null) {
                                str2 = CertPathValidatorUtilities.crlReasons[7];
                            }
                            LocaleString localeString = new LocaleString(RESOURCE_NAME, str2);
                            if (!date.before(revokedCertificate.getRevocationDate())) {
                                throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.certRevoked", new Object[]{new TrustedInput(revokedCertificate.getRevocationDate()), localeString}));
                            }
                            errorBundleCreateErrorBundle = createErrorBundle("CertPathReviewer.revokedAfterValidation", new Object[]{new TrustedInput(revokedCertificate.getRevocationDate()), localeString});
                        } catch (AnnotatedException e16) {
                            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.crlReasonExtError"), e16);
                        }
                    }
                    addNotification(errorBundleCreateErrorBundle, i10);
                    Date nextUpdate3 = x509crl.getNextUpdate();
                    if (nextUpdate3 != null && !date.before(nextUpdate3)) {
                        addNotification(createErrorBundle("CertPathReviewer.crlUpdateAvailable", new Object[]{new TrustedInput(nextUpdate3)}), i10);
                    }
                    try {
                        ASN1Primitive extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl, CertPathValidatorUtilities.ISSUING_DISTRIBUTION_POINT);
                        try {
                            ASN1Primitive extensionValue2 = CertPathValidatorUtilities.getExtensionValue(x509crl, CertPathValidatorUtilities.DELTA_CRL_INDICATOR);
                            if (extensionValue2 != null) {
                                X509CRLStoreSelector x509CRLStoreSelector2 = new X509CRLStoreSelector();
                                try {
                                    x509CRLStoreSelector2.addIssuerName(CertPathValidatorUtilities.getIssuerPrincipal(x509crl).getEncoded());
                                    x509CRLStoreSelector2.setMinCRLNumber(((ASN1Integer) extensionValue2).getPositiveValue());
                                    try {
                                        x509CRLStoreSelector2.setMaxCRLNumber(((ASN1Integer) CertPathValidatorUtilities.getExtensionValue(x509crl, CertPathValidatorUtilities.CRL_NUMBER)).getPositiveValue().subtract(BigInteger.valueOf(1L)));
                                        try {
                                            Iterator it5 = PKIXCRLUtil.findCRLs(x509CRLStoreSelector2, pKIXParameters).iterator();
                                            while (it5.hasNext()) {
                                                try {
                                                    if (Objects.areEqual(extensionValue, CertPathValidatorUtilities.getExtensionValue((X509CRL) it5.next(), CertPathValidatorUtilities.ISSUING_DISTRIBUTION_POINT))) {
                                                    }
                                                } catch (AnnotatedException e17) {
                                                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.distrPtExtError"), e17);
                                                }
                                            }
                                            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.noBaseCRL"));
                                        } catch (AnnotatedException e18) {
                                            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.crlExtractionError"), e18);
                                        }
                                    } catch (AnnotatedException e19) {
                                        throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.crlNbrExtError"), e19);
                                    }
                                } catch (IOException e20) {
                                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.crlIssuerException"), e20);
                                }
                            }
                            if (extensionValue != null) {
                                IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(extensionValue);
                                try {
                                    BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.BASIC_CONSTRAINTS));
                                    if (issuingDistributionPoint.onlyContainsUserCerts() && basicConstraints != null && basicConstraints.isCA()) {
                                        throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.crlOnlyUserCert"));
                                    }
                                    if (issuingDistributionPoint.onlyContainsCACerts() && (basicConstraints == null || !basicConstraints.isCA())) {
                                        throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.crlOnlyCaCert"));
                                    }
                                    if (issuingDistributionPoint.onlyContainsAttributeCerts()) {
                                        throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.crlOnlyAttrCert"));
                                    }
                                } catch (AnnotatedException e21) {
                                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.crlBCExtError"), e21);
                                }
                            }
                        } catch (AnnotatedException unused) {
                            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.deltaCrlExtError"));
                        }
                    } catch (AnnotatedException unused2) {
                        throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.distrPtExtError"));
                    }
                } catch (Exception e22) {
                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.crlVerifyFailed"), e22);
                }
            }
            if (!z4) {
                throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.noValidCrlFound"));
            }
        } catch (IOException e23) {
            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.crlIssuerException"), e23);
        }
    }

    public void checkRevocation(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i10) throws Exception {
        checkCRLs(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i10);
    }

    public void doChecks() throws Exception {
        if (!this.initialized) {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        }
        if (this.notifications != null) {
            return;
        }
        int i10 = this.f12257n;
        this.notifications = new List[i10 + 1];
        this.errors = new List[i10 + 1];
        int i11 = 0;
        while (true) {
            List[] listArr = this.notifications;
            if (i11 >= listArr.length) {
                checkSignatures();
                checkNameConstraints();
                checkPathLength();
                checkPolicy();
                checkCriticalExtensions();
                return;
            }
            listArr[i11] = new ArrayList();
            this.errors[i11] = new ArrayList();
            i11++;
        }
    }

    public Vector getCRLDistUrls(CRLDistPoint cRLDistPoint) {
        Vector vector = new Vector();
        if (cRLDistPoint != null) {
            for (DistributionPoint distributionPoint : cRLDistPoint.getDistributionPoints()) {
                DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
                if (distributionPoint2.getType() == 0) {
                    GeneralName[] names = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                    for (int i10 = 0; i10 < names.length; i10++) {
                        if (names[i10].getTagNo() == 6) {
                            vector.add(((ASN1IA5String) names[i10].getName()).getString());
                        }
                    }
                }
            }
        }
        return vector;
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getCertPathSize() {
        return this.f12257n;
    }

    public List getErrors(int i10) throws Exception {
        doChecks();
        return this.errors[i10 + 1];
    }

    public List getNotifications(int i10) throws Exception {
        doChecks();
        return this.notifications[i10 + 1];
    }

    public Vector getOCSPUrls(AuthorityInformationAccess authorityInformationAccess) {
        Vector vector = new Vector();
        if (authorityInformationAccess != null) {
            AccessDescription[] accessDescriptions = authorityInformationAccess.getAccessDescriptions();
            for (int i10 = 0; i10 < accessDescriptions.length; i10++) {
                if (accessDescriptions[i10].getAccessMethod().equals((ASN1Primitive) AccessDescription.id_ad_ocsp)) {
                    GeneralName accessLocation = accessDescriptions[i10].getAccessLocation();
                    if (accessLocation.getTagNo() == 6) {
                        vector.add(((ASN1IA5String) accessLocation.getName()).getString());
                    }
                }
            }
        }
        return vector;
    }

    public PolicyNode getPolicyTree() throws Exception {
        doChecks();
        return this.policyTree;
    }

    public PublicKey getSubjectPublicKey() throws Exception {
        doChecks();
        return this.subjectPublicKey;
    }

    public TrustAnchor getTrustAnchor() throws Exception {
        doChecks();
        return this.trustAnchor;
    }

    public Collection getTrustAnchors(X509Certificate x509Certificate, Set set) throws CertPathReviewerException, IOException {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            byte[] extensionValue = x509Certificate.getExtensionValue(Extension.authorityKeyIdentifier.getId());
            if (extensionValue != null) {
                AuthorityKeyIdentifier authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(JcaX509ExtensionUtils.parseExtensionValue(extensionValue));
                if (authorityKeyIdentifier.getAuthorityCertSerialNumber() != null) {
                    x509CertSelector.setSerialNumber(authorityKeyIdentifier.getAuthorityCertSerialNumber());
                } else {
                    ASN1OctetString keyIdentifierObject = authorityKeyIdentifier.getKeyIdentifierObject();
                    if (keyIdentifierObject != null) {
                        x509CertSelector.setSubjectKeyIdentifier(keyIdentifierObject.getEncoded(ASN1Encoding.DER));
                    }
                }
            }
            while (it.hasNext()) {
                TrustAnchor trustAnchor = (TrustAnchor) it.next();
                if (trustAnchor.getTrustedCert() != null) {
                    if (x509CertSelector.match(trustAnchor.getTrustedCert())) {
                        arrayList.add(trustAnchor);
                    }
                } else if (trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null && CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).equals(new X500Principal(trustAnchor.getCAName()))) {
                    arrayList.add(trustAnchor);
                }
            }
            return arrayList;
        } catch (IOException unused) {
            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.trustAnchorIssuerError"));
        }
    }

    public void init(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        if (this.initialized) {
            throw new IllegalStateException("object is already initialized!");
        }
        this.initialized = true;
        if (certPath == null) {
            throw new NullPointerException("certPath was null");
        }
        List<? extends Certificate> certificates = certPath.getCertificates();
        if (certificates.size() != 1) {
            HashSet hashSet = new HashSet();
            Iterator<TrustAnchor> it = pKIXParameters.getTrustAnchors().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().getTrustedCert());
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 != certificates.size(); i10++) {
                if (!hashSet.contains(certificates.get(i10))) {
                    arrayList.add(certificates.get(i10));
                }
            }
            try {
                this.certPath = CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCertPath(arrayList);
                this.certs = arrayList;
            } catch (GeneralSecurityException unused) {
                throw new IllegalStateException("unable to rebuild certpath");
            }
        } else {
            this.certPath = certPath;
            this.certs = certPath.getCertificates();
        }
        this.f12257n = this.certs.size();
        if (this.certs.isEmpty()) {
            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.emptyCertPath"));
        }
        this.pkixParams = (PKIXParameters) pKIXParameters.clone();
        Date date = new Date();
        this.currentDate = date;
        this.validDate = CertPathValidatorUtilities.getValidityDate(this.pkixParams, date);
        this.notifications = null;
        this.errors = null;
        this.trustAnchor = null;
        this.subjectPublicKey = null;
        this.policyTree = null;
    }

    public boolean isValidCertPath() throws Exception {
        doChecks();
        int i10 = 0;
        while (true) {
            List[] listArr = this.errors;
            if (i10 >= listArr.length) {
                return true;
            }
            if (!listArr[i10].isEmpty()) {
                return false;
            }
            i10++;
        }
    }

    public PKIXCertPathReviewer(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        init(certPath, pKIXParameters);
    }

    private static ErrorBundle createErrorBundle(String str, Object[] objArr) {
        ErrorBundle errorBundle = new ErrorBundle(RESOURCE_NAME, str, objArr);
        errorBundle.setClassLoader(PKIXCertPathReviewer.class.getClassLoader());
        return errorBundle;
    }

    public void addError(ErrorBundle errorBundle, int i10) {
        if (i10 < -1 || i10 >= this.f12257n) {
            throw new IndexOutOfBoundsException();
        }
        this.errors[i10 + 1].add(errorBundle);
    }

    public void addNotification(ErrorBundle errorBundle, int i10) {
        if (i10 < -1 || i10 >= this.f12257n) {
            throw new IndexOutOfBoundsException();
        }
        this.notifications[i10 + 1].add(errorBundle);
    }

    public List[] getErrors() throws Exception {
        doChecks();
        return this.errors;
    }

    public List[] getNotifications() throws Exception {
        doChecks();
        return this.notifications;
    }
}
