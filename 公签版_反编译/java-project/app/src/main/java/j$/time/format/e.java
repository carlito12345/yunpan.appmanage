package j$.time.format;

/* loaded from: classes2.dex */
final class e implements g {

    /* renamed from: a, reason: collision with root package name */
    private final char f8843a;

    e(char c7) {
        this.f8843a = c7;
    }

    @Override // j$.time.format.g
    public final boolean j(q qVar, StringBuilder sb2) {
        sb2.append(this.f8843a);
        return true;
    }

    public final String toString() {
        char c7 = this.f8843a;
        if (c7 == '\'') {
            return "''";
        }
        return "'" + c7 + "'";
    }
}
