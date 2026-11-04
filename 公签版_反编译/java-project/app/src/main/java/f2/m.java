package f2;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class m implements d1 {

    /* renamed from: a, reason: collision with root package name */
    public final u7.y0 f5321a;

    /* renamed from: b, reason: collision with root package name */
    public long f5322b;

    public m(List list, List list2) {
        u7.e0 e0Var = u7.g0.f15471b;
        u7.q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i10 = 0;
        a9.o.k(list.size() == list2.size());
        int i11 = 0;
        while (i10 < list.size()) {
            l lVar = new l((d1) list.get(i10), (List) list2.get(i10));
            int i12 = i11 + 1;
            int iF = u7.a0.f(objArrCopyOf.length, i12);
            if (iF > objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
            }
            objArrCopyOf[i11] = lVar;
            i10++;
            i11 = i12;
        }
        this.f5321a = u7.g0.i(i11, objArrCopyOf);
        this.f5322b = -9223372036854775807L;
    }

    @Override // f2.d1
    public final boolean a(y1.j0 j0Var) {
        boolean zA;
        boolean z = false;
        do {
            long jC = c();
            if (jC == Long.MIN_VALUE) {
                break;
            }
            int i10 = 0;
            zA = false;
            while (true) {
                u7.y0 y0Var = this.f5321a;
                if (i10 >= y0Var.size()) {
                    break;
                }
                long jC2 = ((l) y0Var.get(i10)).c();
                boolean z4 = jC2 != Long.MIN_VALUE && jC2 <= j0Var.f18708a;
                if (jC2 == jC || z4) {
                    zA |= ((l) y0Var.get(i10)).a(j0Var);
                }
                i10++;
            }
            z |= zA;
        } while (zA);
        return z;
    }

    @Override // f2.d1
    public final long c() {
        int i10 = 0;
        long jMin = Long.MAX_VALUE;
        while (true) {
            u7.y0 y0Var = this.f5321a;
            if (i10 >= y0Var.size()) {
                break;
            }
            long jC = ((l) y0Var.get(i10)).c();
            if (jC != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jC);
            }
            i10++;
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // f2.d1
    public final boolean j() {
        int i10 = 0;
        while (true) {
            u7.y0 y0Var = this.f5321a;
            if (i10 >= y0Var.size()) {
                return false;
            }
            if (((l) y0Var.get(i10)).j()) {
                return true;
            }
            i10++;
        }
    }

    @Override // f2.d1
    public final long p() {
        int i10 = 0;
        long jMin = Long.MAX_VALUE;
        long jMin2 = Long.MAX_VALUE;
        while (true) {
            u7.y0 y0Var = this.f5321a;
            if (i10 >= y0Var.size()) {
                break;
            }
            l lVar = (l) y0Var.get(i10);
            long jP = lVar.p();
            if ((lVar.b().contains(1) || lVar.b().contains(2) || lVar.b().contains(4)) && jP != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jP);
            }
            if (jP != Long.MIN_VALUE) {
                jMin2 = Math.min(jMin2, jP);
            }
            i10++;
        }
        if (jMin != Long.MAX_VALUE) {
            this.f5322b = jMin;
            return jMin;
        }
        if (jMin2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j10 = this.f5322b;
        return j10 != -9223372036854775807L ? j10 : jMin2;
    }

    @Override // f2.d1
    public final void r(long j10) {
        int i10 = 0;
        while (true) {
            u7.y0 y0Var = this.f5321a;
            if (i10 >= y0Var.size()) {
                return;
            }
            ((l) y0Var.get(i10)).r(j10);
            i10++;
        }
    }
}
