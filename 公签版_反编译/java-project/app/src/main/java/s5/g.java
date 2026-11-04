package s5;

import a6.q;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.bumptech.glide.m;
import com.bumptech.glide.p;
import h5.l;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final e5.d f14436a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f14437b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f14438c;

    /* renamed from: d, reason: collision with root package name */
    public final p f14439d;

    /* renamed from: e, reason: collision with root package name */
    public final i5.c f14440e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f14441f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14442g;

    /* renamed from: h, reason: collision with root package name */
    public m f14443h;

    /* renamed from: i, reason: collision with root package name */
    public e f14444i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14445j;

    /* renamed from: k, reason: collision with root package name */
    public e f14446k;
    public Bitmap l;

    /* renamed from: m, reason: collision with root package name */
    public e f14447m;

    /* renamed from: n, reason: collision with root package name */
    public int f14448n;

    /* renamed from: o, reason: collision with root package name */
    public int f14449o;

    /* renamed from: p, reason: collision with root package name */
    public int f14450p;

    public g(com.bumptech.glide.b bVar, e5.d dVar, int i10, int i11, Bitmap bitmap) {
        n5.d dVar2 = n5.d.f11306b;
        i5.c cVar = bVar.f3280a;
        com.bumptech.glide.f fVar = bVar.f3282c;
        p pVarF = com.bumptech.glide.b.f(fVar.getBaseContext());
        m mVarA = com.bumptech.glide.b.f(fVar.getBaseContext()).m().a(((w5.e) ((w5.e) ((w5.e) new w5.e().e(l.f6606b)).y()).u()).o(i10, i11));
        this.f14438c = new ArrayList();
        this.f14439d = pVarF;
        Handler handler = new Handler(Looper.getMainLooper(), new o7.d(1, this));
        this.f14440e = cVar;
        this.f14437b = handler;
        this.f14443h = mVarA;
        this.f14436a = dVar;
        c(dVar2, bitmap);
    }

    public final void a() {
        int i10;
        if (!this.f14441f || this.f14442g) {
            return;
        }
        e eVar = this.f14447m;
        if (eVar != null) {
            this.f14447m = null;
            b(eVar);
            return;
        }
        this.f14442g = true;
        e5.d dVar = this.f14436a;
        int i11 = dVar.l.f4784c;
        long jUptimeMillis = SystemClock.uptimeMillis() + ((i11 <= 0 || (i10 = dVar.f4807k) < 0) ? 0 : (i10 < 0 || i10 >= i11) ? -1 : ((e5.a) r2.f4786e.get(i10)).f4779i);
        int i12 = (dVar.f4807k + 1) % dVar.l.f4784c;
        dVar.f4807k = i12;
        this.f14446k = new e(this.f14437b, i12, jUptimeMillis);
        m mVarI = this.f14443h.a((w5.e) new w5.e().t(new z5.d(Double.valueOf(Math.random())))).I(dVar);
        mVarI.E(this.f14446k, mVarI);
    }

    public final void b(e eVar) {
        this.f14442g = false;
        boolean z = this.f14445j;
        Handler handler = this.f14437b;
        if (z) {
            handler.obtainMessage(2, eVar).sendToTarget();
            return;
        }
        if (!this.f14441f) {
            this.f14447m = eVar;
            return;
        }
        if (eVar.f14435g != null) {
            Bitmap bitmap = this.l;
            if (bitmap != null) {
                this.f14440e.c(bitmap);
                this.l = null;
            }
            e eVar2 = this.f14444i;
            this.f14444i = eVar;
            ArrayList arrayList = this.f14438c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                b bVar = (b) ((f) arrayList.get(size));
                Object callback = bVar.getCallback();
                while (callback instanceof Drawable) {
                    callback = ((Drawable) callback).getCallback();
                }
                if (callback == null) {
                    bVar.stop();
                    bVar.invalidateSelf();
                } else {
                    bVar.invalidateSelf();
                    e eVar3 = ((g) bVar.f14417a.f8530b).f14444i;
                    if ((eVar3 != null ? eVar3.f14433e : -1) == r5.f14436a.l.f4784c - 1) {
                        bVar.f14422f++;
                    }
                    int i10 = bVar.f14423g;
                    if (i10 != -1 && bVar.f14422f >= i10) {
                        bVar.stop();
                    }
                }
            }
            if (eVar2 != null) {
                handler.obtainMessage(2, eVar2).sendToTarget();
            }
        }
        a();
    }

    public final void c(f5.m mVar, Bitmap bitmap) {
        a6.h.c(mVar, "Argument must not be null");
        a6.h.c(bitmap, "Argument must not be null");
        this.l = bitmap;
        this.f14443h = this.f14443h.a(new w5.e().w(mVar, true));
        this.f14448n = q.c(bitmap);
        this.f14449o = bitmap.getWidth();
        this.f14450p = bitmap.getHeight();
    }
}
