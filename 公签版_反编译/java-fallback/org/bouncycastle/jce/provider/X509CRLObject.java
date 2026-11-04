package org.bouncycastle.jce.provider;

import java.math.BigInteger;
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
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import l2.z;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.util.ASN1Dump;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.CRLNumber;
import org.bouncycastle.asn1.x509.CertificateList;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.Extensions;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.TBSCertList;
import org.bouncycastle.asn1.x509.Time;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes3.dex */
public class X509CRLObject extends X509CRL {

    /* renamed from: c, reason: collision with root package name */
    private CertificateList f12138c;
    private int hashCodeValue;
    private boolean isHashCodeSet;
    private boolean isIndirect;
    private String sigAlgName;
    private byte[] sigAlgParams;

    public X509CRLObject(CertificateList r32) {
        this.isHashCodeSet = false;
        this.f12138c = r32;
        this.sigAlgName = X509SignatureUtil.getSignatureName(r32.getSignatureAlgorithm());     // Catch: Exception -> L6
        if (r32.getSignatureAlgorithm().getParameters() == null) goto L8;
        this.sigAlgParams = r32.getSignatureAlgorithm().getParameters().toASN1Primitive().getEncoded(ASN1Encoding.DER);     // Catch: Exception -> L6
    L9:
        this.isIndirect = isIndirectCRL(this);     // Catch: Exception -> L6
        return;
    L8:
        this.sigAlgParams = null;     // Catch: Exception -> L6
    L6:
        e = move-exception;
        throw new CRLException(z.e(e, "CRL contents invalid: "));
    }

    private void doVerify(PublicKey r32, Signature r4) {
        if (this.f12138c.getSignatureAlgorithm().equals(this.f12138c.getTBSCertList().getSignature()) == false) goto L10;
        r4.initVerify(r32);
        r4.update(getTBSCertList());
        if (r4.verify(getSignature()) == false) goto L8;
        return;
    L8:
        throw new SignatureException("CRL does not verify with supplied public key.");
    L10:
        throw new CRLException("Signature algorithm on CertificateList does not match TBSCertList.");
    }

    private Set getExtensionOIDs(boolean r62) {
        if (getVersion() != 2) goto L13;
        Extensions r02 = this.f12138c.getExtensions();
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

    public static boolean isIndirectCRL(X509CRL r22) {
        byte[] r23 = r22.getExtensionValue(Extension.issuingDistributionPoint.getId());     // Catch: Exception -> L7
        if (r23 == null) goto L9;
        if (IssuingDistributionPoint.getInstance(ASN1OctetString.getInstance(r23).getOctets()).isIndirectCRL() == false) goto L9;
        return true;
    L9:
        return false;
    L7:
        e = move-exception;
        throw new ExtCRLException("Exception reading IssuingDistributionPoint", e);
    }

    private Set loadCRLEntries() {
        HashSet r02 = new HashSet();
        Enumeration r12 = this.f12138c.getRevokedCertificateEnumeration();
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

    @Override // java.security.cert.X509CRL
    public boolean equals(Object r4) {
        if (this != r4) goto L6;
        return true;
    L6:
        if ((r4 instanceof X509CRL) == true) goto L9;
        return false;
    L9:
        if ((r4 instanceof X509CRLObject) == false) goto L20;
        X509CRLObject r42 = (X509CRLObject) r4;
        if (this.isHashCodeSet == false) goto L18;
        if (r42.isHashCodeSet == false) goto L18;
        if (r42.hashCodeValue == this.hashCodeValue) goto L18;
        return false;
    L18:
        return this.f12138c.equals(r42.f12138c);
    L20:
        return super.equals(r4);
    }

    @Override // java.security.cert.X509Extension
    public Set getCriticalExtensionOIDs() {
        return getExtensionOIDs(true);
    }

    @Override // java.security.cert.X509CRL
    public byte[] getEncoded() {
        return this.f12138c.getEncoded(ASN1Encoding.DER);
    L4:
        e = move-exception;
        throw new CRLException(e.toString());
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String r22) {
        return X509SignatureUtil.getExtensionValue(this.f12138c.getExtensions(), r22);
    }

    @Override // java.security.cert.X509CRL
    public Principal getIssuerDN() {
        return new X509Principal(X500Name.getInstance(this.f12138c.getIssuer().toASN1Primitive()));
    }

    @Override // java.security.cert.X509CRL
    public X500Principal getIssuerX500Principal() {
        return new X500Principal(this.f12138c.getIssuer().getEncoded());
    L5:
        throw new IllegalStateException("can't encode issuer DN");
    }

    @Override // java.security.cert.X509CRL
    public Date getNextUpdate() {
        Time r02 = this.f12138c.getNextUpdate();
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
        Enumeration r02 = this.f12138c.getRevokedCertificateEnumeration();
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
        return this.f12138c.getSignatureAlgorithm().getAlgorithm().getId();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getSigAlgParams() {
        return Arrays.clone(this.sigAlgParams);
    }

    @Override // java.security.cert.X509CRL
    public byte[] getSignature() {
        return this.f12138c.getSignature().getOctets();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getTBSCertList() {
        return this.f12138c.getTBSCertList().getEncoded(ASN1Encoding.DER);
    L4:
        e = move-exception;
        throw new CRLException(e.toString());
    }

    @Override // java.security.cert.X509CRL
    public Date getThisUpdate() {
        return this.f12138c.getThisUpdate().getDate();
    }

    @Override // java.security.cert.X509CRL
    public int getVersion() {
        return this.f12138c.getVersionNumber();
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        if (getVersion() != 2) goto L18;
        Extensions r02 = this.f12138c.getExtensions();
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

    @Override // java.security.cert.X509CRL
    public int hashCode() {
        if (this.isHashCodeSet == true) goto L6;
        this.isHashCodeSet = true;
        this.hashCodeValue = super.hashCode();
    L6:
        return this.hashCodeValue;
    }

    @Override // java.security.cert.CRL
    public boolean isRevoked(Certificate r92) {
        if (r92.getType().equals("X.509") == false) goto L31;
        Enumeration r02 = this.f12138c.getRevokedCertificateEnumeration();
        X500Name r12 = this.f12138c.getIssuer();
        if (r02 == null) goto L29;
        X509Certificate r32 = (X509Certificate) r92;
        BigInteger r4 = r32.getSerialNumber();
    L8:
        if (r02.hasMoreElements() == false) goto L29;
        TBSCertList.CRLEntry r5 = TBSCertList.CRLEntry.getInstance(r02.nextElement());
        if (this.isIndirect == false) goto L17;
        if (r5.hasExtensions() == false) goto L17;
        Extension r62 = r5.getExtensions().getExtension(Extension.certificateIssuer);
        if (r62 == null) goto L17;
        r12 = X500Name.getInstance(GeneralNames.getInstance(r62.getParsedValue()).getNames()[0].getName());
    L17:
        if (r5.getUserCertificate().hasValue(r4) == false) goto L8;
        if ((r92 instanceof X509Certificate) == false) goto L33;
        X500Name r93 = X500Name.getInstance(r32.getIssuerX500Principal().getEncoded());
    L23:
        if (r12.equals(r93) == true) goto L25;
        return false;
    L25:
        return true;
    L33:
        r93 = org.bouncycastle.asn1.x509.Certificate.getInstance(r92.getEncoded()).getIssuer();     // Catch: CertificateEncodingException -> L27
    L28:
        throw new RuntimeException("Cannot process certificate");
    L29:
        return false;
    L31:
        throw new RuntimeException("X.509 CRL used with non X.509 Cert");
    }

    @Override // java.security.cert.CRL
    public String toString() {
        StringBuffer r02 = new StringBuffer("              Version: ");
        String r12 = Strings.lineSeparator();
        r02.append(getVersion());
        r02.append(r12);
        r02.append("             IssuerDN: ");
        r02.append(getIssuerDN());
        r02.append(r12);
        r02.append("          This update: ");
        r02.append(getThisUpdate());
        r02.append(r12);
        r02.append("          Next update: ");
        r02.append(getNextUpdate());
        r02.append(r12);
        r02.append("  Signature Algorithm: ");
        r02.append(getSigAlgName());
        r02.append(r12);
        byte[] r22 = getSignature();
        r02.append("            Signature: ");
        r02.append(new String(Hex.encode(r22, 0, 20)));
        r02.append(r12);
        int r32 = 20;
    L4:
        if (r32 >= r22.length) goto L11;
        int r4 = r22.length - 20;
        r02.append("                       ");
        if (r32 >= r4) goto L9;
        String r42 = new String(Hex.encode(r22, r32, 20));
    L8:
        r02.append(r42);
        r02.append(r12);
        r32 = r32 + 20;
        goto L4
    L9:
        r42 = new String(Hex.encode(r22, r32, r22.length - r32));
        goto L8
    L11:
        Extensions r23 = this.f12138c.getExtensions();
        if (r23 == null) goto L44;
        Enumeration r33 = r23.oids();
        if (r33.hasMoreElements() == false) goto L19;
        String r43 = "           Extensions: ";
    L16:
        r02.append(r43);
        r02.append(r12);
    L19:
        if (r33.hasMoreElements() == false) goto L44;
        ASN1ObjectIdentifier r44 = (ASN1ObjectIdentifier) r33.nextElement();
        Extension r5 = r23.getExtension(r44);
        if (r5.getExtnValue() != null) goto L22;
        r02.append(r12);
        goto L19
    L22:
        ASN1InputStream r72 = new ASN1InputStream(r5.getExtnValue().getOctets());
        r02.append("                       critical(");
        r02.append(r5.isCritical());
        r02.append(") ");
        if (r44.equals(Extension.cRLNumber) == false) goto L29;
        Object r52 = new CRLNumber(ASN1Integer.getInstance(r72.readObject()).getPositiveValue());     // Catch: Exception -> L43
    L26:
        r02.append(r52);     // Catch: Exception -> L43
    L27:
        r02.append(r12);     // Catch: Exception -> L43
        goto L19
    L29:
        if (r44.equals(Extension.deltaCRLIndicator) == false) goto L33;
        String r53 = "Base CRL: " + new CRLNumber(ASN1Integer.getInstance(r72.readObject()).getPositiveValue());     // Catch: Exception -> L43
    L31:
        r02.append(r53);     // Catch: Exception -> L43
        goto L27
    L33:
        if (r44.equals(Extension.issuingDistributionPoint) == false) goto L36;
        r52 = IssuingDistributionPoint.getInstance(r72.readObject());     // Catch: Exception -> L43
        goto L26
    L36:
        if (r44.equals(Extension.cRLDistributionPoints) == false) goto L39;
        r52 = CRLDistPoint.getInstance(r72.readObject());     // Catch: Exception -> L43
        goto L26
    L39:
        if (r44.equals(Extension.freshestCRL) == false) goto L41;
        r52 = CRLDistPoint.getInstance(r72.readObject());     // Catch: Exception -> L43
        goto L26
    L41:
        r02.append(r44.getId());     // Catch: Exception -> L43
        r02.append(" value = ");     // Catch: Exception -> L43
        r53 = ASN1Dump.dumpAsString(r72.readObject());     // Catch: Exception -> L43
    L43:
        r02.append(r44.getId());
        r43 = " value = *****";
        goto L16
    L55:
        r02.append(r44.getId());
        r43 = " value = *****";
    L44:
        Set r24 = getRevokedCertificates();
        if (r24 == null) goto L51;
        Iterator r25 = r24.iterator();
    L48:
        if (r25.hasNext() == false) goto L51;
        r02.append(r25.next());
        r02.append(r12);
    L51:
        return r02.toString();
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey r32) {
        Signature r02 = Signature.getInstance(getSigAlgName(), BouncyCastleProvider.PROVIDER_NAME);     // Catch: Exception -> L4
    L5:
        doVerify(r32, r02);
        return;
    L4:
        r02 = Signature.getInstance(getSigAlgName());
        goto L5
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey r22, String r32) {
        if (r32 == null) goto L4;
        Signature r33 = Signature.getInstance(getSigAlgName(), r32);
    L5:
        doVerify(r22, r33);
        return;
    L4:
        r33 = Signature.getInstance(getSigAlgName());
        goto L5
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey r22, Provider r32) {
        if (r32 == null) goto L4;
        Signature r33 = Signature.getInstance(getSigAlgName(), r32);
    L5:
        doVerify(r22, r33);
        return;
    L4:
        r33 = Signature.getInstance(getSigAlgName());
        goto L5
    }
}