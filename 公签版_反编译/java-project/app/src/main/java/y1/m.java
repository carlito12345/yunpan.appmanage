package y1;

import android.content.ContextWrapper;
import android.os.Build;
import android.os.Looper;
import com.hsae.autosdk.popup.constant.PopupConst;
import ua.t6;

/* loaded from: classes.dex */
public final class m {
    public static final int B;
    public static final boolean C;
    public final boolean A;

    /* renamed from: a, reason: collision with root package name */
    public final ContextWrapper f18735a;

    /* renamed from: b, reason: collision with root package name */
    public final u1.z f18736b;

    /* renamed from: c, reason: collision with root package name */
    public final l f18737c;

    /* renamed from: d, reason: collision with root package name */
    public final l f18738d;

    /* renamed from: e, reason: collision with root package name */
    public final l f18739e;

    /* renamed from: f, reason: collision with root package name */
    public final l f18740f;

    /* renamed from: g, reason: collision with root package name */
    public final Looper f18741g;

    /* renamed from: h, reason: collision with root package name */
    public final int f18742h;

    /* renamed from: i, reason: collision with root package name */
    public final r1.d f18743i;

    /* renamed from: j, reason: collision with root package name */
    public final int f18744j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f18745k;
    public final e1 l;

    /* renamed from: m, reason: collision with root package name */
    public final d1 f18746m;

    /* renamed from: n, reason: collision with root package name */
    public final long f18747n;

    /* renamed from: o, reason: collision with root package name */
    public final long f18748o;

    /* renamed from: p, reason: collision with root package name */
    public final long f18749p;

    /* renamed from: q, reason: collision with root package name */
    public final e f18750q;
    public final long r;

    /* renamed from: s, reason: collision with root package name */
    public final long f18751s;

    /* renamed from: t, reason: collision with root package name */
    public final int f18752t;

    /* renamed from: u, reason: collision with root package name */
    public final int f18753u;

    /* renamed from: v, reason: collision with root package name */
    public final int f18754v;

    /* renamed from: w, reason: collision with root package name */
    public final int f18755w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f18756x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f18757y;
    public final String z;

    static {
        String str = u1.f0.f15206a;
        String strB0 = qf.c.b0(Build.DEVICE);
        B = (strB0.contains("emulator") || strB0.contains("emu64a") || strB0.contains("emu64x") || strB0.contains("generic")) ? 30000 : 10000;
        C = true;
    }

    public m(ContextWrapper contextWrapper) {
        l lVar = new l(contextWrapper, 0);
        l lVar2 = new l(contextWrapper, 1);
        l lVar3 = new l(contextWrapper, 2);
        new androidx.media3.exoplayer.video.r(2);
        l lVar4 = new l(contextWrapper, 3);
        new t6(11);
        contextWrapper.getClass();
        this.f18735a = contextWrapper;
        this.f18737c = lVar;
        this.f18738d = lVar2;
        this.f18739e = lVar3;
        this.f18740f = lVar4;
        String str = u1.f0.f15206a;
        Looper looperMyLooper = Looper.myLooper();
        this.f18741g = looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper;
        this.f18743i = r1.d.f13426d;
        this.f18744j = 1;
        this.f18745k = true;
        this.l = e1.f18646d;
        this.f18747n = PopupConst.DURATION_POPUP;
        this.f18748o = 15000L;
        this.f18749p = PopupConst.DURATION_POPUP_SHORT;
        this.f18746m = d1.f18622g;
        this.f18750q = new e(u1.f0.G(20L), u1.f0.G(500L));
        this.f18736b = u1.z.f15315a;
        this.r = 500L;
        this.f18751s = 2000L;
        this.f18752t = 600000;
        boolean z = C;
        this.f18753u = z ? B : Integer.MAX_VALUE;
        this.f18754v = z ? 60000 : Integer.MAX_VALUE;
        this.f18755w = 600000;
        this.f18756x = true;
        this.z = "";
        this.f18742h = -1000;
        new s9.a(26);
        this.A = true;
    }
}
