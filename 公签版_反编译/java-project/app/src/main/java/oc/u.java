package oc;

/* loaded from: classes.dex */
public final class u implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f11758a;

    /* renamed from: b, reason: collision with root package name */
    public final long f11759b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11760c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f11761d;

    public u(Runnable runnable, Long l, int i10) {
        this.f11758a = runnable;
        this.f11759b = l.longValue();
        this.f11760c = i10;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        u uVar = (u) obj;
        long j10 = uVar.f11759b;
        int i10 = 0;
        long j11 = this.f11759b;
        int i11 = j11 < j10 ? -1 : j11 > j10 ? 1 : 0;
        if (i11 != 0) {
            return i11;
        }
        int i12 = this.f11760c;
        int i13 = uVar.f11760c;
        if (i12 < i13) {
            i10 = -1;
        } else if (i12 > i13) {
            i10 = 1;
        }
        return i10;
    }
}
