package v9;

import a9.o;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import ua.g8;

/* loaded from: classes.dex */
public final class i extends u9.d {

    /* renamed from: c, reason: collision with root package name */
    public volatile int f16702c;

    /* renamed from: d, reason: collision with root package name */
    public final Process f16703d;

    /* renamed from: e, reason: collision with root package name */
    public final rg.c f16704e;

    /* renamed from: f, reason: collision with root package name */
    public final g f16705f;

    /* renamed from: g, reason: collision with root package name */
    public final g f16706g;

    /* renamed from: h, reason: collision with root package name */
    public final ReentrantLock f16707h;

    /* renamed from: i, reason: collision with root package name */
    public final Condition f16708i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayDeque f16709j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f16710k;

    public i(a aVar, Process process) throws IOException {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f16707h = reentrantLock;
        this.f16708i = reentrantLock.newCondition();
        this.f16709j = new ArrayDeque();
        this.f16710k = false;
        this.f16702c = -1;
        this.f16703d = process;
        this.f16704e = new rg.c(process.getOutputStream());
        this.f16705f = new g(process.getInputStream());
        this.f16706g = new g(process.getErrorStream());
        FutureTask futureTask = new FutureTask(new Callable() { // from class: v9.f
            @Override // java.util.concurrent.Callable
            public final Object call() throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
                int i10 = 0;
                i iVar = this.f16699a;
                iVar.getClass();
                try {
                    iVar.f16703d.exitValue();
                    throw new IOException("Created process has terminated");
                } catch (IllegalThreadStateException unused) {
                    o.x(iVar.f16705f);
                    o.x(iVar.f16706g);
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(iVar.f16705f));
                    try {
                        iVar.f16704e.write("echo SHELL_TEST\n".getBytes(Charset.forName(HTTP.UTF_8)));
                        iVar.f16704e.flush();
                        String line = bufferedReader.readLine();
                        if (TextUtils.isEmpty(line) || !line.contains("SHELL_TEST")) {
                            throw new IOException("Created process is not a shell");
                        }
                        iVar.f16704e.write("id\n".getBytes(Charset.forName(HTTP.UTF_8)));
                        iVar.f16704e.flush();
                        String line2 = bufferedReader.readLine();
                        if (!TextUtils.isEmpty(line2) && line2.contains("uid=0")) {
                            synchronized (l.class) {
                                String property = System.getProperty("user.dir");
                                StringBuilder sb2 = new StringBuilder("'");
                                int length = property.length();
                                for (int i11 = 0; i11 < length; i11++) {
                                    char cCharAt = property.charAt(i11);
                                    if (cCharAt == '\'') {
                                        sb2.append("'\\''");
                                    } else {
                                        sb2.append(cCharAt);
                                    }
                                }
                                sb2.append('\'');
                                String string = sb2.toString();
                                iVar.f16704e.write(("cd " + string + SignParameters.NEW_LINE).getBytes(Charset.forName(HTTP.UTF_8)));
                                iVar.f16704e.flush();
                                i10 = 1;
                            }
                        }
                        bufferedReader.close();
                        return Integer.valueOf(i10);
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                            } catch (Exception unused2) {
                            }
                        }
                        throw th2;
                    }
                }
            }
        });
        u9.d.f15554a.execute(futureTask);
        try {
            try {
                this.f16702c = ((Integer) futureTask.get(aVar.f16680a, TimeUnit.SECONDS)).intValue();
            } catch (InterruptedException e7) {
                throw new IOException("Shell check interrupted", e7);
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                if (!(cause instanceof IOException)) {
                    throw new IOException("Unknown ExecutionException", cause);
                }
                throw ((IOException) cause);
            } catch (TimeoutException e11) {
                throw new IOException("Shell check timeout", e11);
            }
        } catch (IOException e12) {
            M();
            throw e12;
        }
    }

    public final synchronized void J(u9.c cVar) {
        if (this.f16702c < 0) {
            cVar.b();
            return;
        }
        o.x(this.f16705f);
        o.x(this.f16706g);
        try {
            this.f16704e.write(10);
            this.f16704e.flush();
            cVar.a(this.f16704e, this.f16705f, this.f16706g);
        } catch (IOException unused) {
            M();
            cVar.b();
        }
    }

    public final void K(e eVar) {
        ReentrantLock reentrantLock = this.f16707h;
        reentrantLock.lock();
        try {
            if (this.f16710k) {
                h hVar = new h(reentrantLock.newCondition());
                this.f16709j.offer(hVar);
                while (!hVar.f16701b) {
                    try {
                        hVar.f16700a.await();
                    } catch (InterruptedException unused) {
                    }
                }
            }
            this.f16710k = true;
            reentrantLock.unlock();
            J(eVar);
            L(true);
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final u9.c L(boolean z) {
        ReentrantLock reentrantLock = this.f16707h;
        reentrantLock.lock();
        ArrayDeque arrayDeque = this.f16709j;
        try {
            u9.c cVar = (u9.c) arrayDeque.poll();
            if (cVar == null) {
                this.f16710k = false;
                this.f16708i.signalAll();
                return null;
            }
            if (cVar instanceof h) {
                h hVar = (h) cVar;
                hVar.f16701b = true;
                hVar.f16700a.signal();
                return null;
            }
            if (!z) {
                return cVar;
            }
            arrayDeque.offerFirst(cVar);
            reentrantLock.unlock();
            u9.d.f15554a.execute(new g8(6, this));
            return null;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void M() {
        this.f16702c = -1;
        try {
            this.f16704e.r();
        } catch (IOException unused) {
        }
        try {
            this.f16706g.r();
        } catch (IOException unused2) {
        }
        try {
            this.f16705f.r();
        } catch (IOException unused3) {
        }
        this.f16703d.destroy();
    }

    public final void N(u9.c cVar) {
        ReentrantLock reentrantLock = this.f16707h;
        reentrantLock.lock();
        try {
            this.f16709j.offer(cVar);
            if (!this.f16710k) {
                this.f16710k = true;
                u9.d.f15554a.execute(new g8(6, this));
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f16702c < 0) {
            return;
        }
        M();
    }
}
