package r3;

/* loaded from: classes.dex */
public final class f implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final int f13693a;

    /* renamed from: b, reason: collision with root package name */
    public final b f13694b;

    public f(int i10, b bVar) {
        this.f13693a = i10;
        this.f13694b = bVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int i10 = ((f) obj).f13693a;
        int i11 = this.f13693a;
        if (i11 == i10) {
            return 0;
        }
        return i11 < i10 ? -1 : 1;
    }
}
