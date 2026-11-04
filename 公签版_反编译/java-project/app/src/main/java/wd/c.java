package wd;

import ae.g;
import androidx.leanback.widget.i;
import de.d;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f17879c;

    /* renamed from: d, reason: collision with root package name */
    public static final InetAddress f17880d;

    /* renamed from: e, reason: collision with root package name */
    public static final d f17881e = d.r();

    /* renamed from: a, reason: collision with root package name */
    public final Object f17882a;

    /* renamed from: b, reason: collision with root package name */
    public String f17883b;

    static {
        int i10;
        String property = a.f17870a.getProperty("jcifs.smb1.resolveOrder");
        InetAddress inetAddressH = g.h();
        try {
            f17880d = a.b("jcifs.smb1.netbios.baddr", InetAddress.getByName("255.255.255.255"));
        } catch (UnknownHostException unused) {
        }
        if (property == null || property.length() == 0) {
            if (inetAddressH == null) {
                f17879c = new int[]{3, 2, 1};
                return;
            } else {
                f17879c = new int[]{3, 0, 2, 1};
                return;
            }
        }
        int[] iArr = new int[4];
        StringTokenizer stringTokenizer = new StringTokenizer(property, ",");
        int i11 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strTrim = stringTokenizer.nextToken().trim();
            if (strTrim.equalsIgnoreCase("LMHOSTS")) {
                i10 = i11 + 1;
                iArr[i11] = 3;
            } else if (strTrim.equalsIgnoreCase("WINS")) {
                if (inetAddressH != null) {
                    i10 = i11 + 1;
                    iArr[i11] = 0;
                } else if (d.f4630b > 1) {
                    f17881e.getClass();
                }
            } else if (strTrim.equalsIgnoreCase("BCAST")) {
                i10 = i11 + 1;
                iArr[i11] = 1;
            } else if (strTrim.equalsIgnoreCase("DNS")) {
                i10 = i11 + 1;
                iArr[i11] = 2;
            } else if (d.f4630b > 1) {
                f17881e.getClass();
            }
            i11 = i10;
        }
        int[] iArr2 = new int[i11];
        f17879c = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, i11);
    }

    public c(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException();
        }
        this.f17882a = obj;
    }

    public static c[] a(String str, boolean z) throws UnknownHostException {
        int i10;
        g gVarF;
        if (str == null || str.length() == 0) {
            throw new UnknownHostException();
        }
        if (e(str)) {
            return new c[]{new c(g.d(null, 0, str))};
        }
        int i11 = 0;
        while (true) {
            int[] iArr = f17879c;
            if (i11 >= iArr.length) {
                throw new UnknownHostException(str);
            }
            try {
                i10 = iArr[i11];
            } catch (IOException unused) {
                continue;
            }
            if (i10 == 0) {
                if (str != "\u0001\u0002__MSBROWSE__\u0002" && str.length() <= 15) {
                    gVarF = z ? f(str, g.h()) : g.d(g.h(), 32, str);
                }
                i11++;
            } else if (i10 != 1) {
                if (i10 == 2) {
                    for (int i12 = 0; i12 < str.length(); i12++) {
                        if (!Character.isDigit(str.charAt(i12))) {
                            InetAddress[] allByName = InetAddress.getAllByName(str);
                            c[] cVarArr = new c[allByName.length];
                            for (int i13 = 0; i13 < allByName.length; i13++) {
                                cVarArr[i13] = new c(allByName[i13]);
                            }
                            return cVarArr;
                        }
                    }
                    throw new UnknownHostException(str);
                }
                if (i10 != 3) {
                    throw new UnknownHostException(str);
                }
                String str2 = ae.a.f570a;
                synchronized (ae.a.class) {
                    gVarF = ae.a.a(new ae.b(str, 32, null));
                }
                if (gVarF != null) {
                    break;
                }
                i11++;
            } else if (str.length() > 15) {
                i11++;
            } else {
                gVarF = z ? f(str, f17880d) : g.d(f17880d, 32, str);
            }
        }
        return new c[]{new c(gVarF)};
    }

    public static c b(String str, boolean z) {
        return a(str, z)[0];
    }

    public static boolean e(String str) {
        if (Character.isDigit(str.charAt(0))) {
            int length = str.length();
            char[] charArray = str.toCharArray();
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                int i12 = i10 + 1;
                if (!Character.isDigit(charArray[i10])) {
                    break;
                }
                if (i12 == length && i11 == 3) {
                    return true;
                }
                if (i12 >= length || charArray[i12] != '.') {
                    i10 = i12;
                } else {
                    i11++;
                    i10 += 2;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        r2 = 29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static g f(String str, InetAddress inetAddress) throws UnknownHostException {
        int i10;
        int i11 = 0;
        i iVar = new i(10, (boolean) (0 == true ? 1 : 0));
        while (true) {
            if (inetAddress == null) {
                InetAddress[] inetAddressArr = g.f626e;
                break;
            }
            InetAddress[] inetAddressArr2 = g.f626e;
            if (i11 >= inetAddressArr2.length) {
                break;
            }
            if (inetAddress.hashCode() == inetAddressArr2[i11].hashCode()) {
                i10 = 27;
                break;
            }
            i11++;
        }
        b bVar = new b(iVar, str, i10, inetAddress);
        b bVar2 = new b(iVar, str, 32, inetAddress);
        bVar.setDaemon(true);
        bVar2.setDaemon(true);
        try {
            synchronized (iVar) {
                try {
                    bVar.start();
                    bVar2.start();
                    while (iVar.f1647b > 0 && bVar.f17876d == null && bVar2.f17876d == null) {
                        iVar.wait();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            g gVar = bVar.f17876d;
            if (gVar != null) {
                return gVar;
            }
            g gVar2 = bVar2.f17876d;
            if (gVar2 != null) {
                return gVar2;
            }
            throw bVar.f17878f;
        } catch (InterruptedException unused) {
            throw new UnknownHostException(str);
        }
    }

    public final String c() {
        Object obj = this.f17882a;
        return obj instanceof g ? ((g) obj).f() : ((InetAddress) obj).getHostAddress();
    }

    public final String d() {
        Object obj = this.f17882a;
        return obj instanceof g ? ((g) obj).g() : ((InetAddress) obj).getHostName();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            if (this.f17882a.equals(((c) obj).f17882a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f17882a.hashCode();
    }

    public final String toString() {
        return this.f17882a.toString();
    }
}
