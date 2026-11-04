package v2;

import r1.a0;
import r1.c0;
import r1.p;

/* loaded from: classes.dex */
public final class a implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f16408a;

    /* renamed from: b, reason: collision with root package name */
    public final String f16409b;

    public a(int i10, String str) {
        this.f16408a = i10;
        this.f16409b = str;
    }

    @Override // r1.c0
    public final /* synthetic */ p a() {
        return null;
    }

    @Override // r1.c0
    public final /* synthetic */ void b(a0 a0Var) {
    }

    @Override // r1.c0
    public final /* synthetic */ byte[] c() {
        return null;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Ait(controlCode=");
        sb2.append(this.f16408a);
        sb2.append(",url=");
        return g.b.l(this.f16409b, ")", sb2);
    }
}
