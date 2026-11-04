package y1;

import android.util.Pair;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class a1 extends r1.q0 {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f18571k = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f18572b;

    /* renamed from: c, reason: collision with root package name */
    public final f2.e1 f18573c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18574d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18575e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f18576f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f18577g;

    /* renamed from: h, reason: collision with root package name */
    public final r1.q0[] f18578h;

    /* renamed from: i, reason: collision with root package name */
    public final Object[] f18579i;

    /* renamed from: j, reason: collision with root package name */
    public final HashMap f18580j;

    public a1(r1.q0[] q0VarArr, Object[] objArr, f2.e1 e1Var) {
        this.f18573c = e1Var;
        this.f18572b = e1Var.f5255b.length;
        int length = q0VarArr.length;
        this.f18578h = q0VarArr;
        this.f18576f = new int[length];
        this.f18577g = new int[length];
        this.f18579i = objArr;
        this.f18580j = new HashMap();
        int length2 = q0VarArr.length;
        int i10 = 0;
        int iO = 0;
        int iH = 0;
        int i11 = 0;
        while (i10 < length2) {
            r1.q0 q0Var = q0VarArr[i10];
            this.f18578h[i11] = q0Var;
            this.f18577g[i11] = iO;
            this.f18576f[i11] = iH;
            iO += q0Var.o();
            iH += this.f18578h[i11].h();
            this.f18580j.put(objArr[i11], Integer.valueOf(i11));
            i10++;
            i11++;
        }
        this.f18574d = iO;
        this.f18575e = iH;
    }

    @Override // r1.q0
    public final int a(boolean z) {
        if (this.f18572b == 0) {
            return -1;
        }
        int iQ = 0;
        if (z) {
            int[] iArr = this.f18573c.f5255b;
            iQ = iArr.length > 0 ? iArr[0] : -1;
        }
        do {
            r1.q0[] q0VarArr = this.f18578h;
            if (!q0VarArr[iQ].p()) {
                return q0VarArr[iQ].a(z) + this.f18577g[iQ];
            }
            iQ = q(iQ, z);
        } while (iQ != -1);
        return -1;
    }

    @Override // r1.q0
    public final int b(Object obj) {
        int iB;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        Integer num = (Integer) this.f18580j.get(obj2);
        int iIntValue = num == null ? -1 : num.intValue();
        if (iIntValue == -1 || (iB = this.f18578h[iIntValue].b(obj3)) == -1) {
            return -1;
        }
        return this.f18576f[iIntValue] + iB;
    }

    @Override // r1.q0
    public final int c(boolean z) {
        int iR;
        int i10 = this.f18572b;
        if (i10 == 0) {
            return -1;
        }
        if (z) {
            int[] iArr = this.f18573c.f5255b;
            iR = iArr.length > 0 ? iArr[iArr.length - 1] : -1;
        } else {
            iR = i10 - 1;
        }
        do {
            r1.q0[] q0VarArr = this.f18578h;
            if (!q0VarArr[iR].p()) {
                return q0VarArr[iR].c(z) + this.f18577g[iR];
            }
            iR = r(iR, z);
        } while (iR != -1);
        return -1;
    }

    @Override // r1.q0
    public final int e(int i10, int i11, boolean z) {
        int[] iArr = this.f18577g;
        int iC = u1.f0.c(iArr, i10 + 1, false, false);
        int i12 = iArr[iC];
        r1.q0[] q0VarArr = this.f18578h;
        int iE = q0VarArr[iC].e(i10 - i12, i11 != 2 ? i11 : 0, z);
        if (iE != -1) {
            return i12 + iE;
        }
        int iQ = q(iC, z);
        while (iQ != -1 && q0VarArr[iQ].p()) {
            iQ = q(iQ, z);
        }
        if (iQ != -1) {
            return q0VarArr[iQ].a(z) + iArr[iQ];
        }
        if (i11 == 2) {
            return a(z);
        }
        return -1;
    }

    @Override // r1.q0
    public final r1.o0 f(int i10, r1.o0 o0Var, boolean z) {
        int[] iArr = this.f18576f;
        int iC = u1.f0.c(iArr, i10 + 1, false, false);
        int i11 = this.f18577g[iC];
        this.f18578h[iC].f(i10 - iArr[iC], o0Var, z);
        o0Var.f13505c += i11;
        if (z) {
            Object obj = this.f18579i[iC];
            Object obj2 = o0Var.f13504b;
            obj2.getClass();
            o0Var.f13504b = Pair.create(obj, obj2);
        }
        return o0Var;
    }

    @Override // r1.q0
    public final r1.o0 g(Object obj, r1.o0 o0Var) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        Integer num = (Integer) this.f18580j.get(obj2);
        int iIntValue = num == null ? -1 : num.intValue();
        int i10 = this.f18577g[iIntValue];
        this.f18578h[iIntValue].g(obj3, o0Var);
        o0Var.f13505c += i10;
        o0Var.f13504b = obj;
        return o0Var;
    }

    @Override // r1.q0
    public final int h() {
        return this.f18575e;
    }

    @Override // r1.q0
    public final int k(int i10, int i11, boolean z) {
        int[] iArr = this.f18577g;
        int iC = u1.f0.c(iArr, i10 + 1, false, false);
        int i12 = iArr[iC];
        r1.q0[] q0VarArr = this.f18578h;
        int iK = q0VarArr[iC].k(i10 - i12, i11 != 2 ? i11 : 0, z);
        if (iK != -1) {
            return i12 + iK;
        }
        int iR = r(iC, z);
        while (iR != -1 && q0VarArr[iR].p()) {
            iR = r(iR, z);
        }
        if (iR != -1) {
            return q0VarArr[iR].c(z) + iArr[iR];
        }
        if (i11 == 2) {
            return c(z);
        }
        return -1;
    }

    @Override // r1.q0
    public final Object l(int i10) {
        int[] iArr = this.f18576f;
        int iC = u1.f0.c(iArr, i10 + 1, false, false);
        return Pair.create(this.f18579i[iC], this.f18578h[iC].l(i10 - iArr[iC]));
    }

    @Override // r1.q0
    public final r1.p0 m(int i10, r1.p0 p0Var, long j10) {
        int[] iArr = this.f18577g;
        int iC = u1.f0.c(iArr, i10 + 1, false, false);
        int i11 = iArr[iC];
        int i12 = this.f18576f[iC];
        this.f18578h[iC].m(i10 - i11, p0Var, j10);
        Object objCreate = this.f18579i[iC];
        if (!r1.p0.f13533p.equals(p0Var.f13535a)) {
            objCreate = Pair.create(objCreate, p0Var.f13535a);
        }
        p0Var.f13535a = objCreate;
        p0Var.f13546m += i12;
        p0Var.f13547n += i12;
        return p0Var;
    }

    @Override // r1.q0
    public final int o() {
        return this.f18574d;
    }

    public final int q(int i10, boolean z) {
        if (!z) {
            if (i10 < this.f18572b - 1) {
                return i10 + 1;
            }
            return -1;
        }
        f2.e1 e1Var = this.f18573c;
        int i11 = e1Var.f5256c[i10] + 1;
        int[] iArr = e1Var.f5255b;
        if (i11 < iArr.length) {
            return iArr[i11];
        }
        return -1;
    }

    public final int r(int i10, boolean z) {
        if (!z) {
            if (i10 > 0) {
                return i10 - 1;
            }
            return -1;
        }
        f2.e1 e1Var = this.f18573c;
        int i11 = e1Var.f5256c[i10] - 1;
        if (i11 >= 0) {
            return e1Var.f5255b[i11];
        }
        return -1;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a1(List list, f2.e1 e1Var) {
        r1.q0[] q0VarArr = new r1.q0[list.size()];
        Iterator it = list.iterator();
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            q0VarArr[i11] = ((o0) it.next()).a();
            i11++;
        }
        Object[] objArr = new Object[list.size()];
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            objArr[i10] = ((o0) it2.next()).getUid();
            i10++;
        }
        this(q0VarArr, objArr, e1Var);
    }
}
