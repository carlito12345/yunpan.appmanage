package ce;

import com.hierynomus.smbj.SMBClient;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NoRouteToHostException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.LinkedList;
import java.util.ListIterator;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes.dex */
public final class b1 extends ee.b implements q0 {
    public static final byte[] E = new byte[65535];
    public static final t F = new t(4);
    public static final de.d G = de.d.r();
    public final int A;
    public int B;
    public boolean C;
    public String D;

    /* renamed from: h, reason: collision with root package name */
    public final InetAddress f3013h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3014i;

    /* renamed from: j, reason: collision with root package name */
    public final wd.c f3015j;

    /* renamed from: k, reason: collision with root package name */
    public Socket f3016k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f3017m;

    /* renamed from: n, reason: collision with root package name */
    public OutputStream f3018n;

    /* renamed from: p, reason: collision with root package name */
    public InputStream f3019p;

    /* renamed from: q, reason: collision with root package name */
    public final byte[] f3020q = new byte[512];
    public final t r = new t(0);

    /* renamed from: s, reason: collision with root package name */
    public long f3021s = System.currentTimeMillis() + q0.f3150u0;

    /* renamed from: t, reason: collision with root package name */
    public r f3022t;

    /* renamed from: v, reason: collision with root package name */
    public final LinkedList f3023v;

    /* renamed from: w, reason: collision with root package name */
    public final a1 f3024w;

    /* renamed from: x, reason: collision with root package name */
    public int f3025x;

    /* renamed from: y, reason: collision with root package name */
    public int f3026y;
    public int z;

    public b1(wd.c cVar, int i10, InetAddress inetAddress, int i11) {
        new LinkedList();
        this.f3022t = null;
        this.f3023v = new LinkedList();
        this.f3024w = new a1();
        this.f3025x = q0.f3146o0;
        this.f3026y = q0.f3135c0;
        this.z = q0.f3136d0;
        this.A = q0.f3137e0;
        this.B = q0.f3147p0;
        this.C = q0.f3138f0;
        this.D = null;
        this.f3015j = cVar;
        this.l = i10;
        this.f3013h = inetAddress;
        this.f3014i = i11;
    }

    public static synchronized b1 o(wd.c cVar, int i10) {
        return p(cVar, i10, q0.f3133a0, q0.f3134b0);
    }

    public static synchronized b1 p(wd.c cVar, int i10, InetAddress inetAddress, int i11) {
        int i12;
        int i13;
        LinkedList linkedList = q0.f3149r0;
        synchronized (linkedList) {
            try {
                if (q0.s0 != 1) {
                    ListIterator listIterator = linkedList.listIterator();
                    while (listIterator.hasNext()) {
                        b1 b1Var = (b1) listIterator.next();
                        b1Var.getClass();
                        String strD = cVar.d();
                        String str = b1Var.D;
                        if (str == null || strD.equalsIgnoreCase(str)) {
                            if (cVar.equals(b1Var.f3015j) && (i10 == 0 || i10 == (i13 = b1Var.l) || (i10 == 445 && i13 == 139))) {
                                InetAddress inetAddress2 = b1Var.f3013h;
                                if (inetAddress == inetAddress2 || (inetAddress != null && inetAddress.equals(inetAddress2))) {
                                    if (i11 != b1Var.f3014i || ((i12 = q0.s0) != 0 && b1Var.f3023v.size() >= i12)) {
                                    }
                                    return b1Var;
                                }
                            }
                        }
                    }
                }
                b1 b1Var2 = new b1(cVar, i10, inetAddress, i11);
                q0.f3149r0.add(0, b1Var2);
                return b1Var2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // ee.b
    public final void c() throws r0 {
        a1 a1Var = this.f3024w;
        z zVar = new z(a1Var);
        int i10 = 139;
        try {
            r(this.l, zVar);
        } catch (ConnectException unused) {
            int i11 = this.l;
            if (i11 != 0 && i11 != 445) {
                i10 = SMBClient.DEFAULT_PORT;
            }
            r(i10, zVar);
            this.l = i10;
        } catch (NoRouteToHostException unused2) {
            int i12 = this.l;
            if (i12 != 0 && i12 != 445) {
                i10 = SMBClient.DEFAULT_PORT;
            }
            r(i10, zVar);
            this.l = i10;
        }
        if (zVar.C > 10) {
            throw new r0("This client does not support the negotiated dialect.");
        }
        if ((a1Var.f2998d & Integer.MIN_VALUE) != Integer.MIN_VALUE && a1Var.f3008o != 8 && q0.f3141j0 == 0) {
            throw new r0("Unexpected encryption key length: " + a1Var.f3008o);
        }
        this.D = this.f3015j.d();
        if (a1Var.f3004j || (a1Var.f3003i && q0.f3140i0)) {
            this.f3025x |= 4;
        } else {
            this.f3025x &= 65531;
        }
        int iMin = Math.min(this.f3026y, a1Var.f2995a);
        this.f3026y = iMin;
        if (iMin < 1) {
            this.f3026y = 1;
        }
        this.z = Math.min(this.z, a1Var.f2996b);
        int i13 = this.B;
        int i14 = a1Var.f2998d;
        int i15 = i13 & i14;
        this.B = i15;
        if ((i14 & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            this.B = i15 | Integer.MIN_VALUE;
        }
        int i16 = this.B;
        if ((i16 & 4) == 0) {
            if (q0.f3139g0) {
                this.B = i16 | 4;
            } else {
                this.C = false;
                this.f3025x &= 32767;
            }
        }
    }

    @Override // ee.b
    public final void d(boolean z) {
        ListIterator listIterator = this.f3023v.listIterator();
        while (listIterator.hasNext()) {
            try {
                ((y0) listIterator.next()).b(z);
            } catch (Throwable th2) {
                this.f3022t = null;
                this.f3016k = null;
                this.D = null;
                throw th2;
            }
        }
        this.f3016k.shutdownOutput();
        this.f3018n.close();
        this.f3019p.close();
        this.f3016k.close();
        this.f3022t = null;
        this.f3016k = null;
        this.D = null;
    }

    @Override // ee.b
    public final void e(ee.a aVar) {
        q qVar = (q) aVar;
        qVar.f3126q = this.C;
        qVar.f3127s = (this.B & Integer.MIN_VALUE) == Integer.MIN_VALUE;
        byte[] bArr = E;
        synchronized (bArr) {
            try {
                System.arraycopy(this.f3020q, 0, bArr, 0, 36);
                int iA = a9.o.A(2, bArr) & HPKE.aead_EXPORT_ONLY;
                if (iA < 33 || iA + 4 > this.A) {
                    throw new IOException("Invalid payload size: " + iA);
                }
                int iD = a9.o.D(9, bArr);
                if (qVar.f3114c == 46 && (iD == 0 || iD == -2147483643)) {
                    e0 e0Var = (e0) qVar;
                    ee.b.i(this.f3019p, bArr, 36, 27);
                    qVar.b(bArr);
                    int i10 = e0Var.K - 59;
                    if (e0Var.f3125p > 0 && i10 > 0 && i10 < 4) {
                        ee.b.i(this.f3019p, bArr, 63, i10);
                    }
                    int i11 = e0Var.I;
                    if (i11 > 0) {
                        ee.b.i(this.f3019p, e0Var.F, e0Var.G, i11);
                    }
                } else {
                    ee.b.i(this.f3019p, bArr, 36, iA - 32);
                    qVar.b(bArr);
                    if (qVar instanceof j0) {
                        ((j0) qVar).nextElement();
                    }
                }
                r rVar = this.f3022t;
                if (rVar != null && qVar.f3119h == 0) {
                    rVar.c(bArr, qVar);
                }
                if (de.d.f4630b >= 4) {
                    de.d dVar = G;
                    dVar.getClass();
                    if (de.d.f4630b >= 6) {
                        de.c.a(dVar, bArr, 4, iA);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // ee.b
    public final void f(q qVar) {
        de.d dVar;
        byte[] bArr = E;
        synchronized (bArr) {
            try {
                int iC = qVar.c(bArr);
                a9.o.G(65535 & iC, 0, bArr);
                if (de.d.f4630b >= 4) {
                    do {
                        dVar = G;
                        dVar.getClass();
                        if (!(qVar instanceof a)) {
                            break;
                        } else {
                            qVar = ((a) qVar).E;
                        }
                    } while (qVar != null);
                    if (de.d.f4630b >= 6) {
                        de.c.a(dVar, E, 4, iC);
                    }
                }
                this.f3018n.write(E, 0, iC + 4);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // ee.b
    public final t h() throws IOException {
        byte[] bArr;
        do {
            InputStream inputStream = this.f3019p;
            bArr = this.f3020q;
            if (ee.b.i(inputStream, bArr, 0, 4) < 4) {
                return null;
            }
        } while (bArr[0] == -123);
        if (ee.b.i(this.f3019p, bArr, 4, 32) < 32) {
            return null;
        }
        if (de.d.f4630b >= 4) {
            toString();
            de.d dVar = G;
            dVar.getClass();
            de.c.a(dVar, bArr, 4, 32);
        }
        while (true) {
            if (bArr[0] == 0 && bArr[1] == 0 && bArr[4] == -1 && bArr[5] == 83 && bArr[6] == 77 && bArr[7] == 66) {
                int iB = a9.o.B(34, bArr) & HPKE.aead_EXPORT_ONLY;
                t tVar = this.r;
                tVar.f3123m = iB;
                return tVar;
            }
            int i10 = 0;
            while (i10 < 35) {
                int i11 = i10 + 1;
                bArr[i10] = bArr[i11];
                i10 = i11;
            }
            int i12 = this.f3019p.read();
            if (i12 == -1) {
                return null;
            }
            bArr[35] = (byte) i12;
        }
    }

    public final void k(q qVar, q qVar2) throws r0 {
        int iB = r0.b(qVar2.f3119h);
        qVar2.f3119h = iB;
        if (iB != 0) {
            switch (iB) {
                case -2147483643:
                case -1073741802:
                case 0:
                    break;
                case -1073741790:
                case -1073741718:
                case -1073741428:
                case -1073741260:
                    break;
                case -1073741225:
                    p pVar = qVar.f3130w;
                    if (pVar == null) {
                        throw new r0(qVar2.f3119h);
                    }
                    e eVarM = m(pVar, qVar.f3131x, 1);
                    if (eVarM == null) {
                        throw new r0(qVar2.f3119h);
                    }
                    d dVar = t0.A;
                    String str = qVar.f3131x;
                    synchronized (dVar) {
                        try {
                            if (d.f3042f) {
                                throw eVarM;
                            }
                            int iIndexOf = str.indexOf(92, 1);
                            int i10 = iIndexOf + 1;
                            int iIndexOf2 = str.indexOf(92, i10);
                            String strSubstring = str.substring(1, iIndexOf);
                            String strSubstring2 = str.substring(i10, iIndexOf2);
                            String lowerCase = str.substring(0, eVarM.f3046c).toLowerCase();
                            int length = lowerCase.length();
                            while (length > 1 && lowerCase.charAt(length - 1) == '\\') {
                                length--;
                            }
                            if (length < lowerCase.length()) {
                                lowerCase = lowerCase.substring(0, length);
                            }
                            eVarM.f3046c -= (strSubstring.length() + 2) + strSubstring2.length();
                            if (dVar.f3045b != null && System.currentTimeMillis() + 10000 > dVar.f3045b.f3027a) {
                                dVar.f3045b = null;
                            }
                            if (dVar.f3045b == null) {
                                dVar.f3045b = new c(0L);
                            }
                            dVar.f3045b.f3028b.put(lowerCase, eVarM);
                            throw eVarM;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                default:
                    switch (iB) {
                        case -1073741715:
                        case -1073741714:
                        case -1073741713:
                        case -1073741712:
                        case -1073741711:
                        case -1073741710:
                            break;
                        default:
                            throw new r0(qVar2.f3119h);
                    }
            }
            throw new s(qVar2.f3119h);
        }
        if (qVar2.f3129v) {
            throw new r0("Signature verification failed.");
        }
    }

    public final void l() throws r0 {
        try {
            a(q0.f3148q0);
        } catch (ee.c e7) {
            throw new r0("Failed to connect: " + this.f3015j, e7);
        }
    }

    public final e m(p pVar, String str, int i10) {
        int i11 = i10;
        c1 c1VarA = n(pVar).a("IPC$", null);
        j1 j1Var = new j1();
        c1VarA.b(new h1(str), j1Var);
        int i12 = j1Var.M0;
        if (i12 == 0) {
            return null;
        }
        if (i11 == 0 || i12 < i11) {
            i11 = i12;
        }
        e eVar = new e();
        String[] strArr = new String[4];
        long jCurrentTimeMillis = (d.f3041e * 1000) + System.currentTimeMillis();
        int i13 = 0;
        while (true) {
            pVar.getClass();
            eVar.f3047d = j1Var.O0[i13].f3075i;
            eVar.f3052i = jCurrentTimeMillis;
            if (str.equals("")) {
                eVar.f3048e = j1Var.O0[i13].f3076j.substring(1).toLowerCase();
            } else {
                String str2 = j1Var.O0[i13].f3077k;
                int length = str2.length();
                int i14 = 0;
                int i15 = 0;
                int i16 = 0;
                while (true) {
                    if (i15 == 3) {
                        strArr[3] = str2.substring(i14);
                        break;
                    }
                    if (i16 == length || str2.charAt(i16) == '\\') {
                        strArr[i15] = str2.substring(i14, i16);
                        i14 = i16 + 1;
                        i15++;
                    }
                    int i17 = i16 + 1;
                    if (i16 >= length) {
                        while (i15 < 4) {
                            strArr[i15] = "";
                            i15++;
                        }
                    } else {
                        i16 = i17;
                    }
                }
                eVar.f3048e = strArr[1];
                eVar.f3049f = strArr[2];
                eVar.f3051h = strArr[3];
            }
            eVar.f3046c = j1Var.f3079t0;
            i13++;
            if (i13 == i11) {
                return eVar.f3053j;
            }
            e eVar2 = new e();
            eVar2.f3053j = eVar.f3053j;
            eVar.f3053j = eVar2;
            eVar = eVar2;
        }
    }

    public final synchronized y0 n(p pVar) {
        boolean z;
        y0 y0Var;
        ListIterator listIterator = this.f3023v.listIterator();
        do {
            z = false;
            if (!listIterator.hasNext()) {
                int i10 = q0.f3150u0;
                if (i10 > 0) {
                    long j10 = this.f3021s;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (j10 < jCurrentTimeMillis) {
                        this.f3021s = i10 + jCurrentTimeMillis;
                        ListIterator listIterator2 = this.f3023v.listIterator();
                        while (listIterator2.hasNext()) {
                            y0 y0Var2 = (y0) listIterator2.next();
                            if (y0Var2.f3235j < jCurrentTimeMillis) {
                                y0Var2.b(false);
                            }
                        }
                    }
                }
                y0 y0Var3 = new y0(this.f3015j, this.l, this.f3013h, this.f3014i, pVar);
                y0Var3.f3233h = this;
                this.f3023v.add(y0Var3);
                return y0Var3;
            }
            y0Var = (y0) listIterator.next();
            p pVar2 = y0Var.f3234i;
            if (pVar2 == pVar || pVar2.equals(pVar)) {
                z = true;
            }
        } while (!z);
        y0Var.f3234i = pVar;
        return y0Var;
    }

    public final boolean q(int i10) throws r0 {
        try {
            a(q0.f3148q0);
            return (this.B & i10) == i10;
        } catch (IOException e7) {
            throw new r0(e7.getMessage(), e7);
        }
    }

    public final void r(int i10, z zVar) {
        synchronized (this.f3020q) {
            try {
                if (i10 == 139) {
                    t();
                } else {
                    if (i10 == 0) {
                        i10 = SMBClient.DEFAULT_PORT;
                    }
                    Socket socket = new Socket();
                    this.f3016k = socket;
                    if (this.f3013h != null) {
                        socket.bind(new InetSocketAddress(this.f3013h, this.f3014i));
                    }
                    this.f3016k.connect(new InetSocketAddress(this.f3015j.c(), i10), q0.f3151v0);
                    this.f3016k.setSoTimeout(q0.f3150u0);
                    this.f3018n = this.f3016k.getOutputStream();
                    this.f3019p = this.f3016k.getInputStream();
                }
                int i11 = this.f3017m + 1;
                this.f3017m = i11;
                if (i11 == 32000) {
                    this.f3017m = 1;
                }
                t tVar = F;
                tVar.f3123m = this.f3017m;
                int iC = tVar.c(this.f3020q);
                a9.o.G(iC & 65535, 0, this.f3020q);
                if (de.d.f4630b >= 4) {
                    de.d dVar = G;
                    dVar.getClass();
                    if (de.d.f4630b >= 6) {
                        de.c.a(dVar, this.f3020q, 4, iC);
                    }
                }
                this.f3018n.write(this.f3020q, 0, iC + 4);
                this.f3018n.flush();
                if (h() == null) {
                    throw new IOException("transport closed in negotiate");
                }
                int iA = 65535 & a9.o.A(2, this.f3020q);
                if (iA >= 33) {
                    int i12 = iA + 4;
                    byte[] bArr = this.f3020q;
                    if (i12 <= bArr.length) {
                        ee.b.i(this.f3019p, bArr, 36, iA - 32);
                        zVar.b(this.f3020q);
                        if (de.d.f4630b >= 4) {
                            de.d dVar2 = G;
                            dVar2.getClass();
                            if (de.d.f4630b >= 6) {
                                de.c.a(dVar2, this.f3020q, 4, iC);
                            }
                        }
                    }
                }
                throw new IOException("Invalid payload size: " + iA);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void s(q qVar, q qVar2) throws IOException {
        l();
        qVar.f3120i |= this.f3025x;
        qVar.f3126q = this.C;
        qVar.z = qVar2;
        if (qVar.f3132y == null) {
            qVar.f3132y = this.f3022t;
        }
        try {
            if (qVar2 == null) {
                try {
                    f(qVar);
                    return;
                } catch (IOException e7) {
                    int i10 = de.d.f4630b;
                    de.d dVar = G;
                    if (i10 > 2) {
                        e7.printStackTrace(dVar);
                    }
                    try {
                        b(true);
                    } catch (IOException e10) {
                        e10.printStackTrace(dVar);
                    }
                    throw e7;
                }
            }
            if (qVar instanceof i0) {
                qVar2.f3114c = qVar.f3114c;
                i0 i0Var = (i0) qVar;
                j0 j0Var = (j0) qVar2;
                i0Var.Z = this.z;
                j0Var.m();
                try {
                    b.b(i0Var, j0Var);
                    i0Var.nextElement();
                    if (i0Var.E) {
                        q tVar = new t(0);
                        j(i0Var, tVar, q0.f3148q0);
                        if (tVar.f3119h != 0) {
                            k(i0Var, tVar);
                        }
                        i0Var.nextElement();
                    } else {
                        int i11 = this.f3017m + 1;
                        this.f3017m = i11;
                        if (i11 == 32000) {
                            this.f3017m = 1;
                        }
                        i0Var.f3123m = this.f3017m;
                    }
                    synchronized (this) {
                        try {
                            qVar2.r = false;
                            j0Var.f4949b = false;
                            try {
                                this.f4956e.put(i0Var, j0Var);
                                while (true) {
                                    try {
                                        f(i0Var);
                                        if (!i0Var.E) {
                                            break;
                                        } else {
                                            i0Var.nextElement();
                                        }
                                    } catch (IOException e11) {
                                        int i12 = de.d.f4630b;
                                        de.d dVar2 = G;
                                        if (i12 > 2) {
                                            e11.printStackTrace(dVar2);
                                        }
                                        try {
                                            b(true);
                                        } catch (IOException e12) {
                                            e12.printStackTrace(dVar2);
                                        }
                                        throw e11;
                                    }
                                }
                                long jCurrentTimeMillis = q0.f3148q0;
                                j0Var.f4948a = System.currentTimeMillis() + jCurrentTimeMillis;
                                while (j0Var.hasMoreElements()) {
                                    wait(jCurrentTimeMillis);
                                    jCurrentTimeMillis = j0Var.f4948a - System.currentTimeMillis();
                                    if (jCurrentTimeMillis <= 0) {
                                        throw new ee.c(this + " timedout waiting for response to " + i0Var);
                                    }
                                }
                                if (qVar2.f3119h != 0) {
                                    k(i0Var, j0Var);
                                }
                                this.f4956e.remove(i0Var);
                            } catch (InterruptedException e13) {
                                throw new ee.c((Exception) e13);
                            }
                        } catch (Throwable th2) {
                            this.f4956e.remove(i0Var);
                            throw th2;
                        }
                    }
                    b.c(i0Var.f3066h0);
                    b.c(j0Var.X);
                } finally {
                    b.c(i0Var.f3066h0);
                    b.c(j0Var.X);
                }
            } else {
                qVar2.f3114c = qVar.f3114c;
                j(qVar, qVar2, q0.f3148q0);
            }
            k(qVar, qVar2);
        } catch (r0 e14) {
            throw e14;
        } catch (IOException e15) {
            throw new r0(e15.getMessage(), e15);
        }
    }

    public final void t() throws IOException {
        String str;
        String str2;
        wd.c cVar = this.f3015j;
        Object obj = cVar.f17882a;
        if (obj instanceof ae.g) {
            ae.g gVar = (ae.g) obj;
            String str3 = gVar.f634a.f577a;
            gVar.f637d = str3;
            if (!Character.isDigit(str3.charAt(0))) {
                switch (gVar.f634a.f579c) {
                    case 27:
                    case 28:
                    case 29:
                        gVar.f637d = "*SMBSERVER     ";
                        break;
                }
            } else {
                int length = gVar.f637d.length();
                char[] charArray = gVar.f637d.toCharArray();
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    int i12 = i10 + 1;
                    if (!Character.isDigit(charArray[i10])) {
                        break;
                    }
                    if (i12 == length && i11 == 3) {
                        gVar.f637d = "*SMBSERVER     ";
                        break;
                    } else if (i12 >= length || charArray[i12] != '.') {
                        i10 = i12;
                    } else {
                        i11++;
                        i10 += 2;
                    }
                }
            }
            str = gVar.f637d;
        } else {
            String hostName = ((InetAddress) obj).getHostName();
            cVar.f17883b = hostName;
            if (wd.c.e(hostName)) {
                cVar.f17883b = "*SMBSERVER     ";
            } else {
                int iIndexOf = cVar.f17883b.indexOf(46);
                if (iIndexOf > 1 && iIndexOf < 15) {
                    cVar.f17883b = cVar.f17883b.substring(0, iIndexOf).toUpperCase();
                } else if (cVar.f17883b.length() > 15) {
                    cVar.f17883b = "*SMBSERVER     ";
                } else {
                    cVar.f17883b = cVar.f17883b.toUpperCase();
                }
            }
            str = cVar.f17883b;
        }
        ae.b bVar = new ae.b(str, 32, null);
        do {
            Socket socket = new Socket();
            this.f3016k = socket;
            InetAddress inetAddress = this.f3013h;
            if (inetAddress != null) {
                socket.bind(new InetSocketAddress(inetAddress, this.f3014i));
            }
            this.f3016k.connect(new InetSocketAddress(cVar.c(), 139), q0.f3151v0);
            this.f3016k.setSoTimeout(q0.f3150u0);
            this.f3018n = this.f3016k.getOutputStream();
            this.f3019p = this.f3016k.getInputStream();
            ae.b bVar2 = ae.g.f633m.f634a;
            OutputStream outputStream = this.f3018n;
            byte[] bArr = this.f3020q;
            int iB = bVar.b(4, bArr) + 4;
            int iB2 = bVar2.b(iB, bArr) + iB;
            int i13 = iB2 - 4;
            bArr[0] = (byte) 129;
            if (i13 > 65535) {
                bArr[1] = 1;
            }
            bArr[2] = (byte) ((i13 >> 8) & 255);
            bArr[3] = (byte) (i13 & 255);
            outputStream.write(bArr, 0, iB2);
            if (ee.b.i(this.f3019p, bArr, 0, 4) < 4) {
                try {
                    this.f3016k.close();
                } catch (IOException unused) {
                }
                throw new r0("EOF during NetBIOS session request");
            }
            int i14 = bArr[0] & 255;
            if (i14 == -1) {
                b(true);
                throw new ae.h(-1);
            }
            if (i14 == 130) {
                if (de.d.f4630b >= 4) {
                    cVar.toString();
                    G.getClass();
                    return;
                }
                return;
            }
            if (i14 != 131) {
                b(true);
                throw new ae.h(0);
            }
            int i15 = this.f3019p.read() & 255;
            if (i15 != 128 && i15 != 130) {
                b(true);
                throw new ae.h(i15);
            }
            this.f3016k.close();
            Object obj2 = cVar.f17882a;
            if (obj2 instanceof ae.g) {
                ae.g gVar2 = (ae.g) obj2;
                String str4 = gVar2.f637d;
                if (str4 == gVar2.f634a.f577a) {
                    gVar2.f637d = "*SMBSERVER     ";
                } else if (str4 == "*SMBSERVER     ") {
                    try {
                        ae.g[] gVarArrC = ae.g.f627f.c(gVar2);
                        ae.b bVar3 = gVar2.f634a;
                        if (bVar3.f579c == 29) {
                            for (ae.g gVar3 : gVarArrC) {
                                ae.b bVar4 = gVar3.f634a;
                                if (bVar4.f579c == 32) {
                                    str2 = bVar4.f577a;
                                }
                            }
                            str2 = null;
                        } else if (gVar2.f636c) {
                            gVar2.f637d = null;
                            str2 = bVar3.f577a;
                        }
                    } catch (UnknownHostException unused2) {
                        gVar2.f637d = null;
                    }
                } else {
                    gVar2.f637d = null;
                }
                str2 = gVar2.f637d;
            } else if (cVar.f17883b != "*SMBSERVER     ") {
                cVar.f17883b = "*SMBSERVER     ";
                str2 = "*SMBSERVER     ";
            } else {
                str2 = null;
            }
            bVar.f577a = str2;
        } while (str2 != null);
        throw new IOException("Failed to establish session with " + cVar);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f4953b);
        sb2.append("[");
        sb2.append(this.f3015j);
        sb2.append(":");
        return android.support.v4.media.session.a.s(sb2, this.l, "]");
    }
}
