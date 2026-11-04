package androidx.recyclerview.widget;

import android.view.View;

/* loaded from: classes.dex */
public final class f3 {

    /* renamed from: a, reason: collision with root package name */
    public final e3 f2117a;

    /* renamed from: b, reason: collision with root package name */
    public final d3 f2118b = new d3();

    public f3(e3 e3Var) {
        this.f2117a = e3Var;
    }

    public final View a(int i10, int i11, int i12, int i13) {
        e3 e3Var = this.f2117a;
        int iB = e3Var.b();
        int iC = e3Var.c();
        int i14 = i11 > i10 ? 1 : -1;
        View view = null;
        while (i10 != i11) {
            View viewD = e3Var.d(i10);
            int iA = e3Var.a(viewD);
            int iE = e3Var.e(viewD);
            d3 d3Var = this.f2118b;
            d3Var.f2085b = iB;
            d3Var.f2086c = iC;
            d3Var.f2087d = iA;
            d3Var.f2088e = iE;
            if (i12 != 0) {
                d3Var.f2084a = i12;
                if (d3Var.a()) {
                    return viewD;
                }
            }
            if (i13 != 0) {
                d3Var.f2084a = i13;
                if (d3Var.a()) {
                    view = viewD;
                }
            }
            i10 += i14;
        }
        return view;
    }

    public final boolean b(View view) {
        e3 e3Var = this.f2117a;
        int iB = e3Var.b();
        int iC = e3Var.c();
        int iA = e3Var.a(view);
        int iE = e3Var.e(view);
        d3 d3Var = this.f2118b;
        d3Var.f2085b = iB;
        d3Var.f2086c = iC;
        d3Var.f2087d = iA;
        d3Var.f2088e = iE;
        d3Var.f2084a = 24579;
        return d3Var.a();
    }
}
