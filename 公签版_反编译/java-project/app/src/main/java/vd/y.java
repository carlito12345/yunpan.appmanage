package vd;

import com.hierynomus.smbfs.SmbPath;
import j$.util.Objects;
import java.net.InetAddress;
import java.net.URL;
import java.net.UnknownHostException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class y implements Cloneable {

    /* renamed from: j, reason: collision with root package name */
    public static final Logger f16958j = LoggerFactory.getLogger((Class<?>) y.class);

    /* renamed from: a, reason: collision with root package name */
    public final URL f16959a;

    /* renamed from: b, reason: collision with root package name */
    public bd.b f16960b = null;

    /* renamed from: c, reason: collision with root package name */
    public String f16961c;

    /* renamed from: d, reason: collision with root package name */
    public String f16962d;

    /* renamed from: e, reason: collision with root package name */
    public String f16963e;

    /* renamed from: f, reason: collision with root package name */
    public vc.a[] f16964f;

    /* renamed from: g, reason: collision with root package name */
    public int f16965g;

    /* renamed from: h, reason: collision with root package name */
    public int f16966h;

    /* renamed from: i, reason: collision with root package name */
    public final vc.b f16967i;

    public y(URL url, vc.b bVar) {
        this.f16967i = bVar;
        this.f16959a = url;
    }

    public static String i(String str, String str2) {
        char[] charArray = str.toCharArray();
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < charArray.length; i12++) {
            char c7 = charArray[i12];
            if (c7 == '&') {
                if (i10 > i11 && new String(charArray, i11, i10 - i11).equalsIgnoreCase(str2)) {
                    int i13 = i10 + 1;
                    return new String(charArray, i13, i12 - i13);
                }
                i11 = i12 + 1;
            } else if (c7 == '=') {
                i10 = i12;
            }
        }
        if (i10 <= i11 || !new String(charArray, i11, i10 - i11).equalsIgnoreCase(str2)) {
            return null;
        }
        int i14 = i10 + 1;
        return new String(charArray, i14, charArray.length - i14);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void a() {
        int i10;
        int i11;
        int i12;
        char c7;
        try {
            char[] charArray = this.f16959a.getPath().toCharArray();
            char[] cArr = new char[charArray.length];
            int length = charArray.length;
            int i13 = 0;
            char c10 = 0;
            int i14 = 0;
            while (i13 < length) {
                if (c10 == 0) {
                    char c11 = charArray[i13];
                    if (c11 != '/') {
                        throw new androidx.fragment.app.b0("Invalid smb: URL: " + this.f16959a, 10);
                    }
                    cArr[i14] = c11;
                    i14++;
                    c10 = 1;
                } else if (c10 == 1) {
                    char c12 = charArray[i13];
                    if (c12 != '/') {
                        if (c12 != '.' || ((i12 = i13 + 1) < length && charArray[i12] != '/')) {
                            int i15 = i13 + 1;
                            if (i15 >= length || c12 != '.' || charArray[i15] != '.' || ((i10 = i13 + 2) < length && charArray[i10] != '/')) {
                                c10 = 2;
                                c7 = charArray[i13];
                                if (c7 == '/') {
                                }
                                cArr[i14] = c7;
                                i14++;
                            } else {
                                if (i14 != 1) {
                                    while (true) {
                                        i11 = i14 - 1;
                                        if (i11 <= 1 || cArr[i14 - 2] == '/') {
                                            break;
                                        } else {
                                            i14 = i11;
                                        }
                                    }
                                    i14 = i11;
                                }
                                i13 = i10;
                            }
                        } else {
                            i13 = i12;
                        }
                    }
                } else if (c10 == 2) {
                    c7 = charArray[i13];
                    if (c7 == '/') {
                        c10 = 1;
                    }
                    cArr[i14] = c7;
                    i14++;
                }
                i13++;
            }
            String str = new String(cArr, 0, i14);
            this.f16962d = str;
            if (i14 > 1) {
                int i16 = i14 - 1;
                int iIndexOf = str.indexOf(47, 1);
                if (iIndexOf < 0) {
                    this.f16963e = this.f16962d.substring(1);
                    this.f16961c = "\\";
                } else if (iIndexOf == i16) {
                    this.f16963e = this.f16962d.substring(1, iIndexOf);
                    this.f16961c = "\\";
                } else {
                    this.f16963e = this.f16962d.substring(1, iIndexOf);
                    this.f16961c = this.f16962d.substring(iIndexOf, i14).replace('/', SmbPath.SEPARATOR);
                }
            } else {
                this.f16962d = "/";
                this.f16963e = null;
                this.f16961c = "\\";
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final vc.a b() throws vc.c, UnknownHostException {
        int i10 = this.f16965g;
        if (i10 != 0) {
            return this.f16964f[i10 - 1];
        }
        this.f16965g = 0;
        if (this.f16964f == null) {
            URL url = this.f16959a;
            String host = url.getHost();
            String path = url.getPath();
            String query = url.getQuery();
            vc.b bVar = this.f16967i;
            try {
                if (query != null) {
                    String strI = i(query, "server");
                    if (strI != null && strI.length() > 0) {
                        this.f16964f = new sd.k[]{((sd.f) bVar.i()).e(strI, false)[0]};
                    }
                    String strI2 = i(query, "address");
                    if (strI2 != null && strI2.length() > 0) {
                        this.f16964f = new sd.k[]{new sd.k(InetAddress.getByAddress(host, InetAddress.getByName(strI2).getAddress()))};
                    }
                } else if (host.length() == 0) {
                    try {
                        this.f16964f = new sd.k[]{fVar.e(((sd.f) bVar.i()).i(1, "\u0001\u0002__MSBROWSE__\u0002").b(), false)[0]};
                        sd.f fVar = (sd.f) bVar.i();
                    } catch (UnknownHostException e7) {
                        f16958j.debug("Unknown host", (Throwable) e7);
                        if (((wc.a) bVar.e()).Q == null) {
                            throw e7;
                        }
                        this.f16964f = ((sd.f) bVar.i()).e(((wc.a) bVar.e()).Q, true);
                    }
                } else if (path.length() == 0 || path.equals("/")) {
                    this.f16964f = ((sd.f) bVar.i()).e(host, true);
                } else {
                    this.f16964f = ((sd.f) bVar.i()).e(host, false);
                }
            } catch (UnknownHostException e10) {
                throw new vc.c(da.b.c("Failed to lookup address for name ", host), e10);
            }
        }
        int i11 = this.f16965g;
        vc.a[] aVarArr = this.f16964f;
        if (i11 >= aVarArr.length) {
            return null;
        }
        this.f16965g = i11 + 1;
        return aVarArr[i11];
    }

    public final String c() {
        String host = this.f16959a.getHost();
        if (host.length() == 0) {
            return null;
        }
        return host;
    }

    public final Object clone() {
        y yVar = new y(this.f16959a, this.f16967i);
        yVar.f16962d = this.f16962d;
        yVar.f16963e = this.f16963e;
        yVar.f16960b = this.f16960b;
        yVar.f16961c = this.f16961c;
        vc.a[] aVarArr = this.f16964f;
        if (aVarArr != null) {
            sd.k[] kVarArr = new sd.k[aVarArr.length];
            yVar.f16964f = kVarArr;
            vc.a[] aVarArr2 = this.f16964f;
            System.arraycopy(aVarArr2, 0, kVarArr, 0, aVarArr2.length);
        }
        yVar.f16965g = this.f16965g;
        yVar.f16966h = this.f16966h;
        return yVar;
    }

    public final String d() {
        if (this.f16961c == null) {
            a();
        }
        return this.f16963e;
    }

    public final int e() throws vc.c {
        int i10;
        if (this.f16966h == 0) {
            if (f().length() > 1) {
                this.f16966h = 1;
            } else if (d() == null) {
                URL url = this.f16959a;
                if (url.getAuthority() == null || url.getAuthority().isEmpty()) {
                    this.f16966h = 2;
                } else {
                    try {
                        vc.l lVar = (vc.l) b().a();
                        if (lVar != null && ((i10 = ((sd.h) lVar).f14544a.f14488c) == 29 || i10 == 27)) {
                            this.f16966h = 2;
                            return 2;
                        }
                    } catch (vc.c e7) {
                        if (!(e7.getCause() instanceof UnknownHostException)) {
                            throw e7;
                        }
                        f16958j.debug("Unknown host", (Throwable) e7);
                    }
                    this.f16966h = 4;
                }
            } else if (d().equals("IPC$")) {
                this.f16966h = 16;
            } else {
                this.f16966h = 8;
            }
        }
        return this.f16966h;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        String path = this.f16959a.getPath();
        String path2 = yVar.f16959a.getPath();
        int iLastIndexOf = path.lastIndexOf(47);
        int iLastIndexOf2 = path2.lastIndexOf(47);
        int length = path.length() - iLastIndexOf;
        int length2 = path2.length() - iLastIndexOf2;
        if ((length > 1 && path.charAt(iLastIndexOf + 1) == '.') || ((length2 > 1 && path2.charAt(iLastIndexOf2 + 1) == '.') || (length == length2 && path.regionMatches(true, iLastIndexOf, path2, iLastIndexOf2, length)))) {
            if (this.f16961c == null) {
                a();
            }
            String str = this.f16962d;
            if (yVar.f16961c == null) {
                yVar.a();
            }
            if (str.equalsIgnoreCase(yVar.f16962d)) {
                try {
                    return b().equals(yVar.b());
                } catch (vc.c e7) {
                    f16958j.debug("Unknown host", (Throwable) e7);
                    return c().equalsIgnoreCase(yVar.c());
                }
            }
        }
        return false;
    }

    public final String f() {
        if (this.f16961c == null) {
            a();
        }
        return this.f16961c;
    }

    public final String g(bd.b bVar, String str) {
        if (Objects.equals(this.f16960b, bVar)) {
            return this.f16961c;
        }
        this.f16960b = bVar;
        String strF = f();
        int length = ((bd.a) bVar).f2766a;
        Logger logger = f16958j;
        if (length < 0) {
            logger.warn("Path consumed out of range " + length);
            length = 0;
        } else if (length > this.f16961c.length()) {
            logger.warn("Path consumed out of range " + length);
            length = strF.length();
        }
        if (logger.isDebugEnabled()) {
            logger.debug("UNC is '" + strF + "'");
            logger.debug("Consumed '" + strF.substring(0, length) + "'");
        }
        String strSubstring = strF.substring(length);
        if (logger.isDebugEnabled()) {
            logger.debug("Remaining '" + strSubstring + "'");
        }
        if (strSubstring.equals("") || strSubstring.equals("\\")) {
            this.f16966h = 8;
            strSubstring = "\\";
        }
        bd.a aVar = (bd.a) bVar;
        if (!aVar.f2771f.isEmpty()) {
            strSubstring = g.b.l(aVar.f2771f, strSubstring, new StringBuilder("\\"));
        }
        if (strSubstring.charAt(0) != '\\') {
            logger.warn("No slash at start of remaining DFS path ".concat(strSubstring));
        }
        this.f16961c = strSubstring;
        String str2 = aVar.f2769d;
        if (str2 != null && !str2.isEmpty()) {
            this.f16963e = aVar.f2769d;
        }
        return (str == null || !str.endsWith("\\") || strSubstring.endsWith("\\")) ? strSubstring : strSubstring.concat("\\");
    }

    public final boolean h() {
        if (d() != null && !"IPC$".equals(d())) {
            return false;
        }
        Logger logger = f16958j;
        if (!logger.isDebugEnabled()) {
            return true;
        }
        logger.debug("Share is IPC " + this.f16963e);
        return true;
    }

    public final int hashCode() {
        int iHashCode;
        try {
            iHashCode = b().hashCode();
        } catch (vc.c unused) {
            iHashCode = c().toUpperCase().hashCode();
        }
        if (this.f16961c == null) {
            a();
        }
        return this.f16962d.toUpperCase().hashCode() + iHashCode;
    }

    public final boolean j() {
        vc.b bVar = this.f16967i;
        return ((wc.a) bVar.e()).f17840i && !((j) bVar.g()).d() && h();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(this.f16959a.toString());
        sb2.append('[');
        if (this.f16961c != null) {
            sb2.append("unc=");
            sb2.append(this.f16961c);
        }
        if (this.f16962d != null) {
            sb2.append("canon=");
            sb2.append(this.f16962d);
        }
        if (this.f16960b != null) {
            sb2.append("dfsReferral=");
            sb2.append(this.f16960b);
        }
        sb2.append(']');
        return sb2.toString();
    }
}
