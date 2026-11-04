package ya;

import android.view.View;
import android.view.WindowManager;
import com.yunpan.appmanage.service.AccService;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public final class h {
    public static h A;

    /* renamed from: a, reason: collision with root package name */
    public AccService f19055a;

    /* renamed from: e, reason: collision with root package name */
    public WindowManager.LayoutParams f19059e;

    /* renamed from: g, reason: collision with root package name */
    public WindowManager.LayoutParams f19061g;

    /* renamed from: i, reason: collision with root package name */
    public WindowManager.LayoutParams f19063i;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f19066m;

    /* renamed from: n, reason: collision with root package name */
    public long f19067n;

    /* renamed from: o, reason: collision with root package name */
    public int f19068o;

    /* renamed from: w, reason: collision with root package name */
    public wa.a f19075w;

    /* renamed from: x, reason: collision with root package name */
    public int f19076x;

    /* renamed from: b, reason: collision with root package name */
    public s f19056b = null;

    /* renamed from: c, reason: collision with root package name */
    public WindowManager f19057c = null;

    /* renamed from: d, reason: collision with root package name */
    public View f19058d = null;

    /* renamed from: f, reason: collision with root package name */
    public View f19060f = null;

    /* renamed from: h, reason: collision with root package name */
    public View f19062h = null;

    /* renamed from: j, reason: collision with root package name */
    public boolean f19064j = false;

    /* renamed from: k, reason: collision with root package name */
    public boolean f19065k = false;

    /* renamed from: p, reason: collision with root package name */
    public boolean f19069p = false;

    /* renamed from: q, reason: collision with root package name */
    public int f19070q = 30;
    public int r = 30;

    /* renamed from: s, reason: collision with root package name */
    public int f19071s = 30;

    /* renamed from: t, reason: collision with root package name */
    public int f19072t = 30;

    /* renamed from: u, reason: collision with root package name */
    public int f19073u = 30;

    /* renamed from: v, reason: collision with root package name */
    public int f19074v = 30;

    /* renamed from: y, reason: collision with root package name */
    public o f19077y = null;
    public final androidx.activity.h z = new androidx.activity.h(21, this);

    public static synchronized h a() {
        try {
            if (A == null) {
                A = new h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return A;
    }

    public final void b(AccService accService) {
        c();
        s sVarX = q4.a.x(accService);
        this.f19056b = sVarX;
        if (sVarX != null && sVarX.o("isOn").b()) {
            this.f19055a = accService;
            try {
                if (accService.f3937i == null) {
                    accService.f3937i = new y3.a(accService);
                }
                this.f19055a.G.postDelayed(new f(this, 0), 200L);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
    }

    public final void c() {
        try {
            View view = this.f19058d;
            if (view != null) {
                this.f19057c.removeView(view);
                this.f19058d = null;
            }
        } catch (Exception unused) {
        }
        try {
            View view2 = this.f19060f;
            if (view2 != null) {
                this.f19057c.removeView(view2);
                this.f19060f = null;
            }
        } catch (Exception unused2) {
        }
        try {
            View view3 = this.f19062h;
            if (view3 != null) {
                this.f19057c.removeView(view3);
                this.f19062h = null;
            }
        } catch (Exception unused3) {
        }
        this.f19057c = null;
    }
}
