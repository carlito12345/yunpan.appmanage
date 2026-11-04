package lb;

import a2.g1;
import ha.jd;
import j$.util.Objects;
import jb.c;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: c, reason: collision with root package name */
    public static final g1 f10705c = new g1(new jd(15));

    /* renamed from: a, reason: collision with root package name */
    public int f10706a;

    /* renamed from: b, reason: collision with root package name */
    public long f10707b;

    public a(int i10, long j10) {
        this.f10706a = i10;
        this.f10707b = j10;
    }

    public final boolean equals(Object obj) {
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f10706a == aVar.f10706a && this.f10707b == aVar.f10707b;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f10706a), Long.valueOf(this.f10707b), null);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("NoExtSpanImpl{column=");
        sb2.append(this.f10706a);
        sb2.append(", style=");
        return android.support.v4.media.session.a.t(sb2, this.f10707b, ", extra=null}");
    }
}
