package a9;

import a2.g1;
import j$.nio.charset.StandardCharsets;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Vector;

/* loaded from: classes.dex */
public final class f0 {
    public volatile boolean A;
    public final int B;

    /* renamed from: a, reason: collision with root package name */
    public byte[] f480a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f481b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f482c;

    /* renamed from: d, reason: collision with root package name */
    public int f483d;

    /* renamed from: e, reason: collision with root package name */
    public g1 f484e;

    /* renamed from: f, reason: collision with root package name */
    public Socket f485f;

    /* renamed from: g, reason: collision with root package name */
    public int f486g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f487h;

    /* renamed from: i, reason: collision with root package name */
    public volatile boolean f488i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f489j;

    /* renamed from: k, reason: collision with root package name */
    public volatile boolean f490k;
    public volatile boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f491m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f492n;

    /* renamed from: o, reason: collision with root package name */
    public volatile boolean f493o;

    /* renamed from: p, reason: collision with root package name */
    public final Object f494p;

    /* renamed from: q, reason: collision with root package name */
    public a f495q;
    public final g1 r;

    /* renamed from: s, reason: collision with root package name */
    public Hashtable f496s;

    /* renamed from: t, reason: collision with root package name */
    public volatile boolean f497t;

    /* renamed from: u, reason: collision with root package name */
    public volatile long f498u;

    /* renamed from: v, reason: collision with root package name */
    public final String f499v;

    /* renamed from: w, reason: collision with root package name */
    public final int f500w;

    /* renamed from: x, reason: collision with root package name */
    public final String f501x;

    /* renamed from: y, reason: collision with root package name */
    public byte[] f502y;
    public final l z;

    static {
        byte[] bArr = h0.f503a;
        "keepalive@jcraft.com".getBytes(StandardCharsets.UTF_8);
        h0.j("no-more-sessions@openssh.com");
    }

    public f0(l lVar, String str, String str2, int i10) throws n {
        Hashtable hashtable = l.f507e;
        this.f481b = "SSH-2.0-JSCH_0.2.21".getBytes(StandardCharsets.UTF_8);
        this.f483d = 0;
        this.f486g = 0;
        this.f487h = false;
        this.f488i = false;
        this.f489j = true;
        this.f490k = true;
        this.l = false;
        this.f491m = true;
        this.f492n = false;
        this.f493o = false;
        this.f494p = new Object();
        String property = null;
        this.f496s = null;
        this.f497t = false;
        this.f498u = 0L;
        this.f499v = "127.0.0.1";
        this.f500w = 22;
        this.f501x = null;
        this.f502y = null;
        this.A = false;
        this.B = 8;
        new gf.g(2);
        this.z = lVar;
        a aVar = new a(0, (char) 0);
        this.f495q = aVar;
        this.r = new g1(aVar);
        this.f501x = str;
        this.f499v = str2;
        this.f500w = i10;
        if (str == null) {
            try {
                property = System.getProperty("user.name");
            } catch (SecurityException unused) {
            }
            this.f501x = property;
        }
        if (this.f501x == null) {
            throw new n("username is not given.");
        }
    }

    public static void a(String str) {
        try {
            if (Class.forName(str).asSubclass(f.class).getDeclaredConstructor(null).newInstance(null) != null) {
                throw new ClassCastException();
            }
            throw null;
        } catch (Exception | NoClassDefFoundError unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b() {
        int i10;
        byte[] bArr;
        Socket socket;
        int i11 = this.f486g;
        if (this.f487h) {
            throw new n("session is already connected");
        }
        this.f490k = true;
        this.f484e = new g1(1, false);
        try {
            if (Class.forName(d("random")).asSubclass(d0.class).getDeclaredConstructor(null).newInstance(null) != null) {
                throw new ClassCastException();
            }
            this.z.c().getClass();
            try {
                try {
                    Socket socketE = h0.e(this.f500w, i11, this.f499v);
                    this.f485f = socketE;
                    InputStream inputStream = socketE.getInputStream();
                    OutputStream outputStream = this.f485f.getOutputStream();
                    this.f485f.setTcpNoDelay(true);
                    g1 g1Var = this.f484e;
                    g1Var.f175b = inputStream;
                    g1Var.f176c = outputStream;
                    if (i11 > 0 && (socket = this.f485f) != null) {
                        socket.setSoTimeout(i11);
                    }
                    this.f487h = true;
                    this.z.c().getClass();
                    l lVar = this.z;
                    synchronized (lVar.f510b) {
                        lVar.f510b.addElement(this);
                    }
                    byte[] bArr2 = this.f481b;
                    int length = bArr2.length;
                    int i12 = length + 2;
                    byte[] bArr3 = new byte[i12];
                    System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
                    bArr3[length] = 13;
                    bArr3[length + 1] = 10;
                    g1 g1Var2 = this.f484e;
                    ((OutputStream) g1Var2.f176c).write(bArr3, 0, i12);
                    ((OutputStream) g1Var2.f176c).flush();
                    while (true) {
                        i10 = 0;
                        int i13 = 0;
                        while (i10 < ((byte[]) this.f495q.f474e).length && (i13 = ((InputStream) this.f484e.f175b).read()) >= 0) {
                            ((byte[]) this.f495q.f474e)[i10] = (byte) i13;
                            i10++;
                            if (i13 == 10) {
                                break;
                            }
                        }
                        if (i13 < 0) {
                            throw new n("connection is closed by foreign host");
                        }
                        bArr = (byte[]) this.f495q.f474e;
                        if (bArr[i10 - 1] == 10) {
                            int i14 = i10 - 1;
                            if (i14 > 0) {
                                i10 -= 2;
                                if (bArr[i10] != 13) {
                                    i10 = i14;
                                }
                            }
                        }
                        if (i10 > 3 && (i10 == bArr.length || (bArr[0] == 83 && bArr[1] == 83 && bArr[2] == 72 && bArr[3] == 45))) {
                            break;
                        }
                    }
                    if (i10 == bArr.length || i10 < 7 || (bArr[4] == 49 && bArr[6] != 57)) {
                        throw new n("invalid server's version string");
                    }
                    byte[] bArr4 = new byte[i10];
                    this.f480a = bArr4;
                    System.arraycopy(bArr, 0, bArr4, 0, i10);
                    this.f497t = h0.c(this.f480a).startsWith("SSH-2.0-OpenSSH_7.4");
                    this.z.c().getClass();
                    this.f489j = d("enable_server_sig_algs").equals("yes");
                    d("enable_ext_info_in_auth").equals("yes");
                    this.f491m = d("enable_strict_kex").equals("yes");
                    this.f492n = d("require_strict_kex").equals("yes");
                    g();
                    a aVar = this.f495q;
                    e(aVar);
                    this.f495q = aVar;
                    if (((byte[]) aVar.f474e)[5] == 20) {
                        this.z.c().getClass();
                        f(this.f495q);
                        throw null;
                    }
                    this.A = false;
                    throw new n("invalid protocol: " + ((int) ((byte[]) this.f495q.f474e)[5]));
                } catch (Throwable th2) {
                    h0.d(this.f502y);
                    this.f502y = null;
                    throw th2;
                }
            } catch (Exception e7) {
                this.A = false;
                if (!this.f487h) {
                    try {
                        c();
                    } catch (Exception unused) {
                    }
                    this.f487h = false;
                    if (e7 instanceof RuntimeException) {
                        throw ((RuntimeException) e7);
                    }
                    if (e7 instanceof n) {
                        throw ((n) e7);
                    }
                    throw new n("Session.connect: " + e7, e7);
                }
                String string = e7.toString();
                this.r.Z();
                a aVar2 = this.f495q;
                int length2 = string.length() + 99;
                int i15 = aVar2.f471b;
                int i16 = length2 + i15 + 128;
                byte[] bArr5 = (byte[]) aVar2.f474e;
                if (bArr5.length < i16) {
                    int length3 = bArr5.length * 2;
                    if (length3 >= i16) {
                        i16 = length3;
                    }
                    byte[] bArr6 = new byte[i16];
                    System.arraycopy(bArr5, 0, bArr6, 0, i15);
                    aVar2.f474e = bArr6;
                }
                this.f495q.n((byte) 1);
                this.f495q.o(3);
                a aVar3 = this.f495q;
                Charset charset = StandardCharsets.UTF_8;
                byte[] bytes = string.getBytes(charset);
                aVar3.getClass();
                aVar3.p(bytes.length, bytes);
                a aVar4 = this.f495q;
                byte[] bytes2 = "en".getBytes(charset);
                aVar4.getClass();
                aVar4.p(bytes2.length, bytes2);
                i(this.r);
                throw null;
            }
        } catch (Exception e10) {
            throw new n(e10.toString(), e10);
        }
    }

    public final void c() {
        if (this.f487h) {
            this.z.c().getClass();
            b.c(this);
            this.f487h = false;
            c0.a(this);
            d.f(this);
            e.e(this);
            synchronized (this.f494p) {
            }
            try {
                g1 g1Var = this.f484e;
                if (g1Var != null) {
                    InputStream inputStream = (InputStream) g1Var.f175b;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    OutputStream outputStream = (OutputStream) this.f484e.f176c;
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    this.f484e.getClass();
                }
                Socket socket = this.f485f;
                if (socket != null) {
                    socket.close();
                }
            } catch (Exception unused) {
            }
            this.f484e = null;
            this.f485f = null;
            this.f483d = 0;
            this.f490k = true;
            this.l = false;
            this.f488i = false;
            this.z.d(this);
        }
    }

    public final String d(String str) {
        if (str.equals("PubkeyAcceptedKeyTypes")) {
            str = "PubkeyAcceptedAlgorithms";
        }
        Hashtable hashtable = this.f496s;
        if (hashtable != null) {
            Object obj = hashtable.get(str);
            if (obj instanceof String) {
                return (String) obj;
            }
        }
        String strB = l.b(str);
        if (strB instanceof String) {
            return strB;
        }
        return null;
    }

    public final void e(a aVar) throws IOException, m {
        while (true) {
            aVar.reset();
            this.f484e.S(aVar.f471b, this.B, (byte[]) aVar.f474e);
            int i10 = aVar.f471b;
            int i11 = this.B;
            int i12 = i10 + i11;
            aVar.f471b = i12;
            byte[] bArr = (byte[]) aVar.f474e;
            boolean z = true;
            int i13 = ((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680) | ((bArr[2] << 8) & 65280) | (bArr[3] & 255);
            if (i13 < 5) {
                throw null;
            }
            if (i13 > 262144) {
                throw null;
            }
            int i14 = (i13 + 4) - i11;
            int i15 = i12 + i14;
            if (i15 > bArr.length) {
                byte[] bArr2 = new byte[i15];
                System.arraycopy(bArr, 0, bArr2, 0, i12);
                aVar.f474e = bArr2;
            }
            if (i14 % this.B != 0) {
                this.z.c().getClass();
                throw null;
            }
            if (i14 > 0) {
                this.f484e.S(aVar.f471b, i14, (byte[]) aVar.f474e);
                aVar.f471b += i14;
            }
            int i16 = this.f483d + 1;
            this.f483d = i16;
            if (i16 == 0 && ((this.f491m || this.f492n) && this.f490k)) {
                throw new m("incoming sequence number wrapped during initial KEX");
            }
            int i17 = ((byte[]) aVar.f474e)[5] & 255;
            if (i17 == 1) {
                aVar.f472c = 0;
                aVar.g();
                aVar.k();
                int iG = aVar.g();
                byte[] bArrL = aVar.l();
                byte[] bArrL2 = aVar.l();
                int length = bArrL.length;
                Charset charset = StandardCharsets.UTF_8;
                throw new m("SSH_MSG_DISCONNECT: " + iG + " " + new String(bArrL, 0, length, charset) + " " + new String(bArrL2, 0, bArrL2.length, charset));
            }
            if (this.f490k && this.l) {
                break;
            }
            if (i17 != 2) {
                if (i17 == 3) {
                    aVar.f472c = 0;
                    aVar.g();
                    aVar.k();
                    aVar.g();
                    this.z.c().getClass();
                } else if (i17 == 4) {
                    aVar.f472c = 0;
                    aVar.g();
                    aVar.k();
                } else if (i17 == 93) {
                    aVar.f472c = 0;
                    aVar.g();
                    aVar.k();
                    b.d(aVar.g(), this);
                } else if (i17 == 7) {
                    aVar.f472c = 0;
                    aVar.g();
                    aVar.k();
                    if (!this.f489j || this.f493o || this.A) {
                        this.z.c().getClass();
                    } else {
                        this.z.c().getClass();
                        z = false;
                    }
                    long jM = aVar.m();
                    for (long j10 = 0; j10 < jM; j10++) {
                        byte[] bArrL3 = aVar.l();
                        byte[] bArrL4 = aVar.l();
                        if (!z) {
                            int length2 = bArrL3.length;
                            Charset charset2 = StandardCharsets.UTF_8;
                            if (new String(bArrL3, 0, length2, charset2).equals("server-sig-algs")) {
                                String str = new String(bArrL4, 0, bArrL4.length, charset2);
                                this.z.c().getClass();
                                if (this.f497t) {
                                    str = !str.isEmpty() ? str.concat(",rsa-sha2-256,rsa-sha2-512") : "rsa-sha2-256,rsa-sha2-512";
                                    this.z.c().getClass();
                                }
                                h0.i(str);
                            }
                        }
                    }
                } else if (i17 == 52) {
                    this.f493o = true;
                    throw null;
                }
            }
        }
        aVar.f472c = 0;
    }

    public final void f(a aVar) throws n {
        boolean z;
        int iG = aVar.g();
        boolean z4 = true;
        if (iG != aVar.h()) {
            aVar.d();
            this.f482c = new byte[aVar.f471b - 5];
        } else {
            this.f482c = new byte[(iG - 1) - aVar.d()];
        }
        byte[] bArr = (byte[]) aVar.f474e;
        int i10 = aVar.f472c;
        byte[] bArr2 = this.f482c;
        System.arraycopy(bArr, i10, bArr2, 0, bArr2.length);
        if (this.f490k) {
            if (this.f491m || this.f492n) {
                a aVar2 = new a(this.f482c);
                aVar2.f472c = 17;
                byte[] bArrL = aVar2.l();
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    if (i11 >= bArrL.length) {
                        z = false;
                        break;
                    }
                    while (i11 < bArrL.length && bArrL[i11] != 44) {
                        i11++;
                    }
                    if (i12 != i11) {
                        if ("kex-strict-s-v00@openssh.com".equals(h0.b(i12, i11 - i12, bArrL))) {
                            z = true;
                            break;
                        } else {
                            i12 = i11 + 1;
                            i11 = i12;
                        }
                    }
                }
                this.l = z;
                if (this.l) {
                    this.z.c().getClass();
                    if (this.f483d != 1) {
                        throw new m("KEXINIT not first packet from server");
                    }
                } else if (this.f492n) {
                    throw new m("Strict KEX not supported by server");
                }
            }
            if (this.f489j) {
                a aVar3 = new a(this.f482c);
                aVar3.f472c = 17;
                byte[] bArrL2 = aVar3.l();
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    if (i13 >= bArrL2.length) {
                        z4 = false;
                        break;
                    }
                    while (i13 < bArrL2.length && bArrL2[i13] != 44) {
                        i13++;
                    }
                    if (i14 != i13) {
                        if ("ext-info-s".equals(h0.b(i14, i13 - i14, bArrL2))) {
                            break;
                        }
                        i14 = i13 + 1;
                        i13 = i14;
                    }
                }
                this.f488i = z4;
                if (this.f488i) {
                    this.z.c().getClass();
                }
            }
        }
        if (!this.A) {
            g();
        }
        String[] strArr = new String[10];
        a aVar4 = new a(this.f482c);
        aVar4.f472c = 17;
        a aVar5 = new a((byte[]) null);
        aVar5.f472c = 17;
        this.z.c().getClass();
        for (int i15 = 0; i15 < 10; i15++) {
            byte[] bArrL3 = aVar4.l();
            byte[] bArrL4 = aVar5.l();
            int i16 = 0;
            int i17 = 0;
            while (true) {
                if (i16 >= bArrL4.length) {
                    break;
                }
                while (i16 < bArrL4.length && bArrL4[i16] != 44) {
                    i16++;
                }
                if (i17 == i16) {
                    int length = bArrL4.length;
                    Charset charset = StandardCharsets.UTF_8;
                    throw new m(new String(bArrL4, 0, length, charset), i15, new String(bArrL3, 0, bArrL3.length, charset));
                }
                String strB = h0.b(i17, i16 - i17, bArrL4);
                int i18 = 0;
                int i19 = 0;
                while (i18 < bArrL3.length) {
                    while (i18 < bArrL3.length && bArrL3[i18] != 44) {
                        i18++;
                    }
                    if (i19 == i18) {
                        int length2 = bArrL4.length;
                        Charset charset2 = StandardCharsets.UTF_8;
                        throw new m(new String(bArrL4, 0, length2, charset2), i15, new String(bArrL3, 0, bArrL3.length, charset2));
                    }
                    if (strB.equals(h0.b(i19, i18 - i19, bArrL3))) {
                        strArr[i15] = strB;
                        break;
                    } else {
                        i19 = i18 + 1;
                        i18 = i19;
                    }
                }
                i17 = i16 + 1;
                i16 = i17;
            }
            if (i16 == 0) {
                strArr[i15] = "";
            } else if (strArr[i15] == null) {
                int length3 = bArrL4.length;
                Charset charset3 = StandardCharsets.UTF_8;
                throw new m(new String(bArrL4, 0, length3, charset3), i15, new String(bArrL3, 0, bArrL3.length, charset3));
            }
        }
        try {
            try {
                if (Class.forName(d(strArr[3])).asSubclass(f.class).getDeclaredConstructor(null).newInstance(null) == null) {
                    throw null;
                }
                throw new ClassCastException();
            } catch (NoClassDefFoundError e7) {
                e = e7;
                throw new n(e.toString(), e);
            }
        } catch (Exception e10) {
            e = e10;
            throw new n(e.toString(), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0193  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g() throws n {
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String[] strArr4;
        if (this.A) {
            return;
        }
        String strD = d("cipher.c2s");
        String strD2 = d("cipher.s2c");
        String strD3 = d("CheckCiphers");
        if (strD3 == null || strD3.length() == 0) {
            strArr = null;
        } else {
            l lVar = this.z;
            lVar.c().getClass();
            String strD4 = d("cipher.c2s");
            String strD5 = d("cipher.s2c");
            Vector vector = new Vector();
            for (String str : h0.i(strD3)) {
                if (strD5.indexOf(str) != -1 || strD4.indexOf(str) != -1) {
                    a(d(str));
                    vector.addElement(str);
                }
            }
            if (vector.size() != 0) {
                strArr = new String[vector.size()];
                System.arraycopy(vector.toArray(), 0, strArr, 0, vector.size());
                lVar.c().getClass();
            }
        }
        if (strArr != null && strArr.length > 0) {
            this.z.c().getClass();
            String strF = h0.f(strD, strArr);
            String strF2 = h0.f(strD2, strArr);
            if (strF == null || strF2 == null) {
                throw new n("There are not any available ciphers.");
            }
            this.z.c().getClass();
        }
        String strD6 = d("mac.c2s");
        String strD7 = d("mac.s2c");
        String strD8 = d("CheckMacs");
        if (strD8 == null || strD8.length() == 0) {
            strArr2 = null;
        } else {
            l lVar2 = this.z;
            lVar2.c().getClass();
            String strD9 = d("mac.c2s");
            String strD10 = d("mac.s2c");
            Vector vector2 = new Vector();
            for (String str2 : h0.i(strD8)) {
                if (strD10.indexOf(str2) != -1 || strD9.indexOf(str2) != -1) {
                    try {
                        if (Class.forName(d(str2)).asSubclass(a0.class).getDeclaredConstructor(null).newInstance(null) != null) {
                            throw new ClassCastException();
                        }
                        throw null;
                    } catch (Exception | NoClassDefFoundError unused) {
                        vector2.addElement(str2);
                    }
                }
            }
            if (vector2.size() != 0) {
                strArr2 = new String[vector2.size()];
                System.arraycopy(vector2.toArray(), 0, strArr2, 0, vector2.size());
                lVar2.c().getClass();
            }
        }
        if (strArr2 != null && strArr2.length > 0) {
            this.z.c().getClass();
            String strF3 = h0.f(strD6, strArr2);
            String strF4 = h0.f(strD7, strArr2);
            if (strF3 == null || strF4 == null) {
                throw new n("There are not any available macs.");
            }
            this.z.c().getClass();
        }
        String strD11 = d("kex");
        String strD12 = d("CheckKexes");
        if (strD12 == null || strD12.length() == 0) {
            strArr3 = null;
        } else {
            l lVar3 = this.z;
            lVar3.c().getClass();
            Vector vector3 = new Vector();
            String[] strArrI = h0.i(strD12);
            for (int i10 = 0; i10 < strArrI.length; i10++) {
                try {
                    if (Class.forName(d(strArrI[i10])).asSubclass(o.class).getDeclaredConstructor(null).newInstance(null) != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                } catch (Exception | NoClassDefFoundError unused2) {
                    vector3.addElement(strArrI[i10]);
                }
            }
            if (vector3.size() != 0) {
                strArr3 = new String[vector3.size()];
                System.arraycopy(vector3.toArray(), 0, strArr3, 0, vector3.size());
                lVar3.c().getClass();
            }
        }
        if (strArr3 != null && strArr3.length > 0) {
            this.z.c().getClass();
            if (h0.f(strD11, strArr3) == null) {
                throw new n("There are not any available kexes.");
            }
            this.z.c().getClass();
        }
        if (this.f489j) {
            boolean z = this.f493o;
        }
        if (this.f491m || this.f492n) {
            boolean z4 = this.f490k;
        }
        String strD13 = d("server_host_key");
        String strD14 = d("CheckSignatures");
        if (strD14 == null || strD14.length() == 0) {
            strArr4 = null;
        } else {
            l lVar4 = this.z;
            lVar4.c().getClass();
            Vector vector4 = new Vector();
            String[] strArrI2 = h0.i(strD14);
            for (int i11 = 0; i11 < strArrI2.length; i11++) {
                try {
                    if (Class.forName(l.b(strArrI2[i11])).asSubclass(g0.class).getDeclaredConstructor(null).newInstance(null) != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                } catch (Exception | NoClassDefFoundError unused3) {
                    vector4.addElement(strArrI2[i11]);
                }
            }
            if (vector4.size() != 0) {
                strArr4 = new String[vector4.size()];
                System.arraycopy(vector4.toArray(), 0, strArr4, 0, vector4.size());
                lVar4.c().getClass();
            }
        }
        if (strArr4 != null && strArr4.length > 0) {
            this.z.c().getClass();
            strD13 = h0.f(strD13, strArr4);
            if (strD13 == null) {
                throw new n("There are not any available sig algorithm.");
            }
            this.z.c().getClass();
        }
        if (d("prefer_known_host_key_types").equals("yes")) {
            this.z.c().getClass();
            l lVar5 = this.z;
            if (lVar5.f512d == null) {
                lVar5.f512d = new y(lVar5);
            }
            y yVar = lVar5.f512d;
            String string = this.f499v;
            if (this.f500w != 22) {
                StringBuilder sbD = da.b.d("[", string, "]:");
                sbD.append(this.f500w);
                string = sbD.toString();
            }
            h[] hVarArrA = yVar.a(string);
            if (hVarArrA.length > 0) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList(Arrays.asList(h0.i(strD13)));
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    String str4 = (str3.equals("rsa-sha2-256") || str3.equals("rsa-sha2-512") || str3.equals("ssh-rsa-sha224@ssh.com") || str3.equals("ssh-rsa-sha256@ssh.com") || str3.equals("ssh-rsa-sha384@ssh.com") || str3.equals("ssh-rsa-sha512@ssh.com")) ? "ssh-rsa" : str3;
                    int length = hVarArrA.length;
                    int i12 = 0;
                    while (true) {
                        if (i12 >= length) {
                            break;
                        }
                        if (hVarArrA[i12].a().equals(str4)) {
                            arrayList.add(str3);
                            it.remove();
                            break;
                        }
                        i12++;
                    }
                }
                if (arrayList.size() > 0) {
                    arrayList.addAll(arrayList2);
                    StringBuilder sb2 = new StringBuilder();
                    Iterator it2 = arrayList.iterator();
                    if (it2.hasNext()) {
                        while (true) {
                            sb2.append((CharSequence) it2.next());
                            if (!it2.hasNext()) {
                                break;
                            } else {
                                sb2.append((CharSequence) ",");
                            }
                        }
                    }
                }
            }
            this.z.c().getClass();
        }
        this.f498u = System.currentTimeMillis();
        this.A = true;
        throw null;
    }

    public final void h(String str, String str2) {
        synchronized (this.f494p) {
            try {
                if (this.f496s == null) {
                    this.f496s = new Hashtable();
                }
                if (str.equals("PubkeyAcceptedKeyTypes")) {
                    this.f496s.put("PubkeyAcceptedAlgorithms", str2);
                } else {
                    this.f496s.put(str, str2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void i(g1 g1Var) throws n, InterruptedException {
        long j10 = this.f486g;
        while (this.A) {
            if (j10 > 0 && System.currentTimeMillis() - this.f498u > j10) {
                throw new n("timeout in waiting for rekeying process.");
            }
            byte b10 = ((byte[]) ((a) g1Var.f175b).f474e)[5];
            if (b10 == 20 || b10 == 21 || b10 == 30 || b10 == 31 || b10 == 31 || b10 == 32 || b10 == 33 || b10 == 34 || b10 == 1) {
                break;
            } else {
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException unused) {
                }
            }
        }
        boolean z = this.l;
        byte b11 = ((byte[]) ((a) g1Var.f175b).f474e)[5];
        synchronized (this.f494p) {
            a aVar = (a) g1Var.f175b;
            int i10 = aVar.f471b;
            int i11 = (-i10) & 7;
            if (i11 < 8) {
                i11 += 8;
            }
            int i12 = (i10 + i11) - 4;
            byte[] bArr = (byte[]) g1Var.f176c;
            bArr[0] = (byte) (i12 >>> 24);
            bArr[1] = (byte) (i12 >>> 16);
            bArr[2] = (byte) (i12 >>> 8);
            bArr[3] = (byte) i12;
            System.arraycopy(bArr, 0, (byte[]) aVar.f474e, 0, 4);
            ((byte[]) ((a) g1Var.f175b).f474e)[4] = (byte) i11;
            throw null;
        }
    }
}
