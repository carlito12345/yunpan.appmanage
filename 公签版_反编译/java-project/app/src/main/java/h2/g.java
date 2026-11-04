package h2;

import u7.y;

/* loaded from: classes.dex */
public final class g implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f6357a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6358b;

    public g(r1.p pVar, int i10) {
        this.f6357a = (pVar.f13514e & 1) != 0;
        this.f6358b = ta.q.f(i10, false);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        g gVar = (g) obj;
        return y.f15546a.c(this.f6358b, gVar.f6358b).c(this.f6357a, gVar.f6357a).e();
    }
}
