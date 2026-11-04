package androidx.media3.exoplayer.video;

import android.content.Context;
import android.util.Pair;
import android.util.SparseArray;
import java.util.concurrent.CopyOnWriteArraySet;
import u7.y0;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1967a;

    /* renamed from: b, reason: collision with root package name */
    public final t f1968b;

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f1969c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f1970d;

    /* renamed from: e, reason: collision with root package name */
    public final d f1971e;

    /* renamed from: f, reason: collision with root package name */
    public final u1.z f1972f;

    /* renamed from: g, reason: collision with root package name */
    public final CopyOnWriteArraySet f1973g;

    /* renamed from: h, reason: collision with root package name */
    public final long f1974h;

    /* renamed from: i, reason: collision with root package name */
    public final a0 f1975i;

    /* renamed from: j, reason: collision with root package name */
    public u1.c0 f1976j = new u1.c0();

    /* renamed from: k, reason: collision with root package name */
    public u1.b0 f1977k;
    public Pair l;

    /* renamed from: m, reason: collision with root package name */
    public int f1978m;

    /* renamed from: n, reason: collision with root package name */
    public int f1979n;

    /* renamed from: o, reason: collision with root package name */
    public long f1980o;

    /* renamed from: p, reason: collision with root package name */
    public int f1981p;

    static {
        new a(0);
    }

    public v(p pVar) {
        this.f1967a = pVar.f1951a;
        t tVar = pVar.f1953c;
        tVar.getClass();
        this.f1968b = tVar;
        this.f1969c = new SparseArray();
        u7.e0 e0Var = u7.g0.f15471b;
        y0 y0Var = y0.f15549e;
        this.f1970d = pVar.f1954d;
        u1.z zVar = pVar.f1955e;
        this.f1972f = zVar;
        long j10 = pVar.f1957g;
        this.f1974h = j10 != -9223372036854775807L ? -j10 : -9223372036854775807L;
        a0 a0Var = pVar.f1958h;
        this.f1975i = a0Var;
        this.f1971e = new d(pVar.f1952b, a0Var, zVar);
        this.f1973g = new CopyOnWriteArraySet();
        new r1.o().a();
        this.f1980o = -9223372036854775807L;
        this.f1981p = -1;
        this.f1979n = 0;
    }
}
