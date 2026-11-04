package ce;

import com.android.apksig.internal.apk.AndroidBinXmlParser;
import com.hierynomus.smbfs.SmbPath;
import com.hsae.autosdk.popup.constant.PopupConst;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

/* loaded from: classes.dex */
public class t0 extends URLConnection implements q0 {
    public static final d A;

    /* renamed from: x, reason: collision with root package name */
    public static final de.d f3173x = de.d.r();

    /* renamed from: y, reason: collision with root package name */
    public static final long f3174y;
    public static final boolean z;

    /* renamed from: a, reason: collision with root package name */
    public String f3175a;

    /* renamed from: b, reason: collision with root package name */
    public String f3176b;

    /* renamed from: c, reason: collision with root package name */
    public long f3177c;

    /* renamed from: d, reason: collision with root package name */
    public long f3178d;

    /* renamed from: e, reason: collision with root package name */
    public int f3179e;

    /* renamed from: f, reason: collision with root package name */
    public long f3180f;

    /* renamed from: g, reason: collision with root package name */
    public long f3181g;

    /* renamed from: h, reason: collision with root package name */
    public long f3182h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3183i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3184j;

    /* renamed from: k, reason: collision with root package name */
    public t f3185k;
    public e l;

    /* renamed from: m, reason: collision with root package name */
    public final p f3186m;

    /* renamed from: n, reason: collision with root package name */
    public c1 f3187n;

    /* renamed from: p, reason: collision with root package name */
    public String f3188p;

    /* renamed from: q, reason: collision with root package name */
    public int f3189q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f3190s;

    /* renamed from: t, reason: collision with root package name */
    public int f3191t;

    /* renamed from: v, reason: collision with root package name */
    public wd.c[] f3192v;

    /* renamed from: w, reason: collision with root package name */
    public int f3193w;

    static {
        long j10;
        try {
            Properties properties = wd.a.f17870a;
        } catch (ClassNotFoundException e7) {
            e7.printStackTrace();
        }
        String property = wd.a.f17870a.getProperty("jcifs.smb1.smb.client.attrExpirationPeriod");
        if (property != null) {
            try {
                j10 = Long.parseLong(property);
            } catch (NumberFormatException e10) {
                if (de.d.f4630b > 0) {
                    e10.printStackTrace(wd.a.f17871b);
                }
            }
        } else {
            j10 = PopupConst.DURATION_POPUP;
        }
        f3174y = j10;
        z = wd.a.a("jcifs.smb1.smb.client.ignoreCopyToException", true);
        A = new d();
    }

    public t0(String str) {
        this(new URL((URL) null, str, h.f3064a));
    }

    public static String B(String str, String str2) {
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

    public final int A(int i10, int i11, int i12, int i13) throws r0 {
        c();
        if (de.d.f4630b >= 3) {
            f3173x.getClass();
        }
        if (!this.f3187n.f3035f.f3233h.q(16)) {
            b0 b0Var = new b0();
            F(new a0(this.f3188p, i11, i10), b0Var);
            return b0Var.F;
        }
        y yVar = new y();
        x xVar = new x(this.f3188p, i10, i11, this.f3184j, i12, i13);
        if (this instanceof w0) {
            xVar.L |= 22;
            xVar.M |= 131072;
            yVar.V = true;
        }
        F(xVar, yVar);
        int i14 = yVar.G;
        this.f3179e = yVar.I & 32767;
        this.f3180f = System.currentTimeMillis() + f3174y;
        this.f3183i = true;
        return i14;
    }

    public final i C(int i10, String str) throws r0 {
        c();
        if (de.d.f4630b >= 3) {
            f3173x.getClass();
        }
        if (this.f3187n.f3035f.f3233h.q(16)) {
            q1 q1Var = new q1(i10);
            F(new n1(str, i10), q1Var);
            return q1Var.M0;
        }
        c0 c0Var = new c0(this.f3187n.f3035f.f3233h.f3024w.f3007n * 1000 * 60);
        F(new t(str, 5), c0Var);
        return c0Var;
    }

    public final void D(t0 t0Var) throws r0 {
        if (t().length() == 1 || t0Var.t().length() == 1) {
            throw new r0("Invalid operation for workgroups, servers, or shares");
        }
        E(null);
        t0Var.E(null);
        if (!this.f3187n.equals(t0Var.f3187n)) {
            throw new r0("Invalid operation for workgroups, servers, or shares");
        }
        if (de.d.f4630b >= 3) {
            f3173x.getClass();
        }
        this.f3182h = 0L;
        this.f3180f = 0L;
        t0Var.f3180f = 0L;
        F(new f0(this.f3188p, t0Var.f3188p), a());
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void E(q qVar) throws r0 {
        String str;
        String str2;
        String str3;
        de.d dVar = f3173x;
        boolean z4 = qVar instanceof u;
        if (z4) {
            return;
        }
        c();
        c1 c1Var = this.f3187n;
        e eVarD = A.d(c1Var.f3035f.f3233h.D, c1Var.f3032c, this.f3188p, this.f3186m);
        if (eVarD == null) {
            if (this.f3187n.f3037h && !z4 && !(qVar instanceof v)) {
                throw new r0(-1073741275, false);
            }
            if (qVar != null) {
                qVar.f3120i &= -4097;
                return;
            }
            return;
        }
        r0 r0Var = null;
        if (qVar != null) {
            byte b10 = qVar.f3114c;
            str = "A:";
            if ((b10 == 37 || b10 == 50) && (((i0) qVar).X & 255) == 16) {
                str = null;
            }
        }
        e eVar = eVarD;
        while (true) {
            try {
                if (de.d.f4630b >= 2) {
                    if (eVar != null) {
                        eVar.toString();
                    }
                    dVar.getClass();
                }
                b1 b1VarO = b1.o(wd.c.b(eVar.f3048e, false), ((URLConnection) this).url.getPort());
                b1VarO.l();
                this.f3187n = b1VarO.n(this.f3186m).a(eVar.f3049f, str);
                if (eVar != eVarD && (str3 = eVar.l) != null) {
                    eVar.f3054k.put(str3, eVar);
                    break;
                }
                break;
            } catch (IOException e7) {
                r0 r0Var2 = e7 instanceof r0 ? (r0) e7 : new r0(eVar.f3048e, e7);
                eVar = eVar.f3053j;
                if (eVar == eVarD) {
                    r0Var = r0Var2;
                    break;
                }
            }
        }
        if (r0Var != null) {
            throw r0Var;
        }
        if (de.d.f4630b >= 3) {
            dVar.getClass();
        }
        this.l = eVar;
        int i10 = eVar.f3046c;
        if (i10 < 0) {
            eVar.f3046c = 0;
        } else if (i10 > this.f3188p.length()) {
            eVar.f3046c = this.f3188p.length();
        }
        String strSubstring = this.f3188p.substring(eVar.f3046c);
        if (strSubstring.equals("")) {
            strSubstring = "\\";
        }
        if (!eVar.f3051h.equals("")) {
            strSubstring = g.b.l(eVar.f3051h, strSubstring, new StringBuilder("\\"));
        }
        this.f3188p = strSubstring;
        if (qVar != null && (str2 = qVar.f3131x) != null && str2.endsWith("\\") && !strSubstring.endsWith("\\")) {
            strSubstring = strSubstring.concat("\\");
        }
        if (qVar != null) {
            qVar.f3131x = strSubstring;
            qVar.f3120i |= 4096;
        }
    }

    public final void F(q qVar, q qVar2) throws r0 {
        while (true) {
            E(qVar);
            try {
                this.f3187n.b(qVar, qVar2);
                return;
            } catch (e unused) {
                qVar.m();
            }
        }
    }

    public final void G(int i10, long j10, long j11) throws r0 {
        m();
        int i11 = this.f3179e & 16;
        int iA = A(1, 256, i11, i11 != 0 ? 1 : 64);
        F(new r1(iA, i10 | i11, j10, j11), new s1(0));
        if (de.d.f4630b >= 3) {
            f3173x.getClass();
        }
        F(new u(iA), a());
        this.f3180f = 0L;
    }

    public final t a() {
        if (this.f3185k == null) {
            this.f3185k = new t(0);
        }
        return this.f3185k;
    }

    public final void b() {
        if (v()) {
            int i10 = this.f3189q;
            if (de.d.f4630b >= 3) {
                f3173x.getClass();
            }
            F(new u(i10), a());
            this.f3190s = false;
        }
    }

    public final void c() throws r0 {
        try {
            connect();
        } catch (r0 e7) {
            throw e7;
        } catch (UnknownHostException e10) {
            throw new r0("Failed to connect to server", e10);
        } catch (IOException e11) {
            throw new r0("Failed to connect to server", e11);
        }
    }

    @Override // java.net.URLConnection
    public final void connect() throws r0, UnknownHostException {
        c1 c1Var = this.f3187n;
        if (c1Var != null && c1Var.f3030a == 2 && c1Var.f3035f.f3233h.D == null) {
            c1Var.d(true);
        }
        c1 c1Var2 = this.f3187n;
        if (c1Var2 != null && c1Var2.f3030a == 2) {
            return;
        }
        t();
        o();
        while (true) {
            try {
                g();
                return;
            } catch (s e7) {
                throw e7;
            } catch (r0 e10) {
                if (q() == null) {
                    throw e10;
                }
                if (de.d.f4630b >= 3) {
                    e10.printStackTrace(f3173x);
                }
            }
        }
    }

    public final void d(t0 t0Var) throws r0 {
        if (this.f3176b == null || t0Var.f3176b == null) {
            throw new r0("Invalid operation for workgroups or servers");
        }
        d0 d0Var = new d0();
        e0 e0Var = new e0();
        c();
        t0Var.c();
        E(null);
        try {
            if (n().equals(t0Var.n())) {
                String str = this.f3175a;
                if (str.regionMatches(true, 0, t0Var.f3175a, 0, Math.min(str.length(), t0Var.f3175a.length()))) {
                    throw new r0("Source and destination paths overlap.");
                }
            }
        } catch (UnknownHostException unused) {
        }
        s0 s0Var = new s0(this);
        s0Var.setDaemon(true);
        s0Var.start();
        b1 b1Var = this.f3187n.f3035f.f3233h;
        b1 b1Var2 = t0Var.f3187n.f3035f.f3233h;
        int i10 = b1Var.z;
        int i11 = b1Var2.z;
        if (i10 < i11) {
            b1Var2.z = i10;
        } else {
            b1Var.z = i11;
        }
        int iMin = Math.min(b1Var.A - 70, b1Var.z - 70);
        try {
            e(t0Var, (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 2, iMin), iMin, s0Var, d0Var, e0Var);
        } finally {
            s0Var.a(null, -1, null, 0L);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x019e, code lost:
    
        if (r0 != 1) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01a0, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01a2, code lost:
    
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01bd, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0086 A[Catch: MalformedURLException -> 0x00c1, UnknownHostException -> 0x00c3, TRY_LEAVE, TryCatch #9 {MalformedURLException -> 0x00c1, UnknownHostException -> 0x00c3, blocks: (B:25:0x0083, B:27:0x0086), top: B:112:0x0083 }] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(t0 t0Var, byte[][] bArr, int i10, s0 s0Var, d0 d0Var, e0 e0Var) throws r0 {
        int i11;
        t0[] t0VarArrX;
        d0 d0Var2 = d0Var;
        if (this.f3180f < System.currentTimeMillis()) {
            this.f3179e = 17;
            this.f3177c = 0L;
            this.f3178d = 0L;
            this.f3183i = false;
            i iVarC = C(257, t());
            this.f3179e = iVarC.getAttributes();
            this.f3177c = iVarC.a();
            this.f3178d = iVarC.getLastWriteTime();
            this.f3183i = true;
            this.f3180f = System.currentTimeMillis() + f3174y;
        }
        if (u()) {
            if (t0Var.t().length() > 1) {
                try {
                    t0Var.y();
                    i11 = 0;
                    try {
                        t0Var.G(this.f3179e, this.f3177c, this.f3178d);
                    } catch (r0 e7) {
                        e = e7;
                        int i12 = e.f3160a;
                        if (i12 != -1073741790 && i12 != -1073741771) {
                            throw e;
                        }
                        t0VarArrX = x();
                        while (i11 < t0VarArrX.length) {
                            try {
                            } catch (MalformedURLException e10) {
                                throw new r0(((URLConnection) this).url.toString(), e10);
                            } catch (UnknownHostException e11) {
                                throw new r0(((URLConnection) this).url.toString(), e11);
                            }
                        }
                        return;
                    }
                } catch (r0 e12) {
                    e = e12;
                    i11 = 0;
                }
            } else {
                i11 = 0;
            }
            t0VarArrX = x();
            while (i11 < t0VarArrX.length) {
                String strP = t0VarArrX[i11].p();
                t0 t0Var2 = t0VarArrX[i11];
                int i13 = i11;
                d0 d0Var3 = d0Var2;
                t0VarArrX[i13].e(new t0(t0Var, strP, t0Var2.r, t0Var2.f3179e, t0Var2.f3177c, t0Var2.f3178d, t0Var2.f3181g), bArr, i10, s0Var, d0Var, e0Var);
                i11 = i13 + 1;
                d0Var2 = d0Var3;
            }
            return;
        }
        ?? r11 = 0;
        try {
            try {
                z(1, 0, 128, 0);
                try {
                    t0Var.z(82, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, this.f3179e, 0);
                } catch (s e13) {
                    int i14 = t0Var.f3179e;
                    if ((i14 & 1) == 0) {
                        throw e13;
                    }
                    t0Var.G(i14 & (-2), 0L, 0L);
                    t0Var.z(82, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, this.f3179e, 0);
                }
                char c7 = 0;
                long j10 = 0;
                while (true) {
                    d0Var2.G = this.f3189q;
                    d0Var2.F = j10;
                    d0Var2.I = i10;
                    d0Var2.H = i10;
                    e0Var.F = bArr[c7];
                    e0Var.G = r11;
                    F(d0Var2, e0Var);
                    synchronized (s0Var) {
                        r0 r0Var = s0Var.f3167f;
                        if (r0Var != null) {
                            throw r0Var;
                        }
                        while (!s0Var.f3165d) {
                            try {
                                s0Var.wait();
                            } catch (InterruptedException e14) {
                                throw new r0(((URLConnection) t0Var).url.toString(), e14);
                            }
                        }
                        r0 r0Var2 = s0Var.f3167f;
                        if (r0Var2 != null) {
                            throw r0Var2;
                        }
                        int i15 = e0Var.I;
                        if (i15 > 0) {
                            s0Var.a(bArr[c7], i15, t0Var, j10);
                        }
                    }
                    t0Var.F(new r1(t0Var.f3189q, this.f3179e, this.f3177c, this.f3178d), new s1(0));
                    if (t0Var.v()) {
                        int i16 = t0Var.f3189q;
                        if (de.d.f4630b >= 3) {
                            f3173x.getClass();
                        }
                        t0Var.F(new u(i16), t0Var.a());
                        t0Var.f3190s = r11;
                    }
                    j10 += e0Var.I;
                    r11 = 0;
                }
            } catch (r0 e15) {
                if (!z) {
                    throw new r0("Failed to copy file from [" + toString() + "] to [" + t0Var.toString() + "]", e15);
                }
                if (de.d.f4630b > 1) {
                    e15.printStackTrace(f3173x);
                }
            }
        } finally {
            b();
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof t0)) {
            return false;
        }
        t0 t0Var = (t0) obj;
        if (this == t0Var) {
            return true;
        }
        String path = ((URLConnection) this).url.getPath();
        String path2 = ((URLConnection) t0Var).url.getPath();
        int iLastIndexOf = path.lastIndexOf(47);
        int iLastIndexOf2 = path2.lastIndexOf(47);
        int length = path.length() - iLastIndexOf;
        int length2 = path2.length() - iLastIndexOf2;
        if ((length <= 1 || path.charAt(iLastIndexOf + 1) != '.') && ((length2 <= 1 || path2.charAt(iLastIndexOf2 + 1) != '.') && !(length == length2 && path.regionMatches(true, iLastIndexOf, path2, iLastIndexOf2, length)))) {
            return false;
        }
        t();
        t0Var.t();
        if (!this.f3175a.equalsIgnoreCase(t0Var.f3175a)) {
            return false;
        }
        try {
            return n().equals(t0Var.n());
        } catch (UnknownHostException unused) {
            return r().equalsIgnoreCase(t0Var.r());
        }
    }

    public final void f() throws r0 {
        int i10;
        m();
        t();
        String str = this.f3188p;
        if (t().length() == 1) {
            throw new r0("Invalid operation for workgroups, servers, or shares");
        }
        if (System.currentTimeMillis() > this.f3180f) {
            this.f3179e = 17;
            this.f3177c = 0L;
            this.f3178d = 0L;
            this.f3183i = false;
            i iVarC = C(257, t());
            this.f3179e = iVarC.getAttributes();
            this.f3177c = iVarC.a();
            this.f3178d = iVarC.getLastWriteTime();
            this.f3180f = System.currentTimeMillis() + f3174y;
            this.f3183i = true;
        }
        if ((this.f3179e & 1) != 0) {
            if (t().length() == 1) {
                i10 = 0;
            } else {
                m();
                i10 = this.f3179e & 32767;
            }
            if (t().length() == 1) {
                throw new r0("Invalid operation for workgroups, servers, or shares");
            }
            G(i10 & 12454, 0L, 0L);
        }
        if (de.d.f4630b >= 3) {
            f3173x.getClass();
        }
        if ((this.f3179e & 16) != 0) {
            try {
                for (t0 t0Var : x()) {
                    t0Var.f();
                }
            } catch (r0 e7) {
                if (e7.f3160a != -1073741809) {
                    throw e7;
                }
            }
            F(new t(str, 3), a());
        } else {
            F(new t(str, 2), a());
        }
        this.f3182h = 0L;
        this.f3180f = 0L;
    }

    public final void g() throws s {
        b1 b1VarO;
        de.d dVar = f3173x;
        wd.c cVarN = n();
        c1 c1Var = this.f3187n;
        if (c1Var != null) {
            b1VarO = c1Var.f3035f.f3233h;
        } else {
            b1VarO = b1.o(cVarN, ((URLConnection) this).url.getPort());
            this.f3187n = b1VarO.n(this.f3186m).a(this.f3176b, null);
        }
        e eVar = this.l;
        String strR = eVar != null ? eVar.f3048e : r();
        c1 c1Var2 = this.f3187n;
        c1Var2.f3037h = A.d(strR, c1Var2.f3032c, null, this.f3186m) != null;
        c1 c1Var3 = this.f3187n;
        if (c1Var3.f3037h) {
            c1Var3.f3030a = 2;
        }
        try {
            if (de.d.f4630b >= 3) {
                if (cVarN != null) {
                    cVarN.toString();
                }
                dVar.getClass();
            }
            this.f3187n.c(null, null);
        } catch (s e7) {
            if (this.f3176b == null) {
                c1 c1VarA = b1VarO.n(p.f3104m).a(null, null);
                this.f3187n = c1VarA;
                c1VarA.c(null, null);
            } else {
                ((URLConnection) this).url.toString();
                if (de.d.f4630b >= 1 && this.f3193w < this.f3192v.length) {
                    e7.printStackTrace(dVar);
                }
                throw e7;
            }
        }
    }

    @Override // java.net.URLConnection
    public final int getContentLength() {
        try {
            return (int) (w() & 4294967295L);
        } catch (r0 unused) {
            return 0;
        }
    }

    @Override // java.net.URLConnection
    public final long getDate() {
        try {
            if (t().length() <= 1) {
                return 0L;
            }
            m();
            return this.f3178d;
        } catch (r0 unused) {
            return 0L;
        }
    }

    @Override // java.net.URLConnection
    public final InputStream getInputStream() {
        return new u0(this, 1);
    }

    @Override // java.net.URLConnection
    public final long getLastModified() {
        try {
            if (t().length() <= 1) {
                return 0L;
            }
            m();
            return this.f3178d;
        } catch (r0 unused) {
            return 0L;
        }
    }

    @Override // java.net.URLConnection
    public final OutputStream getOutputStream() {
        return new v0(this, 82);
    }

    public final g[] h() throws ch.a {
        de.d dVar = f3173x;
        String str = "ncacn_np:" + n().c() + "[\\PIPE\\netdfs]";
        p pVar = this.f3186m;
        if (!str.startsWith("ncacn_np:")) {
            throw new ch.a("DCERPC transport not supported: ".concat(str));
        }
        d2.f fVar = new d2.f(str, pVar);
        try {
            yd.a aVar = new yd.a(r());
            fVar.q(aVar);
            if (aVar.f19121h != 0) {
                throw new r0(aVar.f19121h, true);
            }
            yd.e eVar = (yd.e) ((nh.b) aVar.f19123j.f19132d);
            z0[] z0VarArr = new z0[eVar.f19133b];
            for (int i10 = 0; i10 < eVar.f19133b; i10++) {
                z0VarArr[i10] = new z0(eVar.f19134c[i10].f19136c);
            }
            return z0VarArr;
        } finally {
            try {
                fVar.f4255b = 0;
                v0 v0Var = (v0) fVar.f4260g;
                if (v0Var != null) {
                    v0Var.close();
                }
            } catch (IOException e7) {
                if (de.d.f4630b >= 4) {
                    e7.printStackTrace(dVar);
                }
            }
        }
    }

    public final int hashCode() {
        int iHashCode;
        try {
            iHashCode = n().f17882a.hashCode();
        } catch (UnknownHostException unused) {
            iHashCode = r().toUpperCase().hashCode();
        }
        t();
        return this.f3175a.toUpperCase().hashCode() + iHashCode;
    }

    public final void i(ArrayList arrayList) throws r0 {
        int i10;
        int i11;
        g1 g1Var;
        de.d dVar;
        int iHashCode;
        String strT = t();
        if (((URLConnection) this).url.getPath().lastIndexOf(47) != r1.length() - 1) {
            throw new r0(((URLConnection) this).url.toString() + " directory must end with '/'");
        }
        q d1Var = new d1(strT);
        f1 f1Var = new f1();
        int i12 = de.d.f4630b;
        de.d dVar2 = f3173x;
        int i13 = 3;
        if (i12 >= 3) {
            dVar2.getClass();
        }
        F(d1Var, f1Var);
        int i14 = f1Var.f3063t0;
        g1 g1Var2 = new g1(i14, f1Var.R0, f1Var.Q0);
        f1Var.S = (byte) 2;
        while (true) {
            int i15 = 0;
            while (true) {
                i10 = f1Var.Z;
                if (i15 >= i10) {
                    break;
                }
                g gVar = f1Var.f3078h0[i15];
                String name = gVar.getName();
                if ((name.length() >= i13 || !(((iHashCode = name.hashCode()) == 46 || iHashCode == 1472) && (name.equals(".") || name.equals("..")))) && name.length() > 0) {
                    i11 = i15;
                    g1Var = g1Var2;
                    dVar = dVar2;
                    arrayList.add(new t0(this, name, 1, gVar.getAttributes(), gVar.a(), gVar.b(), gVar.length()));
                } else {
                    i11 = i15;
                    g1Var = g1Var2;
                    dVar = dVar2;
                }
                i15 = i11 + 1;
                g1Var2 = g1Var;
                dVar2 = dVar;
                i13 = 3;
            }
            g1 g1Var3 = g1Var2;
            de.d dVar3 = dVar2;
            if (f1Var.M0 || i10 == 0) {
                try {
                    F(new v(i14), a());
                    return;
                } catch (r0 e7) {
                    if (de.d.f4630b >= 4) {
                        e7.printStackTrace(dVar3);
                        return;
                    }
                    return;
                }
            }
            int i16 = f1Var.R0;
            String str = f1Var.Q0;
            g1Var3.m();
            g1Var3.N0 = i16;
            g1Var3.O0 = str;
            g1Var3.f3120i = 0;
            f1Var.m();
            F(g1Var3, f1Var);
            g1Var2 = g1Var3;
            dVar2 = dVar3;
            i13 = 3;
        }
    }

    public final g[] j() throws ch.a {
        de.d dVar = f3173x;
        yd.c cVar = new yd.c(((URLConnection) this).url.getHost());
        String str = "ncacn_np:" + n().c() + "[\\PIPE\\srvsvc]";
        p pVar = this.f3186m;
        if (!str.startsWith("ncacn_np:")) {
            throw new ch.a("DCERPC transport not supported: ".concat(str));
        }
        d2.f fVar = new d2.f(str, pVar);
        try {
            fVar.q(cVar);
            if (cVar.f19125h != 0) {
                throw new r0(cVar.f19125h, true);
            }
            yd.h hVar = (yd.h) cVar.f19128k;
            yd.b[] bVarArr = new yd.b[hVar.f19140b];
            for (int i10 = 0; i10 < hVar.f19140b; i10++) {
                bVarArr[i10] = new yd.b(hVar.f19141c[i10]);
            }
            return bVarArr;
        } finally {
            try {
                fVar.f4255b = 0;
                v0 v0Var = (v0) fVar.f4260g;
                if (v0Var != null) {
                    v0Var.close();
                }
            } catch (IOException e7) {
                if (de.d.f4630b >= 4) {
                    e7.printStackTrace(dVar);
                }
            }
        }
    }

    public final void k(ArrayList arrayList) throws r0 {
        j jVar;
        l lVar;
        boolean z4;
        int i10;
        int i11;
        int iS = ((URLConnection) this).url.getHost().length() == 0 ? 0 : s();
        if (iS == 0) {
            c();
            jVar = new j(this.f3187n.f3035f.f3233h.f3024w.f2999e, Integer.MIN_VALUE);
            lVar = new l();
        } else {
            if (iS != 2) {
                throw new r0("The requested list operations is invalid: " + ((URLConnection) this).url.toString());
            }
            jVar = new j(((URLConnection) this).url.getHost(), -1);
            lVar = new l();
        }
        j jVar2 = jVar;
        l lVar2 = lVar;
        do {
            F(jVar2, lVar2);
            int i12 = lVar2.Y;
            if (i12 != 0 && i12 != 234) {
                throw new r0(lVar2.Y, true);
            }
            z4 = i12 == 234;
            int i13 = lVar2.Z;
            if (z4) {
                i13--;
            }
            int i14 = i13;
            int i15 = 0;
            while (i15 < i14) {
                g gVar = lVar2.f3078h0[i15];
                String name = gVar.getName();
                if (name.length() > 0) {
                    i10 = i14;
                    i11 = i15;
                    arrayList.add(new t0(this, name, gVar.getType(), 17, 0L, 0L, 0L));
                } else {
                    i10 = i14;
                    i11 = i15;
                }
                i15 = i11 + 1;
                i14 = i10;
            }
            if (s() != 2) {
                return;
            }
            jVar2.X = (byte) -41;
            String str = lVar2.N0;
            jVar2.m();
            jVar2.N0 = str;
            lVar2.m();
        } while (z4);
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(ArrayList arrayList) throws r0, UnknownHostException {
        g[] gVarArrJ;
        String path = ((URLConnection) this).url.getPath();
        if (path.lastIndexOf(47) != path.length() - 1) {
            throw new r0(((URLConnection) this).url.toString() + " directory must end with '/'");
        }
        if (s() != 4) {
            throw new r0("The requested list operations is invalid: " + ((URLConnection) this).url.toString());
        }
        HashMap map = new HashMap();
        String strR = r();
        HashMap mapC = A.c(this.f3186m);
        de.d dVar = f3173x;
        if (mapC != null && mapC.get(strR.toLowerCase()) != null) {
            try {
                for (g gVar : h()) {
                    if (!map.containsKey(gVar)) {
                        map.put(gVar, gVar);
                    }
                }
            } catch (IOException e7) {
                if (de.d.f4630b >= 4) {
                    e7.printStackTrace(dVar);
                }
            }
        }
        wd.c cVarO = o();
        IOException e10 = null;
        while (cVarO != null) {
            try {
                g();
                try {
                    gVarArrJ = j();
                } catch (IOException e11) {
                    if (de.d.f4630b >= 3) {
                        e11.printStackTrace(dVar);
                    }
                    q mVar = new m();
                    n nVar = new n(0);
                    F(mVar, nVar);
                    if (nVar.Y != 0) {
                        throw new r0(nVar.Y, true);
                    }
                    gVarArrJ = nVar.f3078h0;
                }
                for (g gVar2 : gVarArrJ) {
                    if (!map.containsKey(gVar2)) {
                        map.put(gVar2, gVar2);
                    }
                }
                if (e10 == null && map.isEmpty()) {
                    if (!(e10 instanceof r0)) {
                        throw new r0(((URLConnection) this).url.toString(), e10);
                    }
                    throw ((r0) e10);
                }
                for (g gVar3 : map.keySet()) {
                    String name = gVar3.getName();
                    if (name.length() > 0) {
                        arrayList.add(new t0(this, name, gVar3.getType(), 17, 0L, 0L, 0L));
                    }
                }
            } catch (IOException e12) {
                e10 = e12;
                if (de.d.f4630b >= 3) {
                    e10.printStackTrace(dVar);
                }
                cVarO = q();
            }
        }
        if (e10 == null) {
        }
        while (r0.hasNext()) {
        }
    }

    public final boolean m() throws r0 {
        if (this.f3180f > System.currentTimeMillis()) {
            return this.f3183i;
        }
        this.f3179e = 17;
        this.f3177c = 0L;
        this.f3178d = 0L;
        this.f3183i = false;
        try {
            if (((URLConnection) this).url.getHost().length() != 0) {
                if (this.f3176b == null) {
                    if (s() == 2) {
                        wd.c.b(((URLConnection) this).url.getHost(), true);
                    } else {
                        wd.c.b(((URLConnection) this).url.getHost(), false).d();
                    }
                } else if (t().length() == 1 || this.f3176b.equalsIgnoreCase("IPC$")) {
                    c();
                } else {
                    i iVarC = C(257, t());
                    this.f3179e = iVarC.getAttributes();
                    this.f3177c = iVarC.a();
                    this.f3178d = iVarC.getLastWriteTime();
                }
            }
            this.f3183i = true;
        } catch (r0 e7) {
            switch (e7.f3160a) {
                case -1073741809:
                case -1073741773:
                case -1073741772:
                case -1073741766:
                    break;
                default:
                    throw e7;
            }
        } catch (UnknownHostException unused) {
        }
        this.f3180f = System.currentTimeMillis() + f3174y;
        return this.f3183i;
    }

    public final wd.c n() {
        int i10 = this.f3193w;
        return i10 == 0 ? o() : this.f3192v[i10 - 1];
    }

    public final wd.c o() throws UnknownHostException {
        this.f3193w = 0;
        String host = ((URLConnection) this).url.getHost();
        String path = ((URLConnection) this).url.getPath();
        String query = ((URLConnection) this).url.getQuery();
        if (query != null) {
            String strB = B(query, "server");
            if (strB != null && strB.length() > 0) {
                this.f3192v = new wd.c[]{wd.c.b(strB, false)};
                return q();
            }
            String strB2 = B(query, "address");
            if (strB2 != null && strB2.length() > 0) {
                this.f3192v = new wd.c[]{new wd.c(InetAddress.getByAddress(host, InetAddress.getByName(strB2).getAddress()))};
                return q();
            }
        }
        if (host.length() == 0) {
            try {
                this.f3192v = new wd.c[]{wd.c.b(ae.g.d(null, 1, "\u0001\u0002__MSBROWSE__\u0002").f(), false)};
            } catch (UnknownHostException e7) {
                p.i();
                if (p.f3101i.equals("?")) {
                    throw e7;
                }
                this.f3192v = wd.c.a(p.f3101i, true);
            }
        } else if (path.length() == 0 || path.equals("/")) {
            this.f3192v = wd.c.a(host, true);
        } else {
            this.f3192v = wd.c.a(host, false);
        }
        return q();
    }

    public final String p() {
        t();
        if (this.f3175a.length() > 1) {
            int length = this.f3175a.length() - 2;
            while (this.f3175a.charAt(length) != '/') {
                length--;
            }
            return this.f3175a.substring(length + 1);
        }
        if (this.f3176b != null) {
            return this.f3176b + '/';
        }
        if (((URLConnection) this).url.getHost().length() <= 0) {
            return "smb1://";
        }
        return ((URLConnection) this).url.getHost() + '/';
    }

    public final wd.c q() {
        int i10 = this.f3193w;
        wd.c[] cVarArr = this.f3192v;
        if (i10 >= cVarArr.length) {
            return null;
        }
        this.f3193w = i10 + 1;
        return cVarArr[i10];
    }

    public final String r() {
        String host = ((URLConnection) this).url.getHost();
        if (host.length() == 0) {
            return null;
        }
        return host;
    }

    public final int s() throws r0 {
        int i10;
        if (this.r == 0) {
            if (t().length() > 1) {
                this.r = 1;
            } else if (this.f3176b != null) {
                c();
                if (this.f3176b.equals("IPC$")) {
                    this.r = 16;
                } else if (this.f3187n.f3033d.equals("LPT1:")) {
                    this.r = 32;
                } else if (this.f3187n.f3033d.equals("COMM")) {
                    this.r = 64;
                } else {
                    this.r = 8;
                }
            } else if (((URLConnection) this).url.getAuthority() == null || ((URLConnection) this).url.getAuthority().length() == 0) {
                this.r = 2;
            } else {
                try {
                    Object obj = n().f17882a;
                    if ((obj instanceof ae.g) && ((i10 = ((ae.g) obj).f634a.f579c) == 29 || i10 == 27)) {
                        this.r = 2;
                        return 2;
                    }
                    this.r = 4;
                } catch (UnknownHostException e7) {
                    throw new r0(((URLConnection) this).url.toString(), e7);
                }
            }
        }
        return this.r;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String t() {
        int i10;
        int i11;
        int i12;
        char c7;
        if (this.f3188p == null) {
            char[] charArray = ((URLConnection) this).url.getPath().toCharArray();
            char[] cArr = new char[charArray.length];
            int length = charArray.length;
            int i13 = 0;
            int i14 = 0;
            char c10 = 0;
            while (i13 < length) {
                if (c10 == 0) {
                    char c11 = charArray[i13];
                    if (c11 != '/') {
                        return null;
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
                                        }
                                        i14 = i11;
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
            this.f3175a = str;
            if (i14 > 1) {
                int i16 = i14 - 1;
                int iIndexOf = str.indexOf(47, 1);
                if (iIndexOf < 0) {
                    this.f3176b = this.f3175a.substring(1);
                    this.f3188p = "\\";
                } else if (iIndexOf == i16) {
                    this.f3176b = this.f3175a.substring(1, iIndexOf);
                    this.f3188p = "\\";
                } else {
                    this.f3176b = this.f3175a.substring(1, iIndexOf);
                    String str2 = this.f3175a;
                    if (cArr[i16] == '/') {
                        i14 = i16;
                    }
                    String strSubstring = str2.substring(iIndexOf, i14);
                    this.f3188p = strSubstring;
                    this.f3188p = strSubstring.replace('/', SmbPath.SEPARATOR);
                }
            } else {
                this.f3176b = null;
                this.f3188p = "\\";
            }
        }
        return this.f3188p;
    }

    @Override // java.net.URLConnection
    public final String toString() {
        String string = ((URLConnection) this).url.toString();
        return (!ge.b.f6138d || string == null) ? string : string.replaceFirst("^(smb.*:).*(@.*)$", "$1******$2");
    }

    public final boolean u() {
        if (t().length() == 1) {
            return true;
        }
        return m() && (this.f3179e & 16) == 16;
    }

    public final boolean v() {
        c1 c1Var;
        return this.f3190s && (c1Var = this.f3187n) != null && c1Var.f3030a == 2 && this.f3191t == c1Var.f3038i;
    }

    public final long w() throws r0 {
        if (this.f3182h > System.currentTimeMillis()) {
            return this.f3181g;
        }
        if (s() == 8) {
            m1 m1Var = new m1();
            F(new k1(), m1Var);
            this.f3181g = ((l1) m1Var.M0).f3086a * r0.f3088c * r0.f3089d;
        } else if (t().length() <= 1 || this.r == 16) {
            this.f3181g = 0L;
        } else {
            this.f3181g = C(AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, t()).getSize();
        }
        this.f3182h = System.currentTimeMillis() + f3174y;
        return this.f3181g;
    }

    public final t0[] x() throws r0 {
        ArrayList arrayList = new ArrayList();
        try {
            if (((URLConnection) this).url.getHost().length() == 0 || s() == 2) {
                k(arrayList);
            } else if (this.f3176b == null) {
                l(arrayList);
            } else {
                i(arrayList);
            }
            return (t0[]) arrayList.toArray(new t0[arrayList.size()]);
        } catch (MalformedURLException e7) {
            throw new r0(((URLConnection) this).url.toString(), e7);
        } catch (UnknownHostException e10) {
            throw new r0(((URLConnection) this).url.toString(), e10);
        }
    }

    public final void y() throws r0 {
        String strT = t();
        if (strT.length() == 1) {
            throw new r0("Invalid operation for workgroups, servers, or shares");
        }
        if (de.d.f4630b >= 3) {
            f3173x.getClass();
        }
        F(new t(strT, 1), a());
        this.f3182h = 0L;
        this.f3180f = 0L;
    }

    public final void z(int i10, int i11, int i12, int i13) {
        if (v()) {
            return;
        }
        this.f3189q = A(i10, i11, i12, i13);
        this.f3190s = true;
        this.f3191t = this.f3187n.f3038i;
    }

    public t0(URL url) {
        this(url, new p(url.getUserInfo()));
    }

    public t0(URL url, p pVar) {
        super(url);
        this.f3184j = 7;
        this.f3185k = null;
        this.l = null;
        this.f3187n = null;
        this.f3186m = pVar == null ? new p(url.getUserInfo()) : pVar;
        t();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public t0(t0 t0Var, String str, int i10, int i11, long j10, long j11, long j12) {
        URL url;
        int i12;
        if (t0Var.r != 2 && ((URLConnection) t0Var).url.getHost().length() != 0) {
            t0Var.t();
            if (t0Var.f3176b == null) {
                Object obj = t0Var.n().f17882a;
                if ((obj instanceof ae.g) && ((i12 = ((ae.g) obj).f634a.f579c) == 29 || i12 == 27)) {
                    t0Var.r = 2;
                } else {
                    t0Var.r = 4;
                }
            }
            URL url2 = ((URLConnection) t0Var).url;
            StringBuilder sbM = g.b.m(str);
            sbM.append((i11 & 16) <= 0 ? "" : "/");
            url = new URL(url2, sbM.toString());
            this(url);
            this.f3186m = t0Var.f3186m;
            if (t0Var.f3176b != null) {
                this.f3187n = t0Var.f3187n;
                this.l = t0Var.l;
            }
            int length = str.length() - 1;
            str = str.charAt(length) == '/' ? str.substring(0, length) : str;
            if (t0Var.f3176b != null) {
                this.f3188p = "\\";
            } else if (t0Var.f3188p.equals("\\")) {
                this.f3188p = da.b.c("\\", str);
            } else {
                this.f3188p = t0Var.f3188p + SmbPath.SEPARATOR + str;
            }
            this.r = i10;
            this.f3179e = i11;
            this.f3177c = j10;
            this.f3178d = j11;
            this.f3181g = j12;
            this.f3183i = true;
            long jCurrentTimeMillis = System.currentTimeMillis() + f3174y;
            this.f3182h = jCurrentTimeMillis;
            this.f3180f = jCurrentTimeMillis;
        }
        t0Var.r = 2;
        url = new URL((URL) null, g.b.A("smb1://", str, "/"), h.f3064a);
        this(url);
        this.f3186m = t0Var.f3186m;
        if (t0Var.f3176b != null) {
        }
        int length2 = str.length() - 1;
        if (str.charAt(length2) == '/') {
        }
        if (t0Var.f3176b != null) {
        }
        this.r = i10;
        this.f3179e = i11;
        this.f3177c = j10;
        this.f3178d = j11;
        this.f3181g = j12;
        this.f3183i = true;
        long jCurrentTimeMillis2 = System.currentTimeMillis() + f3174y;
        this.f3182h = jCurrentTimeMillis2;
        this.f3180f = jCurrentTimeMillis2;
    }
}
