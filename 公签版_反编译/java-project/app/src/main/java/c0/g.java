package c0;

import a2.y0;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class g implements y7.c {

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f2835d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e, reason: collision with root package name */
    public static final Logger f2836e = Logger.getLogger(g.class.getName());

    /* renamed from: f, reason: collision with root package name */
    public static final com.bumptech.glide.c f2837f;

    /* renamed from: g, reason: collision with root package name */
    public static final Object f2838g;

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f2839a;

    /* renamed from: b, reason: collision with root package name */
    public volatile c f2840b;

    /* renamed from: c, reason: collision with root package name */
    public volatile f f2841c;

    static {
        com.bumptech.glide.c eVar;
        try {
            eVar = new d(AtomicReferenceFieldUpdater.newUpdater(f.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(f.class, f.class, "b"), AtomicReferenceFieldUpdater.newUpdater(g.class, f.class, "c"), AtomicReferenceFieldUpdater.newUpdater(g.class, c.class, "b"), AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "a"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            eVar = new e();
        }
        f2837f = eVar;
        if (th != null) {
            f2836e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f2838g = new Object();
    }

    public static void b(g gVar) {
        f fVar;
        c cVar;
        c cVar2;
        c cVar3;
        do {
            fVar = gVar.f2841c;
        } while (!f2837f.h(gVar, fVar, f.f2832c));
        while (true) {
            cVar = null;
            if (fVar == null) {
                break;
            }
            Thread thread = fVar.f2833a;
            if (thread != null) {
                fVar.f2833a = null;
                LockSupport.unpark(thread);
            }
            fVar = fVar.f2834b;
        }
        do {
            cVar2 = gVar.f2840b;
        } while (!f2837f.f(gVar, cVar2, c.f2824d));
        while (true) {
            cVar3 = cVar;
            cVar = cVar2;
            if (cVar == null) {
                break;
            }
            cVar2 = cVar.f2827c;
            cVar.f2827c = cVar3;
        }
        while (cVar3 != null) {
            c cVar4 = cVar3.f2827c;
            c(cVar3.f2825a, cVar3.f2826b);
            cVar3 = cVar4;
        }
    }

    public static void c(y7.b bVar, y0 y0Var) {
        try {
            y0Var.execute(bVar);
        } catch (RuntimeException e7) {
            f2836e.log(Level.SEVERE, "RuntimeException while executing runnable " + bVar + " with executor " + y0Var, (Throwable) e7);
        }
    }

    public static Object d(Object obj) throws ExecutionException {
        if (obj instanceof a) {
            CancellationException cancellationException = ((a) obj).f2823a;
            CancellationException cancellationException2 = new CancellationException("Task was cancelled.");
            cancellationException2.initCause(cancellationException);
            throw cancellationException2;
        }
        if (obj instanceof b) {
            ((b) obj).getClass();
            throw new ExecutionException((Throwable) null);
        }
        if (obj == f2838g) {
            return null;
        }
        return obj;
    }

    public static Object e(g gVar) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = gVar.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th2) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public final void a(StringBuilder sb2) {
        try {
            Object objE = e(this);
            sb2.append("SUCCESS, result=[");
            sb2.append(objE == this ? "this future" : String.valueOf(objE));
            sb2.append("]");
        } catch (CancellationException unused) {
            sb2.append("CANCELLED");
        } catch (RuntimeException e7) {
            sb2.append("UNKNOWN, cause=[");
            sb2.append(e7.getClass());
            sb2.append(" thrown from get()]");
        } catch (ExecutionException e10) {
            sb2.append("FAILURE, cause=[");
            sb2.append(e10.getCause());
            sb2.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.f2839a;
        if (obj != null) {
            return false;
        }
        if (!f2837f.g(this, obj, f2835d ? new a(z, new CancellationException("Future.cancel() was called.")) : z ? a.f2821b : a.f2822c)) {
            return false;
        }
        b(this);
        return true;
    }

    public final void f(f fVar) {
        fVar.f2833a = null;
        while (true) {
            f fVar2 = this.f2841c;
            if (fVar2 == f.f2832c) {
                return;
            }
            f fVar3 = null;
            while (fVar2 != null) {
                f fVar4 = fVar2.f2834b;
                if (fVar2.f2833a != null) {
                    fVar3 = fVar2;
                } else if (fVar3 != null) {
                    fVar3.f2834b = fVar4;
                    if (fVar3.f2833a == null) {
                        break;
                    }
                } else if (!f2837f.h(this, fVar2, fVar4)) {
                    break;
                }
                fVar2 = fVar4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f2839a;
        if (obj != null) {
            return d(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            f fVar = this.f2841c;
            f fVar2 = f.f2832c;
            if (fVar != fVar2) {
                f fVar3 = new f();
                do {
                    com.bumptech.glide.c cVar = f2837f;
                    cVar.U(fVar3, fVar);
                    if (cVar.h(this, fVar, fVar3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                f(fVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f2839a;
                            if (obj2 != null) {
                                return d(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        f(fVar3);
                    } else {
                        fVar = this.f2841c;
                    }
                } while (fVar != fVar2);
            }
            return d(this.f2839a);
        }
        while (nanos > 0) {
            Object obj3 = this.f2839a;
            if (obj3 != null) {
                return d(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        StringBuilder sbW = android.support.v4.media.session.a.w(j10, "Waited ", " ");
        sbW.append(timeUnit.toString().toLowerCase(locale));
        String string3 = sbW.toString();
        if (nanos + 1000 < 0) {
            String strJ = g.b.j(string3, " (plus ");
            long j11 = -nanos;
            long jConvert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
            long nanos2 = j11 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strJ2 = strJ + jConvert + " " + lowerCase;
                if (z) {
                    strJ2 = g.b.j(strJ2, ",");
                }
                strJ = g.b.j(strJ2, " ");
            }
            if (z) {
                strJ = strJ + nanos2 + " nanoseconds ";
            }
            string3 = g.b.j(strJ, "delay)");
        }
        if (isDone()) {
            throw new TimeoutException(g.b.j(string3, " but future completed as timeout expired"));
        }
        throw new TimeoutException(g.b.k(string3, " for ", string));
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f2839a instanceof a;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f2839a != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("[status=");
        if (this.f2839a instanceof a) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            a(sb2);
        } else {
            try {
                if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
            } catch (RuntimeException e7) {
                str = "Exception thrown from implementation: " + e7.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb2.append("PENDING, info=[");
                sb2.append(str);
                sb2.append("]");
            } else if (isDone()) {
                a(sb2);
            } else {
                sb2.append("PENDING");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f2839a;
            if (obj2 != null) {
                return d(obj2);
            }
            f fVar = this.f2841c;
            f fVar2 = f.f2832c;
            if (fVar != fVar2) {
                f fVar3 = new f();
                do {
                    com.bumptech.glide.c cVar = f2837f;
                    cVar.U(fVar3, fVar);
                    if (cVar.h(this, fVar, fVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f2839a;
                            } else {
                                f(fVar3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return d(obj);
                    }
                    fVar = this.f2841c;
                } while (fVar != fVar2);
            }
            return d(this.f2839a);
        }
        throw new InterruptedException();
    }
}
