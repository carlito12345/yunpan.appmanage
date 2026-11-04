package h;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.io.IOException;
import java.security.PublicKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateParsingException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class y implements e {

    /* renamed from: j, reason: collision with root package name */
    public static final HashMap f6309j;

    /* renamed from: a, reason: collision with root package name */
    public l f6310a = new l();

    /* renamed from: b, reason: collision with root package name */
    public i f6311b = null;

    /* renamed from: c, reason: collision with root package name */
    public f f6312c = null;

    /* renamed from: d, reason: collision with root package name */
    public h f6313d = null;

    /* renamed from: e, reason: collision with root package name */
    public k f6314e = null;

    /* renamed from: f, reason: collision with root package name */
    public j f6315f = null;

    /* renamed from: g, reason: collision with root package name */
    public m f6316g = null;

    /* renamed from: h, reason: collision with root package name */
    public g f6317h = null;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f6318i = null;

    static {
        HashMap map = new HashMap();
        f6309j = map;
        g.b.q(1, map, "version", 2, "serialNumber");
        g.b.q(3, map, "algorithmID", 4, "issuer");
        g.b.q(5, map, "validity", 6, "subject");
        g.b.q(7, map, "key", 8, "issuerID");
        g.b.q(9, map, "subjectID", 10, "extensions");
    }

    @Override // h.e
    public final void a(g.f fVar) throws IOException, CertificateException {
        if (this.f6318i == null) {
            g.f fVar2 = new g.f();
            b(fVar2);
            this.f6318i = fVar2.toByteArray();
        }
        fVar.write((byte[]) this.f6318i.clone());
    }

    public final void b(g.f fVar) throws IOException, CertificateException {
        g.f fVar2 = new g.f();
        this.f6310a.a(fVar2);
        this.f6311b.a(fVar2);
        this.f6312c.a(fVar2);
        if (this.f6310a.f6244a == 0 && this.f6313d.toString() == null) {
            throw new CertificateParsingException("Null issuer DN not allowed in v1 certificate");
        }
        this.f6313d.a(fVar2);
        this.f6314e.a(fVar2);
        if (this.f6310a.f6244a == 0 && this.f6315f.toString() == null) {
            throw new CertificateParsingException("Null subject DN not allowed in v1 certificate");
        }
        this.f6315f.a(fVar2);
        this.f6316g.a(fVar2);
        g gVar = this.f6317h;
        if (gVar != null) {
            gVar.a(fVar2);
        }
        fVar.J((byte) 48, fVar2);
    }

    public final Object c(String str) throws CertificateParsingException, IOException {
        String strSubstring;
        String strSubstring2;
        int iIndexOf = str.indexOf(46);
        if (iIndexOf == -1) {
            strSubstring = str;
            strSubstring2 = null;
        } else {
            strSubstring = str.substring(0, iIndexOf);
            strSubstring2 = str.substring(iIndexOf + 1);
        }
        Integer num = (Integer) f6309j.get(strSubstring);
        int iIntValue = num != null ? num.intValue() : 0;
        if (iIntValue == 0) {
            throw new CertificateParsingException("Attribute name not recognized: ".concat(str));
        }
        if (iIntValue == 10) {
            if (strSubstring2 == null) {
                return this.f6317h;
            }
            g gVar = this.f6317h;
            if (gVar == null) {
                return null;
            }
            Object obj = gVar.f6236a.get(strSubstring2);
            if (obj != null) {
                return obj;
            }
            throw new IOException("No extension found with name ".concat(strSubstring2));
        }
        switch (iIntValue) {
            case 1:
                if (strSubstring2 == null) {
                    return this.f6310a;
                }
                l lVar = this.f6310a;
                if (strSubstring2.equalsIgnoreCase("number")) {
                    return new Integer(lVar.f6244a);
                }
                throw new IOException("Attribute name not recognized by CertAttrSet: CertificateVersion.");
            case 2:
                if (strSubstring2 == null) {
                    return this.f6311b;
                }
                i iVar = this.f6311b;
                iVar.getClass();
                if (strSubstring2.equalsIgnoreCase("number")) {
                    return iVar.f6239a;
                }
                throw new IOException("Attribute name not recognized by CertAttrSet:CertificateSerialNumber.");
            case 3:
                if (strSubstring2 == null) {
                    return this.f6312c;
                }
                f fVar = this.f6312c;
                fVar.getClass();
                if (strSubstring2.equalsIgnoreCase("algorithm")) {
                    return fVar.f6235a;
                }
                throw new IOException("Attribute name not recognized by CertAttrSet:CertificateAlgorithmId.");
            case 4:
                if (strSubstring2 == null) {
                    return this.f6313d;
                }
                h hVar = this.f6313d;
                hVar.getClass();
                if (strSubstring2.equalsIgnoreCase("dname")) {
                    return hVar.f6237a;
                }
                if (!strSubstring2.equalsIgnoreCase("x500principal")) {
                    throw new IOException("Attribute name not recognized by CertAttrSet:CertificateIssuerName.");
                }
                if (hVar.f6238b == null) {
                    hVar.f6238b = hVar.f6237a.f6300d;
                }
                return hVar.f6238b;
            case 5:
                if (strSubstring2 == null) {
                    return this.f6314e;
                }
                k kVar = this.f6314e;
                kVar.getClass();
                if (strSubstring2.equalsIgnoreCase("notBefore")) {
                    return new Date(kVar.f6242a.getTime());
                }
                if (strSubstring2.equalsIgnoreCase("notAfter")) {
                    return new Date(kVar.f6243b.getTime());
                }
                throw new IOException("Attribute name not recognized by CertAttrSet: CertificateValidity.");
            case 6:
                if (strSubstring2 == null) {
                    return this.f6315f;
                }
                j jVar = this.f6315f;
                jVar.getClass();
                if (strSubstring2.equalsIgnoreCase("dname")) {
                    return jVar.f6240a;
                }
                if (!strSubstring2.equalsIgnoreCase("x500principal")) {
                    throw new IOException("Attribute name not recognized by CertAttrSet:CertificateSubjectName.");
                }
                if (jVar.f6241b == null) {
                    jVar.f6241b = jVar.f6240a.f6300d;
                }
                return jVar.f6241b;
            case 7:
                if (strSubstring2 == null) {
                    return this.f6316g;
                }
                m mVar = this.f6316g;
                mVar.getClass();
                if (strSubstring2.equalsIgnoreCase("value")) {
                    return mVar.f6245a;
                }
                throw new IOException("Attribute name not recognized by CertAttrSet: CertificateX509Key.");
            default:
                return null;
        }
    }

    public final byte[] d() throws CertificateEncodingException {
        try {
            if (this.f6318i == null) {
                g.f fVar = new g.f();
                b(fVar);
                this.f6318i = fVar.toByteArray();
            }
            return (byte[]) this.f6318i.clone();
        } catch (IOException e7) {
            throw new CertificateEncodingException(e7.toString());
        } catch (CertificateException e10) {
            throw new CertificateEncodingException(e10.toString());
        }
    }

    public final void e(Object obj, String str) {
        String strSubstring;
        String strSubstring2;
        int iIndexOf = str.indexOf(46);
        if (iIndexOf == -1) {
            strSubstring = str;
            strSubstring2 = null;
        } else {
            strSubstring = str.substring(0, iIndexOf);
            strSubstring2 = str.substring(iIndexOf + 1);
        }
        Integer num = (Integer) f6309j.get(strSubstring);
        int iIntValue = num != null ? num.intValue() : 0;
        if (iIntValue == 0) {
            throw new CertificateException("Attribute name not recognized: ".concat(str));
        }
        this.f6318i = null;
        switch (iIntValue) {
            case 1:
                if (strSubstring2 == null) {
                    if (!(obj instanceof l)) {
                        throw new CertificateException("Version class type invalid.");
                    }
                    this.f6310a = (l) obj;
                    return;
                } else {
                    l lVar = this.f6310a;
                    if (!(obj instanceof Integer)) {
                        throw new IOException("Attribute must be of type Integer.");
                    }
                    if (!strSubstring2.equalsIgnoreCase("number")) {
                        throw new IOException("Attribute name not recognized by CertAttrSet: CertificateVersion.");
                    }
                    lVar.f6244a = ((Integer) obj).intValue();
                    return;
                }
            case 2:
                if (strSubstring2 == null) {
                    if (!(obj instanceof i)) {
                        throw new CertificateException("SerialNumber class type invalid.");
                    }
                    this.f6311b = (i) obj;
                    return;
                }
                i iVar = this.f6311b;
                iVar.getClass();
                if (!(obj instanceof u)) {
                    throw new IOException("Attribute must be of type SerialNumber.");
                }
                if (!strSubstring2.equalsIgnoreCase("number")) {
                    throw new IOException("Attribute name not recognized by CertAttrSet:CertificateSerialNumber.");
                }
                iVar.f6239a = (u) obj;
                return;
            case 3:
                if (strSubstring2 == null) {
                    if (!(obj instanceof f)) {
                        throw new CertificateException("AlgorithmId class type invalid.");
                    }
                    this.f6312c = (f) obj;
                    return;
                }
                f fVar = this.f6312c;
                fVar.getClass();
                if (!(obj instanceof d)) {
                    throw new IOException("Attribute must be of type AlgorithmId.");
                }
                if (!strSubstring2.equalsIgnoreCase("algorithm")) {
                    throw new IOException("Attribute name not recognized by CertAttrSet:CertificateAlgorithmId.");
                }
                fVar.f6235a = (d) obj;
                return;
            case 4:
                if (strSubstring2 == null) {
                    if (!(obj instanceof h)) {
                        throw new CertificateException("Issuer class type invalid.");
                    }
                    this.f6313d = (h) obj;
                    return;
                }
                h hVar = this.f6313d;
                hVar.getClass();
                if (!(obj instanceof w)) {
                    throw new IOException("Attribute must be of type X500Name.");
                }
                if (!strSubstring2.equalsIgnoreCase("dname")) {
                    throw new IOException("Attribute name not recognized by CertAttrSet:CertificateIssuerName.");
                }
                hVar.f6237a = (w) obj;
                hVar.f6238b = null;
                return;
            case 5:
                if (strSubstring2 == null) {
                    if (!(obj instanceof k)) {
                        throw new CertificateException("CertificateValidity class type invalid.");
                    }
                    this.f6314e = (k) obj;
                    return;
                }
                k kVar = this.f6314e;
                kVar.getClass();
                if (!(obj instanceof Date)) {
                    throw new IOException("Attribute must be of type Date.");
                }
                if (strSubstring2.equalsIgnoreCase("notBefore")) {
                    kVar.f6242a = (Date) obj;
                    return;
                } else {
                    if (!strSubstring2.equalsIgnoreCase("notAfter")) {
                        throw new IOException("Attribute name not recognized by CertAttrSet: CertificateValidity.");
                    }
                    kVar.f6243b = (Date) obj;
                    return;
                }
            case 6:
                if (strSubstring2 == null) {
                    if (!(obj instanceof j)) {
                        throw new CertificateException("Subject class type invalid.");
                    }
                    this.f6315f = (j) obj;
                    return;
                }
                j jVar = this.f6315f;
                jVar.getClass();
                if (!(obj instanceof w)) {
                    throw new IOException("Attribute must be of type X500Name.");
                }
                if (!strSubstring2.equalsIgnoreCase("dname")) {
                    throw new IOException("Attribute name not recognized by CertAttrSet:CertificateSubjectName.");
                }
                jVar.f6240a = (w) obj;
                jVar.f6241b = null;
                return;
            case 7:
                if (strSubstring2 == null) {
                    if (!(obj instanceof m)) {
                        throw new CertificateException("Key class type invalid.");
                    }
                    this.f6316g = (m) obj;
                    return;
                } else {
                    m mVar = this.f6316g;
                    mVar.getClass();
                    if (!strSubstring2.equalsIgnoreCase("value")) {
                        throw new IOException("Attribute name not recognized by CertAttrSet: CertificateX509Key.");
                    }
                    mVar.f6245a = (PublicKey) obj;
                    return;
                }
            case 8:
                if (strSubstring2 != null) {
                    throw null;
                }
                if (this.f6310a.f6244a - 1 < 0) {
                    throw new CertificateException("Invalid version");
                }
                throw new CertificateException("IssuerUniqueId class type invalid.");
            case 9:
                if (strSubstring2 != null) {
                    throw null;
                }
                if (this.f6310a.f6244a - 1 < 0) {
                    throw new CertificateException("Invalid version");
                }
                throw new CertificateException("SubjectUniqueId class type invalid.");
            case 10:
                if (strSubstring2 != null) {
                    if (this.f6317h == null) {
                        this.f6317h = new g();
                    }
                    this.f6317h.b(obj, strSubstring2);
                    return;
                } else {
                    if (this.f6310a.f6244a - 2 < 0) {
                        throw new CertificateException("Invalid version");
                    }
                    if (!(obj instanceof g)) {
                        throw new CertificateException("Extensions class type invalid.");
                    }
                    this.f6317h = (g) obj;
                    return;
                }
            default:
                return;
        }
    }

    public final boolean equals(Object obj) {
        byte[] bArr;
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        if (this != yVar) {
            byte[] bArr2 = this.f6318i;
            if (bArr2 != null && (bArr = yVar.f6318i) != null && bArr2.length == bArr.length) {
                int i10 = 0;
                while (true) {
                    byte[] bArr3 = this.f6318i;
                    if (i10 >= bArr3.length) {
                        break;
                    }
                    if (bArr3[i10] != yVar.f6318i[i10]) {
                        return false;
                    }
                    i10++;
                }
            } else {
                return false;
            }
        }
        return true;
    }

    @Override // h.e
    public final String getName() {
        return "info";
    }

    public final int hashCode() {
        int i10 = 0;
        int i11 = 1;
        while (true) {
            byte[] bArr = this.f6318i;
            if (i11 >= bArr.length) {
                return i10;
            }
            i10 += bArr[i11] * i11;
            i11++;
        }
    }

    public final String toString() {
        if (this.f6315f == null || this.f6316g == null || this.f6314e == null || this.f6313d == null || this.f6312c == null || this.f6311b == null) {
            throw new NullPointerException("X.509 cert is incomplete");
        }
        StringBuilder sb2 = new StringBuilder("[\n");
        sb2.append("  " + this.f6310a.toString() + SignParameters.NEW_LINE);
        sb2.append("  Subject: " + this.f6315f.toString() + SignParameters.NEW_LINE);
        sb2.append("  Signature Algorithm: " + this.f6312c.toString() + SignParameters.NEW_LINE);
        sb2.append("  Key:  " + this.f6316g.toString() + SignParameters.NEW_LINE);
        sb2.append("  " + this.f6314e.toString() + SignParameters.NEW_LINE);
        sb2.append("  Issuer: " + this.f6313d.toString() + SignParameters.NEW_LINE);
        sb2.append("  " + this.f6311b.toString() + SignParameters.NEW_LINE);
        g gVar = this.f6317h;
        if (gVar != null) {
            Object[] array = gVar.f6236a.values().toArray();
            sb2.append("\nCertificate Extensions: " + array.length);
            int i10 = 0;
            while (i10 < array.length) {
                StringBuilder sb3 = new StringBuilder("\n[");
                int i11 = i10 + 1;
                sb3.append(i11);
                sb3.append("]: ");
                sb2.append(sb3.toString());
                n nVar = (n) array[i10];
                try {
                    if (q.b(nVar.f6246a) == null) {
                        sb2.append(nVar.toString());
                        byte[] bArr = nVar.f6247b;
                        if (bArr != null) {
                            g.f fVar = new g.f();
                            fVar.K((byte) 4, bArr);
                            byte[] byteArray = fVar.toByteArray();
                            sb2.append("Extension unknown: DER encoded OCTET string =\n" + new a.c().c(byteArray) + SignParameters.NEW_LINE);
                        }
                    } else {
                        sb2.append(nVar.toString());
                    }
                } catch (Exception unused) {
                    sb2.append(", Error parsing this extension");
                }
                i10 = i11;
            }
            this.f6317h.getClass();
            Map mapEmptyMap = Collections.emptyMap();
            if (!mapEmptyMap.isEmpty()) {
                sb2.append("\nUnparseable certificate extensions: " + mapEmptyMap.size());
                int i12 = 1;
                for (n nVar2 : mapEmptyMap.values()) {
                    sb2.append("\n[" + i12 + "]: ");
                    sb2.append(nVar2);
                    i12++;
                }
            }
        }
        sb2.append("\n]");
        return sb2.toString();
    }
}
