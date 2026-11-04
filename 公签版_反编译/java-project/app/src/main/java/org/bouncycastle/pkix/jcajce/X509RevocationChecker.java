package org.bouncycastle.pkix.jcajce;

import d0.f;
import j$.util.DesugarTimeZone;
import java.net.URI;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.cert.CRL;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.security.auth.x500.X500Principal;
import l2.z;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.jcajce.PKIXCRLStore;
import org.bouncycastle.jcajce.PKIXCRLStoreSelector;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.util.DefaultJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jcajce.util.NamedJcaJceHelper;
import org.bouncycastle.jcajce.util.ProviderJcaJceHelper;
import org.bouncycastle.util.CollectionStore;
import org.bouncycastle.util.Iterable;
import org.bouncycastle.util.Selector;
import org.bouncycastle.util.Store;

/* loaded from: classes3.dex */
public class X509RevocationChecker extends PKIXCertPathChecker {
    public static final int CHAIN_VALIDITY_MODEL = 1;
    public static final int PKIX_VALIDITY_MODEL = 0;
    private final boolean canSoftFail;
    private final List<CertStore> crlCertStores;
    private final List<Store<CRL>> crls;
    private Date currentDate;
    private final long failHardMaxTime;
    private final long failLogMaxTime;
    private final Map<X500Principal, Long> failures;
    private final JcaJceHelper helper;
    private final boolean isCheckEEOnly;
    private X509Certificate signingCert;
    private final Set<TrustAnchor> trustAnchors;
    private final Date validationDate;
    private final int validityModel;
    private X500Principal workingIssuerName;
    private PublicKey workingPublicKey;
    private static Logger LOG = Logger.getLogger(X509RevocationChecker.class.getName());
    protected static final String[] crlReasons = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    public static class Builder {
        private boolean canSoftFail;
        private List<CertStore> crlCertStores;
        private List<Store<CRL>> crls;
        private long failHardMaxTime;
        private long failLogMaxTime;
        private boolean isCheckEEOnly;
        private Provider provider;
        private String providerName;
        private Set<TrustAnchor> trustAnchors;
        private Date validityDate;
        private int validityModel;

        public Builder(KeyStore keyStore) throws KeyStoreException {
            this.crlCertStores = new ArrayList();
            this.crls = new ArrayList();
            this.validityModel = 0;
            this.validityDate = new Date();
            this.trustAnchors = new HashSet();
            Enumeration<String> enumerationAliases = keyStore.aliases();
            while (enumerationAliases.hasMoreElements()) {
                String strNextElement = enumerationAliases.nextElement();
                if (keyStore.isCertificateEntry(strNextElement)) {
                    this.trustAnchors.add(new TrustAnchor((X509Certificate) keyStore.getCertificate(strNextElement), null));
                }
            }
        }

        public Builder addCrls(CertStore certStore) {
            this.crlCertStores.add(certStore);
            return this;
        }

        public X509RevocationChecker build() {
            return new X509RevocationChecker(this);
        }

        public Builder setCheckEndEntityOnly(boolean z) {
            this.isCheckEEOnly = z;
            return this;
        }

        public Builder setDate(Date date) {
            this.validityDate = new Date(date.getTime());
            return this;
        }

        public Builder setSoftFail(boolean z, long j10) {
            this.canSoftFail = z;
            this.failLogMaxTime = j10;
            this.failHardMaxTime = -1L;
            return this;
        }

        public Builder setSoftFailHardLimit(boolean z, long j10) {
            this.canSoftFail = z;
            this.failLogMaxTime = (3 * j10) / 4;
            this.failHardMaxTime = j10;
            return this;
        }

        public Builder setValidityModel(int i10) {
            this.validityModel = i10;
            return this;
        }

        public Builder usingProvider(String str) {
            this.providerName = str;
            return this;
        }

        public Builder(TrustAnchor trustAnchor) {
            this.crlCertStores = new ArrayList();
            this.crls = new ArrayList();
            this.validityModel = 0;
            this.validityDate = new Date();
            this.trustAnchors = Collections.singleton(trustAnchor);
        }

        public Builder addCrls(Store<CRL> store) {
            this.crls.add(store);
            return this;
        }

        public Builder usingProvider(Provider provider) {
            this.provider = provider;
            return this;
        }

        public Builder(Set<TrustAnchor> set) {
            this.crlCertStores = new ArrayList();
            this.crls = new ArrayList();
            this.validityModel = 0;
            this.validityDate = new Date();
            this.trustAnchors = new HashSet(set);
        }
    }

    public static class LocalCRLStore implements PKIXCRLStore<CRL>, Iterable<CRL> {
        private Collection<CRL> _local;

        public LocalCRLStore(Store<CRL> store) {
            this._local = new ArrayList(store.getMatches(null));
        }

        @Override // org.bouncycastle.jcajce.PKIXCRLStore, org.bouncycastle.util.Store
        public Collection<CRL> getMatches(Selector<CRL> selector) {
            if (selector == null) {
                return new ArrayList(this._local);
            }
            ArrayList arrayList = new ArrayList();
            for (CRL crl : this._local) {
                if (selector.match(crl)) {
                    arrayList.add(crl);
                }
            }
            return arrayList;
        }

        @Override // org.bouncycastle.util.Iterable, java.lang.Iterable
        public Iterator<CRL> iterator() {
            return getMatches(null).iterator();
        }
    }

    private X509RevocationChecker(Builder builder) {
        JcaJceHelper namedJcaJceHelper;
        this.failures = new HashMap();
        this.crls = new ArrayList(builder.crls);
        this.crlCertStores = new ArrayList(builder.crlCertStores);
        this.isCheckEEOnly = builder.isCheckEEOnly;
        this.validityModel = builder.validityModel;
        this.trustAnchors = builder.trustAnchors;
        this.canSoftFail = builder.canSoftFail;
        this.failLogMaxTime = builder.failLogMaxTime;
        this.failHardMaxTime = builder.failHardMaxTime;
        this.validationDate = builder.validityDate;
        if (builder.provider != null) {
            namedJcaJceHelper = new ProviderJcaJceHelper(builder.provider);
        } else {
            if (builder.providerName == null) {
                this.helper = new DefaultJcaJceHelper();
                return;
            }
            namedJcaJceHelper = new NamedJcaJceHelper(builder.providerName);
        }
        this.helper = namedJcaJceHelper;
    }

    private void addIssuers(final List<X500Principal> list, CertStore certStore) throws CertStoreException {
        certStore.getCRLs(new X509CRLSelector() { // from class: org.bouncycastle.pkix.jcajce.X509RevocationChecker.1
            @Override // java.security.cert.X509CRLSelector, java.security.cert.CRLSelector
            public boolean match(CRL crl) {
                if (!(crl instanceof X509CRL)) {
                    return false;
                }
                list.add(((X509CRL) crl).getIssuerX500Principal());
                return false;
            }
        });
    }

    private Set<CRL> downloadCRLs(X500Principal x500Principal, Date date, ASN1Primitive aSN1Primitive, JcaJceHelper jcaJceHelper) {
        URI uri;
        DistributionPoint[] distributionPoints = CRLDistPoint.getInstance(aSN1Primitive).getDistributionPoints();
        try {
            CertificateFactory certificateFactoryCreateCertificateFactory = jcaJceHelper.createCertificateFactory("X.509");
            X509CRLSelector x509CRLSelector = new X509CRLSelector();
            x509CRLSelector.addIssuer(x500Principal);
            PKIXCRLStoreSelector<? extends CRL> pKIXCRLStoreSelectorBuild = new PKIXCRLStoreSelector.Builder(x509CRLSelector).build();
            HashSet hashSet = new HashSet();
            for (int i10 = 0; i10 != distributionPoints.length; i10++) {
                DistributionPointName distributionPoint = distributionPoints[i10].getDistributionPoint();
                if (distributionPoint != null && distributionPoint.getType() == 0) {
                    GeneralName[] names = GeneralNames.getInstance(distributionPoint.getName()).getNames();
                    for (int i11 = 0; i11 != names.length; i11++) {
                        GeneralName generalName = names[i11];
                        if (generalName.getTagNo() == 6) {
                            try {
                                uri = new URI(((ASN1String) generalName.getName()).getString());
                                try {
                                    PKIXCRLStore crl = CrlCache.getCrl(certificateFactoryCreateCertificateFactory, this.validationDate, uri);
                                    if (crl != null) {
                                        try {
                                            hashSet.addAll(PKIXCRLUtil.findCRLs(pKIXCRLStoreSelectorBuild, date, Collections.EMPTY_LIST, Collections.singletonList(crl)));
                                        } catch (Exception e7) {
                                            e = e7;
                                            Logger logger = LOG;
                                            Level level = Level.FINE;
                                            if (logger.isLoggable(level)) {
                                                LOG.log(level, "CrlDP " + uri + " ignored: " + e.getMessage(), (Throwable) e);
                                            } else {
                                                LOG.log(Level.INFO, "CrlDP " + uri + " ignored: " + e.getMessage());
                                            }
                                        }
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                }
                            } catch (Exception e11) {
                                e = e11;
                                uri = null;
                            }
                        }
                    }
                }
            }
            return hashSet;
        } catch (Exception e12) {
            Logger logger2 = LOG;
            Level level2 = Level.FINE;
            if (logger2.isLoggable(level2)) {
                LOG.log(level2, "could not create certFact: " + e12.getMessage(), (Throwable) e12);
                return null;
            }
            LOG.log(Level.INFO, "could not create certFact: " + e12.getMessage());
            return null;
        }
    }

    public static List<PKIXCRLStore> getAdditionalStoresFromCRLDistributionPoint(CRLDistPoint cRLDistPoint, Map<GeneralName, PKIXCRLStore> map) throws AnnotatedException {
        if (cRLDistPoint == null) {
            return Collections.emptyList();
        }
        try {
            DistributionPoint[] distributionPoints = cRLDistPoint.getDistributionPoints();
            ArrayList arrayList = new ArrayList();
            for (DistributionPoint distributionPoint : distributionPoints) {
                DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
                if (distributionPoint2 != null && distributionPoint2.getType() == 0) {
                    for (GeneralName generalName : GeneralNames.getInstance(distributionPoint2.getName()).getNames()) {
                        PKIXCRLStore pKIXCRLStore = map.get(generalName);
                        if (pKIXCRLStore != null) {
                            arrayList.add(pKIXCRLStore);
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e7) {
            throw new AnnotatedException("could not read distribution points could not be read", e7);
        }
    }

    @Override // java.security.cert.PKIXCertPathChecker
    public void check(Certificate certificate, Collection<String> collection) throws CertPathValidatorException {
        Level level;
        StringBuilder sb2;
        X509Certificate x509Certificate = (X509Certificate) certificate;
        if (this.isCheckEEOnly && x509Certificate.getBasicConstraints() != -1) {
            this.workingIssuerName = x509Certificate.getSubjectX500Principal();
            this.workingPublicKey = x509Certificate.getPublicKey();
            this.signingCert = x509Certificate;
            return;
        }
        if (this.workingIssuerName == null) {
            this.workingIssuerName = x509Certificate.getIssuerX500Principal();
            TrustAnchor trustAnchor = null;
            for (TrustAnchor trustAnchor2 : this.trustAnchors) {
                if (this.workingIssuerName.equals(trustAnchor2.getCA()) || this.workingIssuerName.equals(trustAnchor2.getTrustedCert().getSubjectX500Principal())) {
                    trustAnchor = trustAnchor2;
                }
            }
            if (trustAnchor == null) {
                throw new CertPathValidatorException("no trust anchor found for " + this.workingIssuerName);
            }
            X509Certificate trustedCert = trustAnchor.getTrustedCert();
            this.signingCert = trustedCert;
            this.workingPublicKey = trustedCert.getPublicKey();
        }
        ArrayList arrayList = new ArrayList();
        try {
            PKIXParameters pKIXParameters = new PKIXParameters(this.trustAnchors);
            pKIXParameters.setRevocationEnabled(false);
            pKIXParameters.setDate(this.validationDate);
            for (int i10 = 0; i10 != this.crlCertStores.size(); i10++) {
                if (LOG.isLoggable(Level.INFO)) {
                    addIssuers(arrayList, this.crlCertStores.get(i10));
                }
                pKIXParameters.addCertStore(this.crlCertStores.get(i10));
            }
            PKIXExtendedParameters.Builder builder = new PKIXExtendedParameters.Builder(pKIXParameters);
            builder.setValidityModel(this.validityModel);
            for (int i11 = 0; i11 != this.crls.size(); i11++) {
                if (LOG.isLoggable(Level.INFO)) {
                    addIssuers(arrayList, this.crls.get(i11));
                }
                builder.addCRLStore(new LocalCRLStore(this.crls.get(i11)));
            }
            if (arrayList.isEmpty()) {
                LOG.log(Level.INFO, "configured with 0 pre-loaded CRLs");
            } else if (LOG.isLoggable(Level.FINE)) {
                for (int i12 = 0; i12 != arrayList.size(); i12++) {
                    LOG.log(Level.FINE, "configuring with CRL for issuer \"" + arrayList.get(i12) + "\"");
                }
            } else {
                LOG.log(Level.INFO, "configured with " + arrayList.size() + " pre-loaded CRLs");
            }
            PKIXExtendedParameters pKIXExtendedParametersBuild = builder.build();
            Date validityDate = RevocationUtilities.getValidityDate(pKIXExtendedParametersBuild, this.validationDate);
            try {
                checkCRLs(pKIXExtendedParametersBuild, this.currentDate, validityDate, x509Certificate, this.signingCert, this.workingPublicKey, new ArrayList(), this.helper);
            } catch (AnnotatedException e7) {
                throw new CertPathValidatorException(e7.getMessage(), e7.getCause());
            } catch (CRLNotFoundException e10) {
                ASN1ObjectIdentifier aSN1ObjectIdentifier = Extension.cRLDistributionPoints;
                if (x509Certificate.getExtensionValue(aSN1ObjectIdentifier.getId()) == null) {
                    throw e10;
                }
                try {
                    Set<CRL> setDownloadCRLs = downloadCRLs(x509Certificate.getIssuerX500Principal(), validityDate, RevocationUtilities.getExtensionValue(x509Certificate, aSN1ObjectIdentifier), this.helper);
                    if (!setDownloadCRLs.isEmpty()) {
                        try {
                            builder.addCRLStore(new LocalCRLStore(new CollectionStore(setDownloadCRLs)));
                            PKIXExtendedParameters pKIXExtendedParametersBuild2 = builder.build();
                            checkCRLs(pKIXExtendedParametersBuild2, this.currentDate, RevocationUtilities.getValidityDate(pKIXExtendedParametersBuild2, this.validationDate), x509Certificate, this.signingCert, this.workingPublicKey, new ArrayList(), this.helper);
                        } catch (AnnotatedException e11) {
                            throw new CertPathValidatorException(e11.getMessage(), e11.getCause());
                        }
                    } else {
                        if (!this.canSoftFail) {
                            throw e10;
                        }
                        X500Principal issuerX500Principal = x509Certificate.getIssuerX500Principal();
                        Long l = this.failures.get(issuerX500Principal);
                        if (l != null) {
                            long jCurrentTimeMillis = System.currentTimeMillis() - l.longValue();
                            long j10 = this.failHardMaxTime;
                            if (j10 != -1 && j10 < jCurrentTimeMillis) {
                                throw e10;
                            }
                            long j11 = this.failLogMaxTime;
                            Logger logger = LOG;
                            if (jCurrentTimeMillis < j11) {
                                level = Level.WARNING;
                                sb2 = new StringBuilder("soft failing for issuer: \"");
                            } else {
                                level = Level.SEVERE;
                                sb2 = new StringBuilder("soft failing for issuer: \"");
                            }
                            sb2.append(issuerX500Principal);
                            sb2.append("\"");
                            logger.log(level, sb2.toString());
                        } else {
                            this.failures.put(issuerX500Principal, Long.valueOf(System.currentTimeMillis()));
                        }
                    }
                } catch (AnnotatedException e12) {
                    throw new CertPathValidatorException(e12.getMessage(), e12.getCause());
                }
            }
            this.signingCert = x509Certificate;
            this.workingPublicKey = x509Certificate.getPublicKey();
            this.workingIssuerName = x509Certificate.getSubjectX500Principal();
        } catch (GeneralSecurityException e13) {
            throw new RuntimeException(z.m(e13, new StringBuilder("error setting up baseParams: ")));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkCRLs(PKIXExtendedParameters pKIXExtendedParameters, Date date, Date date2, X509Certificate x509Certificate, X509Certificate x509Certificate2, PublicKey publicKey, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException, CRLNotFoundException {
        AnnotatedException e7;
        boolean z;
        int i10;
        int i11;
        PKIXExtendedParameters pKIXExtendedParameters2;
        DistributionPoint[] distributionPointArr;
        try {
            CRLDistPoint cRLDistPoint = CRLDistPoint.getInstance(RevocationUtilities.getExtensionValue(x509Certificate, Extension.cRLDistributionPoints));
            CertStatus certStatus = new CertStatus();
            ReasonsMask reasonsMask = new ReasonsMask();
            if (cRLDistPoint != null) {
                try {
                    DistributionPoint[] distributionPoints = cRLDistPoint.getDistributionPoints();
                    if (distributionPoints != null) {
                        PKIXExtendedParameters.Builder builder = new PKIXExtendedParameters.Builder(pKIXExtendedParameters);
                        try {
                            Iterator<PKIXCRLStore> it = getAdditionalStoresFromCRLDistributionPoint(cRLDistPoint, pKIXExtendedParameters.getNamedCRLStoreMap()).iterator();
                            while (it.hasNext()) {
                                builder.addCRLStore(it.next());
                            }
                            PKIXExtendedParameters pKIXExtendedParametersBuild = builder.build();
                            Date validityDate = RevocationUtilities.getValidityDate(pKIXExtendedParametersBuild, date);
                            e7 = null;
                            int i12 = 0;
                            z = false;
                            for (int i13 = 11; i12 < distributionPoints.length && certStatus.getCertStatus() == i13 && !reasonsMask.isAllReasons(); i13 = 11) {
                                try {
                                    i11 = i12;
                                    pKIXExtendedParameters2 = pKIXExtendedParametersBuild;
                                    distributionPointArr = distributionPoints;
                                    try {
                                        RFC3280CertPathUtilities.checkCRL(distributionPoints[i12], pKIXExtendedParametersBuild, date, validityDate, x509Certificate, x509Certificate2, publicKey, certStatus, reasonsMask, list, jcaJceHelper);
                                        z = true;
                                    } catch (AnnotatedException e10) {
                                        e7 = e10;
                                    }
                                } catch (AnnotatedException e11) {
                                    e7 = e11;
                                    i11 = i12;
                                    pKIXExtendedParameters2 = pKIXExtendedParametersBuild;
                                    distributionPointArr = distributionPoints;
                                }
                                i12 = i11 + 1;
                                pKIXExtendedParametersBuild = pKIXExtendedParameters2;
                                distributionPoints = distributionPointArr;
                            }
                            i10 = 11;
                        } catch (AnnotatedException e12) {
                            throw new AnnotatedException("no additional CRL locations could be decoded from CRL distribution point extension", e12);
                        }
                    } else {
                        i10 = 11;
                        e7 = null;
                        z = false;
                    }
                } catch (Exception e13) {
                    throw new AnnotatedException("cannot read distribution points", e13);
                }
            }
            if (certStatus.getCertStatus() == i10 && !reasonsMask.isAllReasons()) {
                try {
                    RFC3280CertPathUtilities.checkCRL(new DistributionPoint(new DistributionPointName(0, new GeneralNames(new GeneralName(4, X500Name.getInstance(x509Certificate.getIssuerX500Principal().getEncoded())))), null, null), (PKIXExtendedParameters) pKIXExtendedParameters.clone(), date, date2, x509Certificate, x509Certificate2, publicKey, certStatus, reasonsMask, list, jcaJceHelper);
                    z = true;
                } catch (AnnotatedException e14) {
                    e7 = e14;
                }
            }
            if (!z) {
                if (!(e7 instanceof AnnotatedException)) {
                    throw new CRLNotFoundException("no valid CRL found");
                }
                throw new CRLNotFoundException("no valid CRL found", e7);
            }
            if (certStatus.getCertStatus() == i10) {
                if (!reasonsMask.isAllReasons() && certStatus.getCertStatus() == i10) {
                    certStatus.setCertStatus(12);
                }
                if (certStatus.getCertStatus() == 12) {
                    throw new AnnotatedException("certificate status could not be determined");
                }
                return;
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z");
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
            StringBuilder sbB = f.b("certificate [issuer=\"" + x509Certificate.getIssuerX500Principal() + "\",serialNumber=" + x509Certificate.getSerialNumber() + ",subject=\"" + x509Certificate.getSubjectX500Principal() + "\"] revoked after " + simpleDateFormat.format(certStatus.getRevocationDate()), ", reason: ");
            sbB.append(crlReasons[certStatus.getCertStatus()]);
            throw new AnnotatedException(sbB.toString());
        } catch (Exception e15) {
            throw new AnnotatedException("cannot read CRL distribution point extension", e15);
        }
    }

    @Override // java.security.cert.PKIXCertPathChecker
    public Object clone() {
        return this;
    }

    @Override // java.security.cert.PKIXCertPathChecker
    public Set<String> getSupportedExtensions() {
        return null;
    }

    @Override // java.security.cert.PKIXCertPathChecker, java.security.cert.CertPathChecker
    public void init(boolean z) {
        if (z) {
            throw new IllegalArgumentException("forward processing not supported");
        }
        this.currentDate = new Date();
        this.workingIssuerName = null;
    }

    @Override // java.security.cert.PKIXCertPathChecker, java.security.cert.CertPathChecker
    public boolean isForwardCheckingSupported() {
        return false;
    }

    private void addIssuers(final List<X500Principal> list, Store<CRL> store) {
        store.getMatches(new Selector<CRL>() { // from class: org.bouncycastle.pkix.jcajce.X509RevocationChecker.2
            @Override // org.bouncycastle.util.Selector
            public Object clone() {
                return this;
            }

            @Override // org.bouncycastle.util.Selector
            public boolean match(CRL crl) {
                if (!(crl instanceof X509CRL)) {
                    return false;
                }
                list.add(((X509CRL) crl).getIssuerX500Principal());
                return false;
            }
        });
    }
}
