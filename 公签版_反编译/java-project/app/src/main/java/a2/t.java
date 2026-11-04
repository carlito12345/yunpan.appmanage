package a2;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public boolean f316a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f317b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f318c;

    /* renamed from: d, reason: collision with root package name */
    public int f319d = 0;

    public final u a() {
        if (this.f316a || !(this.f317b || this.f318c)) {
            return new u(this);
        }
        throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupportedForOffload is false");
    }
}
