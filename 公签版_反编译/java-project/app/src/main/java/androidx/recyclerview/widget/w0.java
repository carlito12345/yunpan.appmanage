package androidx.recyclerview.widget;

import android.view.View;

/* loaded from: classes.dex */
public final class w0 {

    /* renamed from: a, reason: collision with root package name */
    public f1 f2335a;

    /* renamed from: b, reason: collision with root package name */
    public int f2336b;

    /* renamed from: c, reason: collision with root package name */
    public int f2337c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2338d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2339e;

    public w0() {
        d();
    }

    public final void a() {
        this.f2337c = this.f2338d ? this.f2335a.g() : this.f2335a.k();
    }

    public final void b(int i10, View view) {
        if (this.f2338d) {
            this.f2337c = this.f2335a.m() + this.f2335a.b(view);
        } else {
            this.f2337c = this.f2335a.e(view);
        }
        this.f2336b = i10;
    }

    public final void c(int i10, View view) {
        int iM = this.f2335a.m();
        if (iM >= 0) {
            b(i10, view);
            return;
        }
        this.f2336b = i10;
        if (!this.f2338d) {
            int iE = this.f2335a.e(view);
            int iK = iE - this.f2335a.k();
            this.f2337c = iE;
            if (iK > 0) {
                int iG = (this.f2335a.g() - Math.min(0, (this.f2335a.g() - iM) - this.f2335a.b(view))) - (this.f2335a.c(view) + iE);
                if (iG < 0) {
                    this.f2337c -= Math.min(iK, -iG);
                    return;
                }
                return;
            }
            return;
        }
        int iG2 = (this.f2335a.g() - iM) - this.f2335a.b(view);
        this.f2337c = this.f2335a.g() - iG2;
        if (iG2 > 0) {
            int iC = this.f2337c - this.f2335a.c(view);
            int iK2 = this.f2335a.k();
            int iMin = iC - (Math.min(this.f2335a.e(view) - iK2, 0) + iK2);
            if (iMin < 0) {
                this.f2337c = Math.min(iG2, -iMin) + this.f2337c;
            }
        }
    }

    public final void d() {
        this.f2336b = -1;
        this.f2337c = Integer.MIN_VALUE;
        this.f2338d = false;
        this.f2339e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.f2336b + ", mCoordinate=" + this.f2337c + ", mLayoutFromEnd=" + this.f2338d + ", mValid=" + this.f2339e + '}';
    }
}
