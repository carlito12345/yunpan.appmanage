package h;

import java.security.cert.CertificateException;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class q {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f6252a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f6253b = new HashMap();

    static {
        a("x509.info.extensions.SubjectKeyIdentifier", r.f6255b, "SubjectKeyIdentifierExtension");
        a("x509.info.extensions.KeyUsage", r.f6256c, "KeyUsageExtension");
        a("x509.info.extensions.PrivateKeyUsage", r.f6257d, "PrivateKeyUsageExtension");
        a("x509.info.extensions.SubjectAlternativeName", r.f6260g, "SubjectAlternativeNameExtension");
        a("x509.info.extensions.IssuerAlternativeName", r.f6261h, "IssuerAlternativeNameExtension");
        a("x509.info.extensions.BasicConstraints", r.f6262i, "BasicConstraintsExtension");
        a("x509.info.extensions.CRLNumber", r.f6265m, "CRLNumberExtension");
        a("x509.info.extensions.CRLReasonCode", r.f6268p, "CRLReasonCodeExtension");
        a("x509.info.extensions.NameConstraints", r.f6263j, "NameConstraintsExtension");
        a("x509.info.extensions.PolicyMappings", r.f6259f, "PolicyMappingsExtension");
        a("x509.info.extensions.AuthorityKeyIdentifier", r.f6254a, "AuthorityKeyIdentifierExtension");
        a("x509.info.extensions.PolicyConstraints", r.f6264k, "PolicyConstraintsExtension");
        a("x509.info.extensions.NetscapeCertType", g.h.d(new int[]{2, 16, 840, 1, 113730, 1, 1}), "NetscapeCertTypeExtension");
        a("x509.info.extensions.CertificatePolicies", r.f6258e, "CertificatePoliciesExtension");
        a("x509.info.extensions.ExtendedKeyUsage", r.f6269q, "ExtendedKeyUsageExtension");
        a("x509.info.extensions.InhibitAnyPolicy", r.r, "InhibitAnyPolicyExtension");
        a("x509.info.extensions.CRLDistributionPoints", r.l, "CRLDistributionPointsExtension");
        a("x509.info.extensions.CertificateIssuer", r.f6270s, "CertificateIssuerExtension");
        a("x509.info.extensions.SubjectInfoAccess", r.f6272u, "SubjectInfoAccessExtension");
        a("x509.info.extensions.AuthorityInfoAccess", r.f6271t, "AuthorityInfoAccessExtension");
        a("x509.info.extensions.IssuingDistributionPoint", r.f6266n, "IssuingDistributionPointExtension");
        a("x509.info.extensions.DeltaCRLIndicator", r.f6267o, "DeltaCRLIndicatorExtension");
        a("x509.info.extensions.FreshestCRL", r.f6273v, "FreshestCRLExtension");
        a("x509.info.extensions.OCSPNoCheck", r.f6274w, "OCSPNoCheckExtension");
    }

    public static void a(String str, g.h hVar, String str2) {
        p pVar = new p(str, str2);
        f6252a.put(hVar, pVar);
        f6253b.put(str, pVar);
    }

    public static Class b(g.h hVar) throws ClassNotFoundException, CertificateException {
        p pVar = (p) f6252a.get(hVar);
        if (pVar == null) {
            return null;
        }
        try {
            Class<?> cls = pVar.f6251c;
            if (cls == null) {
                cls = Class.forName(pVar.f6250b);
                pVar.f6251c = cls;
            }
            return cls;
        } catch (ClassNotFoundException e7) {
            throw ((CertificateException) new CertificateException("Could not load class: " + e7).initCause(e7));
        }
    }
}
