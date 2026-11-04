package r1;

import android.net.Uri;
import j$.util.Objects;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class p0 {

    /* renamed from: p, reason: collision with root package name */
    public static final Object f13533p = new Object();

    /* renamed from: q, reason: collision with root package name */
    public static final y f13534q;

    /* renamed from: b, reason: collision with root package name */
    public Object f13536b;

    /* renamed from: d, reason: collision with root package name */
    public long f13538d;

    /* renamed from: e, reason: collision with root package name */
    public long f13539e;

    /* renamed from: f, reason: collision with root package name */
    public long f13540f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f13541g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f13542h;

    /* renamed from: i, reason: collision with root package name */
    public u f13543i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f13544j;

    /* renamed from: k, reason: collision with root package name */
    public long f13545k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public int f13546m;

    /* renamed from: n, reason: collision with root package name */
    public int f13547n;

    /* renamed from: o, reason: collision with root package name */
    public long f13548o;

    /* renamed from: a, reason: collision with root package name */
    public Object f13535a = f13533p;

    /* renamed from: c, reason: collision with root package name */
    public y f13537c = f13534q;

    static {
        dd.c cVar = new dd.c(4);
        u7.e0 e0Var = u7.g0.f15471b;
        u7.y0 y0Var = u7.y0.f15549e;
        List listEmptyList = Collections.emptyList();
        u7.y0 y0Var2 = u7.y0.f15549e;
        t tVar = new t();
        w wVar = w.f13618a;
        Uri uri = Uri.EMPTY;
        f13534q = new y("androidx.media3.common.Timeline", new s(cVar), uri != null ? new v(uri, null, null, listEmptyList, y0Var2, -9223372036854775807L) : null, new u(tVar), b0.B, wVar);
        org.bouncycastle.jcajce.provider.digest.a.m(1, 2, 3, 4, 5);
        org.bouncycastle.jcajce.provider.digest.a.m(6, 7, 8, 9, 10);
        u1.f0.B(11);
        u1.f0.B(12);
        u1.f0.B(13);
    }

    public final boolean a() {
        return this.f13543i != null;
    }

    public final void b(y yVar, boolean z, boolean z4, u uVar, long j10, long j11) {
        this.f13535a = f13533p;
        this.f13537c = yVar != null ? yVar : f13534q;
        if (yVar != null) {
            v vVar = yVar.f13627b;
        }
        this.f13538d = -9223372036854775807L;
        this.f13539e = -9223372036854775807L;
        this.f13540f = -9223372036854775807L;
        this.f13541g = z;
        this.f13542h = z4;
        this.f13543i = uVar;
        this.f13545k = j10;
        this.l = j11;
        this.f13546m = 0;
        this.f13547n = 0;
        this.f13548o = 0L;
        this.f13544j = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !p0.class.equals(obj.getClass())) {
            return false;
        }
        p0 p0Var = (p0) obj;
        return Objects.equals(this.f13535a, p0Var.f13535a) && Objects.equals(this.f13537c, p0Var.f13537c) && Objects.equals(this.f13543i, p0Var.f13543i) && this.f13538d == p0Var.f13538d && this.f13539e == p0Var.f13539e && this.f13540f == p0Var.f13540f && this.f13541g == p0Var.f13541g && this.f13542h == p0Var.f13542h && this.f13544j == p0Var.f13544j && this.f13545k == p0Var.f13545k && this.l == p0Var.l && this.f13546m == p0Var.f13546m && this.f13547n == p0Var.f13547n && this.f13548o == p0Var.f13548o;
    }

    public final int hashCode() {
        int iHashCode = (this.f13537c.hashCode() + ((this.f13535a.hashCode() + 217) * 31)) * 961;
        u uVar = this.f13543i;
        int iHashCode2 = uVar == null ? 0 : uVar.hashCode();
        long j10 = this.f13538d;
        int i10 = (((iHashCode + iHashCode2) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f13539e;
        int i11 = (i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.f13540f;
        int i12 = (((((((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f13541g ? 1 : 0)) * 31) + (this.f13542h ? 1 : 0)) * 31) + (this.f13544j ? 1 : 0)) * 31;
        long j13 = this.f13545k;
        int i13 = (i12 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
        long j14 = this.l;
        int i14 = (((((i13 + ((int) (j14 ^ (j14 >>> 32)))) * 31) + this.f13546m) * 31) + this.f13547n) * 31;
        long j15 = this.f13548o;
        return i14 + ((int) (j15 ^ (j15 >>> 32)));
    }
}
