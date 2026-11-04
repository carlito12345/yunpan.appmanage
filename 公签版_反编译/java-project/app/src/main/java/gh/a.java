package gh;

import ch.d;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.SocketException;

/* loaded from: classes.dex */
public final class a extends d {

    /* renamed from: u, reason: collision with root package name */
    public static final byte[] f6165u = {-1, -2};

    /* renamed from: v, reason: collision with root package name */
    public static final byte[] f6166v = {-1, -5};

    /* renamed from: w, reason: collision with root package name */
    public static final byte[] f6167w = {-1, -4};

    /* renamed from: x, reason: collision with root package name */
    public static final byte[] f6168x = {-1, -6};

    /* renamed from: y, reason: collision with root package name */
    public static final byte[] f6169y = {-1, -16};
    public static final byte[] z = {24, 0};

    /* renamed from: o, reason: collision with root package name */
    public final Object f6174o = new Object();

    /* renamed from: p, reason: collision with root package name */
    public volatile boolean f6175p = true;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f6170j = new int[256];

    /* renamed from: k, reason: collision with root package name */
    public final int[] f6171k = new int[256];
    public final int[] l = new int[256];

    /* renamed from: m, reason: collision with root package name */
    public final String f6172m = "VT100";

    /* renamed from: n, reason: collision with root package name */
    public final qf.c[] f6173n = new qf.c[256];

    /* renamed from: t, reason: collision with root package name */
    public final boolean f6178t = true;
    public BufferedInputStream r = null;

    /* renamed from: s, reason: collision with root package name */
    public c f6177s = null;

    /* renamed from: q, reason: collision with root package name */
    public final int f6176q = 512;

    @Override // ch.d
    public final void b() throws SocketException {
        for (int i10 = 0; i10 < 256; i10++) {
            this.f6170j[i10] = 0;
            this.f6171k[i10] = 0;
            this.l[i10] = 0;
            qf.c cVar = this.f6173n[i10];
        }
        this.f3252b.setSoTimeout(this.f3251a);
        this.f3254d = this.f3252b.getInputStream();
        this.f3255e = this.f3252b.getOutputStream();
        this.f3254d = new BufferedInputStream(this.f3254d);
        this.f3255e = new BufferedOutputStream(this.f3255e);
        for (int i11 = 0; i11 < 256; i11++) {
            qf.c cVar2 = this.f6173n[i11];
        }
        b bVar = new b(this.f3254d, this, this.f6178t);
        if (this.f6178t && bVar.f6188j != null) {
            bVar.f6180b = false;
            int priority = Thread.currentThread().getPriority() + 1;
            if (priority > 10) {
                priority = 10;
            }
            bVar.f6188j.setPriority(priority);
            bVar.f6188j.setDaemon(true);
            bVar.f6188j.start();
            bVar.f6191n = true;
        }
        this.r = new BufferedInputStream(bVar);
        this.f6177s = new c(this);
    }

    @Override // ch.d
    public final void d() throws IOException {
        try {
            BufferedInputStream bufferedInputStream = this.r;
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            c cVar = this.f6177s;
            if (cVar != null) {
                cVar.close();
            }
            this.f6177s = null;
            this.r = null;
            super.d();
        } catch (Throwable th2) {
            this.f6177s = null;
            this.r = null;
            super.d();
            throw th2;
        }
    }

    public final void g() {
        OutputStream outputStream = this.f3255e;
        if (outputStream == null) {
            throw new IOException("Stream closed");
        }
        outputStream.flush();
    }

    public final void h() {
        synchronized (this) {
        }
    }

    public final synchronized void i() {
        if (!this.f6175p) {
            synchronized (this.f6174o) {
                this.f6175p = true;
                this.f6174o.notifyAll();
            }
        }
    }

    public final void j(int i10) {
        String str;
        qf.c[] cVarArr = this.f6173n;
        qf.c cVar = cVarArr[i10];
        boolean z4 = (i10 != 24 || (str = this.f6172m) == null || str.isEmpty()) ? false : true;
        int[] iArr = this.f6171k;
        int i11 = iArr[i10];
        if (i11 > 0) {
            int i12 = i11 - 1;
            iArr[i10] = i12;
            if (i12 > 0 && (this.l[i10] & 1) != 0) {
                iArr[i10] = i11 - 2;
            }
        }
        if (iArr[i10] == 0 && !p(i10)) {
            if (z4) {
                int[] iArr2 = this.l;
                iArr2[i10] = iArr2[i10] | 4;
                synchronized (this) {
                    this.f3255e.write(f6166v);
                    this.f3255e.write(i10);
                    this.f3255e.flush();
                }
            } else {
                iArr[i10] = iArr[i10] + 1;
                s(i10);
            }
        }
        int[] iArr3 = this.l;
        iArr3[i10] = 1 | iArr3[i10];
        if (p(i10)) {
            qf.c cVar2 = cVarArr[i10];
        }
    }

    public final void k(int i10) {
        int[] iArr = this.f6171k;
        int i11 = iArr[i10];
        int[] iArr2 = this.l;
        if (i11 > 0) {
            int i12 = i11 - 1;
            iArr[i10] = i12;
            if (i12 > 0 && (iArr2[i10] & 1) == 0) {
                iArr[i10] = i11 - 2;
            }
        }
        if (iArr[i10] == 0 && p(i10)) {
            if ((iArr2[i10] & 1) != 0 || p(i10)) {
                s(i10);
            }
            iArr2[i10] = iArr2[i10] & (-5);
        }
        iArr2[i10] = iArr2[i10] & (-2);
        qf.c cVar = this.f6173n[i10];
    }

    public final void l(int i10, int[] iArr) {
        if (i10 > 0) {
            qf.c[] cVarArr = this.f6173n;
            int i11 = iArr[0];
            qf.c cVar = cVarArr[i11];
            if (i10 > 1 && i11 == 24 && iArr[1] == 1) {
                synchronized (this) {
                    if (this.f6172m != null) {
                        this.f3255e.write(f6168x);
                        this.f3255e.write(z);
                        this.f3255e.write(this.f6172m.getBytes(this.f3257g));
                        this.f3255e.write(f6169y);
                        this.f3255e.flush();
                    }
                }
            }
        }
    }

    public final void m(int i10) {
        qf.c[] cVarArr = this.f6173n;
        qf.c cVar = cVarArr[i10];
        int[] iArr = this.f6170j;
        int i11 = iArr[i10];
        if (i11 > 0) {
            int i12 = i11 - 1;
            iArr[i10] = i12;
            if (i12 > 0 && t(i10)) {
                iArr[i10] = iArr[i10] - 1;
            }
        }
        if (iArr[i10] == 0 && !o(i10)) {
            iArr[i10] = iArr[i10] + 1;
            r(i10);
        }
        int[] iArr2 = this.l;
        iArr2[i10] = iArr2[i10] | 2;
        if (o(i10)) {
            qf.c cVar2 = cVarArr[i10];
        }
    }

    public final void n(int i10) {
        int[] iArr = this.f6170j;
        int i11 = iArr[i10];
        if (i11 > 0) {
            int i12 = i11 - 1;
            iArr[i10] = i12;
            if (i12 > 0 && !t(i10)) {
                iArr[i10] = iArr[i10] - 1;
            }
        }
        int i13 = iArr[i10];
        int[] iArr2 = this.l;
        if (i13 == 0 && o(i10)) {
            if (t(i10) || o(i10)) {
                r(i10);
            }
            iArr2[i10] = iArr2[i10] & (-9);
        }
        iArr2[i10] = iArr2[i10] & (-3);
        qf.c cVar = this.f6173n[i10];
    }

    public final boolean o(int i10) {
        return (this.l[i10] & 8) != 0;
    }

    public final boolean p(int i10) {
        return (this.l[i10] & 4) != 0;
    }

    public final synchronized void q(int i10) {
        this.f3255e.write(i10);
        if (t(1)) {
            o(1);
        }
    }

    public final synchronized void r(int i10) {
        this.f3255e.write(f6165u);
        this.f3255e.write(i10);
        this.f3255e.flush();
    }

    public final synchronized void s(int i10) {
        this.f3255e.write(f6167w);
        this.f3255e.write(i10);
        this.f3255e.flush();
    }

    public final boolean t(int i10) {
        return (this.l[i10] & 2) != 0;
    }
}
