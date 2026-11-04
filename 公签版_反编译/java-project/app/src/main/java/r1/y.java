package r1;

import j$.util.Objects;
import java.util.Collections;

/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public final String f13626a;

    /* renamed from: b, reason: collision with root package name */
    public final v f13627b;

    /* renamed from: c, reason: collision with root package name */
    public final u f13628c;

    /* renamed from: d, reason: collision with root package name */
    public final b0 f13629d;

    /* renamed from: e, reason: collision with root package name */
    public final s f13630e;

    /* renamed from: f, reason: collision with root package name */
    public final w f13631f;

    static {
        dd.c cVar = new dd.c(4);
        u7.e0 e0Var = u7.g0.f15471b;
        u7.y0 y0Var = u7.y0.f15549e;
        Collections.emptyList();
        u7.y0 y0Var2 = u7.y0.f15549e;
        t tVar = new t();
        w wVar = w.f13618a;
        cVar.b();
        tVar.a();
        b0 b0Var = b0.B;
        org.bouncycastle.jcajce.provider.digest.a.m(0, 1, 2, 3, 4);
        u1.f0.B(5);
    }

    public y(String str, s sVar, v vVar, u uVar, b0 b0Var, w wVar) {
        this.f13626a = str;
        this.f13627b = vVar;
        this.f13628c = uVar;
        this.f13629d = b0Var;
        this.f13630e = sVar;
        this.f13631f = wVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return Objects.equals(this.f13626a, yVar.f13626a) && this.f13630e.equals(yVar.f13630e) && Objects.equals(this.f13627b, yVar.f13627b) && this.f13628c.equals(yVar.f13628c) && Objects.equals(this.f13629d, yVar.f13629d) && Objects.equals(this.f13631f, yVar.f13631f);
    }

    public final int hashCode() {
        int iHashCode = this.f13626a.hashCode() * 31;
        v vVar = this.f13627b;
        int iHashCode2 = (this.f13629d.hashCode() + ((this.f13630e.hashCode() + ((this.f13628c.hashCode() + ((iHashCode + (vVar != null ? vVar.hashCode() : 0)) * 31)) * 31)) * 31)) * 31;
        this.f13631f.getClass();
        return iHashCode2;
    }
}
