package g2;

import a9.o;
import java.util.ArrayList;
import u7.d0;
import u7.g0;
import u7.g1;
import u7.p;
import u7.w0;
import u7.y0;
import u7.z;

/* loaded from: classes.dex */
public final class d implements a {

    /* renamed from: b, reason: collision with root package name */
    public static final z f5982b;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f5983a = new ArrayList();

    static {
        w0 w0Var = w0.f15544a;
        c cVar = new c(0);
        w0Var.getClass();
        p pVar = new p(cVar, w0Var);
        g1 g1Var = g1.f15472a;
        c cVar2 = new c(1);
        g1Var.getClass();
        f5982b = new z(pVar, new p(cVar2, g1Var));
    }

    @Override // g2.a
    public final long a(long j10) {
        int i10 = 0;
        long jMin = -9223372036854775807L;
        while (true) {
            ArrayList arrayList = this.f5983a;
            if (i10 >= arrayList.size()) {
                break;
            }
            long j11 = ((i3.a) arrayList.get(i10)).f8485b;
            long j12 = ((i3.a) arrayList.get(i10)).f8487d;
            if (j10 < j11) {
                jMin = jMin == -9223372036854775807L ? j11 : Math.min(jMin, j11);
            } else {
                if (j10 < j12) {
                    jMin = jMin == -9223372036854775807L ? j12 : Math.min(jMin, j12);
                }
                i10++;
            }
        }
        if (jMin != -9223372036854775807L) {
            return jMin;
        }
        return Long.MIN_VALUE;
    }

    @Override // g2.a
    public final boolean b(i3.a aVar, long j10) {
        long j11 = aVar.f8485b;
        o.k(j11 != -9223372036854775807L);
        o.k(aVar.f8486c != -9223372036854775807L);
        boolean z = j11 <= j10 && j10 < aVar.f8487d;
        ArrayList arrayList = this.f5983a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (j11 >= ((i3.a) arrayList.get(size)).f8485b) {
                arrayList.add(size + 1, aVar);
                return z;
            }
        }
        arrayList.add(0, aVar);
        return z;
    }

    @Override // g2.a
    public final g0 c(long j10) {
        ArrayList arrayList = this.f5983a;
        if (!arrayList.isEmpty()) {
            if (j10 >= ((i3.a) arrayList.get(0)).f8485b) {
                ArrayList arrayList2 = new ArrayList();
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    i3.a aVar = (i3.a) arrayList.get(i10);
                    if (j10 >= aVar.f8485b && j10 < aVar.f8487d) {
                        arrayList2.add(aVar);
                    }
                    if (j10 < aVar.f8485b) {
                        break;
                    }
                }
                y0 y0VarT = g0.t(f5982b, arrayList2);
                d0 d0VarJ = g0.j();
                for (int i11 = 0; i11 < y0VarT.size(); i11++) {
                    d0VarJ.d(((i3.a) y0VarT.get(i11)).f8484a);
                }
                return d0VarJ.g();
            }
        }
        return g0.p();
    }

    @Override // g2.a
    public final void clear() {
        this.f5983a.clear();
    }

    @Override // g2.a
    public final long d(long j10) {
        ArrayList arrayList = this.f5983a;
        if (arrayList.isEmpty()) {
            return -9223372036854775807L;
        }
        if (j10 < ((i3.a) arrayList.get(0)).f8485b) {
            return -9223372036854775807L;
        }
        long jMax = ((i3.a) arrayList.get(0)).f8485b;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            long j11 = ((i3.a) arrayList.get(i10)).f8485b;
            long j12 = ((i3.a) arrayList.get(i10)).f8487d;
            if (j12 > j10) {
                if (j11 > j10) {
                    break;
                }
                jMax = Math.max(jMax, j11);
            } else {
                jMax = Math.max(jMax, j12);
            }
        }
        return jMax;
    }

    @Override // g2.a
    public final void e(long j10) {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f5983a;
            if (i10 >= arrayList.size()) {
                return;
            }
            long j11 = ((i3.a) arrayList.get(i10)).f8485b;
            if (j10 > j11 && j10 > ((i3.a) arrayList.get(i10)).f8487d) {
                arrayList.remove(i10);
                i10--;
            } else if (j10 < j11) {
                return;
            }
            i10++;
        }
    }
}
