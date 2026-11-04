package androidx.leanback.widget;

/* loaded from: classes.dex */
public final class s0 extends j {

    /* renamed from: j, reason: collision with root package name */
    public final a0.g f1711j = new a0.g(0);

    /* renamed from: k, reason: collision with root package name */
    public int f1712k = -1;
    public Object l;

    /* renamed from: m, reason: collision with root package name */
    public int f1713m;

    @Override // androidx.leanback.widget.j
    public final boolean b(int i10, boolean z) {
        Object[] objArr = this.f1649a;
        if (this.f1650b.c() == 0) {
            return false;
        }
        if (!z && c(i10)) {
            return false;
        }
        try {
            if (!o(i10, z)) {
                return q(i10, z);
            }
            objArr[0] = null;
            this.l = null;
            return true;
        } finally {
            objArr[0] = null;
            this.l = null;
        }
    }

    @Override // androidx.leanback.widget.j
    public final int f(boolean z, int i10, int[] iArr) {
        int i11;
        int iD = this.f1650b.d(i10);
        r0 r0VarK = k(i10);
        int i12 = r0VarK.f1647b;
        if (this.f1651c) {
            i11 = i12;
            int i13 = i11;
            int i14 = 1;
            int i15 = iD;
            for (int i16 = i10 + 1; i14 < this.f1653e && i16 <= this.f1655g; i16++) {
                r0 r0VarK2 = k(i16);
                i15 += r0VarK2.f1709c;
                int i17 = r0VarK2.f1647b;
                if (i17 != i13) {
                    i14++;
                    if (!z ? i15 >= iD : i15 <= iD) {
                        i13 = i17;
                    } else {
                        iD = i15;
                        i10 = i16;
                        i11 = i17;
                        i13 = i11;
                    }
                }
            }
        } else {
            int i18 = 1;
            int i19 = i12;
            r0 r0VarK3 = r0VarK;
            int i20 = iD;
            iD = this.f1650b.e(i10) + iD;
            i11 = i19;
            for (int i21 = i10 - 1; i18 < this.f1653e && i21 >= this.f1654f; i21--) {
                i20 -= r0VarK3.f1709c;
                r0VarK3 = k(i21);
                int i22 = r0VarK3.f1647b;
                if (i22 != i19) {
                    i18++;
                    int iE = this.f1650b.e(i21) + i20;
                    if (!z ? iE >= iD : iE <= iD) {
                        i19 = i22;
                    } else {
                        iD = iE;
                        i10 = i21;
                        i11 = i22;
                        i19 = i11;
                    }
                }
            }
        }
        if (iArr != null) {
            iArr[0] = i11;
            iArr[1] = i10;
        }
        return iD;
    }

    @Override // androidx.leanback.widget.j
    public final int h(boolean z, int i10, int[] iArr) {
        int iE;
        int iD = this.f1650b.d(i10);
        r0 r0VarK = k(i10);
        int i11 = r0VarK.f1647b;
        if (this.f1651c) {
            int i12 = 1;
            iE = iD - this.f1650b.e(i10);
            int i13 = i11;
            for (int i14 = i10 - 1; i12 < this.f1653e && i14 >= this.f1654f; i14--) {
                iD -= r0VarK.f1709c;
                r0VarK = k(i14);
                int i15 = r0VarK.f1647b;
                if (i15 != i13) {
                    i12++;
                    int iE2 = iD - this.f1650b.e(i14);
                    if (!z ? iE2 >= iE : iE2 <= iE) {
                        i13 = i15;
                    } else {
                        iE = iE2;
                        i10 = i14;
                        i11 = i15;
                        i13 = i11;
                    }
                }
            }
        } else {
            int i16 = i11;
            int i17 = i16;
            int i18 = 1;
            int i19 = iD;
            for (int i20 = i10 + 1; i18 < this.f1653e && i20 <= this.f1655g; i20++) {
                r0 r0VarK2 = k(i20);
                i19 += r0VarK2.f1709c;
                int i21 = r0VarK2.f1647b;
                if (i21 != i17) {
                    i18++;
                    if (!z ? i19 >= iD : i19 <= iD) {
                        i17 = i21;
                    } else {
                        iD = i19;
                        i10 = i20;
                        i16 = i21;
                        i17 = i16;
                    }
                }
            }
            iE = iD;
            i11 = i16;
        }
        if (iArr != null) {
            iArr[0] = i11;
            iArr[1] = i10;
        }
        return iE;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    @Override // androidx.leanback.widget.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final a0.h[] j(int i10, int i11) {
        for (int i12 = 0; i12 < this.f1653e; i12++) {
            this.f1656h[i12].f28b = 0;
        }
        if (i10 >= 0) {
            while (i10 <= i11) {
                a0.h hVar = this.f1656h[k(i10).f1647b];
                int i13 = hVar.f28b;
                int i14 = hVar.f29c;
                if ((i13 & i14) <= 0) {
                    hVar.f(i10);
                    hVar.f(i10);
                } else {
                    if (i13 == 0) {
                        throw new ArrayIndexOutOfBoundsException();
                    }
                    int i15 = i14 & (i13 - 1);
                    if (((int[]) hVar.f30d)[i15] == i10 - 1) {
                        if (i13 == 0) {
                            throw new ArrayIndexOutOfBoundsException();
                        }
                        hVar.f28b = i15;
                        hVar.f(i10);
                    }
                }
                i10++;
            }
        }
        return this.f1656h;
    }

    @Override // androidx.leanback.widget.j
    public final void l(int i10) {
        super.l(i10);
        int iS = (s() - i10) + 1;
        a0.g gVar = this.f1711j;
        gVar.e(iS);
        if (gVar.g() == 0) {
            this.f1712k = -1;
        }
    }

    @Override // androidx.leanback.widget.j
    public final boolean m(int i10, boolean z) {
        Object[] objArr = this.f1649a;
        if (this.f1650b.c() == 0) {
            return false;
        }
        if (!z && d(i10)) {
            return false;
        }
        try {
            if (!w(i10, z)) {
                return y(i10, z);
            }
            objArr[0] = null;
            this.l = null;
            return true;
        } finally {
            objArr[0] = null;
            this.l = null;
        }
    }

    public final boolean o(int i10, boolean z) {
        int i11;
        int iD;
        int i12;
        a0.g gVar = this.f1711j;
        if (gVar.g() == 0) {
            return false;
        }
        int iC = this.f1650b.c();
        int i13 = this.f1655g;
        if (i13 >= 0) {
            i11 = i13 + 1;
            iD = this.f1650b.d(i13);
        } else {
            int i14 = this.f1657i;
            i11 = i14 != -1 ? i14 : 0;
            if (i11 > s() + 1 || i11 < this.f1712k) {
                gVar.f(gVar.g());
                return false;
            }
            if (i11 > s()) {
                return false;
            }
            iD = Integer.MAX_VALUE;
        }
        int iS = s();
        int i15 = i11;
        while (i15 < iC && i15 <= iS) {
            r0 r0VarK = k(i15);
            if (iD != Integer.MAX_VALUE) {
                iD += r0VarK.f1709c;
            }
            int i16 = r0VarK.f1647b;
            k kVar = this.f1650b;
            Object[] objArr = this.f1649a;
            int iB = kVar.b(i15, true, objArr, false);
            if (iB != r0VarK.f1710d) {
                r0VarK.f1710d = iB;
                gVar.e(iS - i15);
                i12 = i15;
            } else {
                i12 = iS;
            }
            this.f1655g = i15;
            if (this.f1654f < 0) {
                this.f1654f = i15;
            }
            this.f1650b.a(objArr[0], i15, iB, i16, iD);
            if (!z && c(i10)) {
                return true;
            }
            if (iD == Integer.MAX_VALUE) {
                iD = this.f1650b.d(i15);
            }
            if (i16 == this.f1653e - 1 && z) {
                return true;
            }
            i15++;
            iS = i12;
        }
        return false;
    }

    public final int p(int i10, int i11, int i12) {
        int iD;
        int i13 = this.f1655g;
        if (i13 >= 0 && (i13 != s() || this.f1655g != i10 - 1)) {
            throw new IllegalStateException();
        }
        int i14 = this.f1655g;
        a0.g gVar = this.f1711j;
        if (i14 >= 0) {
            iD = i12 - this.f1650b.d(i14);
        } else if (gVar.g() <= 0 || i10 != s() + 1) {
            iD = 0;
        } else {
            int iS = s();
            while (true) {
                if (iS < this.f1712k) {
                    iS = s();
                    break;
                }
                if (k(iS).f1647b == i11) {
                    break;
                }
                iS--;
            }
            iD = this.f1651c ? (-k(iS).f1710d) - this.f1652d : k(iS).f1710d + this.f1652d;
            for (int i15 = iS + 1; i15 <= s(); i15++) {
                iD -= k(i15).f1709c;
            }
        }
        r0 r0Var = new r0(i11, iD);
        Object[] objArr = (Object[]) gVar.f26d;
        int i16 = gVar.f24b;
        objArr[i16] = r0Var;
        int i17 = gVar.f25c & (i16 + 1);
        gVar.f24b = i17;
        if (i17 == gVar.f23a) {
            gVar.c();
        }
        Object obj = this.l;
        if (obj != null) {
            r0Var.f1710d = this.f1713m;
            this.l = null;
        } else {
            k kVar = this.f1650b;
            Object[] objArr2 = this.f1649a;
            r0Var.f1710d = kVar.b(i10, true, objArr2, false);
            obj = objArr2[0];
        }
        Object obj2 = obj;
        if (gVar.g() == 1) {
            this.f1655g = i10;
            this.f1654f = i10;
            this.f1712k = i10;
        } else {
            int i18 = this.f1655g;
            if (i18 < 0) {
                this.f1655g = i10;
                this.f1654f = i10;
            } else {
                this.f1655g = i18 + 1;
            }
        }
        this.f1650b.a(obj2, i10, r0Var.f1710d, i11, i12);
        return r0Var.f1710d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0137, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0138, code lost:
    
        r6 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x014f, code lost:
    
        return r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0108 A[LOOP:2: B:88:0x0108->B:104:0x012c, LOOP_START, PHI: r6 r9 r10
  0x0108: PHI (r6v13 int) = (r6v6 int), (r6v18 int) binds: [B:87:0x0106, B:104:0x012c] A[DONT_GENERATE, DONT_INLINE]
  0x0108: PHI (r9v20 int) = (r9v18 int), (r9v21 int) binds: [B:87:0x0106, B:104:0x012c] A[DONT_GENERATE, DONT_INLINE]
  0x0108: PHI (r10v6 int) = (r10v5 int), (r10v8 int) binds: [B:87:0x0106, B:104:0x012c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean q(int i10, boolean z) {
        int i11;
        int i12;
        boolean z4;
        int iV;
        int i13;
        int i14;
        int iC = this.f1650b.c();
        int i15 = this.f1655g;
        if (i15 < 0) {
            int i16 = this.f1657i;
            i11 = i16 != -1 ? i16 : 0;
            i12 = (this.f1711j.g() > 0 ? k(s()).f1647b + 1 : i11) % this.f1653e;
            z4 = false;
            iV = 0;
        } else {
            if (i15 < s()) {
                return false;
            }
            int i17 = this.f1655g;
            i11 = i17 + 1;
            i12 = k(i17).f1647b;
            int iR = r(true);
            if (iR < 0) {
                iV = Integer.MIN_VALUE;
                for (int i18 = 0; i18 < this.f1653e; i18++) {
                    iV = this.f1651c ? v(i18) : u(i18);
                    if (iV != Integer.MIN_VALUE) {
                        break;
                    }
                }
            } else {
                iV = this.f1651c ? h(false, iR, null) : f(true, iR, null);
            }
            if (!this.f1651c ? u(i12) >= iV : v(i12) <= iV) {
                i12++;
                if (i12 == this.f1653e) {
                    iV = this.f1651c ? i(false, null) : g(true, null);
                    i12 = 0;
                }
            }
            z4 = true;
        }
        boolean z10 = false;
        loop1: while (true) {
            if (i12 < this.f1653e) {
                if (i11 == iC || (!z && c(i10))) {
                    break;
                }
                int iV2 = this.f1651c ? v(i12) : u(i12);
                if (iV2 == Integer.MAX_VALUE || iV2 == Integer.MIN_VALUE) {
                    if (i12 == 0) {
                        iV2 = this.f1651c ? v(this.f1653e - 1) : u(this.f1653e - 1);
                        if (iV2 != Integer.MAX_VALUE && iV2 != Integer.MIN_VALUE) {
                            if (this.f1651c) {
                                i14 = this.f1652d;
                                i13 = -i14;
                                iV2 += i13;
                            } else {
                                i13 = this.f1652d;
                                iV2 += i13;
                            }
                        }
                    } else {
                        iV2 = this.f1651c ? u(i12 - 1) : v(i12 - 1);
                    }
                    int i19 = i11 + 1;
                    int iP = p(i11, i12, iV2);
                    if (z4) {
                        while (true) {
                            if (!this.f1651c) {
                                if (iV2 + iP >= iV) {
                                    break;
                                }
                                if (i19 == iC) {
                                    break loop1;
                                }
                                break loop1;
                                break loop1;
                            }
                            if (iV2 - iP <= iV) {
                                break;
                            }
                            if (i19 == iC || (!z && c(i10))) {
                                break loop1;
                            }
                            iV2 += this.f1651c ? (-iP) - this.f1652d : iP + this.f1652d;
                            int i20 = i19 + 1;
                            int iP2 = p(i19, i12, iV2);
                            i19 = i20;
                            iP = iP2;
                        }
                    } else {
                        iV = this.f1651c ? v(i12) : u(i12);
                        i11 = i19;
                        z4 = true;
                    }
                    i12++;
                    z10 = true;
                } else if (this.f1651c) {
                    i14 = this.f1652d;
                    i13 = -i14;
                    iV2 += i13;
                    int i192 = i11 + 1;
                    int iP3 = p(i11, i12, iV2);
                    if (z4) {
                    }
                    i12++;
                    z10 = true;
                } else {
                    i13 = this.f1652d;
                    iV2 += i13;
                    int i1922 = i11 + 1;
                    int iP32 = p(i11, i12, iV2);
                    if (z4) {
                    }
                    i12++;
                    z10 = true;
                }
            } else {
                if (z) {
                    return z10;
                }
                iV = this.f1651c ? i(false, null) : g(true, null);
                i12 = 0;
            }
        }
    }

    public final int r(boolean z) {
        boolean z4 = false;
        if (z) {
            for (int i10 = this.f1655g; i10 >= this.f1654f; i10--) {
                int i11 = k(i10).f1647b;
                if (i11 == 0) {
                    z4 = true;
                } else if (z4 && i11 == this.f1653e - 1) {
                    return i10;
                }
            }
            return -1;
        }
        for (int i12 = this.f1654f; i12 <= this.f1655g; i12++) {
            int i13 = k(i12).f1647b;
            if (i13 == this.f1653e - 1) {
                z4 = true;
            } else if (z4 && i13 == 0) {
                return i12;
            }
        }
        return -1;
    }

    public final int s() {
        return (this.f1711j.g() + this.f1712k) - 1;
    }

    @Override // androidx.leanback.widget.j
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public final r0 k(int i10) {
        int i11 = i10 - this.f1712k;
        if (i11 < 0) {
            return null;
        }
        a0.g gVar = this.f1711j;
        if (i11 >= gVar.g()) {
            return null;
        }
        if (i11 < 0) {
            gVar.getClass();
        } else if (i11 < gVar.g()) {
            Object obj = ((Object[]) gVar.f26d)[gVar.f25c & (gVar.f23a + i11)];
            ue.d.b(obj);
            return (r0) obj;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int u(int i10) {
        int i11;
        r0 r0VarK;
        int i12 = this.f1654f;
        if (i12 < 0) {
            return Integer.MIN_VALUE;
        }
        if (this.f1651c) {
            int iD = this.f1650b.d(i12);
            if (k(this.f1654f).f1647b == i10) {
                return iD;
            }
            int i13 = this.f1654f;
            do {
                i13++;
                if (i13 <= s()) {
                    r0VarK = k(i13);
                    iD += r0VarK.f1709c;
                }
            } while (r0VarK.f1647b != i10);
            return iD;
        }
        int iD2 = this.f1650b.d(this.f1655g);
        r0 r0VarK2 = k(this.f1655g);
        if (r0VarK2.f1647b == i10) {
            i11 = r0VarK2.f1710d;
        } else {
            int i14 = this.f1655g;
            do {
                i14--;
                if (i14 >= this.f1712k) {
                    iD2 -= r0VarK2.f1709c;
                    r0VarK2 = k(i14);
                }
            } while (r0VarK2.f1647b != i10);
            i11 = r0VarK2.f1710d;
        }
        return iD2 + i11;
        return Integer.MIN_VALUE;
    }

    public final int v(int i10) {
        r0 r0VarK;
        int i11;
        int i12 = this.f1654f;
        if (i12 < 0) {
            return Integer.MAX_VALUE;
        }
        if (!this.f1651c) {
            int iD = this.f1650b.d(i12);
            if (k(this.f1654f).f1647b == i10) {
                return iD;
            }
            int i13 = this.f1654f;
            do {
                i13++;
                if (i13 <= s()) {
                    r0VarK = k(i13);
                    iD += r0VarK.f1709c;
                }
            } while (r0VarK.f1647b != i10);
            return iD;
        }
        int iD2 = this.f1650b.d(this.f1655g);
        r0 r0VarK2 = k(this.f1655g);
        if (r0VarK2.f1647b == i10) {
            i11 = r0VarK2.f1710d;
        } else {
            int i14 = this.f1655g;
            do {
                i14--;
                if (i14 >= this.f1712k) {
                    iD2 -= r0VarK2.f1709c;
                    r0VarK2 = k(i14);
                }
            } while (r0VarK2.f1647b != i10);
            i11 = r0VarK2.f1710d;
        }
        return iD2 - i11;
        return Integer.MAX_VALUE;
    }

    public final boolean w(int i10, boolean z) {
        int i11;
        int iD;
        int i12;
        a0.g gVar = this.f1711j;
        if (gVar.g() == 0) {
            return false;
        }
        int i13 = this.f1654f;
        if (i13 < 0) {
            int i14 = this.f1657i;
            i11 = i14 != -1 ? i14 : 0;
            if (i11 <= s()) {
                int i15 = this.f1712k;
                if (i11 >= i15 - 1) {
                    if (i11 < i15) {
                        return false;
                    }
                    iD = Integer.MAX_VALUE;
                    i12 = 0;
                }
            }
            gVar.f(gVar.g());
            return false;
        }
        iD = this.f1650b.d(i13);
        i12 = k(this.f1654f).f1709c;
        i11 = this.f1654f - 1;
        int iMax = Math.max(this.f1650b.f1658a.f1691f, this.f1712k);
        while (i11 >= iMax) {
            r0 r0VarK = k(i11);
            int i16 = r0VarK.f1647b;
            k kVar = this.f1650b;
            Object[] objArr = this.f1649a;
            int iB = kVar.b(i11, false, objArr, false);
            if (iB != r0VarK.f1710d) {
                gVar.f((i11 + 1) - this.f1712k);
                this.f1712k = this.f1654f;
                this.l = objArr[0];
                this.f1713m = iB;
                return false;
            }
            this.f1654f = i11;
            if (this.f1655g < 0) {
                this.f1655g = i11;
            }
            this.f1650b.a(objArr[0], i11, iB, i16, iD - i12);
            if (!z && d(i10)) {
                return true;
            }
            iD = this.f1650b.d(i11);
            i12 = r0VarK.f1709c;
            if (i16 == 0 && z) {
                return true;
            }
            i11--;
        }
        return false;
    }

    public final int x(int i10, int i11, int i12) {
        int i13 = this.f1654f;
        if (i13 >= 0 && (i13 != this.f1712k || i13 != i10 + 1)) {
            throw new IllegalStateException();
        }
        int i14 = this.f1712k;
        r0 r0VarK = i14 >= 0 ? k(i14) : null;
        int iD = this.f1650b.d(this.f1712k);
        r0 r0Var = new r0(i11, 0);
        a0.g gVar = this.f1711j;
        int i15 = (gVar.f23a - 1) & gVar.f25c;
        gVar.f23a = i15;
        ((Object[]) gVar.f26d)[i15] = r0Var;
        if (i15 == gVar.f24b) {
            gVar.c();
        }
        Object obj = this.l;
        if (obj != null) {
            r0Var.f1710d = this.f1713m;
            this.l = null;
        } else {
            k kVar = this.f1650b;
            Object[] objArr = this.f1649a;
            r0Var.f1710d = kVar.b(i10, false, objArr, false);
            obj = objArr[0];
        }
        Object obj2 = obj;
        this.f1654f = i10;
        this.f1712k = i10;
        if (this.f1655g < 0) {
            this.f1655g = i10;
        }
        int i16 = !this.f1651c ? i12 - r0Var.f1710d : i12 + r0Var.f1710d;
        if (r0VarK != null) {
            r0VarK.f1709c = iD - i16;
        }
        this.f1650b.a(obj2, i10, r0Var.f1710d, i11, i16);
        return r0Var.f1710d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x012c, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x012d, code lost:
    
        r5 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0144, code lost:
    
        return r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00fd A[LOOP:2: B:86:0x00fd->B:102:0x0121, LOOP_START, PHI: r5 r8 r9
  0x00fd: PHI (r5v13 int) = (r5v6 int), (r5v19 int) binds: [B:85:0x00fb, B:102:0x0121] A[DONT_GENERATE, DONT_INLINE]
  0x00fd: PHI (r8v19 int) = (r8v17 int), (r8v20 int) binds: [B:85:0x00fb, B:102:0x0121] A[DONT_GENERATE, DONT_INLINE]
  0x00fd: PHI (r9v7 int) = (r9v6 int), (r9v9 int) binds: [B:85:0x00fb, B:102:0x0121] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean y(int i10, boolean z) {
        int i11;
        int i12;
        boolean z4;
        int iU;
        int i13;
        int i14;
        int i15 = this.f1654f;
        if (i15 < 0) {
            int i16 = this.f1657i;
            i11 = i16 != -1 ? i16 : 0;
            i12 = (this.f1711j.g() > 0 ? (k(this.f1712k).f1647b + this.f1653e) - 1 : i11) % this.f1653e;
            z4 = false;
            iU = 0;
        } else {
            if (i15 > this.f1712k) {
                return false;
            }
            i11 = i15 - 1;
            i12 = k(i15).f1647b;
            int iR = r(false);
            if (iR < 0) {
                i12--;
                iU = Integer.MAX_VALUE;
                for (int i17 = this.f1653e - 1; i17 >= 0; i17--) {
                    iU = this.f1651c ? u(i17) : v(i17);
                    if (iU != Integer.MAX_VALUE) {
                        break;
                    }
                }
            } else {
                iU = this.f1651c ? f(true, iR, null) : h(false, iR, null);
            }
            if (!this.f1651c ? v(i12) <= iU : u(i12) >= iU) {
                i12--;
                if (i12 < 0) {
                    i12 = this.f1653e - 1;
                    iU = this.f1651c ? g(true, null) : i(false, null);
                }
            }
            z4 = true;
        }
        boolean z10 = false;
        loop1: while (true) {
            if (i12 >= 0) {
                if (i11 < 0 || (!z && d(i10))) {
                    break;
                }
                int iU2 = this.f1651c ? u(i12) : v(i12);
                if (iU2 == Integer.MAX_VALUE || iU2 == Integer.MIN_VALUE) {
                    if (i12 == this.f1653e - 1) {
                        iU2 = this.f1651c ? u(0) : v(0);
                        if (iU2 != Integer.MAX_VALUE && iU2 != Integer.MIN_VALUE) {
                            if (this.f1651c) {
                                i14 = this.f1652d;
                                iU2 += i14;
                            } else {
                                i13 = this.f1652d;
                                i14 = -i13;
                                iU2 += i14;
                            }
                        }
                    } else {
                        iU2 = this.f1651c ? v(i12 + 1) : u(i12 + 1);
                    }
                    int i18 = i11 - 1;
                    int iX = x(i11, i12, iU2);
                    if (z4) {
                        while (true) {
                            if (!this.f1651c) {
                                if (iU2 - iX <= iU) {
                                    break;
                                }
                                if (i18 < 0) {
                                    break loop1;
                                }
                                break loop1;
                                break loop1;
                            }
                            if (iU2 + iX >= iU) {
                                break;
                            }
                            if (i18 < 0 || (!z && d(i10))) {
                                break loop1;
                            }
                            iU2 += this.f1651c ? iX + this.f1652d : (-iX) - this.f1652d;
                            int i19 = i18 - 1;
                            int iX2 = x(i18, i12, iU2);
                            i18 = i19;
                            iX = iX2;
                        }
                    } else {
                        iU = this.f1651c ? u(i12) : v(i12);
                        i11 = i18;
                        z4 = true;
                    }
                    i12--;
                    z10 = true;
                } else if (this.f1651c) {
                    i14 = this.f1652d;
                    iU2 += i14;
                    int i182 = i11 - 1;
                    int iX3 = x(i11, i12, iU2);
                    if (z4) {
                    }
                    i12--;
                    z10 = true;
                } else {
                    i13 = this.f1652d;
                    i14 = -i13;
                    iU2 += i14;
                    int i1822 = i11 - 1;
                    int iX32 = x(i11, i12, iU2);
                    if (z4) {
                    }
                    i12--;
                    z10 = true;
                }
            } else {
                if (z) {
                    return z10;
                }
                iU = this.f1651c ? g(true, null) : i(false, null);
                i12 = this.f1653e - 1;
            }
        }
    }
}
