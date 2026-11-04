package ce;

import com.hierynomus.smbfs.SmbPath;

/* loaded from: classes.dex */
public final class c1 {

    /* renamed from: j, reason: collision with root package name */
    public static int f3029j;

    /* renamed from: a, reason: collision with root package name */
    public int f3030a;

    /* renamed from: b, reason: collision with root package name */
    public int f3031b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3032c;

    /* renamed from: d, reason: collision with root package name */
    public String f3033d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3034e;

    /* renamed from: f, reason: collision with root package name */
    public final y0 f3035f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3036g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3037h;

    /* renamed from: i, reason: collision with root package name */
    public int f3038i;

    public c1(y0 y0Var, String str, String str2) {
        this.f3033d = "?????";
        this.f3035f = y0Var;
        this.f3032c = str.toUpperCase();
        if (str2 != null && !str2.startsWith("??")) {
            this.f3033d = str2;
        }
        this.f3034e = this.f3033d;
        this.f3030a = 0;
    }

    public final boolean a(String str, String str2) {
        return this.f3032c.equalsIgnoreCase(str) && (str2 == null || str2.startsWith("??") || this.f3033d.equalsIgnoreCase(str2));
    }

    public final void b(q qVar, q qVar2) {
        String str;
        byte b10;
        synchronized (this.f3035f.e()) {
            if (qVar2 != null) {
                try {
                    qVar2.r = false;
                } finally {
                }
            }
            c(qVar, qVar2);
            if (qVar != null && (qVar2 == null || !qVar2.r)) {
                if (!this.f3033d.equals("A:") && (b10 = qVar.f3114c) != -94 && b10 != 4) {
                    if (b10 == 37 || b10 == 50) {
                        int i10 = ((i0) qVar).X & 255;
                        if (i10 != 0 && i10 != 16 && i10 != 35 && i10 != 38 && i10 != 104 && i10 != 215 && i10 != 83 && i10 != 84) {
                            throw new r0("Invalid operation for " + this.f3033d + " service");
                        }
                    } else if (b10 != 113) {
                        switch (b10) {
                            case 45:
                            case 46:
                            case 47:
                                break;
                            default:
                                throw new r0("Invalid operation for " + this.f3033d + " service" + qVar);
                        }
                    }
                }
                qVar.f3121j = this.f3031b;
                if (this.f3036g && !this.f3033d.equals("IPC") && (str = qVar.f3131x) != null && str.length() > 0) {
                    qVar.f3120i = 4096;
                    qVar.f3131x = "\\" + this.f3035f.e().D + SmbPath.SEPARATOR + this.f3032c + qVar.f3131x;
                }
                try {
                    this.f3035f.c(qVar, qVar2);
                } catch (r0 e7) {
                    if (e7.f3160a == -1073741623) {
                        d(true);
                    }
                    throw e7;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x002b, code lost:
    
        r7.f3030a = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002d, code lost:
    
        r7.f3035f.f3233h.l();
        r2 = "\\\\" + r7.f3035f.f3233h.D + com.hierynomus.smbfs.SmbPath.SEPARATOR + r7.f3032c;
        r7.f3033d = r7.f3034e;
        r4 = r7.f3035f.f3233h;
        r4 = ce.b1.E;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
    
        if (de.d.f4630b < 4) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0064, code lost:
    
        ce.b1.G.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006a, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
    
        r4 = new ce.l0(r9);
        r5 = r7.f3035f;
        r5.c(new ce.k0(r5, r2, r7.f3033d, r8), r4);
        r7.f3031b = r4.f3121j;
        r7.f3033d = r4.H;
        r7.f3036g = r4.G;
        r8 = ce.c1.f3029j;
        ce.c1.f3029j = r8 + 1;
        r7.f3038i = r8;
        r7.f3030a = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0094, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0095, code lost:
    
        d(true);
        r7.f3030a = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
    
        throw r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(q qVar, q qVar2) {
        synchronized (this.f3035f.e()) {
            while (true) {
                int i10 = this.f3030a;
                if (i10 == 0) {
                    break;
                }
                if (i10 == 2 || i10 == 3) {
                    break;
                }
                try {
                    this.f3035f.f3233h.wait();
                } catch (InterruptedException e7) {
                    throw new r0(e7.getMessage(), e7);
                }
            }
        }
    }

    public final void d(boolean z) {
        synchronized (this.f3035f.e()) {
            try {
                if (this.f3030a != 2) {
                    return;
                }
                this.f3030a = 3;
                if (!z && this.f3031b != 0) {
                    try {
                        b(new t(6), null);
                    } catch (r0 e7) {
                        b1 b1Var = this.f3035f.f3233h;
                        byte[] bArr = b1.E;
                        if (de.d.f4630b > 1) {
                            e7.printStackTrace(b1.G);
                        }
                    }
                }
                this.f3036g = false;
                this.f3037h = false;
                this.f3030a = 0;
                this.f3035f.f3233h.notifyAll();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c1)) {
            return false;
        }
        c1 c1Var = (c1) obj;
        return a(c1Var.f3032c, c1Var.f3033d);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbTree[share=");
        sb2.append(this.f3032c);
        sb2.append(",service=");
        sb2.append(this.f3033d);
        sb2.append(",tid=");
        sb2.append(this.f3031b);
        sb2.append(",inDfs=");
        sb2.append(this.f3036g);
        sb2.append(",inDomainDfs=");
        sb2.append(this.f3037h);
        sb2.append(",connectionState=");
        return android.support.v4.media.session.a.s(sb2, this.f3030a, "]");
    }
}
