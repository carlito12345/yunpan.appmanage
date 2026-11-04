package f2;

import android.net.Uri;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class r0 {

    /* renamed from: b, reason: collision with root package name */
    public final Uri f5363b;

    /* renamed from: c, reason: collision with root package name */
    public final w1.w f5364c;

    /* renamed from: d, reason: collision with root package name */
    public final v3.f f5365d;

    /* renamed from: e, reason: collision with root package name */
    public final u0 f5366e;

    /* renamed from: f, reason: collision with root package name */
    public final u1.e f5367f;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f5369h;

    /* renamed from: j, reason: collision with root package name */
    public long f5371j;
    public l2.j0 l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f5373m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ u0 f5374n;

    /* renamed from: g, reason: collision with root package name */
    public final dd.c f5368g = new dd.c(3, false);

    /* renamed from: i, reason: collision with root package name */
    public boolean f5370i = true;

    /* renamed from: a, reason: collision with root package name */
    public final long f5362a = t.f5382a.getAndIncrement();

    /* renamed from: k, reason: collision with root package name */
    public w1.j f5372k = a(0, null);

    public r0(u0 u0Var, Uri uri, w1.h hVar, v3.f fVar, u0 u0Var2, u1.e eVar) {
        this.f5374n = u0Var;
        this.f5363b = uri;
        this.f5364c = new w1.w(hVar);
        this.f5365d = fVar;
        this.f5366e = u0Var2;
        this.f5367f = eVar;
    }

    public final w1.j a(long j10, String str) {
        Map mapB = u0.X;
        if (str != null && !str.startsWith("W/")) {
            androidx.room.s sVarA = u7.d1.a();
            sVarA.B(mapB.entrySet());
            sVarA.A("If-Range", str);
            mapB = sVarA.b(false);
        }
        Collections.emptyMap();
        this.f5374n.getClass();
        Uri uri = this.f5363b;
        a9.o.o(uri, "The uri must be set.");
        return new w1.j(uri, 1, null, mapB, j10, -1L, 6);
    }

    public final void b() {
        w1.h sVar;
        long j10;
        l2.o oVar;
        int i10;
        String str = null;
        int iD = 0;
        while (iD == 0 && !this.f5369h) {
            try {
                long j11 = this.f5368g.f4591b;
                w1.j jVarA = a(j11, str);
                this.f5372k = jVarA;
                long j12 = this.f5364c.j(jVarA);
                if (this.f5369h) {
                    if (iD != 1 && this.f5365d.x() != -1) {
                        this.f5368g.f4591b = this.f5365d.x();
                    }
                    w1.w wVar = this.f5364c;
                    if (wVar != null) {
                        try {
                            wVar.close();
                            return;
                        } catch (IOException unused) {
                            return;
                        }
                    }
                    return;
                }
                List list = (List) this.f5364c.f17410a.g().get(HttpHeaders.ETAG);
                str = (list == null || list.isEmpty()) ? null : (String) list.get(0);
                if (j12 != -1) {
                    j12 += j11;
                    u0 u0Var = this.f5374n;
                    u0Var.r.post(new n0(u0Var, 0));
                }
                long j13 = j12;
                this.f5374n.f5408t = y2.b.d(this.f5364c.f17410a.g());
                w1.w wVar2 = this.f5364c;
                y2.b bVar = this.f5374n.f5408t;
                if (bVar == null || (i10 = bVar.f18890f) == -1) {
                    sVar = wVar2;
                } else {
                    sVar = new s(wVar2, i10, this);
                    u0 u0Var2 = this.f5374n;
                    u0Var2.getClass();
                    l2.j0 j0VarB = u0Var2.B(new t0(0, true));
                    this.l = j0VarB;
                    j0VarB.g(u0.Y);
                }
                this.f5365d.C(sVar, this.f5363b, this.f5364c.f17410a.g(), j11, j13, this.f5366e);
                if (this.f5374n.f5408t != null && (oVar = (l2.o) this.f5365d.f16475c) != null) {
                    l2.o oVarB = oVar.b();
                    if (oVarB instanceof e3.e) {
                        ((e3.e) oVarB).f4745s = true;
                    }
                }
                if (this.f5370i) {
                    v3.f fVar = this.f5365d;
                    long j14 = this.f5371j;
                    l2.o oVar2 = (l2.o) fVar.f16475c;
                    oVar2.getClass();
                    j10 = j11;
                    oVar2.e(j10, j14);
                    this.f5370i = false;
                } else {
                    j10 = j11;
                }
                long j15 = j10;
                while (iD == 0 && !this.f5369h) {
                    try {
                        u1.e eVar = this.f5367f;
                        synchronized (eVar) {
                            while (!eVar.f15205b) {
                                eVar.f15204a.getClass();
                                eVar.wait();
                            }
                        }
                        v3.f fVar2 = this.f5365d;
                        dd.c cVar = this.f5368g;
                        l2.o oVar3 = (l2.o) fVar2.f16475c;
                        oVar3.getClass();
                        l2.l lVar = (l2.l) fVar2.f16476d;
                        lVar.getClass();
                        iD = oVar3.d(lVar, cVar);
                        long jX = this.f5365d.x();
                        if (jX > this.f5374n.f5400i + j15) {
                            this.f5367f.d();
                            u0 u0Var3 = this.f5374n;
                            u0Var3.r.post(u0Var3.f5406q);
                            j15 = jX;
                        }
                    } catch (InterruptedException unused2) {
                        throw new InterruptedIOException();
                    }
                }
                if (iD == 1) {
                    iD = 0;
                } else if (this.f5365d.x() != -1) {
                    this.f5368g.f4591b = this.f5365d.x();
                }
                w1.w wVar3 = this.f5364c;
                if (wVar3 != null) {
                    try {
                        wVar3.close();
                    } catch (IOException unused3) {
                    }
                }
            } catch (Throwable th2) {
                if (iD != 1 && this.f5365d.x() != -1) {
                    this.f5368g.f4591b = this.f5365d.x();
                }
                w1.w wVar4 = this.f5364c;
                if (wVar4 != null) {
                    try {
                        wVar4.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th2;
            }
        }
    }
}
