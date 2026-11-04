package w0;

import android.graphics.Rect;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f17343a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f17344b;

    public c(Rect rect, Rect rect2) {
        this.f17343a = rect;
        this.f17344b = rect2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return qf.c.o(cVar.f17343a, this.f17343a) && qf.c.o(cVar.f17344b, this.f17344b);
    }

    public final int hashCode() {
        return this.f17343a.hashCode() ^ this.f17344b.hashCode();
    }

    public final String toString() {
        return "Pair{" + this.f17343a + " " + this.f17344b + "}";
    }
}
