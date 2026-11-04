package a2;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public boolean f260a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f261b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f262c;

    public /* synthetic */ o() {
    }

    public p a() {
        if (this.f260a || !(this.f261b || this.f262c)) {
            return new p(this);
        }
        throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupported is false");
    }

    public boolean b() {
        return (this.f262c || this.f261b) && this.f260a;
    }

    public o(boolean z, boolean z4, boolean z10) {
        this.f260a = z;
        this.f261b = z4;
        this.f262c = z10;
    }
}
