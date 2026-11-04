package nb;

/* loaded from: classes.dex */
public final class b implements c {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f11333a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11334b;

    public b(long[] jArr, int i10) {
        this.f11333a = jArr;
        this.f11334b = i10;
    }

    @Override // nb.c
    public final int a() {
        return this.f11333a.length;
    }

    @Override // nb.c
    public final int j(int i10) {
        return (int) (this.f11333a[i10] >> 32);
    }

    @Override // nb.c
    public final int o(int i10) {
        return i10 == this.f11333a.length + (-1) ? this.f11334b : j(i10 + 1);
    }

    @Override // nb.c
    public final boolean q(int i10) {
        return (((int) (this.f11333a[i10] & 4294967295L)) & 1) == 1;
    }
}
