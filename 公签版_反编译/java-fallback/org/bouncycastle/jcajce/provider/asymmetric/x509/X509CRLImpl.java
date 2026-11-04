package org.bouncycastle.jcajce.provider.asymmetric.x509;

import android.support.v4.media.session.a;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CRLException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1BitString;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.util.ASN1Dump;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.CRLNumber;
import org.bouncycastle.asn1.x509.CertificateList;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.Extensions;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.TBSCertList;
import org.bouncycastle.asn1.x509.Time;
import org.bouncycastle.jcajce.CompositePublicKey;
import org.bouncycastle.jcajce.io.OutputStreamFactory;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* loaded from: classes3.dex */
abstract class X509CRLImpl extends X509CRL {
    protected JcaJceHelper bcHelper;

    /* renamed from: c, reason: collision with root package name */
    protected CertificateList f12119c;
    protected boolean isIndirect;
    protected String sigAlgName;
    protected byte[] sigAlgParams;

    public X509CRLImpl(JcaJceHelper r12, CertificateList r22, String r32, byte[] r4, boolean r5) {
        this.bcHelper = r12;
        this.f12119c = r22;
        this.sigAlgName = r32;
        this.sigAlgParams = r4;
        this.isIndirect = r5;
    }

    private void checkSignature(PublicKey r32, Signature r4, ASN1Encodable r5, byte[] r62) {
        if (X509SignatureUtil.areEquivalentAlgorithms(this.f12119c.getSignatureAlgorithm(), this.f12119c.getTBSCertList().getSignature()) == false) goto L15;
        X509SignatureUtil.setSignatureParameters(r4, r5);
        r4.initVerify(r32);
        BufferedOutputStream r33 = new BufferedOutputStream(OutputStreamFactory.createStream(r4), 512);     // Catch: IOException -> L11
        this.f12119c.getTBSCertList().encodeTo(r33, ASN1Encoding.DER);     // Catch: IOException -> L11
        r33.close();     // Catch: IOException -> L11
        if (r4.verify(r62) == false) goto L10;
        return;
    L10:
        throw new SignatureException("CRL does not verify with supplied public key.");
    L11:
        e = move-exception;
        throw new CRLException(e.toString());
    L15:
        throw new CRLException("Signature algorithm on CertificateList does not match TbsCertList.");
    }

    private void doVerify(PublicKey r12, SignatureCreator r13) {
        if (this.f12119c.getSignatureAlgorithm().equals(this.f12119c.getTBSCertList().getSignature()) == false) goto L52;
        int r4 = 0;
        if ((r12 instanceof CompositePublicKey) == false) goto L26;
        if (X509SignatureUtil.isCompositeAlgorithm(this.f12119c.getSignatureAlgorithm()) == false) goto L26;
        List<PublicKey> r122 = ((CompositePublicKey) r12).getPublicKeys();
        ASN1Sequence r02 = ASN1Sequence.getInstance(this.f12119c.getSignatureAlgorithm().getParameters());
        ASN1Sequence r5 = ASN1Sequence.getInstance(this.f12119c.getSignature().getOctets());
        boolean r62 = false;
    L10:
        if (r4 == r122.size()) goto L21;
        if (r122.get(r4) == null) goto L19;
        AlgorithmIdentifier r72 = AlgorithmIdentifier.getInstance(r02.getObjectAt(r4));
        checkSignature(r122.get(r4), r13.createSignature(X509SignatureUtil.getSignatureName(r72)), r72.getParameters(), ASN1BitString.getInstance(r5.getObjectAt(r4)).getOctets());     // Catch: SignatureException -> L17
        e = null;
        r62 = true;
    L18:
        if (e == null) goto L19;
        throw e;
    L17:
        e = e;
    L19:
        r4 = r4 + 1;
        goto L10
    L21:
        if (r62 == false) goto L24;
        return;
    L24:
        throw new InvalidKeyException("no matching key found");
    L26:
        if (X509SignatureUtil.isCompositeAlgorithm(this.f12119c.getSignatureAlgorithm()) == false) goto L43;
        ASN1Sequence r03 = ASN1Sequence.getInstance(this.f12119c.getSignatureAlgorithm().getParameters());
        ASN1Sequence r52 = ASN1Sequence.getInstance(this.f12119c.getSignature().getOctets());
        boolean r63 = false;
    L29:
        if (r4 == r52.size()) goto L39;
        AlgorithmIdentifier r73 = AlgorithmIdentifier.getInstance(r03.getObjectAt(r4));
        checkSignature(r12, r13.createSignature(X509SignatureUtil.getSignatureName(r73)), r73.getParameters(), ASN1BitString.getInstance(r52.getObjectAt(r4)).getOctets());     // Catch: SignatureException -> L33 Throwable -> L35
        e = null;
        r63 = true;
    L36:
        if (e != null) goto L38;
        r4 = r4 + 1;
        goto L29
    L38:
        throw e;
    L35:
        e = null;
    L33:
        e = e;
        goto L36
    L39:
        if (r63 == false) goto L42;
        return;
    L42:
        throw new InvalidKeyException("no matching key found");
    L43:
        Signature r132 = r13.createSignature(getSigAlgName());
        byte[] r04 = this.sigAlgParams;
        if (r04 != null) goto L56;
        checkSignature(r12, r132, null, getSignature());
        return;
    L56:
        checkSignature(r12, r132, ASN1Primitive.fromByteArray(r04), getSignature());     // Catch: IOException -> L48
        return;
    L48:
        e = move-exception;
        throw new SignatureException(a.n(e, new StringBuilder("cannot decode signature parameters: ")));
    L52:
        throw new CRLException("Signature algorithm on CertificateList does not match TBSCertList.");
    }

    private Set getExtensionOIDs(boolean r62) {
        if (getVersion() != 2) goto L13;
        Extensions r02 = this.f12119c.getExtensions();
        if (r02 == null) goto L20;
        HashSet r12 = new HashSet();
        Enumeration r22 = r02.oids();
    L8:
        if (r22.hasMoreElements() == false) goto L12;
        ASN1ObjectIdentifier r32 = (ASN1ObjectIdentifier) r22.nextElement();
        if (r62 != r02.getExtension(r32).isCritical()) goto L8;
        r12.add(r32.getId());
        goto L8
    L12:
        return r12;
    L20:
        return null;
    L13:
        return null;
    }

    public static byte[] getExtensionOctets(CertificateList r02, ASN1ObjectIdentifier r12) {
        ASN1OctetString r03 = Extensions.getExtensionValue(r02.getExtensions(), r12);
        if (r03 != null) goto L6;
        return null;
    L6:
        return r03.getOctets();
    }

    private Set loadCRLEntries() {
        HashSet r02 = new HashSet();
        Enumeration r12 = this.f12119c.getRevokedCertificateEnumeration();
        X500Name r22 = null;
    L4:
        if (r12.hasMoreElements() == false) goto L12;
        TBSCertList.CRLEntry r32 = (TBSCertList.CRLEntry) r12.nextElement();
        r02.add(new X509CRLEntryObject(r32, this.isIndirect, r22));
        if (this.isIndirect == false) goto L4;
        if (r32.hasExtensions() == false) goto L4;
        Extension r33 = r32.getExtensions().getExtension(Extension.certificateIssuer);
        if (r33 == null) goto L4;
        r22 = X500Name.getInstance(GeneralNames.getInstance(r33.getParsedValue()).getNames()[0].getName());
        goto L4
    L12:
        return r02;
    }

    @Override // java.security.cert.X509Extension
    public Set getCriticalExtensionOIDs() {
        return getExtensionOIDs(true);
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String r22) {
        return X509SignatureUtil.getExtensionValue(this.f12119c.getExtensions(), r22);
    }

    @Override // java.security.cert.X509CRL
    public Principal getIssuerDN() {
        return new X509Principal(X500Name.getInstance(this.f12119c.getIssuer().toASN1Primitive()));
    }

    @Override // java.security.cert.X509CRL
    public X500Principal getIssuerX500Principal() {
        return new X500Principal(this.f12119c.getIssuer().getEncoded());
    L5:
        throw new IllegalStateException("can't encode issuer DN");
    }

    @Override // java.security.cert.X509CRL
    public Date getNextUpdate() {
        Time r02 = this.f12119c.getNextUpdate();
        if (r02 != null) goto L6;
        return null;
    L6:
        return r02.getDate();
    }

    @Override // java.security.cert.X509Extension
    public Set getNonCriticalExtensionOIDs() {
        return getExtensionOIDs(false);
    }

    @Override // java.security.cert.X509CRL
    public X509CRLEntry getRevokedCertificate(BigInteger r62) {
        Enumeration r02 = this.f12119c.getRevokedCertificateEnumeration();
        X500Name r22 = null;
    L4:
        if (r02.hasMoreElements() == false) goto L16;
        TBSCertList.CRLEntry r32 = (TBSCertList.CRLEntry) r02.nextElement();
        if (r32.getUserCertificate().hasValue(r62) == true) goto L8;
        if (this.isIndirect == false) goto L4;
        if (r32.hasExtensions() == false) goto L4;
        Extension r33 = r32.getExtensions().getExtension(Extension.certificateIssuer);
        if (r33 == null) goto L4;
        r22 = X500Name.getInstance(GeneralNames.getInstance(r33.getParsedValue()).getNames()[0].getName());
        goto L4
    L8:
        return new X509CRLEntryObject(r32, this.isIndirect, r22);
    L16:
        return null;
    }

    @Override // java.security.cert.X509CRL
    public Set getRevokedCertificates() {
        Set r02 = loadCRLEntries();
        if (r02.isEmpty() == false) goto L5;
        return null;
    L5:
        return Collections.unmodifiableSet(r02);
    }

    @Override // java.security.cert.X509CRL
    public String getSigAlgName() {
        return this.sigAlgName;
    }

    @Override // java.security.cert.X509CRL
    public String getSigAlgOID() {
        return this.f12119c.getSignatureAlgorithm().getAlgorithm().getId();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getSigAlgParams() {
        return Arrays.clone(this.sigAlgParams);
    }

    @Override // java.security.cert.X509CRL
    public byte[] getSignature() {
        return this.f12119c.getSignature().getOctets();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getTBSCertList() {
        return this.f12119c.getTBSCertList().getEncoded(ASN1Encoding.DER);
    L4:
        e = move-exception;
        throw new CRLException(e.toString());
    }

    @Override // java.security.cert.X509CRL
    public Date getThisUpdate() {
        return this.f12119c.getThisUpdate().getDate();
    }

    @Override // java.security.cert.X509CRL
    public int getVersion() {
        return this.f12119c.getVersionNumber();
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        if (getVersion() != 2) goto L18;
        Extensions r02 = this.f12119c.getExtensions();
        if (r02 == null) goto L28;
        Enumeration r12 = r02.oids();
    L8:
        if (r12.hasMoreElements() == false) goto L29;
        ASN1ObjectIdentifier r22 = (ASN1ObjectIdentifier) r12.nextElement();
        if (Extension.issuingDistributionPoint.equals(r22) == true) goto L8;
        if (Extension.deltaCRLIndicator.equals(r22) == true) goto L8;
        if (r02.getExtension(r22).isCritical() == false) goto L8;
        return true;
    L29:
        return false;
    L28:
        return false;
    L18:
        return false;
    }

    @Override // java.security.cert.CRL
    public boolean isRevoked(Certificate r92) {
        if (r92.getType().equals("X.509") == false) goto L32;
        Enumeration r02 = this.f12119c.getRevokedCertificateEnumeration();
        X500Name r12 = this.f12119c.getIssuer();
        if (r02.hasMoreElements() == false) goto L30;
        X509Certificate r22 = (X509Certificate) r92;
        BigInteger r4 = r22.getSerialNumber();
    L8:
        if (r02.hasMoreElements() == false) goto L30;
        TBSCertList.CRLEntry r5 = TBSCertList.CRLEntry.getInstance(r02.nextElement());
        if (this.isIndirect == false) goto L17;
        if (r5.hasExtensions() == false) goto L17;
        Extension r62 = r5.getExtensions().getExtension(Extension.certificateIssuer);
        if (r62 == null) goto L17;
        r12 = X500Name.getInstance(GeneralNames.getInstance(r62.getParsedValue()).getNames()[0].getName());
    L17:
        if (r5.getUserCertificate().hasValue(r4) == false) goto L8;
        if ((r92 instanceof X509Certificate) == false) goto L34;
        X500Name r93 = X500Name.getInstance(r22.getIssuerX500Principal().getEncoded());
    L23:
        if (r12.equals(r93) == true) goto L25;
        return false;
    L25:
        return true;
    L34:
        r93 = org.bouncycastle.asn1.x509.Certificate.getInstance(r92.getEncoded()).getIssuer();     // Catch: CertificateEncodingException -> L27
    L27:
        e = move-exception;
        throw new IllegalArgumentException("Cannot process certificate: " + e.getMessage());
    L30:
        return false;
    L32:
        throw new IllegalArgumentException("X.509 CRL used with non X.509 Cert");
    }

    @Override // java.security.cert.CRL
    public String toString() {
        StringBuffer r12 = new StringBuffer();
        String r22 = Strings.lineSeparator();
        r12.append("              Version: ");
        r12.append(getVersion());
        r12.append(r22);
        r12.append("             IssuerDN: ");
        r12.append(getIssuerDN());
        r12.append(r22);
        r12.append("          This update: ");
        r12.append(getThisUpdate());
        r12.append(r22);
        r12.append("          Next update: ");
        r12.append(getNextUpdate());
        r12.append(r22);
        r12.append("  Signature Algorithm: ");
        r12.append(getSigAlgName());
        r12.append(r22);
        X509SignatureUtil.prettyPrintSignature(getSignature(), r12, r22);
        Extensions r32 = this.f12119c.getExtensions();
        if (r32 == null) goto L35;
        Enumeration r4 = r32.oids();
        if (r4.hasMoreElements() == false) goto L10;
        String r5 = "           Extensions: ";
    L7:
        r12.append(r5);
        r12.append(r22);
    L10:
        if (r4.hasMoreElements() == false) goto L35;
        ASN1ObjectIdentifier r52 = (ASN1ObjectIdentifier) r4.nextElement();
        Extension r62 = r32.getExtension(r52);
        if (r62.getExtnValue() != null) goto L13;
        r12.append(r22);
        goto L10
    L13:
        ASN1InputStream r82 = new ASN1InputStream(r62.getExtnValue().getOctets());
        r12.append("                       critical(");
        r12.append(r62.isCritical());
        r12.append(") ");
        if (r52.equals(Extension.cRLNumber) == false) goto L20;
        Object r63 = new CRLNumber(ASN1Integer.getInstance(r82.readObject()).getPositiveValue());     // Catch: Exception -> L34
    L17:
        r12.append(r63);     // Catch: Exception -> L34
    L18:
        r12.append(r22);     // Catch: Exception -> L34
        goto L10
    L20:
        if (r52.equals(Extension.deltaCRLIndicator) == false) goto L24;
        String r64 = "Base CRL: " + new CRLNumber(ASN1Integer.getInstance(r82.readObject()).getPositiveValue());     // Catch: Exception -> L34
    L22:
        r12.append(r64);     // Catch: Exception -> L34
        goto L18
    L24:
        if (r52.equals(Extension.issuingDistributionPoint) == false) goto L27;
        r63 = IssuingDistributionPoint.getInstance(r82.readObject());     // Catch: Exception -> L34
        goto L17
    L27:
        if (r52.equals(Extension.cRLDistributionPoints) == false) goto L30;
        r63 = CRLDistPoint.getInstance(r82.readObject());     // Catch: Exception -> L34
        goto L17
    L30:
        if (r52.equals(Extension.freshestCRL) == false) goto L32;
        r63 = CRLDistPoint.getInstance(r82.readObject());     // Catch: Exception -> L34
        goto L17
    L32:
        r12.append(r52.getId());     // Catch: Exception -> L34
        r12.append(" value = ");     // Catch: Exception -> L34
        r64 = ASN1Dump.dumpAsString(r82.readObject());     // Catch: Exception -> L34
    L34:
        r12.append(r52.getId());
        r12.append(" value = ");
        r5 = "*****";
        goto L7
    L46:
        r12.append(r52.getId());
        r12.append(" value = ");
        r5 = "*****";
    L35:
        Set r02 = getRevokedCertificates();
        if (r02 == null) goto L42;
        Iterator r03 = r02.iterator();
    L39:
        if (r03.hasNext() == false) goto L42;
        r12.append(r03.next());
        r12.append(r22);
    L42:
        return r12.toString();
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey r22) {
        doVerify(r22, new AnonymousClass1(this));
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey r22, final String r32) {
        doVerify(r22, new AnonymousClass2(this, r32));
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey r32, final Provider r4) {
        doVerify(r32, new AnonymousClass3(this, r4));     // Catch: NoSuchProviderException -> L4
        return;
    L4:
        e = move-exception;
        throw new NoSuchAlgorithmException("provider issue: " + e.getMessage());
    }
}