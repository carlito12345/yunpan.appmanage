package w1;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import u1.f0;
import u7.y0;

/* loaded from: classes.dex */
public abstract class c implements h {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f17351a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f17352b = new ArrayList(1);

    /* renamed from: c, reason: collision with root package name */
    public int f17353c;

    /* renamed from: d, reason: collision with root package name */
    public j f17354d;

    public c(boolean z) {
        this.f17351a = z;
    }

    @Override // w1.h
    public final void f(x xVar) {
        xVar.getClass();
        ArrayList arrayList = this.f17352b;
        if (arrayList.contains(xVar)) {
            return;
        }
        arrayList.add(xVar);
        this.f17353c++;
    }

    @Override // w1.h
    public Map g() {
        return Collections.emptyMap();
    }

    public final void k(int i10) {
        boolean z;
        j jVar = this.f17354d;
        String str = f0.f15206a;
        for (int i11 = 0; i11 < this.f17353c; i11++) {
            x xVar = (x) this.f17352b.get(i11);
            boolean z4 = this.f17351a;
            i2.f fVar = (i2.f) xVar;
            synchronized (fVar) {
                y0 y0Var = i2.f.f8438p;
                if (z4) {
                    int i12 = jVar.f17373g;
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    fVar.f8452i += i10;
                }
            }
        }
    }

    public final void l() {
        boolean z;
        j jVar = this.f17354d;
        String str = f0.f15206a;
        for (int i10 = 0; i10 < this.f17353c; i10++) {
            x xVar = (x) this.f17352b.get(i10);
            boolean z4 = this.f17351a;
            i2.f fVar = (i2.f) xVar;
            synchronized (fVar) {
                try {
                    y0 y0Var = i2.f.f8438p;
                    if (z4) {
                        int i11 = jVar.f17373g;
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        a9.o.t(fVar.f8450g > 0);
                        fVar.f8447d.getClass();
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        int i12 = (int) (jElapsedRealtime - fVar.f8451h);
                        fVar.f8453j += i12;
                        long j10 = fVar.f8454k;
                        long j11 = fVar.f8452i;
                        fVar.f8454k = j10 + j11;
                        if (i12 > 0) {
                            fVar.f8449f.a((j11 * 8000.0f) / i12, (int) Math.sqrt(j11));
                            if (fVar.f8453j >= 2000 || fVar.f8454k >= 524288) {
                                fVar.l = (long) fVar.f8449f.b();
                            }
                            fVar.b(i12, fVar.f8452i, fVar.l);
                            fVar.f8451h = jElapsedRealtime;
                            fVar.f8452i = 0L;
                        }
                        fVar.f8450g--;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.f17354d = null;
    }

    public final void m() {
        for (int i10 = 0; i10 < this.f17353c; i10++) {
            ((x) this.f17352b.get(i10)).getClass();
        }
    }

    public final void n(j jVar) {
        boolean z;
        this.f17354d = jVar;
        for (int i10 = 0; i10 < this.f17353c; i10++) {
            x xVar = (x) this.f17352b.get(i10);
            boolean z4 = this.f17351a;
            i2.f fVar = (i2.f) xVar;
            synchronized (fVar) {
                try {
                    y0 y0Var = i2.f.f8438p;
                    if (z4) {
                        int i11 = jVar.f17373g;
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        if (fVar.f8450g == 0) {
                            fVar.f8447d.getClass();
                            fVar.f8451h = SystemClock.elapsedRealtime();
                        }
                        fVar.f8450g++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
