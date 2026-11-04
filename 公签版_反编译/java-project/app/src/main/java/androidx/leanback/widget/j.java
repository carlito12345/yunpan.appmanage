package androidx.leanback.widget;

import androidx.recyclerview.widget.y1;

/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: b, reason: collision with root package name */
    public k f1650b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1651c;

    /* renamed from: d, reason: collision with root package name */
    public int f1652d;

    /* renamed from: e, reason: collision with root package name */
    public int f1653e;

    /* renamed from: h, reason: collision with root package name */
    public a0.h[] f1656h;

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f1649a = new Object[1];

    /* renamed from: f, reason: collision with root package name */
    public int f1654f = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f1655g = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f1657i = -1;

    public final boolean a() {
        return b(this.f1651c ? Integer.MAX_VALUE : Integer.MIN_VALUE, true);
    }

    public abstract boolean b(int i10, boolean z);

    public final boolean c(int i10) {
        if (this.f1655g < 0) {
            return false;
        }
        if (this.f1651c) {
            if (i(true, null) > i10 + this.f1652d) {
                return false;
            }
        } else if (g(false, null) < i10 - this.f1652d) {
            return false;
        }
        return true;
    }

    public final boolean d(int i10) {
        if (this.f1655g < 0) {
            return false;
        }
        if (this.f1651c) {
            if (g(false, null) < i10 - this.f1652d) {
                return false;
            }
        } else if (i(true, null) > i10 + this.f1652d) {
            return false;
        }
        return true;
    }

    public void e(int i10, int i11, y1 y1Var) {
    }

    public abstract int f(boolean z, int i10, int[] iArr);

    public final int g(boolean z, int[] iArr) {
        return f(z, this.f1651c ? this.f1654f : this.f1655g, iArr);
    }

    public abstract int h(boolean z, int i10, int[] iArr);

    public final int i(boolean z, int[] iArr) {
        return h(z, this.f1651c ? this.f1655g : this.f1654f, iArr);
    }

    public abstract a0.h[] j(int i10, int i11);

    public abstract i k(int i10);

    public void l(int i10) {
        int i11;
        if (i10 >= 0 && (i11 = this.f1655g) >= 0) {
            if (i11 >= i10) {
                this.f1655g = i10 - 1;
            }
            if (this.f1655g < this.f1654f) {
                this.f1655g = -1;
                this.f1654f = -1;
            }
            if (this.f1654f < 0) {
                this.f1657i = i10;
            }
        }
    }

    public abstract boolean m(int i10, boolean z);

    public final void n(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException();
        }
        if (this.f1653e == i10) {
            return;
        }
        this.f1653e = i10;
        this.f1656h = new a0.h[i10];
        for (int i11 = 0; i11 < this.f1653e; i11++) {
            this.f1656h[i11] = new a0.h(0);
        }
    }
}
