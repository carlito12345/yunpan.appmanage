package he;

import androidx.fragment.app.b0;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vd.l;

/* loaded from: classes.dex */
public abstract class e implements Runnable, AutoCloseable {

    /* renamed from: i, reason: collision with root package name */
    public static int f8191i;

    /* renamed from: j, reason: collision with root package name */
    public static final Logger f8192j = LoggerFactory.getLogger((Class<?>) e.class);

    /* renamed from: a, reason: collision with root package name */
    public volatile int f8193a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final String f8194b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Thread f8195c;

    /* renamed from: d, reason: collision with root package name */
    public volatile f f8196d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f8197e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f8198f;

    /* renamed from: g, reason: collision with root package name */
    public final ConcurrentHashMap f8199g;

    /* renamed from: h, reason: collision with root package name */
    public final AtomicLong f8200h;

    public e() {
        StringBuilder sb2 = new StringBuilder("Transport");
        int i10 = f8191i;
        f8191i = i10 + 1;
        sb2.append(i10);
        this.f8194b = sb2.toString();
        this.f8197e = new Object();
        this.f8198f = new Object();
        this.f8199g = new ConcurrentHashMap(10);
        this.f8200h = new AtomicLong(1L);
    }

    public static int X(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        if (i10 + i11 > bArr.length) {
            throw new IOException("Buffer too short, bufsize " + bArr.length + " read " + i11);
        }
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

    public final synchronized boolean A(long j10) {
        int i10 = this.f8193a;
        try {
            try {
                try {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 == 3) {
                                int i11 = this.f8193a;
                                if (i11 != 0 && i11 != 3 && i11 != 4 && i11 != 5 && i11 != 6) {
                                    f8192j.error("Invalid state: " + i11);
                                    this.f8193a = 6;
                                    r(j10);
                                }
                                return true;
                            }
                            if (i10 == 4) {
                                this.f8193a = 6;
                                throw new f("Connection in error", this.f8196d);
                            }
                            if (i10 != 5 && i10 != 6) {
                                throw new f("Invalid state: " + i10);
                            }
                            Logger logger = f8192j;
                            logger.debug("Trying to connect a disconnected transport");
                            int i12 = this.f8193a;
                            if (i12 != 0 && i12 != 3 && i12 != 4 && i12 != 5 && i12 != 6) {
                                logger.error("Invalid state: " + i12);
                                this.f8193a = 6;
                                r(j10);
                            }
                            return false;
                        }
                        this.f8195c.wait(j10);
                        int i13 = this.f8193a;
                        if (i13 == 1) {
                            this.f8193a = 6;
                            r(j10);
                            throw new a();
                        }
                        if (i13 == 2) {
                            if (this.f8196d != null) {
                                this.f8193a = 4;
                                r(j10);
                                throw this.f8196d;
                            }
                            this.f8193a = 3;
                            int i14 = this.f8193a;
                            if (i14 != 0 && i14 != 3 && i14 != 4 && i14 != 5 && i14 != 6) {
                                f8192j.error("Invalid state: " + i14);
                                this.f8193a = 6;
                                r(j10);
                            }
                            return true;
                        }
                    }
                    Logger logger2 = f8192j;
                    if (logger2.isDebugEnabled()) {
                        logger2.debug("Connecting " + this.f8194b);
                    }
                    this.f8193a = 1;
                    this.f8196d = null;
                    Thread thread = new Thread(this, this.f8194b);
                    thread.setDaemon(true);
                    this.f8195c = thread;
                    synchronized (this.f8195c) {
                        thread.start();
                        thread.wait(j10);
                        int i15 = this.f8193a;
                        if (i15 == 1) {
                            this.f8193a = 6;
                            throw new a();
                        }
                        if (i15 == 2) {
                            if (this.f8196d != null) {
                                this.f8193a = 4;
                                throw this.f8196d;
                            }
                            this.f8193a = 3;
                            int i16 = this.f8193a;
                            if (i16 != 0 && i16 != 3 && i16 != 4 && i16 != 5 && i16 != 6) {
                                logger2.error("Invalid state: " + i16);
                                this.f8193a = 6;
                                r(j10);
                            }
                            return true;
                        }
                        if (i15 != 3) {
                            int i17 = this.f8193a;
                            if (i17 != 0 && i17 != 3 && i17 != 4 && i17 != 5 && i17 != 6) {
                                logger2.error("Invalid state: " + i17);
                                this.f8193a = 6;
                                r(j10);
                            }
                            return false;
                        }
                        int i18 = this.f8193a;
                        if (i18 != 0 && i18 != 3 && i18 != 4 && i18 != 5 && i18 != 6) {
                            logger2.error("Invalid state: " + i18);
                            this.f8193a = 6;
                            r(j10);
                        }
                        return true;
                    }
                } catch (a e7) {
                    r(j10);
                    this.f8193a = 0;
                    throw e7;
                }
            } catch (f e10) {
                r(j10);
                throw e10;
            } catch (InterruptedException e11) {
                this.f8193a = 6;
                r(j10);
                throw new f(e11);
            }
        } catch (Throwable th2) {
            int i19 = this.f8193a;
            if (i19 != 0 && i19 != 3 && i19 != 4 && i19 != 5 && i19 != 6) {
                f8192j.error("Invalid state: " + i19);
                this.f8193a = 6;
                r(j10);
            }
            throw th2;
        }
    }

    public final synchronized void J() {
        K(true, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0056 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0058 A[Catch: all -> 0x0030, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0030, blocks: (B:4:0x0003, B:14:0x0018, B:34:0x0058, B:29:0x004f, B:19:0x0035, B:24:0x0042, B:28:0x004d), top: B:39:0x0003, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized boolean K(boolean z, boolean z4) {
        try {
            int i10 = this.f8193a;
            if (i10 != 0) {
                IOException iOException = null;
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            e = null;
                            this.f8195c = null;
                            this.f8193a = 6;
                            iOException = e;
                        } else if (i10 != 5 && i10 != 6) {
                            f8192j.error("Invalid state: " + this.f8193a);
                            this.f8195c = null;
                            this.f8193a = 6;
                        }
                    }
                    if (iOException != null) {
                        return false;
                    }
                    throw iOException;
                }
                z = true;
                if (this.f8199g.size() == 0 || z || !z4) {
                    try {
                        this.f8193a = 5;
                        boolean zM = M(z, z4);
                        this.f8193a = 6;
                        return zM;
                    } catch (IOException e7) {
                        e = e7;
                        this.f8193a = 6;
                    }
                }
                if (iOException != null) {
                }
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public abstract void L();

    public abstract boolean M(boolean z, boolean z4);

    public abstract void N(d dVar);

    public final long O(ad.c cVar, ad.d dVar, Set set, long j10) {
        ad.c cVarH = cVar;
        long j11 = 0;
        d dVarB = dVar;
        while (dVarB != null) {
            dVarB.reset();
            if (set.contains(l.RETAIN_PAYLOAD)) {
                dVarB.a0();
            }
            long jV = V(cVarH);
            if (j11 == 0) {
                j11 = jV;
            }
            if (j10 > 0) {
                dVarB.P(Long.valueOf(System.currentTimeMillis() + j10));
            } else {
                dVarB.P(null);
            }
            dVarB.a(jV);
            this.f8199g.put(Long.valueOf(jV), dVarB);
            cVarH = cVarH.h();
            if (cVarH == null) {
                break;
            }
            dVarB = cVarH.b();
        }
        P(cVar);
        return j11;
    }

    public abstract void P(ad.c cVar);

    public abstract void Q(Long l);

    public abstract int R(ad.c cVar);

    public abstract boolean S(ad.c cVar, d dVar);

    public abstract boolean T();

    public final void U() {
        boolean z = false;
        while (this.f8195c == Thread.currentThread()) {
            try {
                synchronized (this.f8197e) {
                    try {
                        Long lW = W();
                        if (lW == null) {
                            synchronized (this) {
                                try {
                                    Iterator it = this.f8199g.values().iterator();
                                    while (it.hasNext()) {
                                        ((d) it.next()).D();
                                    }
                                } finally {
                                }
                            }
                            throw new IOException("end of stream");
                        }
                        d dVar = (d) this.f8199g.get(lW);
                        if (dVar == null) {
                            Logger logger = f8192j;
                            if (logger.isDebugEnabled()) {
                                logger.debug("Unexpected message id, skipping message " + lW);
                            }
                            Q(lW);
                        } else {
                            N(dVar);
                            dVar.C();
                        }
                    } catch (SocketTimeoutException e7) {
                        f8192j.trace("Socket timeout during peekKey", (Throwable) e7);
                        if (this.f8200h.get() <= 0) {
                            Logger logger2 = f8192j;
                            if (logger2.isDebugEnabled()) {
                                logger2.debug("Idle timeout on " + this.f8194b);
                            }
                            throw e7;
                        }
                        Logger logger3 = f8192j;
                        if (logger3.isDebugEnabled()) {
                            logger3.debug("Transport still in use, no idle timeout " + this);
                        }
                        for (d dVar2 : this.f8199g.values()) {
                            synchronized (dVar2) {
                                dVar2.notifyAll();
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                String message = e10.getMessage();
                boolean z4 = (e10 instanceof SocketTimeoutException) || (message != null && message.equals("Read timed out"));
                if (message != null && message.equals("Socket closed")) {
                    f8192j.trace("Remote closed connection");
                } else if (z4) {
                    f8192j.debug("socket timeout in non peek state", (Throwable) e10);
                } else {
                    f8192j.debug("recv failed", (Throwable) e10);
                }
                synchronized (this) {
                    try {
                        K(!z4, false);
                    } catch (IOException e11) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(e10, e11);
                        } catch (Exception unused) {
                        }
                        f8192j.warn("Failed to disconnect", (Throwable) e11);
                    }
                    f8192j.debug("Disconnected");
                    Iterator it2 = this.f8199g.entrySet().iterator();
                    while (it2.hasNext()) {
                        ((d) ((Map.Entry) it2.next()).getValue()).l(e10);
                        it2.remove();
                        z = true;
                    }
                    if (z) {
                        f8192j.debug("Notified clients");
                    } else {
                        f8192j.debug("Exception without a request pending", (Throwable) e10);
                    }
                    return;
                }
            }
        }
    }

    public abstract long V(ad.c cVar);

    public abstract Long W();

    public final void Y() {
        long jDecrementAndGet = this.f8200h.decrementAndGet();
        Logger logger = f8192j;
        if (logger.isTraceEnabled()) {
            logger.trace("Release transport " + jDecrementAndGet + " " + this);
        }
        if (jDecrementAndGet != 0) {
            if (jDecrementAndGet < 0) {
                throw new b0("Usage count dropped below zero", 10);
            }
        } else if (logger.isTraceEnabled()) {
            logger.trace("Transport usage dropped to zero " + this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [ad.d, he.d] */
    /* JADX WARN: Type inference failed for: r12v1, types: [he.d] */
    /* JADX WARN: Type inference failed for: r12v3, types: [he.d] */
    public final d Z(ad.c cVar, ad.d dVar, Set set) throws f {
        if (T() && this.f8193a != 5) {
            throw new f("Transport is disconnected " + this.f8194b);
        }
        try {
            try {
                long jR = !set.contains(l.NO_TIMEOUT) ? R(cVar) : 0L;
                long jO = O(cVar, dVar, set, jR);
                if (Thread.currentThread() == this.f8195c) {
                    synchronized (this.f8197e) {
                        Long lW = W();
                        if (lW.longValue() == jO) {
                            N(dVar);
                            dVar.C();
                            d dVar2 = dVar;
                            while (dVar != null) {
                                if (cVar == null) {
                                    break;
                                }
                            }
                            return dVar;
                        }
                        Q(lW);
                    }
                }
                a0(cVar, dVar, jR);
                d dVarB = dVar;
                while (dVarB != null) {
                    this.f8199g.remove(Long.valueOf(dVarB.p()));
                    cVar = cVar.h();
                    if (cVar == null) {
                        break;
                    }
                    dVarB = cVar.b();
                }
                return dVar;
            } catch (IOException e7) {
                f8192j.warn("sendrecv failed", (Throwable) e7);
                try {
                    J();
                } catch (IOException e10) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(e7, e10);
                    } catch (Exception unused) {
                    }
                    f8192j.info("disconnect failed", (Throwable) e10);
                }
                throw e7;
            } catch (InterruptedException e11) {
                throw new f(e11);
            }
        } finally {
            while (dVar != 0) {
                this.f8199g.remove(Long.valueOf(dVar.p()));
                cVar = cVar.h();
                if (cVar == null) {
                    break;
                }
                dVar = cVar.b();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a0(ad.c cVar, ad.d dVar, long j10) {
        ad.c cVarH = cVar;
        while (dVar != 0) {
            synchronized (dVar) {
                try {
                    if (dVar.c0()) {
                        cVarH = cVarH.h();
                        if (cVarH == null) {
                            return;
                        } else {
                            dVar = cVarH.b();
                        }
                    } else if (j10 > 0) {
                        dVar.wait(j10);
                        if (dVar.c0() || !S(cVarH, dVar)) {
                            if (dVar.T()) {
                                throw new f(this.f8194b + " error reading response to " + cVarH, dVar.getException());
                            }
                            if (T() && this.f8193a != 5) {
                                throw new f(String.format("Transport was disconnected while waiting for a response (transport: %s state: %d),", this.f8194b, Integer.valueOf(this.f8193a)));
                            }
                            j10 = dVar.R().longValue() - System.currentTimeMillis();
                            if (j10 <= 0) {
                                Logger logger = f8192j;
                                if (logger.isDebugEnabled()) {
                                    logger.debug("State is " + this.f8193a);
                                }
                                throw new c(this.f8194b + " timedout waiting for response to " + cVarH);
                            }
                        }
                    } else {
                        dVar.wait();
                        if (!S(cVar, dVar)) {
                            Logger logger2 = f8192j;
                            if (logger2.isDebugEnabled()) {
                                logger2.debug("Wait returned state is " + this.f8193a);
                            }
                            if (T()) {
                                throw new InterruptedException("Transport was disconnected while waiting for a response");
                            }
                        }
                    }
                } finally {
                }
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        Y();
    }

    public final void finalize() {
        if (T() || this.f8200h.get() == 0) {
            return;
        }
        f8192j.warn("Session was not properly released");
    }

    public final synchronized void r(long j10) {
        Thread thread = this.f8195c;
        if (thread != null && Thread.currentThread() != thread) {
            this.f8195c = null;
            try {
                Logger logger = f8192j;
                logger.debug("Interrupting transport thread");
                thread.interrupt();
                logger.debug("Joining transport thread");
                thread.join(j10);
                logger.debug("Joined transport thread");
            } catch (InterruptedException e7) {
                throw new f("Failed to join transport thread", e7);
            }
        } else if (thread != null) {
            this.f8195c = null;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread threadCurrentThread = Thread.currentThread();
        try {
            if (this.f8193a != 5 && this.f8193a != 6) {
                L();
            }
            synchronized (threadCurrentThread) {
                try {
                    if (threadCurrentThread != this.f8195c) {
                        return;
                    }
                    this.f8193a = 2;
                    threadCurrentThread.notify();
                    U();
                } finally {
                }
            }
        } catch (Exception e7) {
            synchronized (threadCurrentThread) {
                try {
                    if (threadCurrentThread != this.f8195c) {
                        if (e7 instanceof SocketTimeoutException) {
                            f8192j.debug("Timeout connecting", (Throwable) e7);
                        } else {
                            f8192j.warn("Exception in transport thread", (Throwable) e7);
                        }
                    } else {
                        if (e7 instanceof SocketTimeoutException) {
                            this.f8196d = new a((SocketTimeoutException) e7);
                        } else {
                            this.f8196d = new f(e7);
                        }
                        this.f8193a = 2;
                        threadCurrentThread.notify();
                    }
                } finally {
                }
            }
        } catch (Throwable th2) {
            synchronized (threadCurrentThread) {
                try {
                    if (threadCurrentThread != this.f8195c) {
                        return;
                    }
                    this.f8193a = 2;
                    threadCurrentThread.notify();
                    throw th2;
                } finally {
                }
            }
        }
    }
}
