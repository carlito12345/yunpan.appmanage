package i3;

import a9.o;
import ha.jd;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import u1.f0;
import u7.g0;
import u7.p;
import u7.w0;
import u7.y0;

/* loaded from: classes.dex */
public final class b implements d {

    /* renamed from: c, reason: collision with root package name */
    public static final p f8488c;

    /* renamed from: a, reason: collision with root package name */
    public final g0 f8489a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f8490b;

    static {
        w0 w0Var = w0.f15544a;
        jd jdVar = new jd(12);
        w0Var.getClass();
        f8488c = new p(jdVar, w0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public b(y0 y0Var) {
        int i10 = 0;
        if (y0Var.size() == 1) {
            Iterator<E> it = y0Var.iterator();
            Object next = it.next();
            if (it.hasNext()) {
                StringBuilder sb2 = new StringBuilder("expected one element but was: <");
                sb2.append(next);
                while (i10 < 4 && it.hasNext()) {
                    sb2.append(", ");
                    sb2.append(it.next());
                    i10++;
                }
                if (it.hasNext()) {
                    sb2.append(", ...");
                }
                sb2.append('>');
                throw new IllegalArgumentException(sb2.toString());
            }
            a aVar = (a) next;
            long j10 = aVar.f8485b;
            long j11 = j10 == -9223372036854775807L ? 0L : j10;
            g0 g0Var = aVar.f8484a;
            long j12 = aVar.f8486c;
            if (j12 == -9223372036854775807L) {
                this.f8489a = g0.r(g0Var);
                this.f8490b = new long[]{j11};
                return;
            } else {
                this.f8489a = g0.s(g0Var, g0.p());
                this.f8490b = new long[]{j11, j12 + j11};
                return;
            }
        }
        long[] jArr = new long[y0Var.size() * 2];
        this.f8490b = jArr;
        Arrays.fill(jArr, Long.MAX_VALUE);
        ArrayList arrayList = new ArrayList();
        y0 y0VarT = g0.t(f8488c, y0Var);
        int i11 = 0;
        while (i10 < y0VarT.size()) {
            a aVar2 = (a) y0VarT.get(i10);
            long j13 = aVar2.f8485b;
            j13 = j13 == -9223372036854775807L ? 0L : j13;
            long j14 = aVar2.f8486c;
            long j15 = j13 + j14;
            g0 g0Var2 = aVar2.f8484a;
            if (i11 != 0) {
                int i12 = i11 - 1;
                long j16 = this.f8490b[i12];
                if (j16 < j13) {
                    this.f8490b[i11] = j13;
                    arrayList.add(g0Var2);
                    i11++;
                } else if (j16 == j13 && ((g0) arrayList.get(i12)).isEmpty()) {
                    arrayList.set(i12, g0Var2);
                } else {
                    u1.a.p("Truncating unsupported overlapping cues.");
                    this.f8490b[i12] = j13;
                    arrayList.set(i12, g0Var2);
                }
            }
            if (j14 != -9223372036854775807L) {
                this.f8490b[i11] = j15;
                arrayList.add(g0.p());
                i11++;
            }
            i10++;
        }
        this.f8489a = g0.m(arrayList);
    }

    @Override // i3.d
    public final int d(long j10) {
        int iA = f0.a(this.f8490b, j10, false);
        if (iA < this.f8489a.size()) {
            return iA;
        }
        return -1;
    }

    @Override // i3.d
    public final long e(int i10) {
        o.k(i10 < this.f8489a.size());
        return this.f8490b[i10];
    }

    @Override // i3.d
    public final List h(long j10) {
        int iD = f0.d(this.f8490b, j10, false);
        return iD == -1 ? g0.p() : (g0) this.f8489a.get(iD);
    }

    @Override // i3.d
    public final int j() {
        return this.f8489a.size();
    }
}
