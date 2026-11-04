package ra;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public int f13729a;

    /* renamed from: b, reason: collision with root package name */
    public float f13730b;

    /* renamed from: c, reason: collision with root package name */
    public float f13731c;

    public b() {
        a();
    }

    public final void a() {
        if (this.f13729a == 4000) {
            return;
        }
        this.f13729a = 4000;
        float f10 = 1.0f / 48000;
        this.f13730b = f10 / ((1.0f / (Math.max(1, 4000) * 6.2831855f)) + f10);
    }
}
