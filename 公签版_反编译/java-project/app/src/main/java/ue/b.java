package ue;

import androidx.activity.o;
import ha.jd;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import te.j;
import te.k;
import te.l;
import te.m;
import te.n;
import te.p;
import te.q;
import te.r;
import te.s;
import te.t;
import te.u;

/* loaded from: classes.dex */
public final class b implements ze.b, a {

    /* renamed from: a, reason: collision with root package name */
    public final Class f16107a;

    static {
        int i10 = 0;
        List listAsList = Arrays.asList(te.a.class, l.class, p.class, q.class, o.class, r.class, s.class, jd.class, t.class, u.class, te.b.class, te.c.class, te.d.class, te.e.class, te.f.class, te.g.class, te.h.class, te.i.class, j.class, k.class, m.class, n.class, te.o.class);
        d.d(listAsList, "asList(...)");
        ArrayList arrayList = new ArrayList(listAsList.size());
        for (Object obj : listAsList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                throw new ArithmeticException("Index overflow has happened.");
            }
            arrayList.add(new ie.b((Class) obj, Integer.valueOf(i10)));
            i10 = i11;
        }
        je.u.m0(arrayList);
    }

    public b(Class cls) {
        d.e(cls, "jClass");
        this.f16107a = cls;
    }

    @Override // ue.a
    public final Class a() {
        return this.f16107a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof b) && nh.b.E(this).equals(nh.b.E((ze.b) obj));
    }

    public final int hashCode() {
        return nh.b.E(this).hashCode();
    }

    public final String toString() {
        return this.f16107a.toString() + " (Kotlin reflection is not available)";
    }
}
