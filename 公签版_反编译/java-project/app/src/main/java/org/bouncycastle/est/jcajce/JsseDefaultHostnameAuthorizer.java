package org.bouncycastle.est.jcajce;

import g.b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSession;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.x500.AttributeTypeAndValue;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x500.style.BCStyle;
import org.bouncycastle.est.ESTException;
import org.bouncycastle.util.IPAddress;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;
import org.slf4j.Marker;

/* loaded from: classes3.dex */
public class JsseDefaultHostnameAuthorizer implements JsseHostnameAuthorizer {
    private static Logger LOG = Logger.getLogger(JsseDefaultHostnameAuthorizer.class.getName());
    private final Set<String> knownSuffixes;

    public JsseDefaultHostnameAuthorizer(Set<String> set) {
        this.knownSuffixes = set;
    }

    public static boolean isValidNameMatch(String str, String str2, Set<String> set) throws IOException {
        if (!str2.contains(Marker.ANY_MARKER)) {
            return str.equalsIgnoreCase(str2);
        }
        int iIndexOf = str2.indexOf(42);
        if (iIndexOf != str2.lastIndexOf(Marker.ANY_MARKER) || str2.contains("..") || str2.charAt(str2.length() - 1) == '*') {
            return false;
        }
        int iIndexOf2 = str2.indexOf(46, iIndexOf);
        if (set != null && set.contains(Strings.toLowerCase(str2.substring(iIndexOf2)))) {
            throw new IOException(b.A("Wildcard `", str2, "` matches known public suffix."));
        }
        String lowerCase = Strings.toLowerCase(str2.substring(iIndexOf + 1));
        String lowerCase2 = Strings.toLowerCase(str);
        if (lowerCase2.equals(lowerCase) || lowerCase.length() > lowerCase2.length()) {
            return false;
        }
        if (iIndexOf > 0) {
            return lowerCase2.startsWith(str2.substring(0, iIndexOf)) && lowerCase2.endsWith(lowerCase) && lowerCase2.substring(iIndexOf, lowerCase2.length() - lowerCase.length()).indexOf(46) < 0;
        }
        if (lowerCase2.substring(0, lowerCase2.length() - lowerCase.length()).indexOf(46) > 0) {
            return false;
        }
        return lowerCase2.endsWith(lowerCase);
    }

    @Override // org.bouncycastle.est.jcajce.JsseHostnameAuthorizer
    public boolean verified(String str, SSLSession sSLSession) throws ESTException {
        try {
            return verify(str, (X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(sSLSession.getPeerCertificates()[0].getEncoded())));
        } catch (Exception e7) {
            if (e7 instanceof ESTException) {
                throw ((ESTException) e7);
            }
            throw new ESTException(e7.getMessage(), e7);
        }
    }

    public boolean verify(String str, X509Certificate x509Certificate) throws CertificateParsingException, ESTException, UnknownHostException {
        boolean z;
        X500Principal subjectX500Principal;
        if (str == null) {
            throw new NullPointerException("'name' cannot be null");
        }
        boolean zIsValidIPv4 = IPAddress.isValidIPv4(str);
        boolean z4 = !zIsValidIPv4 && IPAddress.isValidIPv6(str);
        boolean z10 = zIsValidIPv4 || z4;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames != null) {
                InetAddress byName = null;
                z = false;
                for (List<?> list : subjectAlternativeNames) {
                    int iIntValue = ((Integer) list.get(0)).intValue();
                    if (iIntValue == 2) {
                        if (!z10 && isValidNameMatch(str, (String) list.get(1), this.knownSuffixes)) {
                            return true;
                        }
                        z = true;
                    } else if (iIntValue != 7) {
                        Logger logger = LOG;
                        Level level = Level.INFO;
                        if (logger.isLoggable(level)) {
                            String hexString = list.get(1) instanceof byte[] ? Hex.toHexString((byte[]) list.get(1)) : list.get(1).toString();
                            LOG.log(level, "ignoring type " + iIntValue + " value = " + hexString);
                        }
                    } else if (z10) {
                        String str2 = (String) list.get(1);
                        if (str.equalsIgnoreCase(str2)) {
                            return true;
                        }
                        if (z4 && IPAddress.isValidIPv6(str2)) {
                            if (byName == null) {
                                try {
                                    byName = InetAddress.getByName(str);
                                } catch (UnknownHostException unused) {
                                    continue;
                                }
                            }
                            if (byName.equals(InetAddress.getByName(str2))) {
                                return true;
                            }
                        }
                    } else {
                        continue;
                    }
                }
            } else {
                z = false;
            }
            if (z10 || z || (subjectX500Principal = x509Certificate.getSubjectX500Principal()) == null) {
                return false;
            }
            RDN[] rDNs = X500Name.getInstance(subjectX500Principal.getEncoded()).getRDNs();
            for (int length = rDNs.length - 1; length >= 0; length--) {
                AttributeTypeAndValue[] typesAndValues = rDNs[length].getTypesAndValues();
                for (int i10 = 0; i10 != typesAndValues.length; i10++) {
                    AttributeTypeAndValue attributeTypeAndValue = typesAndValues[i10];
                    if (BCStyle.CN.equals((ASN1Primitive) attributeTypeAndValue.getType())) {
                        ASN1Encodable aSN1Primitive = attributeTypeAndValue.getValue().toASN1Primitive();
                        return (aSN1Primitive instanceof ASN1String) && isValidNameMatch(str, ((ASN1String) aSN1Primitive).getString(), this.knownSuffixes);
                    }
                }
            }
            return false;
        } catch (Exception e7) {
            throw new ESTException(e7.getMessage(), e7);
        }
    }
}
