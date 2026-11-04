package s4;

import ha.j2;
import java.util.ArrayList;
import java.util.BitSet;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final j2 f14401a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14402b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f14403c;

    /* renamed from: d, reason: collision with root package name */
    public int f14404d = -1;

    /* renamed from: e, reason: collision with root package name */
    public int f14405e;

    /* renamed from: f, reason: collision with root package name */
    public final int f14406f;

    public r(j2 j2Var, int i10, int i11, int i12) {
        this.f14401a = j2Var;
        this.f14402b = i11;
        this.f14403c = new ArrayList(i10);
        this.f14406f = i12;
    }

    public final void a(h hVar) {
        this.f14403c.add(hVar);
        hVar.f14308c.getClass();
        if (hVar instanceof p) {
            throw null;
        }
        if (hVar instanceof q) {
        }
    }

    public final void b() {
        int iE;
        int size = this.f14403c.size();
        int i10 = this.f14402b + this.f14404d + this.f14405e;
        int i11 = i10 - this.f14406f;
        d3.g gVar = new d3.g(i10, 23);
        for (int i12 = 0; i12 < i10; i12++) {
            if (i12 >= i11) {
                gVar.e(i12, i12 + 1);
            } else {
                gVar.e(i12, i12);
            }
        }
        for (int i13 = 0; i13 < size; i13++) {
            h hVar = (h) this.f14403c.get(i13);
            if (!(hVar instanceof f)) {
                ArrayList arrayList = this.f14403c;
                w4.l lVar = hVar.f14309d;
                int length = lVar.f2559b.length;
                w4.l lVar2 = new w4.l(length);
                for (int i14 = 0; i14 < length; i14++) {
                    w4.k kVarD = (w4.k) lVar.d(i14);
                    if (kVarD == null) {
                        kVarD = null;
                    } else {
                        try {
                            iE = ((b5.e) gVar.f4437c).e(kVarD.f17466a);
                        } catch (IndexOutOfBoundsException unused) {
                            iE = -1;
                        }
                        if (iE < 0) {
                            throw new RuntimeException("no mapping specified for register");
                        }
                        if (kVarD.f17466a != iE) {
                            kVarD = w4.k.d(iE, kVarD.f17467b);
                        }
                    }
                    lVar2.e(i14, kVarD);
                }
                lVar2.f2570a = false;
                if (!lVar2.equals(lVar)) {
                    lVar = lVar2;
                }
                arrayList.set(i13, hVar.k(lVar));
            }
        }
        this.f14405e++;
    }

    public final void c() {
        int size = this.f14403c.size();
        for (int i10 = 0; i10 < size; i10++) {
            h hVar = (h) this.f14403c.get(i10);
            if (!(hVar instanceof f)) {
                this.f14403c.set(i10, hVar.j(1));
            }
        }
        this.f14404d++;
    }

    public final j d(h hVar) {
        j jVarE = e(hVar.k(hVar.f14309d.i(hVar.f14307b.f14315e, null)), hVar.f14307b);
        if (jVarE != null) {
            return jVarE;
        }
        throw new b5.g("No expanded opcode for " + hVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0029, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final j e(h hVar, j jVar) {
        while (true) {
            if (jVar == null) {
                break;
            }
            if (jVar.f14314d.Q(hVar)) {
                this.f14401a.getClass();
                break;
            }
            j[] jVarArr = k.f14316a;
            int i10 = jVar.f14313c;
            if (i10 == -1) {
                jVar = null;
            } else {
                try {
                    jVar = k.f14316a[i10 - (-1)];
                    if (jVar == null) {
                        break;
                    }
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
        }
        throw new IllegalArgumentException("bogus opcode");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean f(j[] jVarArr) {
        int i10 = this.f14404d;
        if (i10 < 0) {
            i10 = 0;
        }
        boolean z = false;
        while (true) {
            int size = this.f14403c.size();
            int i11 = this.f14404d;
            for (int i12 = 0; i12 < size; i12++) {
                h hVar = (h) this.f14403c.get(i12);
                j jVar = jVarArr[i12];
                j jVarE = e(hVar, jVar);
                if (jVarE == null) {
                    BitSet bitSetK = d(hVar).f14314d.k(hVar);
                    boolean z4 = hVar.f14307b.f14315e;
                    w4.l lVar = hVar.f14309d;
                    int length = lVar.f2559b.length;
                    int iC = (z4 == 0 || bitSetK.get(0)) ? 0 : ((w4.k) lVar.d(0)).c();
                    int iC2 = 0;
                    for (int i13 = z4; i13 < length; i13++) {
                        if (!bitSetK.get(i13)) {
                            iC2 += ((w4.k) lVar.d(i13)).c();
                        }
                    }
                    int iMax = Math.max(iC2, iC);
                    if (iMax > i11) {
                        i11 = iMax;
                    }
                } else {
                    if (jVar == jVarE) {
                    }
                }
                jVarArr[i12] = jVarE;
            }
            if (i10 >= i11) {
                this.f14404d = i10;
                return z;
            }
            int i14 = i11 - i10;
            int size2 = this.f14403c.size();
            for (int i15 = 0; i15 < size2; i15++) {
                h hVar2 = (h) this.f14403c.get(i15);
                if (!(hVar2 instanceof f)) {
                    this.f14403c.set(i15, hVar2.j(i14));
                }
            }
            z = true;
            i10 = i11;
        }
    }
}
