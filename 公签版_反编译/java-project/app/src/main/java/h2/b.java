package h2;

import java.util.ArrayList;
import java.util.Arrays;
import r1.r0;
import u7.d0;
import u7.g0;

/* loaded from: classes.dex */
public final class b implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0 f6326a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6327b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f6328c;

    /* renamed from: d, reason: collision with root package name */
    public final r1.p[] f6329d;

    /* renamed from: e, reason: collision with root package name */
    public int f6330e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f6331f;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(r0 r0Var, int i10) {
        this(r0Var, new int[]{i10});
        this.f6331f = 1;
    }

    public static void m(ArrayList arrayList, long[] jArr) {
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            d0 d0Var = (d0) arrayList.get(i10);
            if (d0Var != null) {
                d0Var.b(new a(j10, jArr[i10]));
            }
        }
    }

    @Override // h2.p
    public final r0 a() {
        return this.f6326a;
    }

    @Override // h2.p
    public final r1.p c(int i10) {
        return this.f6329d[i10];
    }

    @Override // h2.p
    public void d() {
        int i10 = this.f6331f;
    }

    @Override // h2.p
    public final int e(int i10) {
        return this.f6328c[i10];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f6326a.equals(bVar.f6326a) && Arrays.equals(this.f6328c, bVar.f6328c);
    }

    @Override // h2.p
    public void f() {
        int i10 = this.f6331f;
    }

    @Override // h2.p
    public final int g() {
        return this.f6328c[0];
    }

    @Override // h2.p
    public final r1.p h() {
        return this.f6329d[0];
    }

    public final int hashCode() {
        if (this.f6330e == 0) {
            this.f6330e = Arrays.hashCode(this.f6328c) + (System.identityHashCode(this.f6326a) * 31);
        }
        return this.f6330e;
    }

    @Override // h2.p
    public void i(float f10) {
        int i10 = this.f6331f;
    }

    @Override // h2.p
    public final /* synthetic */ void j() {
    }

    @Override // h2.p
    public final /* synthetic */ void k() {
    }

    @Override // h2.p
    public final int l(int i10) {
        for (int i11 = 0; i11 < this.f6327b; i11++) {
            if (this.f6328c[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    @Override // h2.p
    public final int length() {
        return this.f6328c.length;
    }

    public b(r0 r0Var, int[] iArr) {
        r1.p[] pVarArr;
        a9.o.t(iArr.length > 0);
        r0Var.getClass();
        this.f6326a = r0Var;
        int length = iArr.length;
        this.f6327b = length;
        this.f6329d = new r1.p[length];
        int i10 = 0;
        while (true) {
            int length2 = iArr.length;
            pVarArr = r0Var.f13556d;
            if (i10 >= length2) {
                break;
            }
            this.f6329d[i10] = pVarArr[iArr[i10]];
            i10++;
        }
        Arrays.sort(this.f6329d, new a2.m(9));
        this.f6328c = new int[this.f6327b];
        int i11 = 0;
        while (true) {
            int i12 = this.f6327b;
            if (i11 >= i12) {
                long[] jArr = new long[i12];
                return;
            }
            int[] iArr2 = this.f6328c;
            r1.p pVar = this.f6329d[i11];
            int i13 = 0;
            while (true) {
                if (i13 >= pVarArr.length) {
                    i13 = -1;
                    break;
                } else if (pVar == pVarArr[i13]) {
                    break;
                } else {
                    i13++;
                }
            }
            iArr2[i11] = i13;
            i11++;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(r0 r0Var, int[] iArr, long j10, long j11, g0 g0Var) {
        this(r0Var, iArr);
        this.f6331f = 0;
        if (j11 < j10) {
            u1.a.p("Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
        }
        g0.m(g0Var);
    }

    private final void n() {
    }

    private final void p() {
    }

    public final void o() {
    }

    public final void q() {
    }

    private final void r(float f10) {
    }

    @Override // h2.p
    public final void b(boolean z) {
    }

    public final void s(float f10) {
    }
}
