package uh;

/* loaded from: classes3.dex */
public final class c implements e {

    /* renamed from: a, reason: collision with root package name */
    public final char f16119a;

    public c(char c7) {
        this.f16119a = c7;
    }

    @Override // uh.e
    public final boolean a(androidx.room.s sVar, StringBuilder sb2) {
        sb2.append(this.f16119a);
        return true;
    }

    public final String toString() {
        char c7 = this.f16119a;
        if (c7 == '\'') {
            return "''";
        }
        return "'" + c7 + "'";
    }
}
