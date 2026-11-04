package f3;

import l2.b0;
import l2.c0;
import l2.d0;

/* loaded from: classes.dex */
public final class l implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final long f5519a;

    /* renamed from: b, reason: collision with root package name */
    public final m[] f5520b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5521c;

    public l(long j10, m[] mVarArr, int i10) {
        this.f5519a = j10;
        this.f5520b = mVarArr;
        this.f5521c = i10;
    }

    @Override // l2.c0
    public final boolean c() {
        return true;
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bc  */
    @Override // l2.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final b0 f(long j10) {
        long j11;
        long j12;
        long jMin;
        long j13;
        int i10;
        int i11;
        int iB;
        m[] mVarArr = this.f5520b;
        int length = mVarArr.length;
        d0 d0Var = d0.f10441c;
        if (length == 0) {
            return new b0(d0Var, d0Var);
        }
        int i12 = -1;
        int i13 = this.f5521c;
        if (i13 != -1) {
            v vVar = mVarArr[i13].f5523b;
            int iA = vVar.a(j10);
            if (iA == -1) {
                iA = vVar.b(j10);
            }
            if (iA == -1) {
                return new b0(d0Var, d0Var);
            }
            long[] jArr = vVar.f5597f;
            j12 = jArr[iA];
            long[] jArr2 = vVar.f5594c;
            j11 = jArr2[iA];
            if (j12 < j10 && iA < vVar.f5593b - 1 && (iB = vVar.b(j10)) != -1 && iB != iA) {
                j13 = jArr[iB];
                jMin = jArr2[iB];
            }
            i10 = 0;
            long jMin2 = j11;
            while (i10 < mVarArr.length) {
                if (i10 != i13) {
                    v vVar2 = mVarArr[i10].f5523b;
                    int iA2 = vVar2.a(j12);
                    if (iA2 == i12) {
                        iA2 = vVar2.b(j12);
                    }
                    long[] jArr3 = vVar2.f5594c;
                    if (iA2 == i12) {
                        i11 = i10;
                    } else {
                        i11 = i10;
                        jMin2 = Math.min(jArr3[iA2], jMin2);
                    }
                    if (j13 != -9223372036854775807L) {
                        int iA3 = vVar2.a(j13);
                        if (iA3 == -1) {
                            iA3 = vVar2.b(j13);
                        }
                        if (iA3 != -1) {
                            jMin = Math.min(jArr3[iA3], jMin);
                        }
                    }
                    i10 = i11 + 1;
                    i12 = -1;
                } else {
                    i11 = i10;
                }
                i10 = i11 + 1;
                i12 = -1;
            }
            d0 d0Var2 = new d0(j12, jMin2);
            return j13 != -9223372036854775807L ? new b0(d0Var2, d0Var2) : new b0(d0Var2, new d0(j13, jMin));
        }
        j11 = Long.MAX_VALUE;
        j12 = j10;
        jMin = -1;
        j13 = -9223372036854775807L;
        i10 = 0;
        long jMin22 = j11;
        while (i10 < mVarArr.length) {
        }
        d0 d0Var22 = new d0(j12, jMin22);
        if (j13 != -9223372036854775807L) {
        }
    }

    @Override // l2.c0
    public final long h() {
        return this.f5519a;
    }
}
