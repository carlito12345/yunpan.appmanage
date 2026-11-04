package j$.util.stream;

/* renamed from: j$.util.stream.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0057d {

    /* renamed from: a, reason: collision with root package name */
    protected final int f9409a;

    /* renamed from: b, reason: collision with root package name */
    protected int f9410b;

    /* renamed from: c, reason: collision with root package name */
    protected int f9411c;

    /* renamed from: d, reason: collision with root package name */
    protected long[] f9412d;

    public abstract void clear();

    protected AbstractC0057d() {
        this.f9409a = 4;
    }

    protected AbstractC0057d(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i10);
        }
        this.f9409a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i10 - 1));
    }

    public final long count() {
        int i10 = this.f9411c;
        if (i10 == 0) {
            return this.f9410b;
        }
        return this.f9412d[i10] + this.f9410b;
    }
}
