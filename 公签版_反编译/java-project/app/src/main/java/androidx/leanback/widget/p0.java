package androidx.leanback.widget;

import androidx.recyclerview.widget.y1;

/* loaded from: classes.dex */
public final class p0 extends j {

    /* renamed from: j, reason: collision with root package name */
    public final i f1678j = new i(0, 0);

    public p0() {
        n(1);
    }

    @Override // androidx.leanback.widget.j
    public final boolean b(int i10, boolean z) {
        int iMin;
        int iE;
        if (this.f1650b.c() == 0) {
            return false;
        }
        if (!z && c(i10)) {
            return false;
        }
        int i11 = this.f1655g;
        if (i11 >= 0) {
            iMin = i11 + 1;
        } else {
            int i12 = this.f1657i;
            iMin = i12 != -1 ? Math.min(i12, this.f1650b.c() - 1) : 0;
        }
        boolean z4 = false;
        while (iMin < this.f1650b.c()) {
            k kVar = this.f1650b;
            Object[] objArr = this.f1649a;
            int iB = kVar.b(iMin, true, objArr, false);
            if (this.f1654f < 0 || this.f1655g < 0) {
                iE = this.f1651c ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                this.f1654f = iMin;
                this.f1655g = iMin;
            } else {
                if (this.f1651c) {
                    int i13 = iMin - 1;
                    iE = (this.f1650b.d(i13) - this.f1650b.e(i13)) - this.f1652d;
                } else {
                    int i14 = iMin - 1;
                    iE = this.f1652d + this.f1650b.e(i14) + this.f1650b.d(i14);
                }
                this.f1655g = iMin;
            }
            this.f1650b.a(objArr[0], iMin, iB, 0, iE);
            if (z || c(i10)) {
                return true;
            }
            iMin++;
            z4 = true;
        }
        return z4;
    }

    @Override // androidx.leanback.widget.j
    public final void e(int i10, int i11, y1 y1Var) {
        int iO;
        int iD;
        if (!this.f1651c ? i11 < 0 : i11 > 0) {
            if (this.f1655g == this.f1650b.c() - 1) {
                return;
            }
            int i12 = this.f1655g;
            if (i12 >= 0) {
                iO = i12 + 1;
            } else {
                int i13 = this.f1657i;
                iO = i13 != -1 ? Math.min(i13, this.f1650b.c() - 1) : 0;
            }
            int iE = this.f1650b.e(this.f1655g) + this.f1652d;
            int iD2 = this.f1650b.d(this.f1655g);
            if (this.f1651c) {
                iE = -iE;
            }
            iD = iE + iD2;
        } else {
            if (this.f1654f == 0) {
                return;
            }
            iO = o();
            iD = this.f1650b.d(this.f1654f) + (this.f1651c ? this.f1652d : -this.f1652d);
        }
        ((androidx.recyclerview.widget.e0) y1Var).a(iO, Math.abs(iD - i10));
    }

    @Override // androidx.leanback.widget.j
    public final int f(boolean z, int i10, int[] iArr) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i10;
        }
        return this.f1651c ? this.f1650b.d(i10) : this.f1650b.d(i10) + this.f1650b.e(i10);
    }

    @Override // androidx.leanback.widget.j
    public final int h(boolean z, int i10, int[] iArr) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i10;
        }
        return this.f1651c ? this.f1650b.d(i10) - this.f1650b.e(i10) : this.f1650b.d(i10);
    }

    @Override // androidx.leanback.widget.j
    public final a0.h[] j(int i10, int i11) {
        a0.h hVar = this.f1656h[0];
        hVar.f28b = 0;
        hVar.f(i10);
        this.f1656h[0].f(i11);
        return this.f1656h;
    }

    @Override // androidx.leanback.widget.j
    public final i k(int i10) {
        return this.f1678j;
    }

    @Override // androidx.leanback.widget.j
    public final boolean m(int i10, boolean z) {
        int iD;
        if (this.f1650b.c() == 0) {
            return false;
        }
        if (!z && d(i10)) {
            return false;
        }
        int i11 = this.f1650b.f1658a.f1691f;
        boolean z4 = false;
        for (int iO = o(); iO >= i11; iO--) {
            k kVar = this.f1650b;
            Object[] objArr = this.f1649a;
            int iB = kVar.b(iO, false, objArr, false);
            if (this.f1654f < 0 || this.f1655g < 0) {
                iD = this.f1651c ? Integer.MIN_VALUE : Integer.MAX_VALUE;
                this.f1654f = iO;
                this.f1655g = iO;
            } else {
                iD = this.f1651c ? this.f1650b.d(iO + 1) + this.f1652d + iB : (this.f1650b.d(iO + 1) - this.f1652d) - iB;
                this.f1654f = iO;
            }
            this.f1650b.a(objArr[0], iO, iB, 0, iD);
            z4 = true;
            if (z || d(i10)) {
                break;
            }
        }
        return z4;
    }

    public final int o() {
        int i10 = this.f1654f;
        if (i10 >= 0) {
            return i10 - 1;
        }
        int i11 = this.f1657i;
        return i11 != -1 ? Math.min(i11, this.f1650b.c() - 1) : this.f1650b.c() - 1;
    }
}
