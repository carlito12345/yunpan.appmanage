package g0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final o f5961a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f5962b = new ArrayList();

    public l(o oVar) {
        this.f5961a = null;
        this.f5961a = oVar;
    }

    public static long a(f fVar, long j10) {
        o oVar = fVar.f5950d;
        if (oVar instanceof j) {
            return j10;
        }
        ArrayList arrayList = fVar.f5957k;
        int size = arrayList.size();
        long jMin = j10;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = (d) arrayList.get(i10);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f5950d != oVar) {
                    jMin = Math.min(jMin, a(fVar2, fVar2.f5952f + j10));
                }
            }
        }
        if (fVar != oVar.f5978i) {
            return jMin;
        }
        long j11 = oVar.j();
        long j12 = j10 - j11;
        return Math.min(Math.min(jMin, a(oVar.f5977h, j12)), j12 - r9.f5952f);
    }

    public static long b(f fVar, long j10) {
        o oVar = fVar.f5950d;
        if (oVar instanceof j) {
            return j10;
        }
        ArrayList arrayList = fVar.f5957k;
        int size = arrayList.size();
        long jMax = j10;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = (d) arrayList.get(i10);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f5950d != oVar) {
                    jMax = Math.max(jMax, b(fVar2, fVar2.f5952f + j10));
                }
            }
        }
        if (fVar != oVar.f5977h) {
            return jMax;
        }
        long j11 = oVar.j();
        long j12 = j10 + j11;
        return Math.max(Math.max(jMax, b(oVar.f5978i, j12)), j12 - r9.f5952f);
    }
}
