package dh;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.SocketException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.EventListener;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class c extends ch.d {

    /* renamed from: s, reason: collision with root package name */
    public static final String f4644s = Charset.forName("ISO-8859-1").name();

    /* renamed from: j, reason: collision with root package name */
    public int f4645j;

    /* renamed from: q, reason: collision with root package name */
    public BufferedReader f4651q;
    public BufferedWriter r;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f4650p = true;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f4646k = new ArrayList();
    public boolean l = false;

    /* renamed from: m, reason: collision with root package name */
    public String f4647m = null;

    /* renamed from: n, reason: collision with root package name */
    public String f4648n = f4644s;

    /* renamed from: o, reason: collision with root package name */
    public final ch.c f4649o = new ch.c(this);

    @Override // ch.d
    public void d() throws IOException {
        super.d();
        this.f4651q = null;
        this.r = null;
        this.l = false;
        this.f4647m = null;
    }

    public final int g(InetAddress inetAddress, int i10) {
        StringBuilder sb2 = new StringBuilder("|");
        String hostAddress = inetAddress.getHostAddress();
        int iIndexOf = hostAddress.indexOf(37);
        if (iIndexOf > 0) {
            hostAddress = hostAddress.substring(0, iIndexOf);
        }
        if (inetAddress instanceof Inet4Address) {
            sb2.append("1");
        } else if (inetAddress instanceof Inet6Address) {
            sb2.append("2");
        }
        sb2.append("|");
        sb2.append(hostAddress);
        sb2.append("|");
        sb2.append(i10);
        sb2.append("|");
        return l("EPRT", sb2.toString());
    }

    public final int h() {
        this.l = true;
        ArrayList arrayList = this.f4646k;
        arrayList.clear();
        String line = this.f4651q.readLine();
        if (line == null) {
            throw new ch.a("Connection closed without indication.");
        }
        int length = line.length();
        if (length < 3) {
            throw new ch.a("Truncated server reply: ".concat(line));
        }
        try {
            this.f4645j = Integer.parseInt(line.substring(0, 3));
            arrayList.add(line);
            boolean z = this.f4650p;
            if (length > 3) {
                char cCharAt = line.charAt(3);
                if (cCharAt == '-') {
                    while (true) {
                        String line2 = this.f4651q.readLine();
                        if (line2 == null) {
                            throw new ch.a("Connection closed without indication.");
                        }
                        arrayList.add(line2);
                        if (line2.length() > 3 && line2.charAt(3) != '-' && Character.isDigit(line2.charAt(0))) {
                            break;
                        }
                    }
                } else if (z) {
                    if (length == 4) {
                        throw new ch.a(g.b.A("Truncated server reply: '", line, "'"));
                    }
                    if (cCharAt != ' ') {
                        throw new ch.a(g.b.A("Invalid server reply: '", line, "'"));
                    }
                }
            } else if (z) {
                throw new ch.a(g.b.A("Truncated server reply: '", line, "'"));
            }
            int i10 = this.f4645j;
            i();
            e(i10);
            int i11 = this.f4645j;
            if (i11 != 421) {
                return i11;
            }
            throw new ch.a("FTP response 421 received.  Server closed connection.");
        } catch (NumberFormatException unused) {
            throw new ch.a("Could not parse response code.\nServer Reply: ".concat(line));
        }
    }

    public final String i() {
        if (!this.l) {
            return this.f4647m;
        }
        StringBuilder sb2 = new StringBuilder(256);
        Iterator it = this.f4646k.iterator();
        while (it.hasNext()) {
            sb2.append((String) it.next());
            sb2.append("\r\n");
        }
        this.l = false;
        String string = sb2.toString();
        this.f4647m = string;
        return string;
    }

    public final int j(InetAddress inetAddress, int i10) {
        StringBuilder sb2 = new StringBuilder(24);
        sb2.append(inetAddress.getHostAddress().replace('.', ','));
        sb2.append(',');
        sb2.append(i10 >>> 8);
        sb2.append(',');
        sb2.append(i10 & 255);
        return l("PORT", sb2.toString());
    }

    public final int k(int i10) {
        String str;
        switch (i10) {
            case 1:
                str = "ABOR";
                break;
            case 2:
                str = "ACCT";
                break;
            case 3:
                str = "ALLO";
                break;
            case 4:
                str = "APPE";
                break;
            case 5:
                str = "CDUP";
                break;
            case 6:
                str = "CWD";
                break;
            case 7:
                str = "DELE";
                break;
            case 8:
                str = "EPRT";
                break;
            case 9:
                str = "EPSV";
                break;
            case 10:
                str = "FEAT";
                break;
            case 11:
                str = "HELP";
                break;
            case 12:
                str = "LIST";
                break;
            case 13:
                str = "MDTM";
                break;
            case 14:
                str = "MFMT";
                break;
            case 15:
                str = "MKD";
                break;
            case 16:
                str = "MLSD";
                break;
            case 17:
                str = "MLST";
                break;
            case 18:
                str = "MODE";
                break;
            case 19:
                str = "NLST";
                break;
            case 20:
                str = "NOOP";
                break;
            case 21:
                str = "PASS";
                break;
            case 22:
                str = "PASV";
                break;
            case 23:
                str = "PORT";
                break;
            case 24:
                str = "PWD";
                break;
            case 25:
                str = "QUIT";
                break;
            case 26:
                str = "REIN";
                break;
            case 27:
                str = "REST";
                break;
            case 28:
                str = "RETR";
                break;
            case 29:
                str = "RMD";
                break;
            case 30:
                str = "RNFR";
                break;
            case 31:
                str = "RNTO";
                break;
            case 32:
                str = "SITE";
                break;
            case 33:
                str = "SIZE";
                break;
            case 34:
                str = "SMNT";
                break;
            case 35:
                str = "STAT";
                break;
            case 36:
                str = "STOR";
                break;
            case 37:
                str = "STOU";
                break;
            case 38:
                str = "STRU";
                break;
            case 39:
                str = "SYST";
                break;
            case 40:
                str = "TYPE";
                break;
            case 41:
                str = "USER";
                break;
            default:
                throw null;
        }
        return l(str, null);
    }

    public int l(String str, String str2) throws IOException {
        if (this.r == null) {
            throw new IOException("Connection is not open");
        }
        StringBuilder sbM = g.b.m(str);
        if (str2 != null) {
            sbM.append(' ');
            sbM.append(str2);
        }
        sbM.append("\r\n");
        try {
            this.r.write(sbM.toString());
            this.r.flush();
            if (this.f4649o.f3248b.f8203a.size() > 0) {
                ch.c cVar = this.f4649o;
                cVar.getClass();
                new ch.b(cVar.f3247a, 0);
                Iterator it = cVar.f3248b.f8203a.iterator();
                if (it.hasNext()) {
                    ((EventListener) it.next()).getClass();
                    throw new ClassCastException();
                }
            }
            return h();
        } catch (SocketException e7) {
            if (f()) {
                throw e7;
            }
            throw new ch.a("Connection unexpectedly closed.");
        }
    }
}
