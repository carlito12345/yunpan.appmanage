package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class r implements k {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1135a;

    /* renamed from: b, reason: collision with root package name */
    public final kf.b f1136b;

    /* renamed from: c, reason: collision with root package name */
    public final gf.g f1137c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f1138d;

    /* renamed from: e, reason: collision with root package name */
    public Handler f1139e;

    /* renamed from: f, reason: collision with root package name */
    public ThreadPoolExecutor f1140f;

    /* renamed from: g, reason: collision with root package name */
    public ThreadPoolExecutor f1141g;

    /* renamed from: h, reason: collision with root package name */
    public a9.o f1142h;

    public r(Context context, kf.b bVar) {
        gf.g gVar = s.f1143d;
        this.f1138d = new Object();
        s1.g.l(context, "Context cannot be null");
        this.f1135a = context.getApplicationContext();
        this.f1136b = bVar;
        this.f1137c = gVar;
    }

    @Override // androidx.emoji2.text.k
    public final void a(a9.o oVar) {
        synchronized (this.f1138d) {
            this.f1142h = oVar;
        }
        c();
    }

    public final void b() {
        synchronized (this.f1138d) {
            try {
                this.f1142h = null;
                Handler handler = this.f1139e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.f1139e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f1141g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f1140f = null;
                this.f1141g = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void c() {
        synchronized (this.f1138d) {
            try {
                if (this.f1142h == null) {
                    return;
                }
                if (this.f1140f == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new a("emojiCompat", 0));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.f1141g = threadPoolExecutor;
                    this.f1140f = threadPoolExecutor;
                }
                this.f1140f.execute(new a2.h(7, this));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final u0.g d() throws Throwable {
        try {
            gf.g gVar = this.f1137c;
            Context context = this.f1135a;
            kf.b bVar = this.f1136b;
            gVar.getClass();
            d3.g gVarA = u0.b.a(context, bVar);
            int i10 = gVarA.f4436b;
            if (i10 != 0) {
                throw new RuntimeException(g.b.i("fetchFonts failed (", i10, ")"));
            }
            u0.g[] gVarArr = (u0.g[]) gVarA.f4437c;
            if (gVarArr == null || gVarArr.length == 0) {
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            return gVarArr[0];
        } catch (PackageManager.NameNotFoundException e7) {
            throw new RuntimeException("provider not found", e7);
        }
    }
}
