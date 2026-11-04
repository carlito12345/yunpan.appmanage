package ce;

import java.net.InetAddress;
import java.util.Enumeration;
import java.util.Vector;

/* loaded from: classes.dex */
public final class y0 {

    /* renamed from: b, reason: collision with root package name */
    public int f3227b;

    /* renamed from: d, reason: collision with root package name */
    public final wd.c f3229d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3230e;

    /* renamed from: f, reason: collision with root package name */
    public final int f3231f;

    /* renamed from: g, reason: collision with root package name */
    public final InetAddress f3232g;

    /* renamed from: i, reason: collision with root package name */
    public p f3234i;

    /* renamed from: j, reason: collision with root package name */
    public long f3235j;

    /* renamed from: h, reason: collision with root package name */
    public b1 f3233h = null;

    /* renamed from: c, reason: collision with root package name */
    public final Vector f3228c = new Vector();

    /* renamed from: a, reason: collision with root package name */
    public int f3226a = 0;

    static {
        wd.a.f17870a.getProperty("jcifs.smb1.smb.client.logonShare", null);
        wd.a.c(3, "jcifs.smb1.netbios.lookupRespLimit");
        wd.a.d("jcifs.smb1.smb.client.domain");
        wd.a.d("jcifs.smb1.smb.client.username");
        wd.a.c(600, "jcifs.smb1.netbios.cachePolicy");
    }

    public y0(wd.c cVar, int i10, InetAddress inetAddress, int i11, p pVar) {
        this.f3229d = cVar;
        this.f3230e = i10;
        this.f3232g = inetAddress;
        this.f3231f = i11;
        this.f3234i = pVar;
    }

    public final synchronized c1 a(String str, String str2) {
        if (str == null) {
            str = "IPC$";
        }
        try {
            Enumeration enumerationElements = this.f3228c.elements();
            while (enumerationElements.hasMoreElements()) {
                c1 c1Var = (c1) enumerationElements.nextElement();
                if (c1Var.a(str, str2)) {
                    return c1Var;
                }
            }
            c1 c1Var2 = new c1(this, str, str2);
            this.f3228c.addElement(c1Var2);
            return c1Var2;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void b(boolean z) {
        synchronized (e()) {
            try {
                if (this.f3226a != 2) {
                    return;
                }
                this.f3226a = 3;
                Enumeration enumerationElements = this.f3228c.elements();
                while (enumerationElements.hasMoreElements()) {
                    ((c1) enumerationElements.nextElement()).d(z);
                }
                if (!z && this.f3233h.f3024w.f3001g != 0) {
                    w wVar = new w();
                    wVar.l = this.f3227b;
                    try {
                        this.f3233h.s(wVar, null);
                    } catch (r0 unused) {
                    }
                    this.f3227b = 0;
                }
                this.f3226a = 0;
                this.f3233h.notifyAll();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void c(q qVar, q qVar2) {
        synchronized (e()) {
            if (qVar2 != null) {
                try {
                    qVar2.r = false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f3235j = System.currentTimeMillis() + q0.f3150u0;
            d(qVar, qVar2);
            if (qVar2 == null || !qVar2.r) {
                boolean z = qVar instanceof k0;
                qVar.l = this.f3227b;
                qVar.f3130w = this.f3234i;
                try {
                    this.f3233h.s(qVar, qVar2);
                } catch (r0 e7) {
                    if (qVar instanceof k0) {
                        b(true);
                    }
                    qVar.f3132y = null;
                    throw e7;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0155, code lost:
    
        if ((r15.f3025x & 4) == 0) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0159, code lost:
    
        if (r15.f3022t != null) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x015b, code lost:
    
        r4 = ce.p.f3104m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x015d, code lost:
    
        if (r8 == r4) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0163, code lost:
    
        if (r4.equals(r8) != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0165, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0167, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0168, code lost:
    
        if (r4 == false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x016a, code lost:
    
        r16.f3234i.getClass();
        r6.f3132y = new ce.r(r16.f3234i.g(r16.f3233h.f3024w.f3009p), false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0183, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0184, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0186, code lost:
    
        r6.f3130w = r16.f3234i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x018a, code lost:
    
        r16.f3233h.s(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0190, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0192, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01db, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01dc, code lost:
    
        b(r4);
        r16.f3226a = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x01e1, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x01e2, code lost:
    
        r16.f3233h.notifyAll();
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x01e7, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002b, code lost:
    
        r4 = true;
        r16.f3226a = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002e, code lost:
    
        r16.f3233h.l();
        r6 = ce.b1.E;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0038, code lost:
    
        if (de.d.f4630b < 4) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003a, code lost:
    
        r6 = ce.b1.G;
        r8 = r16.f3234i.f3106b;
        r6.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0044, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0047, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004a, code lost:
    
        r16.f3227b = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004c, code lost:
    
        r6 = 10;
        r8 = null;
        r9 = r0;
        r0 = null;
        r11 = null;
        r10 = 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
    
        if (r10 == r6) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x005b, code lost:
    
        if (r10 != 20) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005d, code lost:
    
        if (r11 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0064, code lost:
    
        if ((r16.f3233h.f3025x & 4) == 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0066, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0068, code lost:
    
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0069, code lost:
    
        r11 = new androidx.recyclerview.widget.u(r16.f3234i, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0071, code lost:
    
        r13 = ce.b1.E;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0075, code lost:
    
        if (de.d.f4630b < 4) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0077, code lost:
    
        ce.b1.G.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x007e, code lost:
    
        if (r11.f2286c == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0080, code lost:
    
        r16.f3226a = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0089, code lost:
    
        r13 = r9.length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x008e, code lost:
    
        r13 = new ce.g0(r16, r8, r11.b(r9));
        r9 = new ce.h0(r8);
        r14 = r16.f3233h;
        r15 = r16.f3234i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x009f, code lost:
    
        if ((r14.f3025x & 4) == 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a3, code lost:
    
        if (r14.f3022t != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a5, code lost:
    
        r6 = ce.p.f3104m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a7, code lost:
    
        if (r15 == r6) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ad, code lost:
    
        if (r6.equals(r15) != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00af, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b1, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00b2, code lost:
    
        if (r6 == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00b4, code lost:
    
        r6 = (byte[]) r11.f2290g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00b8, code lost:
    
        if (r6 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00ba, code lost:
    
        r13.f3132y = new ce.r(r6, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c1, code lost:
    
        r13.l = r16.f3227b;
        r16.f3227b = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00c7, code lost:
    
        r16.f3233h.s(r13, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00cd, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00cf, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00d1, code lost:
    
        r16.f3233h.b(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0105, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0106, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0107, code lost:
    
        r16.f3233h.b(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x010c, code lost:
    
        r16.f3227b = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x010e, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0125, code lost:
    
        throw new ce.r0("Unexpected session setup state: " + r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x012a, code lost:
    
        if (r16.f3234i == ce.p.l) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0134, code lost:
    
        if (r16.f3233h.q(Integer.MIN_VALUE) == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0136, code lost:
    
        r10 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x013e, code lost:
    
        r6 = new ce.g0(r16, r17, r16.f3234i);
        r10 = new ce.h0(r18);
        r15 = r16.f3233h;
        r8 = r16.f3234i;
     */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01d4 A[LOOP:1: B:34:0x0054->B:141:0x01d4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x01cd A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(q qVar, q qVar2) {
        r0 e7;
        int i10;
        g0 g0Var;
        h0 h0Var;
        g0 g0Var2;
        h0 h0Var2;
        synchronized (e()) {
            byte[] bArr = new byte[0];
            while (true) {
                int i11 = this.f3226a;
                if (i11 == 0) {
                    break;
                }
                if (i11 == 2 || i11 == 3) {
                    break;
                }
                try {
                    this.f3233h.wait();
                } catch (InterruptedException e10) {
                    throw new r0(e10.getMessage(), e10);
                }
            }
            return;
        }
        if (h0Var.I && !"GUEST".equalsIgnoreCase(this.f3234i.f3106b) && this.f3233h.f3024w.f3001g != 0 && this.f3234i != p.l) {
            throw new s(-1073741715);
        }
        if (e7 != null) {
            throw e7;
        }
        this.f3227b = h0Var.l;
        r rVar = g0Var.f3132y;
        if (rVar != null) {
            this.f3233h.f3022t = rVar;
        }
        this.f3226a = 2;
        i10 = 0;
        if (i10 != 0) {
            return;
        }
        boolean z = true;
        int i12 = 10;
        q qVar3 = null;
        if (h0Var2.I && !"GUEST".equalsIgnoreCase(this.f3234i.f3106b)) {
            throw new s(-1073741715);
        }
        if (e7 != null) {
            throw e7;
        }
        this.f3227b = h0Var2.l;
        r rVar2 = g0Var2.f3132y;
        if (rVar2 != null) {
            this.f3233h.f3022t = rVar2;
        }
        byte[] bArr2 = h0Var2.K;
        if (i10 != 0) {
        }
    }

    public final synchronized b1 e() {
        try {
            if (this.f3233h == null) {
                this.f3233h = b1.p(this.f3229d, this.f3230e, this.f3232g, this.f3231f);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f3233h;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbSession[accountName=");
        sb2.append(this.f3234i.f3106b);
        sb2.append(",primaryDomain=");
        sb2.append(this.f3234i.f3105a);
        sb2.append(",uid=");
        sb2.append(this.f3227b);
        sb2.append(",connectionState=");
        return android.support.v4.media.session.a.s(sb2, this.f3226a, "]");
    }
}
