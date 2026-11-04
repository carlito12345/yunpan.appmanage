package x0;

import android.view.DisplayCutout;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final DisplayCutout f18007a;

    public k(DisplayCutout displayCutout) {
        this.f18007a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        return qf.c.o(this.f18007a, ((k) obj).f18007a);
    }

    public final int hashCode() {
        return this.f18007a.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f18007a + "}";
    }
}
