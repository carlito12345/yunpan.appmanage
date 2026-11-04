package n7;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes.dex */
public final class a extends nh.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11307b;

    /* renamed from: c, reason: collision with root package name */
    public final SideSheetBehavior f11308c;

    public /* synthetic */ a(SideSheetBehavior sideSheetBehavior, int i10) {
        this.f11307b = i10;
        this.f11308c = sideSheetBehavior;
    }

    @Override // nh.b
    public final int B() {
        switch (this.f11307b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f11308c;
                return Math.max(0, sideSheetBehavior.f3634n + sideSheetBehavior.f3635o);
            default:
                SideSheetBehavior sideSheetBehavior2 = this.f11308c;
                return Math.max(0, (sideSheetBehavior2.f3633m - sideSheetBehavior2.l) - sideSheetBehavior2.f3635o);
        }
    }

    @Override // nh.b
    public final int C() {
        switch (this.f11307b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f11308c;
                return (-sideSheetBehavior.l) - sideSheetBehavior.f3635o;
            default:
                return this.f11308c.f3633m;
        }
    }

    @Override // nh.b
    public final int F() {
        switch (this.f11307b) {
            case 0:
                return this.f11308c.f3635o;
            default:
                return this.f11308c.f3633m;
        }
    }

    @Override // nh.b
    public final int G() {
        switch (this.f11307b) {
            case 0:
                return -this.f11308c.l;
            default:
                return B();
        }
    }

    @Override // nh.b
    public final int H(View view) {
        switch (this.f11307b) {
            case 0:
                return view.getRight() + this.f11308c.f3635o;
            default:
                return view.getLeft() - this.f11308c.f3635o;
        }
    }

    @Override // nh.b
    public final int I(CoordinatorLayout coordinatorLayout) {
        switch (this.f11307b) {
            case 0:
                return coordinatorLayout.getLeft();
            default:
                return coordinatorLayout.getRight();
        }
    }

    @Override // nh.b
    public final int J() {
        switch (this.f11307b) {
            case 0:
                return 1;
            default:
                return 0;
        }
    }

    @Override // nh.b
    public final boolean Q(float f10) {
        switch (this.f11307b) {
            case 0:
                if (f10 > 0.0f) {
                }
                break;
            default:
                if (f10 < 0.0f) {
                }
                break;
        }
        return false;
    }

    @Override // nh.b
    public final boolean S(View view) {
        switch (this.f11307b) {
            case 0:
                if (view.getRight() < (B() - C()) / 2) {
                }
                break;
            default:
                if (view.getLeft() > (B() + this.f11308c.f3633m) / 2) {
                }
                break;
        }
        return false;
    }

    @Override // nh.b
    public final boolean U(float f10, float f11) {
        switch (this.f11307b) {
            case 0:
                if (Math.abs(f10) > Math.abs(f11)) {
                    float fAbs = Math.abs(f10);
                    this.f11308c.getClass();
                    if (fAbs > 500) {
                    }
                }
                break;
            default:
                if (Math.abs(f10) > Math.abs(f11)) {
                    float fAbs2 = Math.abs(f10);
                    this.f11308c.getClass();
                    if (fAbs2 > 500) {
                    }
                }
                break;
        }
        return false;
    }

    @Override // nh.b
    public final int g(ViewGroup.MarginLayoutParams marginLayoutParams) {
        switch (this.f11307b) {
            case 0:
                return marginLayoutParams.leftMargin;
            default:
                return marginLayoutParams.rightMargin;
        }
    }

    @Override // nh.b
    public final float h(int i10) {
        switch (this.f11307b) {
            case 0:
                float fC = C();
                return (i10 - fC) / (B() - fC);
            default:
                float f10 = this.f11308c.f3633m;
                return (f10 - i10) / (f10 - B());
        }
    }

    @Override // nh.b
    public final boolean n0(View view, float f10) {
        switch (this.f11307b) {
            case 0:
                float left = view.getLeft();
                SideSheetBehavior sideSheetBehavior = this.f11308c;
                float fAbs = Math.abs((f10 * sideSheetBehavior.f3632k) + left);
                sideSheetBehavior.getClass();
                if (fAbs > 0.5f) {
                }
                break;
            default:
                float right = view.getRight();
                SideSheetBehavior sideSheetBehavior2 = this.f11308c;
                float fAbs2 = Math.abs((f10 * sideSheetBehavior2.f3632k) + right);
                sideSheetBehavior2.getClass();
                if (fAbs2 > 0.5f) {
                }
                break;
        }
        return false;
    }

    @Override // nh.b
    public final void q0(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11) {
        switch (this.f11307b) {
            case 0:
                if (i10 <= this.f11308c.f3633m) {
                    marginLayoutParams.leftMargin = i11;
                    break;
                }
                break;
            default:
                int i12 = this.f11308c.f3633m;
                if (i10 <= i12) {
                    marginLayoutParams.rightMargin = i12 - i10;
                    break;
                }
                break;
        }
    }
}
