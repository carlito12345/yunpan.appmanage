package h;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.io.IOException;
import java.math.BigInteger;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes.dex */
public final class x extends X509Certificate {

    /* renamed from: c, reason: collision with root package name */
    public final y f6303c;

    /* renamed from: f, reason: collision with root package name */
    public PublicKey f6306f;

    /* renamed from: g, reason: collision with root package name */
    public String f6307g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6308h;

    /* renamed from: a, reason: collision with root package name */
    public boolean f6301a = false;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f6302b = null;

    /* renamed from: d, reason: collision with root package name */
    public d f6304d = null;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f6305e = null;

    public x(y yVar) {
        this.f6303c = yVar;
    }

    public final Object a(String str) throws CertificateParsingException {
        String strSubstring;
        String strSubstring2;
        int iIndexOf = str.indexOf(46);
        if (iIndexOf == -1) {
            strSubstring = null;
        } else {
            String strSubstring3 = str.substring(0, iIndexOf);
            strSubstring = str.substring(iIndexOf + 1);
            str = strSubstring3;
        }
        if (!str.equalsIgnoreCase("x509")) {
            throw new CertificateParsingException(g.b.A("Invalid root of attribute name, expected [x509], received [", str, "]"));
        }
        int iIndexOf2 = strSubstring.indexOf(46);
        if (iIndexOf2 == -1) {
            strSubstring2 = null;
        } else {
            String strSubstring4 = strSubstring.substring(0, iIndexOf2);
            strSubstring2 = strSubstring.substring(iIndexOf2 + 1);
            strSubstring = strSubstring4;
        }
        if (strSubstring.equalsIgnoreCase("info")) {
            y yVar = this.f6303c;
            if (yVar == null) {
                return null;
            }
            if (strSubstring2 == null) {
                return yVar;
            }
            try {
                return yVar.c(strSubstring2);
            } catch (IOException e7) {
                throw new CertificateParsingException(e7.toString());
            } catch (CertificateException e10) {
                throw new CertificateParsingException(e10.toString());
            }
        }
        if (strSubstring.equalsIgnoreCase("algorithm")) {
            return this.f6304d;
        }
        if (strSubstring.equalsIgnoreCase("signature")) {
            byte[] bArr = this.f6305e;
            if (bArr != null) {
                return bArr.clone();
            }
            return null;
        }
        if (!strSubstring.equalsIgnoreCase("signed_cert")) {
            throw new CertificateParsingException("Attribute name not recognized or get() not allowed for the same: ".concat(strSubstring));
        }
        byte[] bArr2 = this.f6302b;
        if (bArr2 != null) {
            return bArr2.clone();
        }
        return null;
    }

    public final n b(g.h hVar) {
        g gVar;
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            gVar = (g) yVar.c("extensions");
        } catch (IOException | CertificateException unused) {
        }
        if (gVar == null) {
            return null;
        }
        for (n nVar : gVar.f6236a.values()) {
            if (nVar.f6246a.equals(hVar)) {
                return nVar;
            }
        }
        return null;
    }

    public final void c(PrivateKey privateKey) {
        try {
            if (this.f6301a) {
                throw new CertificateEncodingException("cannot over-write existing certificate");
            }
            Signature signature = Signature.getInstance("SHA512withRSA");
            signature.initSign(privateKey);
            this.f6304d = d.c(signature.getAlgorithm());
            g.f fVar = new g.f();
            g.f fVar2 = new g.f();
            this.f6303c.a(fVar2);
            byte[] byteArray = fVar2.toByteArray();
            this.f6304d.b(fVar2);
            signature.update(byteArray, 0, byteArray.length);
            byte[] bArrSign = signature.sign();
            this.f6305e = bArrSign;
            fVar2.write(3);
            fVar2.r(bArrSign.length + 1);
            fVar2.write(0);
            fVar2.write(bArrSign);
            fVar.J((byte) 48, fVar2);
            this.f6302b = fVar.toByteArray();
            this.f6301a = true;
        } catch (IOException e7) {
            throw new CertificateEncodingException(e7.toString());
        }
    }

    @Override // java.security.cert.X509Certificate
    public final void checkValidity() throws CertificateNotYetValidException, CertificateExpiredException {
        checkValidity(new Date());
    }

    @Override // java.security.cert.X509Certificate
    public final int getBasicConstraints() {
        try {
            p pVar = (p) q.f6252a.get(r.f6262i);
            String str = pVar == null ? null : pVar.f6249a;
            if (str == null || a(str) == null) {
                return -1;
            }
            throw new ClassCastException();
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override // java.security.cert.X509Extension
    public final Set getCriticalExtensionOIDs() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            g gVar = (g) yVar.c("extensions");
            if (gVar == null) {
                return null;
            }
            HashSet hashSet = new HashSet();
            Iterator it = gVar.f6236a.values().iterator();
            while (it.hasNext()) {
                ((n) it.next()).getClass();
            }
            return hashSet;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.cert.Certificate
    public final byte[] getEncoded() throws CertificateEncodingException {
        byte[] bArr = this.f6302b;
        if (bArr != null) {
            return (byte[]) bArr.clone();
        }
        throw new CertificateEncodingException("Null certificate to encode");
    }

    @Override // java.security.cert.X509Certificate
    public final synchronized List getExtendedKeyUsage() {
        if (b(r.f6269q) != null) {
            throw new ClassCastException();
        }
        return null;
    }

    @Override // java.security.cert.X509Extension
    public final byte[] getExtensionValue(String str) {
        try {
            g.h hVar = new g.h(str);
            p pVar = (p) q.f6252a.get(hVar);
            String str2 = pVar == null ? null : pVar.f6249a;
            g gVar = (g) this.f6303c.c("extensions");
            if (str2 != null) {
                try {
                    nVar = (n) a(str2);
                } catch (CertificateException unused) {
                }
            } else {
                if (gVar == null) {
                    return null;
                }
                for (n nVar : gVar.f6236a.values()) {
                    if (nVar.f6246a.equals(hVar)) {
                        break;
                    }
                }
                nVar = null;
            }
            if (nVar == null) {
                if (gVar != null) {
                    nVar = (n) Collections.emptyMap().get(str);
                }
                if (nVar == null) {
                    return null;
                }
            }
            byte[] bArr = nVar.f6247b;
            if (bArr == null) {
                return null;
            }
            g.f fVar = new g.f();
            fVar.K((byte) 4, bArr);
            return fVar.toByteArray();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public final synchronized Collection getIssuerAlternativeNames() {
        if (b(r.f6261h) != null) {
            throw new ClassCastException();
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public final Principal getIssuerDN() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            return (Principal) yVar.c("issuer.dname");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public final boolean[] getIssuerUniqueID() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            g.b.t(yVar.c("issuerID.id"));
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public final X500Principal getIssuerX500Principal() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            return (X500Principal) yVar.c("issuer.x500principal");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public final boolean[] getKeyUsage() {
        try {
            p pVar = (p) q.f6252a.get(r.f6256c);
            String str = pVar == null ? null : pVar.f6249a;
            if (str == null || a(str) == null) {
                return null;
            }
            throw new ClassCastException();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Extension
    public final Set getNonCriticalExtensionOIDs() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            g gVar = (g) yVar.c("extensions");
            if (gVar == null) {
                return null;
            }
            HashSet hashSet = new HashSet();
            for (n nVar : gVar.f6236a.values()) {
                nVar.getClass();
                hashSet.add(nVar.f6246a.toString());
            }
            hashSet.addAll(Collections.emptyMap().keySet());
            return hashSet;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public final Date getNotAfter() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            return (Date) yVar.c("validity.notAfter");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public final Date getNotBefore() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            return (Date) yVar.c("validity.notBefore");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.cert.Certificate
    public final PublicKey getPublicKey() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            return (PublicKey) yVar.c("key.value");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public final BigInteger getSerialNumber() {
        u uVar;
        y yVar = this.f6303c;
        if (yVar == null) {
            uVar = null;
        } else {
            try {
                uVar = (u) yVar.c("serialNumber.number");
            } catch (Exception unused) {
            }
        }
        if (uVar != null) {
            return uVar.f6279a;
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public final String getSigAlgName() {
        d dVar = this.f6304d;
        if (dVar == null) {
            return null;
        }
        return dVar.getName();
    }

    @Override // java.security.cert.X509Certificate
    public final String getSigAlgOID() {
        d dVar = this.f6304d;
        if (dVar == null) {
            return null;
        }
        return dVar.f6232a.toString();
    }

    @Override // java.security.cert.X509Certificate
    public final byte[] getSigAlgParams() {
        d dVar = this.f6304d;
        if (dVar == null) {
            return null;
        }
        try {
            g.g gVar = dVar.f6234c;
            if (gVar == null) {
                return null;
            }
            return gVar.i();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public final byte[] getSignature() {
        byte[] bArr = this.f6305e;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    @Override // java.security.cert.X509Certificate
    public final synchronized Collection getSubjectAlternativeNames() {
        if (b(r.f6260g) != null) {
            throw new ClassCastException();
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public final Principal getSubjectDN() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            return (Principal) yVar.c("subject.dname");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public final boolean[] getSubjectUniqueID() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            g.b.t(yVar.c("subjectID.id"));
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public final X500Principal getSubjectX500Principal() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return null;
        }
        try {
            return (X500Principal) yVar.c("subject.x500principal");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public final byte[] getTBSCertificate() throws CertificateEncodingException {
        y yVar = this.f6303c;
        if (yVar != null) {
            return yVar.d();
        }
        throw new CertificateEncodingException("Uninitialized certificate");
    }

    @Override // java.security.cert.X509Certificate
    public final int getVersion() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return -1;
        }
        try {
            return ((Integer) yVar.c("version.number")).intValue() + 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override // java.security.cert.X509Extension
    public final boolean hasUnsupportedCriticalExtension() {
        y yVar = this.f6303c;
        if (yVar == null) {
            return false;
        }
        try {
        } catch (Exception unused) {
        }
        return false;
    }

    @Override // java.security.cert.Certificate
    public final String toString() {
        y yVar = this.f6303c;
        if (yVar == null || this.f6304d == null || this.f6305e == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder("[\n");
        sb2.append(yVar.toString() + SignParameters.NEW_LINE);
        sb2.append("  Algorithm: [" + this.f6304d.toString() + "]\n");
        sb2.append("  Signature:\n" + new a.c().c(this.f6305e));
        sb2.append("\n]");
        return sb2.toString();
    }

    @Override // java.security.cert.Certificate
    public final void verify(PublicKey publicKey) {
        verify(publicKey, "");
    }

    @Override // java.security.cert.Certificate
    public final synchronized void verify(PublicKey publicKey, String str) {
        if (str == null) {
            str = "";
        }
        try {
            PublicKey publicKey2 = this.f6306f;
            if (publicKey2 != null && publicKey2.equals(publicKey) && str.equals(this.f6307g)) {
                if (!this.f6308h) {
                    throw new SignatureException("Signature does not match.");
                }
                return;
            }
            if (this.f6302b == null) {
                throw new CertificateEncodingException("Uninitialized certificate");
            }
            Signature signature = str.length() == 0 ? Signature.getInstance(this.f6304d.getName()) : Signature.getInstance(this.f6304d.getName(), str);
            signature.initVerify(publicKey);
            byte[] bArrD = this.f6303c.d();
            signature.update(bArrD, 0, bArrD.length);
            boolean zVerify = signature.verify(this.f6305e);
            this.f6308h = zVerify;
            this.f6306f = publicKey;
            this.f6307g = str;
            if (!zVerify) {
                throw new SignatureException("Signature does not match.");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.security.cert.X509Certificate
    public final void checkValidity(Date date) throws CertificateNotYetValidException, CertificateExpiredException {
        try {
            k kVar = (k) this.f6303c.c("validity");
            if (kVar != null) {
                if (!kVar.f6242a.after(date)) {
                    if (kVar.f6243b.before(date)) {
                        throw new CertificateExpiredException("NotAfter: " + kVar.f6243b.toString());
                    }
                    return;
                }
                throw new CertificateNotYetValidException("NotBefore: " + kVar.f6242a.toString());
            }
            throw new CertificateNotYetValidException("Null validity period");
        } catch (Exception unused) {
            throw new CertificateNotYetValidException("Incorrect validity period");
        }
    }
}
