package ee;

import a9.o;
import ce.b1;
import ce.q;
import ce.t;
import de.d;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes.dex */
public abstract class b implements Runnable {

    /* renamed from: f, reason: collision with root package name */
    public static int f4950f;

    /* renamed from: g, reason: collision with root package name */
    public static final d f4951g = d.r();

    /* renamed from: a, reason: collision with root package name */
    public int f4952a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final String f4953b;

    /* renamed from: c, reason: collision with root package name */
    public Thread f4954c;

    /* renamed from: d, reason: collision with root package name */
    public c f4955d;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f4956e;

    public b() {
        StringBuilder sb2 = new StringBuilder("Transport");
        int i10 = f4950f;
        f4950f = i10 + 1;
        sb2.append(i10);
        this.f4953b = sb2.toString();
        this.f4956e = new HashMap(4);
    }

    public static int i(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        while (i12 < i11) {
            int i13 = inputStream.read(bArr, i10 + i12, i11 - i12);
            if (i13 <= 0) {
                break;
            }
            i12 += i13;
        }
        return i12;
    }

    public final synchronized void a(long j10) {
        try {
            try {
                int i10 = this.f4952a;
                if (i10 != 0) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            this.f4952a = 0;
                            throw new c((Throwable) this.f4955d);
                        }
                        c cVar = new c("Invalid state: " + this.f4952a);
                        this.f4952a = 0;
                        throw cVar;
                    }
                    if (i10 != 0 && i10 != 3 && i10 != 4) {
                        if (d.f4630b >= 1) {
                            f4951g.getClass();
                        }
                        this.f4952a = 0;
                        this.f4954c = null;
                    }
                    return;
                }
                this.f4952a = 1;
                this.f4955d = null;
                Thread thread = new Thread(this, this.f4953b);
                this.f4954c = thread;
                thread.setDaemon(true);
                synchronized (this.f4954c) {
                    this.f4954c.start();
                    this.f4954c.wait(j10);
                    int i11 = this.f4952a;
                    if (i11 == 1) {
                        this.f4952a = 0;
                        this.f4954c = null;
                        throw new c("Connection timeout");
                    }
                    if (i11 == 2) {
                        c cVar2 = this.f4955d;
                        if (cVar2 == null) {
                            this.f4952a = 3;
                            return;
                        } else {
                            this.f4952a = 4;
                            this.f4954c = null;
                            throw cVar2;
                        }
                    }
                    if (i11 != 0 && i11 != 3 && i11 != 4) {
                        if (d.f4630b >= 1) {
                            f4951g.getClass();
                        }
                        this.f4952a = 0;
                        this.f4954c = null;
                    }
                }
            } catch (Throwable th2) {
                int i12 = this.f4952a;
                if (i12 != 0 && i12 != 3 && i12 != 4) {
                    if (d.f4630b >= 1) {
                        f4951g.getClass();
                    }
                    this.f4952a = 0;
                    this.f4954c = null;
                }
                throw th2;
            } finally {
            }
        } catch (InterruptedException e7) {
            this.f4952a = 0;
            this.f4954c = null;
            throw new c((Exception) e7);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x003b A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x003d A[Catch: all -> 0x001b, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x001b, blocks: (B:3:0x0001, B:11:0x0011, B:13:0x0015, B:16:0x001d, B:30:0x003d, B:25:0x0034, B:18:0x0023, B:22:0x002e), top: B:37:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void b(boolean z) {
        try {
            int i10 = this.f4952a;
            if (i10 == 0) {
                return;
            }
            IOException iOException = null;
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (d.f4630b >= 1) {
                            f4951g.getClass();
                        }
                        this.f4954c = null;
                        this.f4952a = 0;
                        if (iOException == null) {
                            return;
                        } else {
                            throw iOException;
                        }
                    }
                    e = null;
                }
                this.f4954c = null;
                this.f4952a = 0;
                iOException = e;
                if (iOException == null) {
                }
            } else {
                z = true;
            }
            if (this.f4956e.size() == 0 || z) {
                try {
                    d(z);
                    e = null;
                } catch (IOException e7) {
                    e = e7;
                }
                this.f4954c = null;
                this.f4952a = 0;
                iOException = e;
            }
            if (iOException == null) {
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public abstract void c();

    public abstract void d(boolean z);

    public abstract void e(a aVar);

    public abstract void f(q qVar);

    public final void g() throws IOException {
        t tVarH;
        while (this.f4954c == Thread.currentThread()) {
            try {
                tVarH = h();
            } catch (Exception e7) {
                String message = e7.getMessage();
                boolean z = message != null && message.equals("Read timed out");
                boolean z4 = !z;
                if (!z && d.f4630b >= 3) {
                    e7.printStackTrace(f4951g);
                }
                try {
                    b(z4);
                } catch (IOException e10) {
                    e10.printStackTrace(f4951g);
                }
            }
            if (tVarH == null) {
                throw new IOException("end of stream");
            }
            synchronized (this) {
                try {
                    a aVar = (a) this.f4956e.get(tVarH);
                    if (aVar == null) {
                        if (d.f4630b >= 4) {
                            f4951g.getClass();
                        }
                        b1 b1Var = (b1) this;
                        int iA = o.A(2, b1Var.f3020q) & HPKE.aead_EXPORT_ONLY;
                        if (iA < 33 || iA + 4 > b1Var.A) {
                            b1Var.f3019p.skip(r1.available());
                        } else {
                            b1Var.f3019p.skip(iA - 32);
                        }
                    } else {
                        e(aVar);
                        aVar.f4949b = true;
                        notifyAll();
                    }
                } finally {
                }
            }
        }
    }

    public abstract t h();

    public final synchronized void j(q qVar, q qVar2, long j10) {
        b1 b1Var = (b1) this;
        int i10 = b1Var.f3017m + 1;
        b1Var.f3017m = i10;
        if (i10 == 32000) {
            b1Var.f3017m = 1;
        }
        qVar.f3123m = b1Var.f3017m;
        qVar2.f4949b = false;
        try {
            try {
                try {
                    this.f4956e.put(qVar, qVar2);
                    f(qVar);
                    qVar2.f4948a = System.currentTimeMillis() + j10;
                    while (!qVar2.f4949b) {
                        wait(j10);
                        j10 = qVar2.f4948a - System.currentTimeMillis();
                        if (j10 <= 0) {
                            throw new c(this.f4953b + " timedout waiting for response to " + qVar);
                        }
                    }
                } catch (InterruptedException e7) {
                    throw new c((Exception) e7);
                }
            } catch (IOException e10) {
                if (d.f4630b > 2) {
                    e10.printStackTrace(f4951g);
                }
                try {
                    b(true);
                } catch (IOException e11) {
                    e11.printStackTrace(f4951g);
                }
                throw e10;
            }
        } finally {
            this.f4956e.remove(qVar);
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        Thread threadCurrentThread = Thread.currentThread();
        try {
            c();
            synchronized (threadCurrentThread) {
                try {
                    if (threadCurrentThread != this.f4954c) {
                        return;
                    }
                    this.f4952a = 2;
                    threadCurrentThread.notify();
                    g();
                } finally {
                }
            }
        } catch (Exception e7) {
            synchronized (threadCurrentThread) {
                try {
                    if (threadCurrentThread != this.f4954c) {
                        if (d.f4630b >= 2) {
                            e7.printStackTrace(f4951g);
                        }
                    } else {
                        this.f4955d = new c(e7);
                        this.f4952a = 2;
                        threadCurrentThread.notify();
                    }
                } finally {
                }
            }
        } catch (Throwable th2) {
            synchronized (threadCurrentThread) {
                try {
                    if (threadCurrentThread != this.f4954c) {
                        return;
                    }
                    this.f4952a = 2;
                    threadCurrentThread.notify();
                    throw th2;
                } finally {
                }
            }
        }
    }
}
