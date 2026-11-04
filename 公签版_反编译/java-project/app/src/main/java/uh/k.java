package uh;

/* loaded from: classes3.dex */
public final class k implements e {

    /* renamed from: a, reason: collision with root package name */
    public final String f16140a;

    public k(String str) {
        this.f16140a = str;
    }

    @Override // uh.e
    public final boolean a(androidx.room.s sVar, StringBuilder sb2) {
        sb2.append(this.f16140a);
        return true;
    }

    public final String toString() {
        return g.b.A("'", this.f16140a.replace("'", "''"), "'");
    }
}
