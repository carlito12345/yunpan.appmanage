package i0;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8290a;

    /* renamed from: b, reason: collision with root package name */
    public int f8291b;

    /* renamed from: c, reason: collision with root package name */
    public int f8292c;

    /* renamed from: d, reason: collision with root package name */
    public int f8293d;

    /* renamed from: e, reason: collision with root package name */
    public int f8294e;

    /* renamed from: f, reason: collision with root package name */
    public int f8295f;

    /* renamed from: g, reason: collision with root package name */
    public int f8296g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ConstraintLayout f8297h;

    public f(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.f8297h = constraintLayout;
        this.f8290a = constraintLayout2;
    }

    public static boolean a(int i10, int i11, int i12) {
        if (i10 == i11) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(i10);
        View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode2 == 1073741824) {
            return (mode == Integer.MIN_VALUE || mode == 0) && i12 == size;
        }
        return false;
    }

    public final void b(f0.d dVar, g0.b bVar) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        int iMax;
        int i10;
        int iMakeMeasureSpec3;
        boolean z;
        int measuredWidth;
        int baseline;
        int i11;
        if (dVar == null) {
            return;
        }
        if (dVar.f5088g0 == 8) {
            bVar.f5932e = 0;
            bVar.f5933f = 0;
            bVar.f5934g = 0;
            return;
        }
        if (dVar.T == null) {
            return;
        }
        int i12 = bVar.f5928a;
        int i13 = bVar.f5929b;
        int i14 = bVar.f5930c;
        int i15 = bVar.f5931d;
        int i16 = this.f8291b + this.f8292c;
        int i17 = this.f8293d;
        View view = dVar.f5086f0;
        int iC = d0.f.c(i12);
        f0.c cVar = dVar.K;
        f0.c cVar2 = dVar.I;
        if (iC == 0) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
        } else if (iC == 1) {
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f8295f, i17, -2);
        } else if (iC == 2) {
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f8295f, i17, -2);
            boolean z4 = dVar.r == 1;
            int i18 = bVar.f5937j;
            if (i18 == 1 || i18 == 2) {
                boolean z10 = view.getMeasuredHeight() == dVar.k();
                if (bVar.f5937j == 2 || !z4 || ((z4 && z10) || dVar.A())) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(dVar.q(), 1073741824);
                }
            }
        } else if (iC != 3) {
            iMakeMeasureSpec = 0;
        } else {
            int i19 = this.f8295f;
            int i20 = cVar2 != null ? cVar2.f5072g : 0;
            if (cVar != null) {
                i20 += cVar.f5072g;
            }
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(i19, i17 + i20, -1);
        }
        int iC2 = d0.f.c(i13);
        if (iC2 == 0) {
            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i15, 1073741824);
        } else if (iC2 == 1) {
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f8296g, i16, -2);
        } else if (iC2 == 2) {
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f8296g, i16, -2);
            boolean z11 = dVar.f5107s == 1;
            int i21 = bVar.f5937j;
            if (i21 == 1 || i21 == 2) {
                boolean z12 = view.getMeasuredWidth() == dVar.q();
                if (bVar.f5937j == 2 || !z11 || ((z11 && z12) || dVar.B())) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(dVar.k(), 1073741824);
                }
            }
        } else if (iC2 != 3) {
            iMakeMeasureSpec2 = 0;
        } else {
            int i22 = this.f8296g;
            int i23 = cVar2 != null ? dVar.J.f5072g : 0;
            if (cVar != null) {
                i23 += dVar.L.f5072g;
            }
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i22, i16 + i23, -1);
        }
        f0.e eVar = (f0.e) dVar.T;
        ConstraintLayout constraintLayout = this.f8297h;
        if (eVar != null && f0.j.c(constraintLayout.f1024i, 256) && view.getMeasuredWidth() == dVar.q() && view.getMeasuredWidth() < eVar.q() && view.getMeasuredHeight() == dVar.k() && view.getMeasuredHeight() < eVar.k() && view.getBaseline() == dVar.f5076a0 && !dVar.z() && a(dVar.G, iMakeMeasureSpec, dVar.q()) && a(dVar.H, iMakeMeasureSpec2, dVar.k())) {
            bVar.f5932e = dVar.q();
            bVar.f5933f = dVar.k();
            bVar.f5934g = dVar.f5076a0;
            return;
        }
        boolean z13 = i12 == 3;
        boolean z14 = i13 == 3;
        boolean z15 = i13 == 4 || i13 == 1;
        boolean z16 = i12 == 4 || i12 == 1;
        boolean z17 = z13 && dVar.W > 0.0f;
        boolean z18 = z14 && dVar.W > 0.0f;
        if (view == null) {
            return;
        }
        e eVar2 = (e) view.getLayoutParams();
        int i24 = bVar.f5937j;
        if (i24 != 1 && i24 != 2 && z13 && dVar.r == 0 && z14 && dVar.f5107s == 0) {
            z = false;
            measuredWidth = 0;
            i11 = -1;
            baseline = 0;
            iMax = 0;
        } else {
            if ((view instanceof s) && (dVar instanceof f0.g)) {
                ((s) view).j((f0.g) dVar, iMakeMeasureSpec, iMakeMeasureSpec2);
            } else {
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            }
            dVar.G = iMakeMeasureSpec;
            dVar.H = iMakeMeasureSpec2;
            dVar.f5087g = false;
            int measuredWidth2 = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int baseline2 = view.getBaseline();
            int i25 = dVar.f5109u;
            int iMax2 = i25 > 0 ? Math.max(i25, measuredWidth2) : measuredWidth2;
            int i26 = dVar.f5110v;
            if (i26 > 0) {
                iMax2 = Math.min(i26, iMax2);
            }
            int i27 = dVar.f5112x;
            iMax = i27 > 0 ? Math.max(i27, measuredHeight) : measuredHeight;
            int i28 = iMakeMeasureSpec;
            int i29 = dVar.f5113y;
            if (i29 > 0) {
                iMax = Math.min(i29, iMax);
            }
            if (!f0.j.c(constraintLayout.f1024i, 1)) {
                if (z17 && z15) {
                    iMax2 = (int) ((iMax * dVar.W) + 0.5f);
                } else if (z18 && z16) {
                    iMax = (int) ((iMax2 / dVar.W) + 0.5f);
                }
            }
            if (measuredWidth2 == iMax2 && measuredHeight == iMax) {
                baseline = baseline2;
                measuredWidth = iMax2;
                z = false;
            } else {
                if (measuredWidth2 != iMax2) {
                    i10 = 1073741824;
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(iMax2, 1073741824);
                } else {
                    i10 = 1073741824;
                    iMakeMeasureSpec3 = i28;
                }
                if (measuredHeight != iMax) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax, i10);
                }
                view.measure(iMakeMeasureSpec3, iMakeMeasureSpec2);
                dVar.G = iMakeMeasureSpec3;
                dVar.H = iMakeMeasureSpec2;
                z = false;
                dVar.f5087g = false;
                measuredWidth = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                iMax = measuredHeight2;
            }
            i11 = -1;
        }
        boolean z19 = baseline != i11;
        if (measuredWidth != bVar.f5930c || iMax != bVar.f5931d) {
            z = true;
        }
        bVar.f5936i = z;
        boolean z20 = eVar2.f8256c0 ? true : z19;
        if (z20 && baseline != -1 && dVar.f5076a0 != baseline) {
            bVar.f5936i = true;
        }
        bVar.f5932e = measuredWidth;
        bVar.f5933f = iMax;
        bVar.f5935h = z20;
        bVar.f5934g = baseline;
    }
}
