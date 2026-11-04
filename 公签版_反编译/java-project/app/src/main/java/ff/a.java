package ff;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class a implements g, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final f f5800a;

    /* renamed from: b, reason: collision with root package name */
    public final f f5801b;

    public a(f fVar, f fVar2) {
        this.f5800a = fVar;
        this.f5801b = fVar2;
    }

    @Override // ff.g
    public final byte[] e() {
        return this.f5800a.f5830c;
    }

    @Override // ff.g
    public final void k() {
        this.f5800a.getClass();
    }

    public final String toString() {
        return "AdaptiveIcon{foreground=" + this.f5800a + ", background=" + this.f5801b + '}';
    }
}
