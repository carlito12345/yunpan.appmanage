package h5;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final w5.f f6623a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f6624b;

    public p(w5.f fVar, Executor executor) {
        this.f6623a = fVar;
        this.f6624b = executor;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof p) {
            return this.f6623a.equals(((p) obj).f6623a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6623a.hashCode();
    }
}
