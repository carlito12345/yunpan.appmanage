package h2;

import r1.r0;

/* loaded from: classes.dex */
public final class f extends l implements Comparable {

    /* renamed from: e, reason: collision with root package name */
    public final int f6355e;

    /* renamed from: f, reason: collision with root package name */
    public final int f6356f;

    public f(int i10, r0 r0Var, int i11, i iVar, int i12) {
        super(i10, r0Var, i11);
        this.f6355e = ta.q.f(i12, iVar.C) ? 1 : 0;
        this.f6356f = this.f6375d.b();
    }

    @Override // h2.l
    public final int a() {
        return this.f6355e;
    }

    @Override // h2.l
    public final /* bridge */ /* synthetic */ boolean b(l lVar) {
        return false;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int i10 = ((f) obj).f6356f;
        int i11 = this.f6356f;
        if (i11 == i10) {
            return 0;
        }
        return i11 < i10 ? -1 : 1;
    }
}
