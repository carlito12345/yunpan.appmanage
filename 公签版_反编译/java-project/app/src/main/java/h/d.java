package h;

import java.io.IOException;
import java.io.Serializable;
import java.security.AlgorithmParameters;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Security;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* loaded from: classes.dex */
public final class d implements Serializable {
    public static final g.h A;
    public static final g.h B;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f6214d = false;

    /* renamed from: e, reason: collision with root package name */
    public static HashMap f6215e;

    /* renamed from: f, reason: collision with root package name */
    public static final HashMap f6216f;

    /* renamed from: g, reason: collision with root package name */
    public static final g.h f6217g;

    /* renamed from: h, reason: collision with root package name */
    public static final g.h f6218h;

    /* renamed from: i, reason: collision with root package name */
    public static final g.h f6219i;

    /* renamed from: j, reason: collision with root package name */
    public static final g.h f6220j;

    /* renamed from: k, reason: collision with root package name */
    public static final g.h f6221k;
    public static final g.h l;

    /* renamed from: m, reason: collision with root package name */
    public static final g.h f6222m;

    /* renamed from: n, reason: collision with root package name */
    public static final g.h f6223n;

    /* renamed from: p, reason: collision with root package name */
    public static final g.h f6224p;

    /* renamed from: q, reason: collision with root package name */
    public static final g.h f6225q;
    public static final g.h r;

    /* renamed from: s, reason: collision with root package name */
    public static final g.h f6226s;

    /* renamed from: t, reason: collision with root package name */
    public static final g.h f6227t;

    /* renamed from: v, reason: collision with root package name */
    public static final g.h f6228v;

    /* renamed from: w, reason: collision with root package name */
    public static final g.h f6229w;

    /* renamed from: x, reason: collision with root package name */
    public static final g.h f6230x;

    /* renamed from: y, reason: collision with root package name */
    public static final g.h f6231y;
    public static final g.h z;

    /* renamed from: a, reason: collision with root package name */
    public final g.h f6232a;

    /* renamed from: b, reason: collision with root package name */
    public final AlgorithmParameters f6233b;

    /* renamed from: c, reason: collision with root package name */
    public final g.g f6234c;

    static {
        g.h hVarD = g.h.d(new int[]{1, 2, 840, 113549, 2, 2});
        f6217g = hVarD;
        g.h hVarD2 = g.h.d(new int[]{1, 2, 840, 113549, 2, 5});
        f6218h = hVarD2;
        g.h hVarD3 = g.h.d(new int[]{1, 3, 14, 3, 2, 26});
        f6219i = hVarD3;
        g.h hVarD4 = g.h.d(new int[]{2, 16, 840, 1, 101, 3, 4, 2, 1});
        f6220j = hVarD4;
        g.h hVarD5 = g.h.d(new int[]{2, 16, 840, 1, 101, 3, 4, 2, 2});
        f6221k = hVarD5;
        g.h hVarD6 = g.h.d(new int[]{2, 16, 840, 1, 101, 3, 4, 2, 3});
        l = hVarD6;
        g.h hVarD7 = g.h.d(new int[]{1, 2, 840, 10045, 2, 1});
        f6224p = hVarD7;
        g.h hVarD8 = g.h.d(new int[]{1, 2, 840, 10045, 4, 1});
        f6229w = hVarD8;
        g.h hVarD9 = g.h.d(new int[]{1, 2, 840, 10045, 4, 3, 1});
        f6230x = hVarD9;
        g.h hVarD10 = g.h.d(new int[]{1, 2, 840, 10045, 4, 3, 2});
        f6231y = hVarD10;
        g.h hVarD11 = g.h.d(new int[]{1, 2, 840, 10045, 4, 3, 3});
        z = hVarD11;
        g.h hVarD12 = g.h.d(new int[]{1, 2, 840, 10045, 4, 3, 4});
        A = hVarD12;
        B = g.h.d(new int[]{1, 2, 840, 10045, 4, 3});
        g.h hVarD13 = g.h.d(new int[]{1, 2, 840, 113549, 1, 5, 3});
        g.h hVarD14 = g.h.d(new int[]{1, 2, 840, 113549, 1, 5, 6});
        g.h hVarD15 = g.h.d(new int[]{1, 2, 840, 113549, 1, 5, 10});
        g.h hVarD16 = g.h.d(new int[]{1, 2, 840, 113549, 1, 5, 11});
        g.h hVarD17 = g.h.d(new int[]{1, 2, 840, 113549, 1, 12, 1, 3});
        g.h hVarD18 = g.h.d(new int[]{1, 2, 840, 113549, 1, 12, 1, 6});
        g.h hVarD19 = g.h.d(new int[]{1, 2, 840, 113549, 1, 3, 1});
        f6222m = hVarD19;
        g.h hVarD20 = g.h.d(new int[]{1, 2, 840, 10046, 2, 1});
        g.h hVarD21 = g.h.d(new int[]{1, 3, 14, 3, 2, 12});
        g.h hVarD22 = g.h.d(new int[]{1, 2, 840, 10040, 4, 1});
        f6223n = hVarD22;
        g.h hVarD23 = g.h.d(new int[]{2, 5, 8, 1, 1});
        g.h hVarD24 = g.h.d(new int[]{1, 2, 840, 113549, 1, 1, 1});
        f6225q = hVarD24;
        g.h hVarD25 = g.h.d(new int[]{1, 2, 840, 113549, 1, 1, 2});
        r = hVarD25;
        g.h hVarD26 = g.h.d(new int[]{1, 2, 840, 113549, 1, 1, 4});
        f6226s = hVarD26;
        g.h hVarD27 = g.h.d(new int[]{1, 2, 840, 113549, 1, 1, 5});
        f6227t = hVarD27;
        g.h hVarD28 = g.h.d(new int[]{1, 3, 14, 3, 2, 29});
        g.h hVarD29 = g.h.d(new int[]{1, 2, 840, 113549, 1, 1, 11});
        g.h hVarD30 = g.h.d(new int[]{1, 2, 840, 113549, 1, 1, 12});
        g.h hVarD31 = g.h.d(new int[]{1, 2, 840, 113549, 1, 1, 13});
        g.h hVarD32 = g.h.d(new int[]{1, 3, 14, 3, 2, 13});
        g.h hVarD33 = g.h.d(new int[]{1, 3, 14, 3, 2, 27});
        g.h hVarD34 = g.h.d(new int[]{1, 2, 840, 10040, 4, 3});
        f6228v = hVarD34;
        HashMap map = new HashMap();
        f6216f = map;
        map.put(hVarD2, "MD5");
        map.put(hVarD, "MD2");
        map.put(hVarD3, "SHA");
        map.put(hVarD4, "SHA256");
        map.put(hVarD5, "SHA384");
        map.put(hVarD6, "SHA512");
        map.put(hVarD24, "RSA");
        map.put(hVarD23, "RSA");
        map.put(hVarD19, "Diffie-Hellman");
        map.put(hVarD20, "Diffie-Hellman");
        map.put(hVarD22, "DSA");
        map.put(hVarD21, "DSA");
        map.put(hVarD7, "EC");
        map.put(hVarD8, "SHA1withECDSA");
        map.put(hVarD9, "SHA224withECDSA");
        map.put(hVarD10, "SHA256withECDSA");
        map.put(hVarD11, "SHA384withECDSA");
        map.put(hVarD12, "SHA512withECDSA");
        map.put(hVarD26, "MD5withRSA");
        map.put(hVarD25, "MD2withRSA");
        map.put(hVarD34, "SHA1withDSA");
        map.put(hVarD33, "SHA1withDSA");
        map.put(hVarD32, "SHA1withDSA");
        map.put(hVarD27, "SHA1withRSA");
        map.put(hVarD28, "SHA1withRSA");
        map.put(hVarD29, "SHA256withRSA");
        map.put(hVarD30, "SHA384withRSA");
        map.put(hVarD31, "SHA512withRSA");
        map.put(hVarD13, "PBEWithMD5AndDES");
        map.put(hVarD14, "PBEWithMD5AndRC2");
        map.put(hVarD15, "PBEWithSHA1AndDES");
        map.put(hVarD16, "PBEWithSHA1AndRC2");
        map.put(hVarD17, "PBEWithSHA1AndDESede");
        map.put(hVarD18, "PBEWithSHA1AndRC2_40");
    }

    public d(g.h hVar) {
        this.f6232a = hVar;
    }

    public static g.h a(String str) {
        int iIndexOf;
        if (str.indexOf(46) != -1) {
            return str.startsWith("OID.") ? new g.h(str.substring(4)) : new g.h(str);
        }
        if (str.equalsIgnoreCase("MD5")) {
            return f6218h;
        }
        if (str.equalsIgnoreCase("MD2")) {
            return f6217g;
        }
        if (str.equalsIgnoreCase("SHA") || str.equalsIgnoreCase("SHA1") || str.equalsIgnoreCase(McElieceCCA2KeyGenParameterSpec.SHA1)) {
            return f6219i;
        }
        if (str.equalsIgnoreCase("SHA-256") || str.equalsIgnoreCase("SHA256")) {
            return f6220j;
        }
        if (str.equalsIgnoreCase(McElieceCCA2KeyGenParameterSpec.SHA384) || str.equalsIgnoreCase("SHA384")) {
            return f6221k;
        }
        if (str.equalsIgnoreCase("SHA-512") || str.equalsIgnoreCase("SHA512")) {
            return l;
        }
        if (str.equalsIgnoreCase("RSA")) {
            return f6225q;
        }
        if (str.equalsIgnoreCase("Diffie-Hellman") || str.equalsIgnoreCase("DH")) {
            return f6222m;
        }
        if (str.equalsIgnoreCase("DSA")) {
            return f6223n;
        }
        if (str.equalsIgnoreCase("EC")) {
            return f6224p;
        }
        if (str.equalsIgnoreCase("MD5withRSA") || str.equalsIgnoreCase("MD5/RSA")) {
            return f6226s;
        }
        if (str.equalsIgnoreCase("MD2withRSA") || str.equalsIgnoreCase("MD2/RSA")) {
            return r;
        }
        if (str.equalsIgnoreCase("SHAwithDSA") || str.equalsIgnoreCase("SHA1withDSA") || str.equalsIgnoreCase("SHA/DSA") || str.equalsIgnoreCase("SHA1/DSA") || str.equalsIgnoreCase("DSAWithSHA1") || str.equalsIgnoreCase("DSS") || str.equalsIgnoreCase("SHA-1/DSA")) {
            return f6228v;
        }
        if (str.equalsIgnoreCase("SHA1WithRSA") || str.equalsIgnoreCase("SHA1/RSA")) {
            return f6227t;
        }
        if (str.equalsIgnoreCase("SHA1withECDSA") || str.equalsIgnoreCase("ECDSA")) {
            return f6229w;
        }
        if (str.equalsIgnoreCase("SHA224withECDSA")) {
            return f6230x;
        }
        if (str.equalsIgnoreCase("SHA256withECDSA")) {
            return f6231y;
        }
        if (str.equalsIgnoreCase("SHA384withECDSA")) {
            return z;
        }
        if (str.equalsIgnoreCase("SHA512withECDSA")) {
            return A;
        }
        if (!f6214d) {
            Provider[] providers = Security.getProviders();
            for (int i10 = 0; i10 < providers.length; i10++) {
                Enumeration<Object> enumerationKeys = providers[i10].keys();
                while (enumerationKeys.hasMoreElements()) {
                    String str2 = (String) enumerationKeys.nextElement();
                    Locale locale = Locale.ENGLISH;
                    String upperCase = str2.toUpperCase(locale);
                    if (upperCase.startsWith("ALG.ALIAS") && (iIndexOf = upperCase.indexOf("OID.", 0)) != -1) {
                        int i11 = iIndexOf + 4;
                        if (i11 == str2.length()) {
                            break;
                        }
                        if (f6215e == null) {
                            f6215e = new HashMap();
                        }
                        String strSubstring = str2.substring(i11);
                        String property = providers[i10].getProperty(str2);
                        if (property != null) {
                            property = property.toUpperCase(locale);
                        }
                        if (property != null && f6215e.get(property) == null) {
                            f6215e.put(property, new g.h(strSubstring));
                        }
                    }
                }
            }
            if (f6215e == null) {
                f6215e = new HashMap(1);
            }
            f6214d = true;
        }
        return (g.h) f6215e.get(str.toUpperCase(Locale.ENGLISH));
    }

    public static d c(String str) throws NoSuchAlgorithmException {
        try {
            g.h hVarA = a(str);
            if (hVarA != null) {
                return new d(hVarA);
            }
            throw new NoSuchAlgorithmException("unrecognized algorithm name: ".concat(str));
        } catch (IOException unused) {
            throw new NoSuchAlgorithmException(da.b.c("Invalid ObjectIdentifier ", str));
        }
    }

    public static d d(g.g gVar) throws IOException {
        byte b10 = gVar.f5922a;
        if (b10 != 48) {
            throw new IOException("algid parse error, not a sequence");
        }
        if (b10 != 48 && b10 != 49) {
            throw new IOException("toDerInputStream rejects tag type " + ((int) gVar.f5922a));
        }
        g.e eVar = gVar.f5923b;
        a1.i iVar = new a1.i(eVar);
        g.h hVar = new g.h(iVar);
        g.g gVar2 = null;
        if (eVar.available() != 0) {
            g.g gVar3 = new g.g((g.e) iVar.f76b);
            if (gVar3.f5922a != 5) {
                gVar2 = gVar3;
            } else if (gVar3.f5925d != 0) {
                throw new IOException("invalid NULL");
            }
            if (eVar.available() != 0) {
                throw new IOException("Invalid AlgorithmIdentifier: extra data");
            }
        }
        return new d(hVar, gVar2);
    }

    public final void b(g.f fVar) throws IOException {
        g.f fVar2 = new g.f();
        g.f fVar3 = new g.f();
        fVar2.K((byte) 6, this.f6232a.f5926a);
        g.g gVar = this.f6234c;
        if (gVar == null) {
            fVar2.write(5);
            fVar2.r(0);
        } else {
            gVar.c(fVar2);
        }
        fVar3.J((byte) 48, fVar2);
        fVar.write(fVar3.toByteArray());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        boolean z4 = obj instanceof d;
        g.h hVar = this.f6232a;
        if (z4) {
            d dVar = (d) obj;
            g.g gVar = this.f6234c;
            return hVar.equals(dVar.f6232a) && (gVar == null ? dVar.f6234c == null : gVar.d(dVar.f6234c));
        }
        if (obj instanceof g.h) {
            return hVar.equals((g.h) obj);
        }
        return false;
    }

    public final String getName() {
        HashMap map = f6216f;
        g.h hVar = this.f6232a;
        String strConcat = (String) map.get(hVar);
        if (strConcat != null) {
            return strConcat;
        }
        if (this.f6234c != null && hVar.equals(B)) {
            try {
                g.g gVar = this.f6234c;
                String name = d(new g.g(gVar == null ? null : gVar.i())).getName();
                if (name.equals("SHA")) {
                    name = "SHA1";
                }
                strConcat = name.concat("withECDSA");
            } catch (IOException unused) {
            }
        }
        return strConcat == null ? hVar.toString() : strConcat;
    }

    public final int hashCode() {
        String string;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f6232a.toString());
        if (this.f6234c == null) {
            string = "";
        } else {
            AlgorithmParameters algorithmParameters = this.f6233b;
            string = algorithmParameters != null ? algorithmParameters.toString() : ", params unparsed";
        }
        sb2.append(string);
        return sb2.toString().hashCode();
    }

    public final String toString() {
        String string;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getName());
        if (this.f6234c == null) {
            string = "";
        } else {
            AlgorithmParameters algorithmParameters = this.f6233b;
            string = algorithmParameters != null ? algorithmParameters.toString() : ", params unparsed";
        }
        sb2.append(string);
        return sb2.toString();
    }

    public d(g.h hVar, g.g gVar) throws IOException {
        this.f6232a = hVar;
        this.f6234c = gVar;
        if (gVar != null) {
            String string = hVar.toString();
            try {
                try {
                    this.f6233b = AlgorithmParameters.getInstance(string);
                } catch (NoSuchAlgorithmException unused) {
                    this.f6233b = AlgorithmParameters.getInstance(string, c.b.f2820a);
                }
                this.f6233b.init(this.f6234c.i());
            } catch (NoSuchAlgorithmException unused2) {
                this.f6233b = null;
            }
        }
    }
}
