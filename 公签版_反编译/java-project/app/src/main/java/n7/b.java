package n7;

import a9.o;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import l2.z;

/* loaded from: classes.dex */
public final class b extends o {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11309b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k0.a f11310c;

    public /* synthetic */ b(k0.a aVar, int i10) {
        this.f11309b = i10;
        this.f11310c = aVar;
    }

    @Override // a9.o
    public int O(View view) {
        switch (this.f11309b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f11310c;
                return sideSheetBehavior.l + sideSheetBehavior.f3635o;
            default:
                return super.O(view);
        }
    }

    @Override // a9.o
    public int P() {
        switch (this.f11309b) {
            case 1:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f11310c;
                return bottomSheetBehavior.I ? bottomSheetBehavior.T : bottomSheetBehavior.G;
            default:
                return super.P();
        }
    }

    @Override // a9.o
    public final void V(int i10) {
        switch (this.f11309b) {
            case 0:
                if (i10 == 1) {
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f11310c;
                    if (sideSheetBehavior.f3628g) {
                        sideSheetBehavior.r(1);
                        break;
                    }
                }
                break;
            default:
                if (i10 == 1) {
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f11310c;
                    if (bottomSheetBehavior.K) {
                        bottomSheetBehavior.C(1);
                        break;
                    }
                }
                break;
        }
    }

    @Override // a9.o
    public final void W(View view, int i10, int i11) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        switch (this.f11309b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f11310c;
                WeakReference weakReference = sideSheetBehavior.f3637q;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                    sideSheetBehavior.f3622a.q0(marginLayoutParams, view.getLeft(), view.getRight());
                    view2.setLayoutParams(marginLayoutParams);
                }
                LinkedHashSet linkedHashSet = sideSheetBehavior.f3640u;
                if (linkedHashSet.isEmpty()) {
                    return;
                }
                sideSheetBehavior.f3622a.h(i10);
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw z.d(it);
                }
                return;
            default:
                ((BottomSheetBehavior) this.f11310c).u(i11);
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    @Override // a9.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void X(View view, float f10, float f11) {
        switch (this.f11309b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f11310c;
                int i10 = 3;
                if (!sideSheetBehavior.f3622a.Q(f10)) {
                    if (sideSheetBehavior.f3622a.n0(view, f10)) {
                        if (sideSheetBehavior.f3622a.U(f10, f11) || sideSheetBehavior.f3622a.S(view)) {
                            i10 = 5;
                        }
                    } else if (f10 == 0.0f || Math.abs(f10) <= Math.abs(f11)) {
                        int left = view.getLeft();
                        if (Math.abs(left - sideSheetBehavior.f3622a.B()) >= Math.abs(left - sideSheetBehavior.f3622a.C())) {
                        }
                    }
                }
                sideSheetBehavior.t(view, i10, true);
                break;
            default:
                int i11 = 6;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f11310c;
                if (f11 < 0.0f) {
                    if (bottomSheetBehavior.f3463b) {
                        i11 = 3;
                    } else {
                        int top = view.getTop();
                        System.currentTimeMillis();
                        bottomSheetBehavior.getClass();
                        if (top <= bottomSheetBehavior.E) {
                        }
                    }
                } else if (bottomSheetBehavior.I && bottomSheetBehavior.D(view, f11)) {
                    if (Math.abs(f10) >= Math.abs(f11) || f11 <= bottomSheetBehavior.f3467d) {
                        if (view.getTop() > (bottomSheetBehavior.x() + bottomSheetBehavior.T) / 2) {
                            i11 = 5;
                        } else if (bottomSheetBehavior.f3463b || Math.abs(view.getTop() - bottomSheetBehavior.x()) < Math.abs(view.getTop() - bottomSheetBehavior.E)) {
                        }
                    }
                } else if (f11 == 0.0f || Math.abs(f10) > Math.abs(f11)) {
                    int top2 = view.getTop();
                    if (!bottomSheetBehavior.f3463b) {
                        int i12 = bottomSheetBehavior.E;
                        if (top2 < i12) {
                            if (top2 >= Math.abs(top2 - bottomSheetBehavior.G)) {
                                bottomSheetBehavior.getClass();
                            }
                        } else if (Math.abs(top2 - i12) < Math.abs(top2 - bottomSheetBehavior.G)) {
                            bottomSheetBehavior.getClass();
                        }
                    } else if (Math.abs(top2 - bottomSheetBehavior.D) >= Math.abs(top2 - bottomSheetBehavior.G)) {
                        i11 = 4;
                    }
                } else if (!bottomSheetBehavior.f3463b) {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - bottomSheetBehavior.E) < Math.abs(top3 - bottomSheetBehavior.G)) {
                        bottomSheetBehavior.getClass();
                    }
                }
                bottomSheetBehavior.getClass();
                bottomSheetBehavior.E(view, i11, true);
                break;
        }
    }

    @Override // a9.o
    public final boolean c0(int i10, View view) {
        WeakReference weakReference;
        switch (this.f11309b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f11310c;
                if (sideSheetBehavior.f3629h != 1 && (weakReference = sideSheetBehavior.f3636p) != null && weakReference.get() == view) {
                }
                break;
            default:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f11310c;
                int i11 = bottomSheetBehavior.L;
                if (i11 != 1 && !bottomSheetBehavior.f3462a0) {
                    if (i11 == 3 && bottomSheetBehavior.Y == i10) {
                        WeakReference weakReference2 = bottomSheetBehavior.V;
                        View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
                        if (view2 != null && view2.canScrollVertically(-1)) {
                        }
                    }
                    System.currentTimeMillis();
                    WeakReference weakReference3 = bottomSheetBehavior.U;
                    if (weakReference3 == null || weakReference3.get() != view) {
                    }
                }
                break;
        }
        return false;
    }

    @Override // a9.o
    public final int v(int i10, View view) {
        switch (this.f11309b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f11310c;
                return o.u(i10, sideSheetBehavior.f3622a.G(), sideSheetBehavior.f3622a.F());
            default:
                return view.getLeft();
        }
    }

    @Override // a9.o
    public final int w(int i10, View view) {
        switch (this.f11309b) {
            case 0:
                return view.getTop();
            default:
                return o.u(i10, ((BottomSheetBehavior) this.f11310c).x(), P());
        }
    }
}
