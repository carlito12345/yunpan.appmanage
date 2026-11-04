package org.bouncycastle.x509;

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
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEROctetString;
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
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.LocaleString;
import org.bouncycastle.i18n.filter.TrustedInput;
import org.bouncycastle.i18n.filter.UntrustedInput;
import org.bouncycastle.i18n.filter.UntrustedUrlInput;
import org.bouncycastle.jce.provider.AnnotatedException;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidator;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidatorException;
import org.bouncycastle.jce.provider.PKIXPolicyNode;
import org.bouncycastle.jce.provider.RFC3280CertPathUtilities;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Objects;

/* loaded from: classes3.dex */
public class PKIXCertPathReviewer extends CertPathValidatorUtilities {
    private static final int NAME_CHECK_MAX = 1024;
    private static final String RESOURCE_NAME = "org.bouncycastle.x509.CertPathReviewerMessages";
    protected CertPath certPath;
    protected List certs;
    protected Date currentDate;
    protected List[] errors;
    private boolean initialized;

    /* renamed from: n, reason: collision with root package name */
    protected int f12499n;
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
            StringBuffer stringBuffer = new StringBuffer();
            for (int i10 = 0; i10 != bArr.length; i10++) {
                stringBuffer.append(Integer.toHexString(bArr[i10] & 255));
                stringBuffer.append(' ');
            }
            return stringBuffer.toString();
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
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certPathCheckerError", new Object[]{e7.getMessage(), e7, e7.getClass().getName()}), e7);
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
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.criticalExtensionError", new Object[]{e11.getMessage(), e11, e11.getClass().getName()}), e11.getCause(), this.certPath, size);
                    }
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    Iterator<String> it3 = criticalExtensionOIDs.iterator();
                    while (it3.hasNext()) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.unknownCriticalExt", new Object[]{new ASN1ObjectIdentifier(it3.next())}), size);
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
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.subjAltNameExtError"), this.certPath, size);
                                        }
                                        for (int i10 = 0; i10 < aSN1Sequence2.size(); i10++) {
                                            GeneralName generalName = GeneralName.getInstance(aSN1Sequence2.getObjectAt(i10));
                                            try {
                                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                                pKIXNameConstraintValidator.checkExcluded(generalName);
                                            } catch (PKIXNameConstraintValidatorException e7) {
                                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedEmail", new Object[]{new UntrustedInput(generalName)}), e7, this.certPath, size);
                                            }
                                        }
                                    }
                                } catch (AnnotatedException e10) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.subjAltNameExtError"), e10, this.certPath, size);
                                }
                            } catch (PKIXNameConstraintValidatorException e11) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.excludedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e11, this.certPath, size);
                            }
                        } catch (PKIXNameConstraintValidatorException e12) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e12, this.certPath, size);
                        }
                    } catch (IOException e13) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncSubjectNameError", new Object[]{new UntrustedInput(subjectPrincipal)}), e13, this.certPath, size);
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
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncExtError"), e14, this.certPath, size);
                }
            }
        } catch (CertPathReviewerException e15) {
            addError(e15.getErrorMessage(), e15.getIndex());
        }
    }

    private void checkPathLength() {
        BasicConstraints basicConstraints;
        ASN1Integer pathLenConstraintInteger;
        int iMin = this.f12499n;
        int i10 = 0;
        for (int size = this.certs.size() - 1; size > 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
                if (iMin <= 0) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.pathLengthExtended"));
                }
                iMin--;
                i10++;
            }
            try {
                basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.BASIC_CONSTRAINTS));
            } catch (AnnotatedException unused) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.processLengthConstError"), size);
                basicConstraints = null;
            }
            if (basicConstraints != null && basicConstraints.isCA() && (pathLenConstraintInteger = basicConstraints.getPathLenConstraintInteger()) != null) {
                iMin = Math.min(iMin, pathLenConstraintInteger.intPositiveValueExact());
            }
        }
        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.totalPathLength", new Object[]{Integers.valueOf(i10)}));
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0242 A[Catch: CertPathReviewerException -> 0x00e0, TryCatch #8 {CertPathReviewerException -> 0x00e0, blocks: (B:17:0x006f, B:21:0x007f, B:23:0x008c, B:27:0x009c, B:28:0x00a7, B:30:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:39:0x00e4, B:40:0x00f0, B:44:0x00fc, B:47:0x0103, B:48:0x010c, B:50:0x0112, B:52:0x011c, B:55:0x0123, B:57:0x0127, B:97:0x0213, B:99:0x0219, B:100:0x021c, B:102:0x0222, B:104:0x022e, B:107:0x0236, B:108:0x0239, B:109:0x023c, B:111:0x0242, B:112:0x024b, B:114:0x0251, B:122:0x0274, B:123:0x0280, B:124:0x0281, B:126:0x0285, B:128:0x028d, B:129:0x0291, B:131:0x0297, B:134:0x02b9, B:136:0x02c3, B:137:0x02c8, B:138:0x02d4, B:139:0x02d5, B:140:0x02e1, B:142:0x02e4, B:143:0x02f1, B:145:0x02f7, B:147:0x031d, B:149:0x0335, B:148:0x032c, B:150:0x033c, B:151:0x0342, B:153:0x0348, B:155:0x0350, B:166:0x037a, B:159:0x0358, B:160:0x0364, B:162:0x0366, B:163:0x0375, B:170:0x0388, B:181:0x03a5, B:183:0x03af, B:184:0x03b3, B:186:0x03b9, B:191:0x03c9, B:194:0x03d6, B:197:0x03e3, B:199:0x03ed, B:210:0x042b, B:202:0x03f5, B:203:0x0403, B:204:0x0404, B:205:0x0412, B:207:0x0414, B:208:0x0422, B:61:0x0136, B:62:0x013a, B:64:0x0140, B:66:0x0156, B:68:0x0160, B:69:0x0165, B:71:0x016b, B:72:0x0179, B:74:0x017f, B:76:0x018b, B:80:0x0198, B:81:0x019e, B:83:0x01a4, B:88:0x01bd, B:77:0x018e, B:79:0x0192, B:92:0x01f6, B:95:0x0206, B:96:0x0212, B:212:0x043a, B:213:0x0447, B:214:0x0448, B:218:0x0459, B:220:0x0463, B:221:0x0468, B:223:0x046e, B:226:0x047c, B:233:0x0491, B:310:0x05e1, B:311:0x05ed, B:236:0x049c, B:237:0x04a8, B:238:0x04a9, B:240:0x04af, B:242:0x04b7, B:244:0x04bd, B:246:0x04c7, B:247:0x04ca, B:249:0x04d0, B:251:0x04e0, B:252:0x04e4, B:254:0x04ea, B:255:0x04f2, B:256:0x04f5, B:257:0x04f8, B:258:0x04fc, B:260:0x0502, B:261:0x0510, B:263:0x0518, B:264:0x051b, B:266:0x0521, B:268:0x052d, B:269:0x0531, B:270:0x0534, B:271:0x0537, B:272:0x0543, B:274:0x0548, B:276:0x0552, B:277:0x0555, B:279:0x055b, B:281:0x056b, B:282:0x056f, B:284:0x0575, B:286:0x0585, B:287:0x0589, B:288:0x058c, B:289:0x058f, B:290:0x0595, B:292:0x059b, B:294:0x05ad, B:297:0x05b7, B:299:0x05bd, B:300:0x05c0, B:302:0x05c6, B:304:0x05d2, B:305:0x05d6, B:306:0x05d9, B:312:0x05ee, B:313:0x05fa), top: B:328:0x006f, inners: #0, #1, #2, #3, #4, #6, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0219 A[Catch: CertPathReviewerException -> 0x00e0, TryCatch #8 {CertPathReviewerException -> 0x00e0, blocks: (B:17:0x006f, B:21:0x007f, B:23:0x008c, B:27:0x009c, B:28:0x00a7, B:30:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:39:0x00e4, B:40:0x00f0, B:44:0x00fc, B:47:0x0103, B:48:0x010c, B:50:0x0112, B:52:0x011c, B:55:0x0123, B:57:0x0127, B:97:0x0213, B:99:0x0219, B:100:0x021c, B:102:0x0222, B:104:0x022e, B:107:0x0236, B:108:0x0239, B:109:0x023c, B:111:0x0242, B:112:0x024b, B:114:0x0251, B:122:0x0274, B:123:0x0280, B:124:0x0281, B:126:0x0285, B:128:0x028d, B:129:0x0291, B:131:0x0297, B:134:0x02b9, B:136:0x02c3, B:137:0x02c8, B:138:0x02d4, B:139:0x02d5, B:140:0x02e1, B:142:0x02e4, B:143:0x02f1, B:145:0x02f7, B:147:0x031d, B:149:0x0335, B:148:0x032c, B:150:0x033c, B:151:0x0342, B:153:0x0348, B:155:0x0350, B:166:0x037a, B:159:0x0358, B:160:0x0364, B:162:0x0366, B:163:0x0375, B:170:0x0388, B:181:0x03a5, B:183:0x03af, B:184:0x03b3, B:186:0x03b9, B:191:0x03c9, B:194:0x03d6, B:197:0x03e3, B:199:0x03ed, B:210:0x042b, B:202:0x03f5, B:203:0x0403, B:204:0x0404, B:205:0x0412, B:207:0x0414, B:208:0x0422, B:61:0x0136, B:62:0x013a, B:64:0x0140, B:66:0x0156, B:68:0x0160, B:69:0x0165, B:71:0x016b, B:72:0x0179, B:74:0x017f, B:76:0x018b, B:80:0x0198, B:81:0x019e, B:83:0x01a4, B:88:0x01bd, B:77:0x018e, B:79:0x0192, B:92:0x01f6, B:95:0x0206, B:96:0x0212, B:212:0x043a, B:213:0x0447, B:214:0x0448, B:218:0x0459, B:220:0x0463, B:221:0x0468, B:223:0x046e, B:226:0x047c, B:233:0x0491, B:310:0x05e1, B:311:0x05ed, B:236:0x049c, B:237:0x04a8, B:238:0x04a9, B:240:0x04af, B:242:0x04b7, B:244:0x04bd, B:246:0x04c7, B:247:0x04ca, B:249:0x04d0, B:251:0x04e0, B:252:0x04e4, B:254:0x04ea, B:255:0x04f2, B:256:0x04f5, B:257:0x04f8, B:258:0x04fc, B:260:0x0502, B:261:0x0510, B:263:0x0518, B:264:0x051b, B:266:0x0521, B:268:0x052d, B:269:0x0531, B:270:0x0534, B:271:0x0537, B:272:0x0543, B:274:0x0548, B:276:0x0552, B:277:0x0555, B:279:0x055b, B:281:0x056b, B:282:0x056f, B:284:0x0575, B:286:0x0585, B:287:0x0589, B:288:0x058c, B:289:0x058f, B:290:0x0595, B:292:0x059b, B:294:0x05ad, B:297:0x05b7, B:299:0x05bd, B:300:0x05c0, B:302:0x05c6, B:304:0x05d2, B:305:0x05d6, B:306:0x05d9, B:312:0x05ee, B:313:0x05fa), top: B:328:0x006f, inners: #0, #1, #2, #3, #4, #6, #9, #10 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkPolicy() throws CertPathReviewerException {
        int i10;
        int i11;
        PKIXPolicyNode pKIXPolicyNodeRemovePolicyNode;
        Set<String> set;
        String str;
        int i12;
        int i13;
        HashSet hashSet;
        String str2;
        int i14;
        int iIntValueExact;
        int iIntValueExact2;
        String str3;
        HashSet hashSet2;
        HashSet hashSet3;
        String id2;
        int i15;
        int i16;
        Set<String> criticalExtensionOIDs;
        String str4 = "CertPathReviewer.policyExtError";
        Set<String> initialPolicies = this.pkixParams.getInitialPolicies();
        int i17 = this.f12499n + 1;
        ArrayList[] arrayListArr = new ArrayList[i17];
        for (int i18 = 0; i18 < i17; i18++) {
            arrayListArr[i18] = new ArrayList();
        }
        HashSet hashSet4 = new HashSet();
        hashSet4.add(RFC3280CertPathUtilities.ANY_POLICY);
        PKIXPolicyNode pKIXPolicyNode = new PKIXPolicyNode(new ArrayList(), 0, hashSet4, null, new HashSet(), RFC3280CertPathUtilities.ANY_POLICY, false);
        arrayListArr[0].add(pKIXPolicyNode);
        if (this.pkixParams.isExplicitPolicyRequired()) {
            i11 = 0;
            i10 = 1;
        } else {
            i10 = 1;
            i11 = this.f12499n + 1;
        }
        int i19 = this.pkixParams.isAnyPolicyInhibited() ? 0 : this.f12499n + i10;
        int i20 = this.pkixParams.isPolicyMappingInhibited() ? 0 : this.f12499n + i10;
        try {
            int size = this.certs.size() - i10;
            PKIXPolicyNode pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode;
            X509Certificate x509Certificate = null;
            HashSet hashSet5 = null;
            while (size >= 0) {
                int i21 = this.f12499n - size;
                X509Certificate x509Certificate2 = (X509Certificate) this.certs.get(size);
                int i22 = i17;
                try {
                    ASN1Sequence aSN1Sequence = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate2, CertPathValidatorUtilities.CERTIFICATE_POLICIES);
                    if (aSN1Sequence == null || pKIXPolicyNodePrepareNextCertB2 == null) {
                        set = initialPolicies;
                        str = str4;
                        i12 = i19;
                        i13 = i20;
                        pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNodePrepareNextCertB2;
                    } else {
                        Enumeration objects = aSN1Sequence.getObjects();
                        set = initialPolicies;
                        HashSet hashSet6 = new HashSet();
                        while (objects.hasMoreElements()) {
                            PolicyInformation policyInformation = PolicyInformation.getInstance(objects.nextElement());
                            PKIXPolicyNode pKIXPolicyNode2 = pKIXPolicyNodePrepareNextCertB2;
                            ASN1ObjectIdentifier policyIdentifier = policyInformation.getPolicyIdentifier();
                            String str5 = str4;
                            hashSet6.add(policyIdentifier.getId());
                            if (!RFC3280CertPathUtilities.ANY_POLICY.equals(policyIdentifier.getId())) {
                                try {
                                    Set qualifierSet = CertPathValidatorUtilities.getQualifierSet(policyInformation.getPolicyQualifiers());
                                    if (!CertPathValidatorUtilities.processCertD1i(i21, arrayListArr, policyIdentifier, qualifierSet)) {
                                        CertPathValidatorUtilities.processCertD1ii(i21, arrayListArr, policyIdentifier, qualifierSet);
                                    }
                                } catch (CertPathValidatorException e7) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyQualifierError"), e7, this.certPath, size);
                                }
                            }
                            pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode2;
                            str4 = str5;
                        }
                        str = str4;
                        PKIXPolicyNode pKIXPolicyNode3 = pKIXPolicyNodePrepareNextCertB2;
                        if (hashSet5 == null || hashSet5.contains(RFC3280CertPathUtilities.ANY_POLICY)) {
                            hashSet2 = hashSet6;
                        } else {
                            hashSet2 = new HashSet();
                            for (Object obj : hashSet5) {
                                if (hashSet6.contains(obj)) {
                                    hashSet2.add(obj);
                                }
                            }
                        }
                        if (i19 > 0 || (i21 < this.f12499n && CertPathValidatorUtilities.isSelfIssued(x509Certificate2))) {
                            Enumeration objects2 = aSN1Sequence.getObjects();
                            while (objects2.hasMoreElements()) {
                                PolicyInformation policyInformation2 = PolicyInformation.getInstance(objects2.nextElement());
                                if (RFC3280CertPathUtilities.ANY_POLICY.equals(policyInformation2.getPolicyIdentifier().getId())) {
                                    try {
                                        Set qualifierSet2 = CertPathValidatorUtilities.getQualifierSet(policyInformation2.getPolicyQualifiers());
                                        ArrayList arrayList = arrayListArr[i21 - 1];
                                        hashSet3 = hashSet2;
                                        for (int i23 = 0; i23 < arrayList.size(); i23++) {
                                            PKIXPolicyNode pKIXPolicyNode4 = (PKIXPolicyNode) arrayList.get(i23);
                                            for (Object obj2 : pKIXPolicyNode4.getExpectedPolicies()) {
                                                ArrayList arrayList2 = arrayList;
                                                int i24 = i19;
                                                if (obj2 instanceof String) {
                                                    id2 = (String) obj2;
                                                } else if (obj2 instanceof ASN1ObjectIdentifier) {
                                                    id2 = ((ASN1ObjectIdentifier) obj2).getId();
                                                } else {
                                                    arrayList = arrayList2;
                                                    i19 = i24;
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
                                                    i15 = i20;
                                                } else {
                                                    HashSet hashSet7 = new HashSet();
                                                    hashSet7.add(id2);
                                                    i15 = i20;
                                                    PKIXPolicyNode pKIXPolicyNode5 = new PKIXPolicyNode(new ArrayList(), i21, hashSet7, pKIXPolicyNode4, qualifierSet2, id2, false);
                                                    pKIXPolicyNode4.addChild(pKIXPolicyNode5);
                                                    arrayListArr[i21].add(pKIXPolicyNode5);
                                                }
                                                arrayList = arrayList2;
                                                i19 = i24;
                                                i20 = i15;
                                            }
                                        }
                                        i12 = i19;
                                        i13 = i20;
                                        pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode3;
                                        for (i16 = i21 - 1; i16 >= 0; i16--) {
                                            ArrayList arrayList3 = arrayListArr[i16];
                                            for (int i25 = 0; i25 < arrayList3.size(); i25++) {
                                                PKIXPolicyNode pKIXPolicyNode6 = (PKIXPolicyNode) arrayList3.get(i25);
                                                if (!pKIXPolicyNode6.hasChildren()) {
                                                    PKIXPolicyNode pKIXPolicyNodeRemovePolicyNode2 = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNodePrepareNextCertB2, arrayListArr, pKIXPolicyNode6);
                                                    pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNodeRemovePolicyNode2;
                                                    if (pKIXPolicyNodeRemovePolicyNode2 == null) {
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                        criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                        if (criticalExtensionOIDs != null) {
                                            boolean zContains = criticalExtensionOIDs.contains(CertPathValidatorUtilities.CERTIFICATE_POLICIES);
                                            ArrayList arrayList4 = arrayListArr[i21];
                                            for (int i26 = 0; i26 < arrayList4.size(); i26++) {
                                                ((PKIXPolicyNode) arrayList4.get(i26)).setCritical(zContains);
                                            }
                                        }
                                        hashSet5 = hashSet3;
                                    } catch (CertPathValidatorException e10) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyQualifierError"), e10, this.certPath, size);
                                    }
                                }
                            }
                            i12 = i19;
                            i13 = i20;
                            hashSet3 = hashSet2;
                            pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode3;
                            while (i16 >= 0) {
                            }
                            criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs != null) {
                            }
                            hashSet5 = hashSet3;
                        } else {
                            i12 = i19;
                            i13 = i20;
                            hashSet3 = hashSet2;
                            pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode3;
                            while (i16 >= 0) {
                            }
                            criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs != null) {
                            }
                            hashSet5 = hashSet3;
                        }
                    }
                    if (aSN1Sequence == null) {
                        pKIXPolicyNodePrepareNextCertB2 = null;
                    }
                    if (i11 <= 0 && pKIXPolicyNodePrepareNextCertB2 == null) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noValidPolicyTree"));
                    }
                    if (i21 != this.f12499n) {
                        try {
                            ASN1Primitive extensionValue = CertPathValidatorUtilities.getExtensionValue(x509Certificate2, CertPathValidatorUtilities.POLICY_MAPPINGS);
                            if (extensionValue != null) {
                                ASN1Sequence aSN1Sequence2 = (ASN1Sequence) extensionValue;
                                int i27 = 0;
                                while (i27 < aSN1Sequence2.size()) {
                                    ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence2.getObjectAt(i27);
                                    ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) aSN1Sequence3.getObjectAt(0);
                                    ASN1ObjectIdentifier aSN1ObjectIdentifier2 = (ASN1ObjectIdentifier) aSN1Sequence3.getObjectAt(1);
                                    boolean zEquals = RFC3280CertPathUtilities.ANY_POLICY.equals(aSN1ObjectIdentifier.getId());
                                    ASN1Sequence aSN1Sequence4 = aSN1Sequence2;
                                    if (zEquals) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.invalidPolicyMapping"), this.certPath, size);
                                    }
                                    if (RFC3280CertPathUtilities.ANY_POLICY.equals(aSN1ObjectIdentifier2.getId())) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.invalidPolicyMapping"), this.certPath, size);
                                    }
                                    i27++;
                                    aSN1Sequence2 = aSN1Sequence4;
                                }
                            }
                            if (extensionValue != null) {
                                ASN1Sequence aSN1Sequence5 = (ASN1Sequence) extensionValue;
                                HashMap map = new HashMap();
                                HashSet hashSet8 = new HashSet();
                                int i28 = 0;
                                while (i28 < aSN1Sequence5.size()) {
                                    ASN1Sequence aSN1Sequence6 = (ASN1Sequence) aSN1Sequence5.getObjectAt(i28);
                                    ASN1Sequence aSN1Sequence7 = aSN1Sequence5;
                                    String id3 = ((ASN1ObjectIdentifier) aSN1Sequence6.getObjectAt(0)).getId();
                                    HashSet hashSet9 = hashSet5;
                                    String id4 = ((ASN1ObjectIdentifier) aSN1Sequence6.getObjectAt(1)).getId();
                                    if (map.containsKey(id3)) {
                                        ((Set) map.get(id3)).add(id4);
                                    } else {
                                        HashSet hashSet10 = new HashSet();
                                        hashSet10.add(id4);
                                        map.put(id3, hashSet10);
                                        hashSet8.add(id3);
                                    }
                                    i28++;
                                    aSN1Sequence5 = aSN1Sequence7;
                                    hashSet5 = hashSet9;
                                }
                                hashSet = hashSet5;
                                Iterator it2 = hashSet8.iterator();
                                while (it2.hasNext()) {
                                    String str6 = (String) it2.next();
                                    if (i13 > 0) {
                                        try {
                                            CertPathValidatorUtilities.prepareNextCertB1(i21, arrayListArr, str6, map, x509Certificate2);
                                            str3 = str;
                                        } catch (CertPathValidatorException e11) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyQualifierError"), e11, this.certPath, size);
                                        } catch (AnnotatedException e12) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, str), e12, this.certPath, size);
                                        }
                                    } else {
                                        str3 = str;
                                        if (i13 <= 0) {
                                            pKIXPolicyNodePrepareNextCertB2 = CertPathValidatorUtilities.prepareNextCertB2(i21, arrayListArr, str6, pKIXPolicyNodePrepareNextCertB2);
                                        }
                                    }
                                    str = str3;
                                }
                            } else {
                                hashSet = hashSet5;
                            }
                            str2 = str;
                            if (CertPathValidatorUtilities.isSelfIssued(x509Certificate2)) {
                                i14 = i12;
                                i20 = i13;
                            } else {
                                if (i11 != 0) {
                                    i11--;
                                }
                                i20 = i13 != 0 ? i13 - 1 : i13;
                                i14 = i12 != 0 ? i12 - 1 : i12;
                            }
                            try {
                                ASN1Sequence aSN1Sequence8 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate2, CertPathValidatorUtilities.POLICY_CONSTRAINTS);
                                if (aSN1Sequence8 != null) {
                                    Enumeration objects3 = aSN1Sequence8.getObjects();
                                    while (objects3.hasMoreElements()) {
                                        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects3.nextElement();
                                        int tagNo = aSN1TaggedObject.getTagNo();
                                        if (tagNo == 0) {
                                            int iIntValueExact3 = ASN1Integer.getInstance(aSN1TaggedObject, false).intValueExact();
                                            if (iIntValueExact3 < i11) {
                                                i11 = iIntValueExact3;
                                            }
                                        } else if (tagNo == 1 && (iIntValueExact2 = ASN1Integer.getInstance(aSN1TaggedObject, false).intValueExact()) < i20) {
                                            i20 = iIntValueExact2;
                                        }
                                    }
                                }
                                try {
                                    ASN1Integer aSN1Integer = (ASN1Integer) CertPathValidatorUtilities.getExtensionValue(x509Certificate2, CertPathValidatorUtilities.INHIBIT_ANY_POLICY);
                                    if (aSN1Integer != null && (iIntValueExact = aSN1Integer.intValueExact()) < i14) {
                                        i14 = iIntValueExact;
                                    }
                                } catch (AnnotatedException unused) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyInhibitExtError"), this.certPath, size);
                                }
                            } catch (AnnotatedException unused2) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyConstExtError"), this.certPath, size);
                            }
                        } catch (AnnotatedException e13) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyMapExtError"), e13, this.certPath, size);
                        }
                    } else {
                        hashSet = hashSet5;
                        str2 = str;
                        i14 = i12;
                        i20 = i13;
                    }
                    size--;
                    x509Certificate = x509Certificate2;
                    str4 = str2;
                    hashSet5 = hashSet;
                    i17 = i22;
                    i19 = i14;
                    initialPolicies = set;
                } catch (AnnotatedException e14) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, str4), e14, this.certPath, size);
                }
            }
            Set<String> set2 = initialPolicies;
            int i29 = i17;
            PKIXPolicyNode pKIXPolicyNode7 = pKIXPolicyNodePrepareNextCertB2;
            if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate) && i11 > 0) {
                i11--;
            }
            try {
                ASN1Sequence aSN1Sequence9 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.POLICY_CONSTRAINTS);
                if (aSN1Sequence9 != null) {
                    Enumeration objects4 = aSN1Sequence9.getObjects();
                    int i30 = i11;
                    while (objects4.hasMoreElements()) {
                        ASN1TaggedObject aSN1TaggedObject2 = (ASN1TaggedObject) objects4.nextElement();
                        if (aSN1TaggedObject2.getTagNo() == 0 && ASN1Integer.getInstance(aSN1TaggedObject2, false).intValueExact() == 0) {
                            i30 = 0;
                        }
                    }
                    i11 = i30;
                }
                if (pKIXPolicyNode7 == null) {
                    if (this.pkixParams.isExplicitPolicyRequired()) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.explicitPolicy"), this.certPath, size);
                    }
                    pKIXPolicyNodeRemovePolicyNode = null;
                } else if (!CertPathValidatorUtilities.isAnyPolicy(set2)) {
                    HashSet hashSet11 = new HashSet();
                    for (int i31 = 0; i31 < i29; i31++) {
                        ArrayList arrayList5 = arrayListArr[i31];
                        for (int i32 = 0; i32 < arrayList5.size(); i32++) {
                            PKIXPolicyNode pKIXPolicyNode8 = (PKIXPolicyNode) arrayList5.get(i32);
                            if (RFC3280CertPathUtilities.ANY_POLICY.equals(pKIXPolicyNode8.getValidPolicy())) {
                                Iterator children2 = pKIXPolicyNode8.getChildren();
                                while (children2.hasNext()) {
                                    PKIXPolicyNode pKIXPolicyNode9 = (PKIXPolicyNode) children2.next();
                                    if (!RFC3280CertPathUtilities.ANY_POLICY.equals(pKIXPolicyNode9.getValidPolicy())) {
                                        hashSet11.add(pKIXPolicyNode9);
                                    }
                                }
                            }
                        }
                    }
                    Iterator it3 = hashSet11.iterator();
                    pKIXPolicyNodeRemovePolicyNode = pKIXPolicyNode7;
                    while (it3.hasNext()) {
                        PKIXPolicyNode pKIXPolicyNode10 = (PKIXPolicyNode) it3.next();
                        Set<String> set3 = set2;
                        if (!set3.contains(pKIXPolicyNode10.getValidPolicy())) {
                            pKIXPolicyNodeRemovePolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNodeRemovePolicyNode, arrayListArr, pKIXPolicyNode10);
                        }
                        set2 = set3;
                    }
                    if (pKIXPolicyNodeRemovePolicyNode != null) {
                        for (int i33 = this.f12499n - 1; i33 >= 0; i33--) {
                            ArrayList arrayList6 = arrayListArr[i33];
                            for (int i34 = 0; i34 < arrayList6.size(); i34++) {
                                PKIXPolicyNode pKIXPolicyNode11 = (PKIXPolicyNode) arrayList6.get(i34);
                                if (!pKIXPolicyNode11.hasChildren()) {
                                    pKIXPolicyNodeRemovePolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNodeRemovePolicyNode, arrayListArr, pKIXPolicyNode11);
                                }
                            }
                        }
                    }
                } else if (!this.pkixParams.isExplicitPolicyRequired()) {
                    pKIXPolicyNodeRemovePolicyNode = pKIXPolicyNode7;
                } else {
                    if (hashSet5.isEmpty()) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.explicitPolicy"), this.certPath, size);
                    }
                    HashSet hashSet12 = new HashSet();
                    for (int i35 = 0; i35 < i29; i35++) {
                        ArrayList arrayList7 = arrayListArr[i35];
                        for (int i36 = 0; i36 < arrayList7.size(); i36++) {
                            PKIXPolicyNode pKIXPolicyNode12 = (PKIXPolicyNode) arrayList7.get(i36);
                            if (RFC3280CertPathUtilities.ANY_POLICY.equals(pKIXPolicyNode12.getValidPolicy())) {
                                Iterator children3 = pKIXPolicyNode12.getChildren();
                                while (children3.hasNext()) {
                                    hashSet12.add(children3.next());
                                }
                            }
                        }
                    }
                    Iterator it4 = hashSet12.iterator();
                    while (it4.hasNext()) {
                        hashSet5.contains(((PKIXPolicyNode) it4.next()).getValidPolicy());
                    }
                    pKIXPolicyNodeRemovePolicyNode = pKIXPolicyNode7;
                    for (int i37 = this.f12499n - 1; i37 >= 0; i37--) {
                        ArrayList arrayList8 = arrayListArr[i37];
                        for (int i38 = 0; i38 < arrayList8.size(); i38++) {
                            PKIXPolicyNode pKIXPolicyNode13 = (PKIXPolicyNode) arrayList8.get(i38);
                            if (!pKIXPolicyNode13.hasChildren()) {
                                pKIXPolicyNodeRemovePolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNodeRemovePolicyNode, arrayListArr, pKIXPolicyNode13);
                            }
                        }
                    }
                }
                if (i11 <= 0 && pKIXPolicyNodeRemovePolicyNode == null) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.invalidPolicy"));
                }
            } catch (AnnotatedException unused3) {
                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyConstExtError"), this.certPath, size);
            }
        } catch (CertPathReviewerException e15) {
            addError(e15.getErrorMessage(), e15.getIndex());
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:57|(3:160|59|60)(2:64|(3:162|66|60)(2:70|(2:77|78)(3:74|(1:76)(0)|78)))|(2:181|79)|84|(16:164|86|(1:88)(1:91)|171|92|(1:94)(1:97)|98|(2:101|99)|189|102|(2:105|103)|175|106|107|177|108)(1:115)|(1:120)(1:119)|121|(1:145)(14:123|(1:127)|173|129|(2:131|(1:133))(1:134)|137|(2:139|(1:143))|146|179|147|158|148|188|152)|144|146|179|147|158|148|188|152) */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x03fa, code lost:
    
        r6 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x03fc, code lost:
    
        addError(new org.bouncycastle.i18n.ErrorBundle(r12, "CertPathReviewer.pubKeyError"), r11);
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0299 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x025a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkSignatures() throws Exception {
        TrustAnchor trustAnchor;
        TrustAnchor trustAnchor2;
        X500Principal subjectPrincipal;
        X509Certificate trustedCert;
        PublicKey publicKey;
        int size;
        ErrorBundle errorBundle;
        ErrorBundle errorBundle2;
        X509Certificate x509Certificate;
        int i10;
        int i11;
        PublicKey publicKey2;
        X500Principal x500Principal;
        TrustAnchor trustAnchor3;
        String str;
        X509Certificate x509Certificate2;
        ASN1Primitive extensionValue;
        ASN1Primitive extensionValue2;
        AuthorityKeyIdentifier authorityKeyIdentifier;
        GeneralNames authorityCertIssuer;
        boolean[] keyUsage;
        X509Certificate x509Certificate3;
        Collection trustAnchors;
        int i12 = 3;
        char c7 = 2;
        int i13 = 1;
        Object[] objArr = {new TrustedInput(this.validDate), new TrustedInput(this.currentDate)};
        String str2 = RESOURCE_NAME;
        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certPathValidDate", objArr));
        try {
            List list = this.certs;
            x509Certificate3 = (X509Certificate) list.get(list.size() - 1);
            trustAnchors = getTrustAnchors(x509Certificate3, this.pkixParams.getTrustAnchors());
        } catch (CertPathReviewerException e7) {
            e = e7;
            trustAnchor = null;
        } catch (Throwable th2) {
            th = th2;
            trustAnchor = null;
        }
        if (trustAnchors.size() > 1) {
            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.conflictingTrustAnchors", new Object[]{Integers.valueOf(trustAnchors.size()), new UntrustedInput(x509Certificate3.getIssuerX500Principal())}));
        } else {
            if (!trustAnchors.isEmpty()) {
                trustAnchor = (TrustAnchor) trustAnchors.iterator().next();
                try {
                    try {
                        try {
                            CertPathValidatorUtilities.verifyX509Certificate(x509Certificate3, trustAnchor.getTrustedCert() != null ? trustAnchor.getTrustedCert().getPublicKey() : trustAnchor.getCAPublicKey(), this.pkixParams.getSigProvider());
                        } catch (SignatureException unused) {
                            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustButInvalidCert"));
                        } catch (Exception unused2) {
                        }
                    } catch (CertPathReviewerException e10) {
                        e = e10;
                        addError(e.getErrorMessage());
                        trustAnchor2 = trustAnchor;
                        if (trustAnchor2 == null) {
                        }
                        if (trustAnchor2 == null) {
                        }
                        X509Certificate x509Certificate4 = trustedCert;
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
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.unknown", new Object[]{new UntrustedInput(th.getMessage()), new UntrustedInput(th)}));
                    trustAnchor2 = trustAnchor;
                    if (trustAnchor2 == null) {
                    }
                    if (trustAnchor2 == null) {
                    }
                    X509Certificate x509Certificate42 = trustedCert;
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
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustDNInvalid", new Object[]{new UntrustedInput(trustAnchor2.getCAName())}));
                        subjectPrincipal = null;
                    }
                    if (trustedCert2 != null && (keyUsage = trustedCert2.getKeyUsage()) != null && (keyUsage.length <= 5 || !keyUsage[5])) {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustKeyUsage"));
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
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustPubKeyError"));
                    }
                } else {
                    trustedCert = null;
                    publicKey = null;
                }
                X509Certificate x509Certificate422 = trustedCert;
                X500Principal subjectX500Principal22 = subjectPrincipal;
                PublicKey nextWorkingKey22 = publicKey;
                size = this.certs.size() - 1;
                while (size >= 0) {
                    int i14 = this.f12499n - size;
                    X509Certificate x509Certificate5 = (X509Certificate) this.certs.get(size);
                    if (nextWorkingKey22 != null) {
                        try {
                            CertPathValidatorUtilities.verifyX509Certificate(x509Certificate5, nextWorkingKey22, this.pkixParams.getSigProvider());
                        } catch (GeneralSecurityException e11) {
                            String message = e11.getMessage();
                            String name = e11.getClass().getName();
                            Object[] objArr2 = new Object[i12];
                            objArr2[0] = message;
                            objArr2[i13] = e11;
                            objArr2[c7] = name;
                            errorBundle = new ErrorBundle(str2, "CertPathReviewer.signatureNotVerified", objArr2);
                            addError(errorBundle, size);
                            x509Certificate5.checkValidity(this.validDate);
                            if (this.pkixParams.isRevocationEnabled()) {
                            }
                            if (x500Principal == null) {
                            }
                            if (i10 != this.f12499n) {
                            }
                            subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                            nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                            AlgorithmIdentifier algorithmIdentifier2 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                            algorithmIdentifier2.getAlgorithm();
                            algorithmIdentifier2.getParameters();
                            size = i11 - 1;
                            str2 = str;
                            x509Certificate422 = x509Certificate;
                            trustAnchor2 = trustAnchor3;
                            i12 = 3;
                            c7 = 2;
                            i13 = 1;
                        }
                    } else if (CertPathValidatorUtilities.isSelfIssued(x509Certificate5)) {
                        try {
                            CertPathValidatorUtilities.verifyX509Certificate(x509Certificate5, x509Certificate5.getPublicKey(), this.pkixParams.getSigProvider());
                            addError(new ErrorBundle(str2, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"), size);
                        } catch (GeneralSecurityException e12) {
                            String message2 = e12.getMessage();
                            String name2 = e12.getClass().getName();
                            Object[] objArr3 = new Object[i12];
                            objArr3[0] = message2;
                            objArr3[i13] = e12;
                            objArr3[2] = name2;
                            errorBundle = new ErrorBundle(str2, "CertPathReviewer.signatureNotVerified", objArr3);
                            addError(errorBundle, size);
                            x509Certificate5.checkValidity(this.validDate);
                            if (this.pkixParams.isRevocationEnabled()) {
                            }
                            if (x500Principal == null) {
                            }
                            if (i10 != this.f12499n) {
                            }
                            subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                            nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                            AlgorithmIdentifier algorithmIdentifier22 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                            algorithmIdentifier22.getAlgorithm();
                            algorithmIdentifier22.getParameters();
                            size = i11 - 1;
                            str2 = str;
                            x509Certificate422 = x509Certificate;
                            trustAnchor2 = trustAnchor3;
                            i12 = 3;
                            c7 = 2;
                            i13 = 1;
                        }
                    } else {
                        ErrorBundle errorBundle3 = new ErrorBundle(str2, "CertPathReviewer.NoIssuerPublicKey");
                        byte[] extensionValue3 = x509Certificate5.getExtensionValue(Extension.authorityKeyIdentifier.getId());
                        if (extensionValue3 == null || (authorityCertIssuer = (authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(ASN1OctetString.getInstance(extensionValue3).getOctets())).getAuthorityCertIssuer()) == null) {
                            addError(errorBundle3, size);
                        } else {
                            GeneralName generalName = authorityCertIssuer.getNames()[0];
                            BigInteger authorityCertSerialNumber = authorityKeyIdentifier.getAuthorityCertSerialNumber();
                            if (authorityCertSerialNumber != null) {
                                LocaleString localeString = new LocaleString(str2, "missingIssuer");
                                LocaleString localeString2 = new LocaleString(str2, "missingSerial");
                                Object[] objArr4 = new Object[7];
                                objArr4[0] = localeString;
                                objArr4[i13] = " \"";
                                objArr4[2] = generalName;
                                objArr4[3] = "\" ";
                                objArr4[4] = localeString2;
                                objArr4[5] = " ";
                                objArr4[6] = authorityCertSerialNumber;
                                errorBundle3.setExtraArguments(objArr4);
                            }
                            addError(errorBundle3, size);
                        }
                    }
                    try {
                        x509Certificate5.checkValidity(this.validDate);
                    } catch (CertificateExpiredException unused5) {
                        Object[] objArr5 = new Object[i13];
                        objArr5[0] = new TrustedInput(x509Certificate5.getNotAfter());
                        errorBundle2 = new ErrorBundle(str2, "CertPathReviewer.certificateExpired", objArr5);
                        addError(errorBundle2, size);
                        if (this.pkixParams.isRevocationEnabled()) {
                        }
                        if (x500Principal == null) {
                        }
                        if (i10 != this.f12499n) {
                        }
                        subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                        nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                        AlgorithmIdentifier algorithmIdentifier222 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                        algorithmIdentifier222.getAlgorithm();
                        algorithmIdentifier222.getParameters();
                        size = i11 - 1;
                        str2 = str;
                        x509Certificate422 = x509Certificate;
                        trustAnchor2 = trustAnchor3;
                        i12 = 3;
                        c7 = 2;
                        i13 = 1;
                    } catch (CertificateNotYetValidException unused6) {
                        Object[] objArr6 = new Object[i13];
                        objArr6[0] = new TrustedInput(x509Certificate5.getNotBefore());
                        errorBundle2 = new ErrorBundle(str2, "CertPathReviewer.certificateNotYetValid", objArr6);
                        addError(errorBundle2, size);
                        if (this.pkixParams.isRevocationEnabled()) {
                        }
                        if (x500Principal == null) {
                        }
                        if (i10 != this.f12499n) {
                        }
                        subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                        nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                        AlgorithmIdentifier algorithmIdentifier2222 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                        algorithmIdentifier2222.getAlgorithm();
                        algorithmIdentifier2222.getParameters();
                        size = i11 - 1;
                        str2 = str;
                        x509Certificate422 = x509Certificate;
                        trustAnchor2 = trustAnchor3;
                        i12 = 3;
                        c7 = 2;
                        i13 = 1;
                    }
                    if (this.pkixParams.isRevocationEnabled()) {
                        try {
                            extensionValue2 = CertPathValidatorUtilities.getExtensionValue(x509Certificate5, CRL_DIST_POINTS);
                        } catch (AnnotatedException unused7) {
                            addError(new ErrorBundle(str2, "CertPathReviewer.crlDistPtExtError"), size);
                        }
                        CRLDistPoint cRLDistPoint = extensionValue2 != null ? CRLDistPoint.getInstance(extensionValue2) : null;
                        try {
                            extensionValue = CertPathValidatorUtilities.getExtensionValue(x509Certificate5, AUTH_INFO_ACCESS);
                        } catch (AnnotatedException unused8) {
                            addError(new ErrorBundle(str2, "CertPathReviewer.crlAuthInfoAccError"), size);
                        }
                        AuthorityInformationAccess authorityInformationAccess = extensionValue != null ? AuthorityInformationAccess.getInstance(extensionValue) : null;
                        Vector cRLDistUrls = getCRLDistUrls(cRLDistPoint);
                        Vector oCSPUrls = getOCSPUrls(authorityInformationAccess);
                        Iterator it = cRLDistUrls.iterator();
                        while (it.hasNext()) {
                            Object[] objArr7 = new Object[i13];
                            objArr7[0] = new UntrustedUrlInput(it.next());
                            addNotification(new ErrorBundle(str2, "CertPathReviewer.crlDistPoint", objArr7), size);
                        }
                        Iterator it2 = oCSPUrls.iterator();
                        while (it2.hasNext()) {
                            Object[] objArr8 = new Object[i13];
                            objArr8[0] = new UntrustedUrlInput(it2.next());
                            addNotification(new ErrorBundle(str2, "CertPathReviewer.ocspLocation", objArr8), size);
                        }
                        try {
                            x509Certificate = x509Certificate5;
                            i10 = i14;
                            i11 = size;
                            x509Certificate2 = x509Certificate422;
                            publicKey2 = nextWorkingKey22;
                            x500Principal = subjectX500Principal22;
                            trustAnchor3 = trustAnchor2;
                            str = str2;
                        } catch (CertPathReviewerException e13) {
                            e = e13;
                            x509Certificate = x509Certificate5;
                            i10 = i14;
                            i11 = size;
                            publicKey2 = nextWorkingKey22;
                            x500Principal = subjectX500Principal22;
                            trustAnchor3 = trustAnchor2;
                            str = str2;
                        }
                        try {
                            checkRevocation(this.pkixParams, x509Certificate5, this.validDate, x509Certificate2, nextWorkingKey22, cRLDistUrls, oCSPUrls, i11);
                        } catch (CertPathReviewerException e14) {
                            e = e14;
                            addError(e.getErrorMessage(), i11);
                            if (x500Principal == null) {
                            }
                            if (i10 != this.f12499n) {
                            }
                            subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                            nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                            AlgorithmIdentifier algorithmIdentifier22222 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                            algorithmIdentifier22222.getAlgorithm();
                            algorithmIdentifier22222.getParameters();
                            size = i11 - 1;
                            str2 = str;
                            x509Certificate422 = x509Certificate;
                            trustAnchor2 = trustAnchor3;
                            i12 = 3;
                            c7 = 2;
                            i13 = 1;
                        }
                    } else {
                        x509Certificate = x509Certificate5;
                        i10 = i14;
                        i11 = size;
                        publicKey2 = nextWorkingKey22;
                        x500Principal = subjectX500Principal22;
                        trustAnchor3 = trustAnchor2;
                        str = str2;
                    }
                    if (x500Principal == null && !x509Certificate.getIssuerX500Principal().equals(x500Principal)) {
                        addError(new ErrorBundle(str, "CertPathReviewer.certWrongIssuer", new Object[]{x500Principal.getName(), x509Certificate.getIssuerX500Principal().getName()}), i11);
                    }
                    if (i10 != this.f12499n) {
                        if (x509Certificate != null && x509Certificate.getVersion() == 1) {
                            addError(new ErrorBundle(str, "CertPathReviewer.noCACert"), i11);
                        }
                        try {
                            BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.BASIC_CONSTRAINTS));
                            if (basicConstraints == null) {
                                addError(new ErrorBundle(str, "CertPathReviewer.noBasicConstraints"), i11);
                            } else if (!basicConstraints.isCA()) {
                                addError(new ErrorBundle(str, "CertPathReviewer.noCACert"), i11);
                            }
                        } catch (AnnotatedException unused9) {
                            addError(new ErrorBundle(str, "CertPathReviewer.errorProcesingBC"), i11);
                        }
                        boolean[] keyUsage2 = x509Certificate.getKeyUsage();
                        if (keyUsage2 != null) {
                            if (keyUsage2.length <= 5 || !keyUsage2[5]) {
                                addError(new ErrorBundle(str, "CertPathReviewer.noCertSign"), i11);
                            }
                        }
                        subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                        nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                        AlgorithmIdentifier algorithmIdentifier222222 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                        algorithmIdentifier222222.getAlgorithm();
                        algorithmIdentifier222222.getParameters();
                        size = i11 - 1;
                        str2 = str;
                        x509Certificate422 = x509Certificate;
                        trustAnchor2 = trustAnchor3;
                        i12 = 3;
                        c7 = 2;
                        i13 = 1;
                    }
                    subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                    nextWorkingKey22 = CertPathValidatorUtilities.getNextWorkingKey(this.certs, i11);
                    AlgorithmIdentifier algorithmIdentifier2222222 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey22);
                    algorithmIdentifier2222222.getAlgorithm();
                    algorithmIdentifier2222222.getParameters();
                    size = i11 - 1;
                    str2 = str;
                    x509Certificate422 = x509Certificate;
                    trustAnchor2 = trustAnchor3;
                    i12 = 3;
                    c7 = 2;
                    i13 = 1;
                }
                this.trustAnchor = trustAnchor2;
                this.subjectPublicKey = nextWorkingKey22;
            }
            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noTrustAnchorFound", new Object[]{new UntrustedInput(x509Certificate3.getIssuerX500Principal()), Integers.valueOf(this.pkixParams.getTrustAnchors().size())}));
        }
        trustAnchor = null;
        trustAnchor2 = trustAnchor;
        if (trustAnchor2 == null) {
        }
        if (trustAnchor2 == null) {
        }
        X509Certificate x509Certificate4222 = trustedCert;
        X500Principal subjectX500Principal222 = subjectPrincipal;
        PublicKey nextWorkingKey222 = publicKey;
        size = this.certs.size() - 1;
        while (size >= 0) {
        }
        this.trustAnchor = trustAnchor2;
        this.subjectPublicKey = nextWorkingKey222;
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
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.loadCrlDistPointError", new Object[]{new UntrustedInput(str), e7.getMessage(), e7, e7.getClass().getName()}));
        }
    }

    private boolean processQcStatements(X509Certificate x509Certificate, int i10) {
        String str;
        int i11;
        ErrorBundle errorBundle;
        ErrorBundle errorBundle2;
        char c7 = 2;
        String str2 = RESOURCE_NAME;
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, QC_STATEMENT);
            int i12 = 0;
            boolean z = false;
            while (i12 < aSN1Sequence.size()) {
                QCStatement qCStatement = QCStatement.getInstance(aSN1Sequence.getObjectAt(i12));
                if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcCompliance.equals((ASN1Primitive) qCStatement.getStatementId())) {
                    errorBundle2 = new ErrorBundle(str2, "CertPathReviewer.QcEuCompliance");
                } else if (RFC3739QCObjectIdentifiers.id_qcs_pkixQCSyntax_v1.equals((ASN1Primitive) qCStatement.getStatementId())) {
                    str = str2;
                    i11 = 1;
                    i12 += i11;
                    str2 = str;
                    c7 = 2;
                } else if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcSSCD.equals((ASN1Primitive) qCStatement.getStatementId())) {
                    errorBundle2 = new ErrorBundle(str2, "CertPathReviewer.QcSSCD");
                } else if (ETSIQCObjectIdentifiers.id_etsi_qcs_LimiteValue.equals((ASN1Primitive) qCStatement.getStatementId())) {
                    MonetaryValue monetaryValue = MonetaryValue.getInstance(qCStatement.getStatementInfo());
                    monetaryValue.getCurrency();
                    String str3 = str2;
                    try {
                        double dDoubleValue = monetaryValue.getAmount().doubleValue() * Math.pow(10.0d, monetaryValue.getExponent().doubleValue());
                        if (monetaryValue.getCurrency().isAlphabetic()) {
                            String alphabetic = monetaryValue.getCurrency().getAlphabetic();
                            TrustedInput trustedInput = new TrustedInput(new Double(dDoubleValue));
                            Object[] objArr = new Object[3];
                            objArr[0] = alphabetic;
                            objArr[1] = trustedInput;
                            objArr[c7] = monetaryValue;
                            str = str3;
                            try {
                                errorBundle = new ErrorBundle(str, "CertPathReviewer.QcLimitValueAlpha", objArr);
                            } catch (AnnotatedException unused) {
                                addError(new ErrorBundle(str, "CertPathReviewer.QcStatementExtError"), i10);
                                return false;
                            }
                        } else {
                            str = str3;
                            errorBundle = new ErrorBundle(str, "CertPathReviewer.QcLimitValueNum", new Object[]{Integers.valueOf(monetaryValue.getCurrency().getNumeric()), new TrustedInput(new Double(dDoubleValue)), monetaryValue});
                        }
                        addNotification(errorBundle, i10);
                        i11 = 1;
                        i12 += i11;
                        str2 = str;
                        c7 = 2;
                    } catch (AnnotatedException unused2) {
                        str = str3;
                    }
                } else {
                    str = str2;
                    i11 = 1;
                    addNotification(new ErrorBundle(str, "CertPathReviewer.QcUnknownStatement", new Object[]{qCStatement.getStatementId(), new UntrustedInput(qCStatement)}), i10);
                    z = true;
                    i12 += i11;
                    str2 = str;
                    c7 = 2;
                }
                addNotification(errorBundle2, i10);
                str = str2;
                i11 = 1;
                i12 += i11;
                str2 = str;
                c7 = 2;
            }
            return !z;
        } catch (AnnotatedException unused3) {
            str = str2;
        }
    }

    public void addError(ErrorBundle errorBundle) {
        this.errors[0].add(errorBundle);
    }

    public void addNotification(ErrorBundle errorBundle) {
        this.notifications[0].add(errorBundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:99:0x0258  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkCRLs(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, int i10) throws Exception {
        Iterator it;
        X509CRL x509crl;
        boolean z;
        boolean[] keyUsage;
        X509CRL x509crl2;
        X500Principal x500Principal;
        Iterator it2;
        boolean z4;
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
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCrlInCertstore", new Object[]{new UntrustedInput(x509CRLStoreSelector.getIssuerNames()), new UntrustedInput(arrayList), Integers.valueOf(arrayList.size())}), i10);
                }
            } catch (AnnotatedException e7) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlExtractionError", new Object[]{e7.getCause().getMessage(), e7.getCause(), e7.getCause().getClass().getName()}), i10);
                it = new ArrayList().iterator();
            }
            X509CRL x509crl3 = null;
            while (it.hasNext()) {
                x509crl3 = (X509CRL) it.next();
                Date thisUpdate = x509crl3.getThisUpdate();
                Date nextUpdate = x509crl3.getNextUpdate();
                Object[] objArr2 = {new TrustedInput(thisUpdate), new TrustedInput(nextUpdate)};
                if (nextUpdate == null || date.before(nextUpdate)) {
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.localValidCRL", objArr2), i10);
                    x509crl = x509crl3;
                    z = true;
                    break;
                }
                addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.localInvalidCRL", objArr2), i10);
            }
            x509crl = x509crl3;
            z = false;
            if (!z) {
                X500Principal issuerX500Principal = x509Certificate.getIssuerX500Principal();
                Iterator it4 = vector.iterator();
                boolean z10 = z;
                while (true) {
                    if (!it4.hasNext()) {
                        z = z10;
                        break;
                    }
                    try {
                        str = (String) it4.next();
                        crl = getCRL(str);
                    } catch (CertPathReviewerException e10) {
                        e = e10;
                        x509crl2 = x509crl;
                        x500Principal = issuerX500Principal;
                        it2 = it4;
                    }
                    if (crl != null) {
                        X500Principal issuerX500Principal2 = crl.getIssuerX500Principal();
                        if (issuerX500Principal.equals(issuerX500Principal2)) {
                            x509crl2 = x509crl;
                            x500Principal = issuerX500Principal;
                            it2 = it4;
                            z4 = z10;
                            Date thisUpdate2 = crl.getThisUpdate();
                            Date nextUpdate2 = crl.getNextUpdate();
                            try {
                                objArr = new Object[]{new TrustedInput(thisUpdate2), new TrustedInput(nextUpdate2), new UntrustedUrlInput(str)};
                            } catch (CertPathReviewerException e11) {
                                e = e11;
                            }
                            if (nextUpdate2 != null && !date.before(nextUpdate2)) {
                                addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineInvalidCRL", objArr), i10);
                                it4 = it2;
                                x509crl = x509crl2;
                                z10 = z4;
                                issuerX500Principal = x500Principal;
                            }
                            try {
                                addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineValidCRL", objArr), i10);
                                x509crl = crl;
                                z = true;
                                break;
                            } catch (CertPathReviewerException e12) {
                                e = e12;
                                z4 = true;
                                addNotification(e.getErrorMessage(), i10);
                                it4 = it2;
                                x509crl = x509crl2;
                                z10 = z4;
                                issuerX500Principal = x500Principal;
                            }
                        } else {
                            x509crl2 = x509crl;
                            it2 = it4;
                            try {
                                z4 = z10;
                                try {
                                    x500Principal = issuerX500Principal;
                                } catch (CertPathReviewerException e13) {
                                    e = e13;
                                    x500Principal = issuerX500Principal;
                                }
                                try {
                                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineCRLWrongCA", new Object[]{new UntrustedInput(issuerX500Principal2.getName()), new UntrustedInput(issuerX500Principal.getName()), new UntrustedUrlInput(str)}), i10);
                                } catch (CertPathReviewerException e14) {
                                    e = e14;
                                    addNotification(e.getErrorMessage(), i10);
                                    it4 = it2;
                                    x509crl = x509crl2;
                                    z10 = z4;
                                    issuerX500Principal = x500Principal;
                                }
                            } catch (CertPathReviewerException e15) {
                                e = e15;
                                x500Principal = issuerX500Principal;
                                z4 = z10;
                                addNotification(e.getErrorMessage(), i10);
                                it4 = it2;
                                x509crl = x509crl2;
                                z10 = z4;
                                issuerX500Principal = x500Principal;
                            }
                        }
                    } else {
                        x509crl2 = x509crl;
                        x500Principal = issuerX500Principal;
                        it2 = it4;
                        z4 = z10;
                    }
                    it4 = it2;
                    x509crl = x509crl2;
                    z10 = z4;
                    issuerX500Principal = x500Principal;
                }
            }
            if (x509crl != null) {
                if (x509Certificate2 != null && (keyUsage = x509Certificate2.getKeyUsage()) != null && (keyUsage.length <= 6 || !keyUsage[6])) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCrlSigningPermited"));
                }
                if (publicKey == null) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlNoIssuerPublicKey"));
                }
                try {
                    x509crl.verify(publicKey, BouncyCastleProvider.PROVIDER_NAME);
                    X509CRLEntry revokedCertificate = x509crl.getRevokedCertificate(x509Certificate.getSerialNumber());
                    if (revokedCertificate == null) {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notRevoked"), i10);
                    } else if (revokedCertificate.hasExtensions()) {
                        try {
                            ASN1Enumerated aSN1Enumerated = ASN1Enumerated.getInstance(CertPathValidatorUtilities.getExtensionValue(revokedCertificate, Extension.reasonCode.getId()));
                            String str2 = aSN1Enumerated != null ? CertPathValidatorUtilities.crlReasons[aSN1Enumerated.intValueExact()] : null;
                            if (str2 == null) {
                                str2 = CertPathValidatorUtilities.crlReasons[7];
                            }
                            LocaleString localeString = new LocaleString(RESOURCE_NAME, str2);
                            if (!date.before(revokedCertificate.getRevocationDate())) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certRevoked", new Object[]{new TrustedInput(revokedCertificate.getRevocationDate()), localeString}));
                            }
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.revokedAfterValidation", new Object[]{new TrustedInput(revokedCertificate.getRevocationDate()), localeString}), i10);
                        } catch (AnnotatedException e16) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlReasonExtError"), e16);
                        }
                    }
                    Date nextUpdate3 = x509crl.getNextUpdate();
                    if (nextUpdate3 != null && !date.before(nextUpdate3)) {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlUpdateAvailable", new Object[]{new TrustedInput(nextUpdate3)}), i10);
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
                                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.distrPtExtError"), e17);
                                                }
                                            }
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noBaseCRL"));
                                        } catch (AnnotatedException e18) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlExtractionError"), e18);
                                        }
                                    } catch (AnnotatedException e19) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlNbrExtError"), e19);
                                    }
                                } catch (IOException e20) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlIssuerException"), e20);
                                }
                            }
                            if (extensionValue != null) {
                                IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(extensionValue);
                                try {
                                    BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.BASIC_CONSTRAINTS));
                                    if (issuingDistributionPoint.onlyContainsUserCerts() && basicConstraints != null && basicConstraints.isCA()) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyUserCert"));
                                    }
                                    if (issuingDistributionPoint.onlyContainsCACerts() && (basicConstraints == null || !basicConstraints.isCA())) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyCaCert"));
                                    }
                                    if (issuingDistributionPoint.onlyContainsAttributeCerts()) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyAttrCert"));
                                    }
                                } catch (AnnotatedException e21) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlBCExtError"), e21);
                                }
                            }
                        } catch (AnnotatedException unused) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.deltaCrlExtError"));
                        }
                    } catch (AnnotatedException unused2) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.distrPtExtError"));
                    }
                } catch (Exception e22) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlVerifyFailed"), e22);
                }
            }
            if (!z) {
                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noValidCrlFound"));
            }
        } catch (IOException e23) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlIssuerException"), e23);
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
        int i10 = this.f12499n;
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
        return this.f12499n;
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
                AuthorityKeyIdentifier authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(ASN1Primitive.fromByteArray(((ASN1OctetString) ASN1Primitive.fromByteArray(extensionValue)).getOctets()));
                if (authorityKeyIdentifier.getAuthorityCertSerialNumber() != null) {
                    x509CertSelector.setSerialNumber(authorityKeyIdentifier.getAuthorityCertSerialNumber());
                } else {
                    byte[] keyIdentifier = authorityKeyIdentifier.getKeyIdentifier();
                    if (keyIdentifier != null) {
                        x509CertSelector.setSubjectKeyIdentifier(new DEROctetString(keyIdentifier).getEncoded());
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
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustAnchorIssuerError"));
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
        this.f12499n = this.certs.size();
        if (this.certs.isEmpty()) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.emptyCertPath"));
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

    public void addError(ErrorBundle errorBundle, int i10) {
        if (i10 < -1 || i10 >= this.f12499n) {
            throw new IndexOutOfBoundsException();
        }
        this.errors[i10 + 1].add(errorBundle);
    }

    public void addNotification(ErrorBundle errorBundle, int i10) {
        if (i10 < -1 || i10 >= this.f12499n) {
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
