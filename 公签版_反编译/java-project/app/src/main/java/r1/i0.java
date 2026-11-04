package r1;

import android.util.SparseBooleanArray;

/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a, reason: collision with root package name */
    public final n f13458a;

    static {
        new SparseBooleanArray();
        a9.o.t(!false);
        u1.f0.B(0);
    }

    public i0(n nVar) {
        this.f13458a = nVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i0) {
            return this.f13458a.equals(((i0) obj).f13458a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f13458a.hashCode();
    }
}
