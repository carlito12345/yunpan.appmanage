package b5;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2570a;

    public f(boolean z) {
        this.f2570a = z;
    }

    public final void c() {
        if (!this.f2570a) {
            throw new g("immutable instance");
        }
    }
}
