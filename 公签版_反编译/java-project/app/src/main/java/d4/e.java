package d4;

import ta.q;

/* loaded from: classes.dex */
public final class e extends RuntimeException {

    /* renamed from: a, reason: collision with root package name */
    public final int f4449a;

    /* renamed from: b, reason: collision with root package name */
    public final Throwable f4450b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(int i10, Throwable th2) {
        super(th2);
        q.p(i10, "callbackName");
        this.f4449a = i10;
        this.f4450b = th2;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f4450b;
    }
}
