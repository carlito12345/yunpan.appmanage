package dh;

import androidx.fragment.app.b0;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.reflect.InvocationTargetException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Properties;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import ta.q;

/* loaded from: classes.dex */
public class e extends c implements a {
    public static final Pattern J = Pattern.compile("(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})");
    public long A;
    public final eh.c B;
    public String C;
    public h D;
    public f E;
    public final a1.i F;
    public boolean G;
    public HashMap H;
    public final boolean I;

    /* renamed from: t, reason: collision with root package name */
    public int f4653t;

    /* renamed from: u, reason: collision with root package name */
    public sh.c f4654u;

    /* renamed from: v, reason: collision with root package name */
    public int f4655v;

    /* renamed from: w, reason: collision with root package name */
    public String f4656w;

    /* renamed from: x, reason: collision with root package name */
    public int f4657x;

    /* renamed from: y, reason: collision with root package name */
    public int f4658y;
    public final boolean z;

    public e() {
        sh.c cVar = sh.c.f14573c;
        this.F = new a1.i(19, this);
        this.I = Boolean.getBoolean("org.apache.commons.net.ftp.ipAddressFromPasvResponse");
        r();
        long j10 = -1;
        int i10 = (int) (-1);
        if (i10 < 0) {
            i10 += 1000;
        } else {
            j10 = 0;
        }
        this.f4654u = sh.c.a(i10 * 1000000, j10);
        this.z = true;
        this.B = new eh.c();
        this.E = null;
        new Random();
    }

    @Override // dh.a
    public final void a(f fVar) {
        this.E = fVar;
    }

    @Override // ch.d
    public void b() throws SocketException {
        this.f3252b.setSoTimeout(this.f3251a);
        this.f3254d = this.f3252b.getInputStream();
        this.f3255e = this.f3252b.getOutputStream();
        this.f4651q = new fh.a(new InputStreamReader(this.f3254d, this.f4648n));
        this.r = new BufferedWriter(new OutputStreamWriter(this.f3255e, this.f4648n));
        if (this.f3256f > 0) {
            int soTimeout = this.f3252b.getSoTimeout();
            this.f3252b.setSoTimeout(this.f3256f);
            try {
                try {
                    h();
                    if (com.bumptech.glide.c.M(this.f4645j)) {
                        h();
                    }
                } catch (SocketTimeoutException e7) {
                    IOException iOException = new IOException("Timed out waiting for initial connect reply");
                    iOException.initCause(e7);
                    throw iOException;
                }
            } finally {
                this.f3252b.setSoTimeout(soTimeout);
            }
        } else {
            h();
            if (com.bumptech.glide.c.M(this.f4645j)) {
                h();
            }
        }
        r();
        if (this.G) {
            ArrayList arrayList = this.f4646k;
            ArrayList arrayList2 = new ArrayList(arrayList);
            int i10 = this.f4645j;
            if (q("UTF8") || q(Charset.forName(HTTP.UTF_8).name())) {
                this.f4648n = Charset.forName(HTTP.UTF_8).name();
                this.f4651q = new fh.a(new InputStreamReader(this.f3254d, this.f4648n));
                this.r = new BufferedWriter(new OutputStreamWriter(this.f3255e, this.f4648n));
            }
            arrayList.clear();
            arrayList.addAll(arrayList2);
            this.f4645j = i10;
            this.l = true;
        }
    }

    @Override // dh.c, ch.d
    public void d() {
        super.d();
        r();
    }

    public Socket m(String str, String str2) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        Socket socketAccept;
        int i10 = this.f4653t;
        if (i10 != 0 && i10 != 2) {
            return null;
        }
        boolean z = this.f3252b.getInetAddress() instanceof Inet6Address;
        int iJ = android.support.v4.media.session.b.J(this.f4654u);
        if (this.f4653t == 0) {
            ServerSocket serverSocketCreateServerSocket = ch.d.f3250i.createServerSocket(0, 1, this.f3252b.getLocalAddress());
            try {
                if (z) {
                    if (!com.bumptech.glide.c.L(g(this.f3252b.getLocalAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                        serverSocketCreateServerSocket.close();
                        return null;
                    }
                } else if (!com.bumptech.glide.c.L(j(this.f3252b.getLocalAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                    serverSocketCreateServerSocket.close();
                    return null;
                }
                long j10 = this.A;
                if (j10 > 0 && !w(j10)) {
                    if (serverSocketCreateServerSocket != null) {
                        serverSocketCreateServerSocket.close();
                    }
                    return null;
                }
                if (!com.bumptech.glide.c.M(l(str, str2))) {
                    if (serverSocketCreateServerSocket != null) {
                        serverSocketCreateServerSocket.close();
                    }
                    return null;
                }
                if (iJ >= 0) {
                    serverSocketCreateServerSocket.setSoTimeout(iJ);
                }
                socketAccept = serverSocketCreateServerSocket.accept();
                if (this.f4658y == 13) {
                    socketAccept = new b(socketAccept);
                }
                if (iJ >= 0) {
                    socketAccept.setSoTimeout(iJ);
                }
                serverSocketCreateServerSocket.close();
            } catch (Throwable th2) {
                if (serverSocketCreateServerSocket != null) {
                    try {
                        serverSocketCreateServerSocket.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                }
                throw th2;
            }
        } else {
            ArrayList arrayList = this.f4646k;
            if (z && k(9) == 229) {
                n((String) arrayList.get(0));
            } else {
                if (z || k(22) != 227) {
                    return null;
                }
                o((String) arrayList.get(0));
            }
            Socket socketCreateSocket = ch.d.f3249h.createSocket();
            if (this.f4658y == 13) {
                socketCreateSocket = new b(socketCreateSocket);
            }
            if (iJ >= 0) {
                socketCreateSocket.setSoTimeout(iJ);
            }
            socketCreateSocket.connect(new InetSocketAddress(this.f4656w, this.f4655v), this.f3256f);
            long j11 = this.A;
            if (j11 > 0 && !w(j11)) {
                socketCreateSocket.close();
                return null;
            }
            if (!com.bumptech.glide.c.M(l(str, str2))) {
                socketCreateSocket.close();
                return null;
            }
            socketAccept = socketCreateSocket;
        }
        if (!this.z || socketAccept.getInetAddress().equals(this.f3252b.getInetAddress())) {
            return socketAccept;
        }
        InetAddress inetAddress = socketAccept.getInetAddress();
        socketAccept.close();
        throw new IOException("Host attempting data connection " + inetAddress.getHostAddress() + " is not same as server " + this.f3252b.getInetAddress().getHostAddress());
    }

    public final void n(String str) throws ch.a, NumberFormatException {
        String strTrim = str.substring(str.indexOf(40) + 1, str.indexOf(41)).trim();
        char cCharAt = strTrim.charAt(0);
        char cCharAt2 = strTrim.charAt(1);
        char cCharAt3 = strTrim.charAt(2);
        char cCharAt4 = strTrim.charAt(strTrim.length() - 1);
        if (cCharAt != cCharAt2 || cCharAt2 != cCharAt3 || cCharAt3 != cCharAt4) {
            throw new ch.a("Could not parse extended passive host information.\nServer Reply: ".concat(strTrim));
        }
        try {
            int i10 = Integer.parseInt(strTrim.substring(3, strTrim.length() - 1));
            this.f4656w = this.f3252b.getInetAddress().getHostAddress();
            this.f4655v = i10;
        } catch (NumberFormatException unused) {
            throw new ch.a("Could not parse extended passive host information.\nServer Reply: ".concat(strTrim));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void o(String str) throws ch.a {
        Matcher matcher = J.matcher(str);
        if (!matcher.find()) {
            throw new ch.a(da.b.c("Could not parse passive host information.\nServer Reply: ", str));
        }
        String hostAddress = "0,0,0,0".equals(matcher.group(1)) ? this.f3252b.getInetAddress().getHostAddress() : matcher.group(1).replace(',', '.');
        try {
            int i10 = Integer.parseInt(matcher.group(3)) | (Integer.parseInt(matcher.group(2)) << 8);
            if (this.I) {
                a1.i iVar = this.F;
                if (iVar != null) {
                    try {
                        if (InetAddress.getByName(hostAddress).isSiteLocalAddress()) {
                            InetAddress inetAddress = ((e) iVar.f76b).f3252b.getInetAddress();
                            String hostAddress2 = !inetAddress.isSiteLocalAddress() ? inetAddress.getHostAddress() : hostAddress;
                            if (!hostAddress.equals(hostAddress2)) {
                                e(0);
                                hostAddress = hostAddress2;
                            }
                        }
                    } catch (UnknownHostException unused) {
                        throw new ch.a(da.b.c("Could not parse passive host information.\nServer Reply: ", str));
                    }
                }
            } else {
                Socket socket = this.f3252b;
                hostAddress = socket == null ? null : socket.getInetAddress().getHostAddress();
            }
            this.f4656w = hostAddress;
            this.f4655v = i10;
        } catch (NumberFormatException unused2) {
            throw new ch.a(da.b.c("Could not parse passive port information.\nServer Reply: ", str));
        }
    }

    public final boolean p(String str) {
        return com.bumptech.glide.c.L(l("CWD", str));
    }

    public final boolean q(String str) {
        String strSubstring;
        String strSubstring2;
        Set hashSet;
        if (this.H == null) {
            int iK = k(10);
            if (iK == 530) {
                return false;
            }
            boolean zL = com.bumptech.glide.c.L(iK);
            this.H = new HashMap();
            if (!zL) {
                return false;
            }
            Iterator it = this.f4646k.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (str2.startsWith(" ")) {
                    int iIndexOf = str2.indexOf(32, 1);
                    if (iIndexOf > 0) {
                        strSubstring = str2.substring(1, iIndexOf);
                        strSubstring2 = str2.substring(iIndexOf + 1);
                    } else {
                        strSubstring = str2.substring(1);
                        strSubstring2 = "";
                    }
                    String upperCase = strSubstring.toUpperCase(Locale.ENGLISH);
                    if (this.H.containsKey(upperCase)) {
                        hashSet = (Set) this.H.get(upperCase);
                    } else {
                        hashSet = new HashSet();
                        this.H.put(upperCase, hashSet);
                    }
                    hashSet.add(strSubstring2);
                }
            }
        }
        return this.H.containsKey(str.toUpperCase(Locale.ENGLISH));
    }

    public final void r() {
        this.f4653t = 0;
        this.f4656w = null;
        this.f4655v = -1;
        this.f4657x = 0;
        this.f4658y = 10;
        this.A = 0L;
        this.C = null;
        this.D = null;
        this.H = null;
    }

    public final g[] s(String str) {
        String property;
        if (this.D == null) {
            eh.c cVar = this.B;
            f fVar = this.E;
            if (fVar == null || fVar.f4660a.length() <= 0) {
                String property2 = System.getProperty("org.apache.commons.net.ftp.systemType");
                if (property2 == null) {
                    if (this.C == null) {
                        if (com.bumptech.glide.c.L(k(39))) {
                            this.C = ((String) q.h(1, this.f4646k)).substring(4);
                        } else {
                            String property3 = System.getProperty("org.apache.commons.net.ftp.systemType.default");
                            if (property3 == null) {
                                throw new IOException("Unable to determine system type - response: " + i());
                            }
                            this.C = property3;
                        }
                    }
                    property2 = this.C;
                    Properties properties = d.f4652a;
                    if (properties != null && (property = properties.getProperty(property2)) != null) {
                        property2 = property;
                    }
                }
                if (this.E != null) {
                    f fVar2 = new f(property2, this.E);
                    cVar.getClass();
                    this.D = eh.c.a(property2, fVar2);
                } else {
                    cVar.getClass();
                    if (property2 == null) {
                        throw new b0("Parser key cannot be null", 1);
                    }
                    this.D = eh.c.a(property2, null);
                }
            } else {
                f fVar3 = this.E;
                cVar.getClass();
                this.D = eh.c.a(fVar3.f4660a, fVar3);
                String str2 = this.E.f4660a;
            }
        }
        h hVar = this.D;
        Socket socketM = m("LIST", str);
        i iVar = new i(hVar, this.E);
        if (socketM != null) {
            try {
                iVar.a(socketM.getInputStream(), this.f4648n);
                h();
            } finally {
                try {
                    socketM.close();
                } catch (IOException unused) {
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = iVar.f4671a.iterator();
        while (it.hasNext()) {
            g gVarB = iVar.f4672b.b((String) it.next());
            if (gVarB != null) {
                arrayList.add(gVarB);
            }
        }
        return (g[]) arrayList.toArray(i.f4670c);
    }

    public final boolean t(String str, String str2) throws IOException {
        l("USER", str);
        if (com.bumptech.glide.c.L(this.f4645j)) {
            return true;
        }
        int i10 = this.f4645j;
        if (i10 < 300 || i10 >= 400) {
            return false;
        }
        return com.bumptech.glide.c.L(l("PASS", str2));
    }

    public final boolean u(String str) {
        return com.bumptech.glide.c.L(l("MKD", str));
    }

    public final boolean v(String str, String str2) throws IOException {
        int iL = l("RNFR", str);
        if (iL < 300 || iL >= 400) {
            return false;
        }
        return com.bumptech.glide.c.L(l("RNTO", str2));
    }

    public final boolean w(long j10) throws IOException {
        this.A = 0L;
        int iL = l("REST", Long.toString(j10));
        return iL >= 300 && iL < 400;
    }

    public final fh.c x(String str) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        Socket socketM = m("RETR", str);
        if (socketM == null) {
            return null;
        }
        return new fh.c(socketM, this.f4657x == 0 ? new fh.b(new BufferedInputStream(socketM.getInputStream())) : socketM.getInputStream());
    }

    public final void y() {
        if (com.bumptech.glide.c.L(l("TYPE", "AEILNTCFRPSBCZ".substring(2, 3)))) {
            this.f4657x = 2;
        }
    }

    public final fh.d z(String str) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        Socket socketM = m("STOR", str);
        if (socketM == null) {
            return null;
        }
        return new fh.d(socketM, this.f4657x == 0 ? new fh.e(new BufferedOutputStream(socketM.getOutputStream())) : socketM.getOutputStream());
    }
}
