package ae;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Properties;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: e, reason: collision with root package name */
    public static final InetAddress[] f626e;

    /* renamed from: f, reason: collision with root package name */
    public static final d f627f;

    /* renamed from: g, reason: collision with root package name */
    public static final int f628g;

    /* renamed from: h, reason: collision with root package name */
    public static int f629h;

    /* renamed from: i, reason: collision with root package name */
    public static final HashMap f630i;

    /* renamed from: j, reason: collision with root package name */
    public static final HashMap f631j;

    /* renamed from: k, reason: collision with root package name */
    public static final b f632k;
    public static final g l;

    /* renamed from: m, reason: collision with root package name */
    public static final g f633m;

    /* renamed from: a, reason: collision with root package name */
    public b f634a;

    /* renamed from: b, reason: collision with root package name */
    public final int f635b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f636c;

    /* renamed from: d, reason: collision with root package name */
    public String f637d;

    static {
        InetAddress[] inetAddressArr = new InetAddress[0];
        String property = wd.a.f17870a.getProperty("jcifs.smb1.netbios.wins");
        if (property != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property, ",");
            int iCountTokens = stringTokenizer.countTokens();
            InetAddress[] inetAddressArr2 = new InetAddress[iCountTokens];
            for (int i10 = 0; i10 < iCountTokens; i10++) {
                try {
                    inetAddressArr2[i10] = InetAddress.getByName(stringTokenizer.nextToken());
                } catch (UnknownHostException e7) {
                    if (de.d.f4630b > 0) {
                        de.d dVar = wd.a.f17871b;
                        dVar.getClass();
                        e7.printStackTrace(dVar);
                    }
                }
            }
            inetAddressArr = inetAddressArr2;
        }
        f626e = inetAddressArr;
        f627f = new d();
        f628g = wd.a.c(30, "jcifs.smb1.netbios.cachePolicy");
        f629h = 0;
        HashMap map = new HashMap();
        f630i = map;
        f631j = new HashMap();
        b bVar = new b("0.0.0.0", 0, null);
        f632k = bVar;
        g gVar = new g(bVar, 0);
        l = gVar;
        map.put(bVar, new f(gVar, -1L));
        InetAddress byName = d.f586v;
        if (byName == null) {
            try {
                try {
                    byName = InetAddress.getLocalHost();
                } catch (UnknownHostException unused) {
                    byName = InetAddress.getByName("127.0.0.1");
                }
            } catch (UnknownHostException unused2) {
            }
        }
        Properties properties = wd.a.f17870a;
        String property2 = properties.getProperty("jcifs.smb1.netbios.hostname", null);
        if (property2 == null || property2.length() == 0) {
            byte[] address = byName.getAddress();
            property2 = "JCIFS" + (address[2] & 255) + "_" + (address[3] & 255) + "_" + de.c.c((int) (Math.random() * 255.0d), 2);
        }
        b bVar2 = new b(property2, 0, properties.getProperty("jcifs.smb1.netbios.scope", null));
        g gVar2 = new g(bVar2, byName.hashCode(), 0);
        f633m = gVar2;
        b(bVar2, gVar2, -1L);
    }

    public g(b bVar, int i10) {
        this.f634a = bVar;
        this.f635b = i10;
    }

    public static void a(b bVar, g gVar) {
        int i10 = f628g;
        if (i10 == 0) {
            return;
        }
        b(bVar, gVar, i10 != -1 ? System.currentTimeMillis() + (i10 * 1000) : -1L);
    }

    public static void b(b bVar, g gVar, long j10) {
        if (f628g == 0) {
            return;
        }
        HashMap map = f630i;
        synchronized (map) {
            try {
                f fVar = (f) map.get(bVar);
                if (fVar == null) {
                    map.put(bVar, new f(gVar, j10));
                } else {
                    fVar.f624a = gVar;
                    fVar.f625b = j10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static g c(b bVar, InetAddress inetAddress) throws UnknownHostException {
        HashMap map;
        if (bVar.f579c == 29 && inetAddress == null) {
            inetAddress = f627f.f600m;
        }
        bVar.f580d = inetAddress != null ? inetAddress.hashCode() : 0;
        g gVarE = e(bVar);
        if (gVarE == null) {
            HashMap map2 = f631j;
            synchronized (map2) {
                try {
                    if (map2.containsKey(bVar)) {
                        while (true) {
                            map = f631j;
                            if (!map.containsKey(bVar)) {
                                break;
                            }
                            try {
                                map.wait();
                            } catch (InterruptedException unused) {
                            }
                        }
                        g gVarE2 = e(bVar);
                        if (gVarE2 == null) {
                            synchronized (map) {
                                map.put(bVar, bVar);
                            }
                        }
                        gVarE = gVarE2;
                    } else {
                        map2.put(bVar, bVar);
                        gVarE = null;
                    }
                } finally {
                }
            }
            if (gVarE == null) {
                try {
                    try {
                        gVarE = f627f.b(bVar, inetAddress);
                    } catch (UnknownHostException unused2) {
                        gVarE = l;
                    }
                } finally {
                    a(bVar, gVarE);
                    i(bVar);
                }
            }
        }
        if (gVarE != l) {
            return gVarE;
        }
        throw new UnknownHostException(bVar.toString());
    }

    public static g d(InetAddress inetAddress, int i10, String str) {
        if (str == null || str.length() == 0) {
            return f633m;
        }
        if (!Character.isDigit(str.charAt(0))) {
            return c(new b(str, i10, null), inetAddress);
        }
        char[] charArray = str.toCharArray();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < charArray.length) {
            char c7 = charArray[i11];
            if (c7 < '0' || c7 > '9') {
                return c(new b(str, i10, null), inetAddress);
            }
            int i14 = 0;
            while (c7 != '.') {
                if (c7 < '0' || c7 > '9') {
                    return c(new b(str, i10, null), inetAddress);
                }
                i14 = ((i14 * 10) + c7) - 48;
                i11++;
                if (i11 >= charArray.length) {
                    break;
                }
                c7 = charArray[i11];
            }
            if (i14 > 255) {
                return c(new b(str, i10, null), inetAddress);
            }
            i13 = (i13 << 8) + i14;
            i12++;
            i11++;
        }
        return (i12 != 4 || str.endsWith(".")) ? c(new b(str, i10, null), inetAddress) : new g(f632k, i13);
    }

    public static g e(b bVar) {
        g gVar;
        if (f628g == 0) {
            return null;
        }
        HashMap map = f630i;
        synchronized (map) {
            try {
                f fVar = (f) map.get(bVar);
                if (fVar != null && fVar.f625b < System.currentTimeMillis() && fVar.f625b >= 0) {
                    fVar = null;
                }
                gVar = fVar != null ? fVar.f624a : null;
            } finally {
            }
        }
        return gVar;
    }

    public static InetAddress h() {
        InetAddress[] inetAddressArr = f626e;
        if (inetAddressArr.length == 0) {
            return null;
        }
        return inetAddressArr[f629h];
    }

    public static void i(b bVar) {
        HashMap map = f631j;
        synchronized (map) {
            map.remove(bVar);
            map.notifyAll();
        }
    }

    public final boolean equals(Object obj) {
        return obj != null && (obj instanceof g) && ((g) obj).f635b == this.f635b;
    }

    public final String f() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = this.f635b;
        sb2.append((i10 >>> 24) & 255);
        sb2.append(".");
        sb2.append((i10 >>> 16) & 255);
        sb2.append(".");
        sb2.append((i10 >>> 8) & 255);
        sb2.append(".");
        sb2.append(i10 & 255);
        return sb2.toString();
    }

    public final String g() {
        b bVar = this.f634a;
        return bVar == f632k ? f() : bVar.f577a;
    }

    public final int hashCode() {
        return this.f635b;
    }

    public final String toString() {
        return this.f634a.toString() + "/" + f();
    }

    public g(b bVar, int i10, int i11) {
        this.f634a = bVar;
        this.f635b = i10;
        this.f636c = true;
    }
}
