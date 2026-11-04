package oc;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final int f11701a;

    /* renamed from: b, reason: collision with root package name */
    public final d[] f11702b;

    /* renamed from: c, reason: collision with root package name */
    public long f11703c;

    public c(int i10, m mVar) {
        this.f11701a = i10;
        this.f11702b = new d[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.f11702b[i11] = new d(mVar);
        }
    }

    public final d a() {
        int i10 = this.f11701a;
        if (i10 == 0) {
            return e.f11707g;
        }
        long j10 = this.f11703c;
        this.f11703c = 1 + j10;
        return this.f11702b[(int) (j10 % i10)];
    }
}
