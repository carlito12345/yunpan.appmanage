package ie;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class c implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f8685a;

    public c(Throwable th2) {
        this.f8685a = th2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            if (ue.d.a(this.f8685a, ((c) obj).f8685a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f8685a.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.f8685a + ')';
    }
}
