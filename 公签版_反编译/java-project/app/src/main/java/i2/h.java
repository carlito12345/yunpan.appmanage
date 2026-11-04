package i2;

import a9.o;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import f2.r0;
import java.io.IOException;

/* loaded from: classes.dex */
public final class h extends Handler implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final int f8458a;

    /* renamed from: b, reason: collision with root package name */
    public final r0 f8459b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8460c;

    /* renamed from: d, reason: collision with root package name */
    public Object f8461d;

    /* renamed from: e, reason: collision with root package name */
    public IOException f8462e;

    /* renamed from: f, reason: collision with root package name */
    public int f8463f;

    /* renamed from: g, reason: collision with root package name */
    public Thread f8464g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f8465h;

    /* renamed from: i, reason: collision with root package name */
    public volatile boolean f8466i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ j f8467j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(j jVar, Looper looper, r0 r0Var, g gVar, int i10, long j10) {
        super(looper);
        this.f8467j = jVar;
        this.f8459b = r0Var;
        this.f8461d = gVar;
        this.f8458a = i10;
        this.f8460c = j10;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [i2.g, java.lang.Object] */
    public final void a(boolean z) {
        this.f8466i = z;
        this.f8462e = null;
        if (hasMessages(1)) {
            this.f8465h = true;
            removeMessages(1);
            if (!z) {
                sendEmptyMessage(2);
            }
        } else {
            synchronized (this) {
                try {
                    this.f8465h = true;
                    this.f8459b.f5369h = true;
                    Thread thread = this.f8464g;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if (z) {
            this.f8467j.f8471b = null;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ?? r12 = this.f8461d;
            r12.getClass();
            r12.e(this.f8459b, jElapsedRealtime, jElapsedRealtime - this.f8460c, true);
            this.f8461d = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [i2.g, java.lang.Object] */
    public final void b() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = jElapsedRealtime - this.f8460c;
        ?? r02 = this.f8461d;
        r02.getClass();
        r02.b(this.f8459b, jElapsedRealtime, j10, this.f8463f);
        this.f8462e = null;
        j jVar = this.f8467j;
        j2.a aVar = jVar.f8470a;
        h hVar = jVar.f8471b;
        hVar.getClass();
        aVar.execute(hVar);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [i2.g, java.lang.Object] */
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f8466i) {
            return;
        }
        int i10 = message.what;
        if (i10 == 1) {
            b();
            return;
        }
        if (i10 == 4) {
            throw ((Error) message.obj);
        }
        this.f8467j.f8471b = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = jElapsedRealtime - this.f8460c;
        ?? r32 = this.f8461d;
        r32.getClass();
        if (this.f8465h) {
            r32.e(this.f8459b, jElapsedRealtime, j10, false);
            return;
        }
        int i11 = message.what;
        if (i11 == 2) {
            try {
                r32.d(this.f8459b, jElapsedRealtime, j10);
                return;
            } catch (RuntimeException e7) {
                u1.a.g("Unexpected exception handling load completed", e7);
                this.f8467j.f8472c = new i(e7);
                return;
            }
        }
        if (i11 != 3) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.f8462e = iOException;
        int i12 = this.f8463f + 1;
        this.f8463f = i12;
        ai.a aVarF = r32.f(this.f8459b, jElapsedRealtime, j10, iOException, i12);
        int i13 = aVarF.f717a;
        if (i13 == 3) {
            this.f8467j.f8472c = this.f8462e;
            return;
        }
        if (i13 != 2) {
            if (i13 == 1) {
                this.f8463f = 1;
            }
            long jMin = aVarF.f718b;
            if (jMin == -9223372036854775807L) {
                jMin = Math.min((this.f8463f - 1) * 1000, 5000);
            }
            j jVar = this.f8467j;
            o.t(jVar.f8471b == null);
            jVar.f8471b = this;
            if (jMin > 0) {
                sendEmptyMessageDelayed(1, jMin);
            } else {
                b();
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = this.f8465h;
                this.f8464g = Thread.currentThread();
            }
            if (!z) {
                Trace.beginSection("load:".concat(this.f8459b.getClass().getSimpleName()));
                try {
                    this.f8459b.b();
                    Trace.endSection();
                } catch (Throwable th2) {
                    Trace.endSection();
                    throw th2;
                }
            }
            synchronized (this) {
                this.f8464g = null;
                Thread.interrupted();
            }
            if (this.f8466i) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e7) {
            if (this.f8466i) {
                return;
            }
            obtainMessage(3, e7).sendToTarget();
        } catch (Exception e10) {
            if (this.f8466i) {
                return;
            }
            u1.a.g("Unexpected exception loading stream", e10);
            obtainMessage(3, new i(e10)).sendToTarget();
        } catch (OutOfMemoryError e11) {
            if (this.f8466i) {
                return;
            }
            u1.a.g("OutOfMemory error loading stream", e11);
            obtainMessage(3, new i(e11)).sendToTarget();
        } catch (Error e12) {
            if (!this.f8466i) {
                u1.a.g("Unexpected error loading stream", e12);
                obtainMessage(4, e12).sendToTarget();
            }
            throw e12;
        }
    }
}
