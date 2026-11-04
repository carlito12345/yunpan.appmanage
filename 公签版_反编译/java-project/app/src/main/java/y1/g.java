package y1;

import android.text.TextUtils;
import com.hsae.autosdk.core.NoConst;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class g implements h0 {
    public static final u7.y0 r;

    /* renamed from: a, reason: collision with root package name */
    public final r1.p0 f18676a;

    /* renamed from: b, reason: collision with root package name */
    public final r1.o0 f18677b;

    /* renamed from: c, reason: collision with root package name */
    public final i2.d f18678c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18679d;

    /* renamed from: e, reason: collision with root package name */
    public final long f18680e;

    /* renamed from: f, reason: collision with root package name */
    public final long f18681f;

    /* renamed from: g, reason: collision with root package name */
    public final long f18682g;

    /* renamed from: h, reason: collision with root package name */
    public final long f18683h;

    /* renamed from: i, reason: collision with root package name */
    public final long f18684i;

    /* renamed from: j, reason: collision with root package name */
    public final long f18685j;

    /* renamed from: k, reason: collision with root package name */
    public final long f18686k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f18687m;

    /* renamed from: n, reason: collision with root package name */
    public final long f18688n;

    /* renamed from: o, reason: collision with root package name */
    public final u7.d1 f18689o;

    /* renamed from: p, reason: collision with root package name */
    public final ConcurrentHashMap f18690p;

    /* renamed from: q, reason: collision with root package name */
    public long f18691q;

    static {
        u7.e0 e0Var = u7.g0.f15471b;
        Object[] objArr = {"file", "content", "data", "android.resource", "rawresource", "asset"};
        u7.q.b(6, objArr);
        r = u7.g0.i(6, objArr);
    }

    public g() {
        i2.d dVar = new i2.d();
        u7.d1 d1Var = u7.d1.f15447g;
        a("bufferForPlaybackMs", 1000, 0, "0");
        a("bufferForPlaybackForLocalPlaybackMs", 1000, 0, "0");
        a("bufferForPlaybackAfterRebufferMs", NoConst.MIN_HEARTBEAT_INTERVAL, 0, "0");
        a("bufferForPlaybackAfterRebufferForLocalPlaybackMs", 1000, 0, "0");
        a("minBufferMs", 50000, 1000, "bufferForPlaybackMs");
        a("minBufferForLocalPlaybackMs", 1000, 1000, "bufferForPlaybackForLocalPlaybackMs");
        a("minBufferMs", 50000, NoConst.MIN_HEARTBEAT_INTERVAL, "bufferForPlaybackAfterRebufferMs");
        a("minBufferForLocalPlaybackMs", 1000, 1000, "bufferForPlaybackAfterRebufferForLocalPlaybackMs");
        a("maxBufferMs", 50000, 50000, "minBufferMs");
        a("maxBufferForLocalPlaybackMs", 50000, 1000, "minBufferForLocalPlaybackMs");
        a("backBufferDurationMs", 0, 0, "0");
        this.f18676a = new r1.p0();
        this.f18677b = new r1.o0();
        this.f18678c = dVar;
        long j10 = 50000;
        this.f18679d = u1.f0.G(j10);
        long j11 = 1000;
        this.f18680e = u1.f0.G(j11);
        this.f18681f = u1.f0.G(j10);
        this.f18682g = u1.f0.G(j10);
        this.f18683h = u1.f0.G(j11);
        this.f18684i = u1.f0.G(j11);
        this.f18685j = u1.f0.G(NoConst.MIN_HEARTBEAT_INTERVAL);
        this.f18686k = u1.f0.G(j11);
        this.l = -1;
        this.f18687m = true;
        this.f18688n = u1.f0.G(0);
        this.f18690p = new ConcurrentHashMap();
        this.f18689o = u7.d1.b(d1Var);
        this.f18691q = -1L;
    }

    public static void a(String str, int i10, int i11, String str2) {
        if (i10 < i11) {
            throw new IllegalArgumentException(android.support.v4.media.session.b.y("%s cannot be less than %s", str, str2));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(g0 g0Var) {
        int i10;
        boolean z;
        z1.i iVar = g0Var.f18692a;
        f fVar = (f) this.f18690p.get(iVar);
        fVar.getClass();
        f fVar2 = (f) this.f18690p.get(iVar);
        fVar2.getClass();
        synchronized (fVar2) {
            i10 = fVar2.f18652d;
        }
        int i11 = i10 * this.f18678c.f8432b;
        f fVar3 = (f) this.f18690p.get(iVar);
        fVar3.getClass();
        boolean z4 = true;
        boolean z10 = i11 >= fVar3.f18651c;
        if (iVar.equals(z1.i.f19388c)) {
            return !z10;
        }
        Object obj = g0Var.f18694c.f5236a;
        r1.o0 o0Var = this.f18677b;
        r1.q0 q0Var = g0Var.f18693b;
        r1.v vVar = q0Var.m(q0Var.g(obj, o0Var).f13505c, this.f18676a, 0L).f13537c.f13627b;
        if (vVar == null) {
            z = false;
        } else {
            String scheme = vVar.f13592a.getScheme();
            if (TextUtils.isEmpty(scheme) || r.contains(scheme)) {
                z = true;
            }
        }
        long jMin = z ? this.f18680e : this.f18679d;
        long j10 = z ? this.f18682g : this.f18681f;
        float f10 = g0Var.f18696e;
        if (f10 > 1.0f) {
            jMin = Math.min(u1.f0.s(jMin, f10), j10);
        }
        long jMax = Math.max(jMin, 500000L);
        long j11 = g0Var.f18695d;
        if (j11 < jMax) {
            if (!(z ? this.f18687m : false) && z10) {
                z4 = false;
            }
            fVar.f18650b = z4;
            if (!z4 && j11 < 500000) {
                u1.a.p("Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j11 >= j10 || z10) {
            fVar.f18650b = false;
        }
        return fVar.f18650b;
    }

    public final void c() {
        int i10 = 0;
        if (this.f18690p.isEmpty()) {
            i2.d dVar = this.f18678c;
            synchronized (dVar) {
                if (dVar.f8431a) {
                    dVar.d(0);
                }
            }
            return;
        }
        i2.d dVar2 = this.f18678c;
        Iterator it = this.f18690p.values().iterator();
        while (it.hasNext()) {
            i10 += ((f) it.next()).f18651c;
        }
        dVar2.d(i10);
    }
}
