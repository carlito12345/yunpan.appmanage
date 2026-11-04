package x4;

/* loaded from: classes.dex */
public final class d extends l {

    /* renamed from: b, reason: collision with root package name */
    public static final d f18117b = new d(false);

    /* renamed from: c, reason: collision with root package name */
    public static final d f18118c = new d(true);

    public d(boolean z) {
        super(z ? 1 : 0);
    }

    @Override // b5.h
    public final String a() {
        return this.f18126a == 0 ? "false" : "true";
    }

    @Override // x4.a
    public final String d() {
        return "boolean";
    }

    public final String toString() {
        return this.f18126a == 0 ? "boolean{false}" : "boolean{true}";
    }
}
