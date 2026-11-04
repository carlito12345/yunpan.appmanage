package r1;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class s0 {

    /* renamed from: a, reason: collision with root package name */
    public final r0 f13558a;

    /* renamed from: b, reason: collision with root package name */
    public final u7.g0 f13559b;

    static {
        u1.f0.B(0);
        u1.f0.B(1);
    }

    public s0(r0 r0Var, List list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= r0Var.f13553a)) {
            throw new IndexOutOfBoundsException();
        }
        this.f13558a = r0Var;
        this.f13559b = u7.g0.m(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s0.class != obj.getClass()) {
            return false;
        }
        s0 s0Var = (s0) obj;
        return this.f13558a.equals(s0Var.f13558a) && this.f13559b.equals(s0Var.f13559b);
    }

    public final int hashCode() {
        return (this.f13559b.hashCode() * 31) + this.f13558a.hashCode();
    }
}
