package r1;

import android.net.Uri;
import j$.util.Objects;
import java.util.List;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f13592a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13593b;

    /* renamed from: c, reason: collision with root package name */
    public final List f13594c;

    /* renamed from: d, reason: collision with root package name */
    public final u7.g0 f13595d;

    /* renamed from: e, reason: collision with root package name */
    public final long f13596e;

    static {
        org.bouncycastle.jcajce.provider.digest.a.m(0, 1, 2, 3, 4);
        u1.f0.B(5);
        u1.f0.B(6);
        u1.f0.B(7);
    }

    public v(Uri uri, String str, p000if.a aVar, List list, u7.g0 g0Var, long j10) {
        this.f13592a = uri;
        this.f13593b = e0.l(str);
        this.f13594c = list;
        this.f13595d = g0Var;
        u7.d0 d0VarJ = u7.g0.j();
        if (g0Var.size() > 0) {
            ((x) g0Var.get(0)).a();
            throw null;
        }
        d0VarJ.g();
        this.f13596e = j10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f13592a.equals(vVar.f13592a) && Objects.equals(this.f13593b, vVar.f13593b) && Objects.equals(null, null) && this.f13594c.equals(vVar.f13594c) && this.f13595d.equals(vVar.f13595d) && this.f13596e == vVar.f13596e;
    }

    public final int hashCode() {
        int iHashCode = this.f13592a.hashCode() * 31;
        return (int) (((this.f13595d.hashCode() + ((this.f13594c.hashCode() + ((iHashCode + (this.f13593b == null ? 0 : r1.hashCode())) * 29791)) * 961)) * 31 * 31) + this.f13596e);
    }
}
