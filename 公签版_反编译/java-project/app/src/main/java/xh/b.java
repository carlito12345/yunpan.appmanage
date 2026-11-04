package xh;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import sh.p;

/* loaded from: classes3.dex */
public final class b extends h implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f18485a;

    /* renamed from: b, reason: collision with root package name */
    public final p[] f18486b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f18487c;

    /* renamed from: d, reason: collision with root package name */
    public final sh.f[] f18488d;

    /* renamed from: e, reason: collision with root package name */
    public final p[] f18489e;

    /* renamed from: f, reason: collision with root package name */
    public final f[] f18490f;

    /* renamed from: g, reason: collision with root package name */
    public final ConcurrentHashMap f18491g = new ConcurrentHashMap();

    public b(long[] jArr, p[] pVarArr, long[] jArr2, p[] pVarArr2, f[] fVarArr) {
        this.f18485a = jArr;
        this.f18486b = pVarArr;
        this.f18487c = jArr2;
        this.f18489e = pVarArr2;
        this.f18490f = fVarArr;
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 < jArr2.length) {
            p pVar = pVarArr2[i10];
            int i11 = i10 + 1;
            p pVar2 = pVarArr2[i11];
            sh.f fVarR = sh.f.r(jArr2[i10], 0, pVar);
            if (pVar2.f14619a > pVar.f14619a) {
                arrayList.add(fVarR);
                arrayList.add(fVarR.t(pVar2.f14619a - r0));
            } else {
                arrayList.add(fVarR.t(r3 - r0));
                arrayList.add(fVarR);
            }
            i10 = i11;
        }
        this.f18488d = (sh.f[]) arrayList.toArray(new sh.f[arrayList.size()]);
    }

    private Object writeReplace() {
        return new a((byte) 1, this);
    }

    @Override // xh.h
    public final p a(sh.d dVar) {
        long j10 = dVar.f14577a;
        int length = this.f18490f.length;
        p[] pVarArr = this.f18489e;
        long[] jArr = this.f18487c;
        if (length <= 0 || (jArr.length != 0 && j10 <= jArr[jArr.length - 1])) {
            int iBinarySearch = Arrays.binarySearch(jArr, j10);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            return pVarArr[iBinarySearch + 1];
        }
        e[] eVarArrF = f(sh.e.w(p000if.a.C(pVarArr[pVarArr.length - 1].f14619a + j10, 86400L)).f14581a);
        e eVar = null;
        for (int i10 = 0; i10 < eVarArrF.length; i10++) {
            eVar = eVarArrF[i10];
            sh.f fVar = eVar.f18500a;
            p pVar = eVar.f18501b;
            if (j10 < fVar.m(pVar)) {
                return pVar;
            }
        }
        return eVar.f18502c;
    }

    @Override // xh.h
    public final e b(sh.f fVar) {
        Object objG = g(fVar);
        if (objG instanceof e) {
            return (e) objG;
        }
        return null;
    }

    @Override // xh.h
    public final List c(sh.f fVar) {
        Object objG = g(fVar);
        if (!(objG instanceof e)) {
            return Collections.singletonList((p) objG);
        }
        e eVar = (e) objG;
        p pVar = eVar.f18502c;
        int i10 = pVar.f14619a;
        p pVar2 = eVar.f18501b;
        return i10 > pVar2.f14619a ? Collections.emptyList() : Arrays.asList(pVar2, pVar);
    }

    @Override // xh.h
    public final boolean d(sh.f fVar, p pVar) {
        return c(fVar).contains(pVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return (obj instanceof g) && h() && a(sh.d.f14576c).equals(((g) obj).f18512a);
        }
        b bVar = (b) obj;
        return Arrays.equals(this.f18485a, bVar.f18485a) && Arrays.equals(this.f18486b, bVar.f18486b) && Arrays.equals(this.f18487c, bVar.f18487c) && Arrays.equals(this.f18489e, bVar.f18489e) && Arrays.equals(this.f18490f, bVar.f18490f);
    }

    public final e[] f(int i10) {
        sh.e eVarP;
        Integer numValueOf = Integer.valueOf(i10);
        ConcurrentHashMap concurrentHashMap = this.f18491g;
        e[] eVarArr = (e[]) concurrentHashMap.get(numValueOf);
        if (eVarArr != null) {
            return eVarArr;
        }
        f[] fVarArr = this.f18490f;
        e[] eVarArr2 = new e[fVarArr.length];
        for (int i11 = 0; i11 < fVarArr.length; i11++) {
            f fVar = fVarArr[i11];
            sh.b bVar = fVar.f18505c;
            sh.h hVar = fVar.f18503a;
            byte b10 = fVar.f18504b;
            if (b10 < 0) {
                long j10 = i10;
                th.e.f15102a.getClass();
                int iO = hVar.o(th.e.b(j10)) + 1 + b10;
                sh.e eVar = sh.e.f14579d;
                wh.a.YEAR.h(j10);
                wh.a.DAY_OF_MONTH.h(iO);
                eVarP = sh.e.p(i10, hVar, iO);
                if (bVar != null) {
                    eVarP = eVarP.h(new eb.j(1, bVar));
                }
            } else {
                sh.e eVar2 = sh.e.f14579d;
                wh.a.YEAR.h(i10);
                p000if.a.t0(hVar, "month");
                wh.a.DAY_OF_MONTH.h(b10);
                eVarP = sh.e.p(i10, hVar, b10);
                if (bVar != null) {
                    eVarP = eVarP.h(new eb.j(0, bVar));
                }
            }
            sh.f fVarQ = sh.f.q(eVarP.y(fVar.f18507e), fVar.f18506d);
            int iC = d0.f.c(fVar.f18508f);
            p pVar = fVar.f18510h;
            int i12 = pVar.f14619a;
            if (iC == 0) {
                fVarQ = fVarQ.t(i12 - p.f14616e.f14619a);
            } else if (iC == 2) {
                fVarQ = fVarQ.t(i12 - fVar.f18509g.f14619a);
            }
            eVarArr2[i11] = new e(fVarQ, pVar, fVar.f18511i);
        }
        if (i10 < 2100) {
            concurrentHashMap.putIfAbsent(numValueOf, eVarArr2);
        }
        return eVarArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0040, code lost:
    
        if (r14.f14587b.w() <= r0.f14587b.w()) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        if (r14.o(r0) > 0) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object g(sh.f fVar) {
        int length = this.f18490f.length;
        sh.f[] fVarArr = this.f18488d;
        if (length > 0) {
            if (fVarArr.length != 0) {
                sh.f fVar2 = fVarArr[fVarArr.length - 1];
                fVar.getClass();
                if (!(fVar2 instanceof sh.f)) {
                    long jM = fVar.f14586a.m();
                    long jM2 = fVar2.f14586a.m();
                    if (jM <= jM2) {
                        if (jM == jM2) {
                        }
                    }
                }
            }
            e[] eVarArrF = f(fVar.f14586a.f14581a);
            int length2 = eVarArrF.length;
            Object obj = null;
            int i10 = 0;
            while (i10 < length2) {
                e eVar = eVarArrF[i10];
                sh.f fVar3 = eVar.f18500a;
                p pVar = eVar.f18502c;
                int i11 = pVar.f14619a;
                p pVar2 = eVar.f18501b;
                boolean z = i11 > pVar2.f14619a;
                sh.f fVar4 = eVar.f18500a;
                if (!z) {
                    if (fVar.p(fVar3)) {
                        obj = eVar;
                        if (fVar.p(fVar4.t(pVar.f14619a - pVar2.f14619a))) {
                        }
                    }
                    if (!(obj instanceof e)) {
                        break;
                        break;
                    }
                    break;
                }
                if (fVar.p(fVar3)) {
                    obj = pVar2;
                } else {
                    obj = eVar;
                    if (!fVar.p(fVar4.t(pVar.f14619a - pVar2.f14619a))) {
                        obj = pVar;
                    }
                }
                if (!(obj instanceof e) || obj.equals(pVar2)) {
                    break;
                }
                i10++;
                obj = obj;
            }
            return obj;
        }
        int iBinarySearch = Arrays.binarySearch(fVarArr, fVar);
        p[] pVarArr = this.f18489e;
        if (iBinarySearch == -1) {
            return pVarArr[0];
        }
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        } else if (iBinarySearch < fVarArr.length - 1) {
            int i12 = iBinarySearch + 1;
            if (fVarArr[iBinarySearch].equals(fVarArr[i12])) {
                iBinarySearch = i12;
            }
        }
        if ((iBinarySearch & 1) != 0) {
            return pVarArr[(iBinarySearch / 2) + 1];
        }
        sh.f fVar5 = fVarArr[iBinarySearch];
        sh.f fVar6 = fVarArr[iBinarySearch + 1];
        int i13 = iBinarySearch / 2;
        p pVar3 = pVarArr[i13];
        p pVar4 = pVarArr[i13 + 1];
        return pVar4.f14619a > pVar3.f14619a ? new e(fVar5, pVar3, pVar4) : new e(fVar6, pVar3, pVar4);
    }

    public final boolean h() {
        return this.f18487c.length == 0 && this.f18490f.length == 0 && this.f18489e[0].equals(this.f18486b[0]);
    }

    public final int hashCode() {
        return (((Arrays.hashCode(this.f18485a) ^ Arrays.hashCode(this.f18486b)) ^ Arrays.hashCode(this.f18487c)) ^ Arrays.hashCode(this.f18489e)) ^ Arrays.hashCode(this.f18490f);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("StandardZoneRules[currentStandardOffset=");
        sb2.append(this.f18486b[r1.length - 1]);
        sb2.append("]");
        return sb2.toString();
    }
}
