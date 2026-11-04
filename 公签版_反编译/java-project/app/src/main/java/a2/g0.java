package a2;

import android.os.Looper;
import android.view.View;
import com.google.android.material.sidesheet.SideSheetBehavior;
import ua.t6;

/* loaded from: classes.dex */
public final /* synthetic */ class g0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f171a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f172b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f173c;

    public /* synthetic */ g0(int i10, int i11, Object obj) {
        this.f171a = i11;
        this.f173c = obj;
        this.f172b = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f172b;
        Object obj = this.f173c;
        switch (this.f171a) {
            case 0:
                j0 j0Var = (j0) obj;
                j0Var.getClass();
                String str = u1.f0.f15206a;
                b5.i iVar = j0Var.f196c.f18808a.E;
                fa.d0 d0Var = new fa.d0(i10, 5);
                iVar.getClass();
                a9.o.t(Looper.myLooper() == ((u1.b0) iVar.f2573c).f15188a.getLooper());
                iVar.f2571a++;
                iVar.l(new s1.f(iVar, 3, d0Var));
                iVar.q(Integer.valueOf(i10));
                break;
            case 1:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj;
                View view = (View) sideSheetBehavior.f3636p.get();
                if (view != null) {
                    sideSheetBehavior.t(view, i10, false);
                    break;
                }
                break;
            case 2:
                ((o0.b) obj).h(i10);
                break;
            case 3:
                ((s1.d) obj).f13889b.onAudioFocusChange(i10);
                break;
            default:
                z1.e eVar = ((y1.f0) obj).f18675y;
                z1.a aVarI = eVar.I();
                eVar.N(aVarI, 1034, new t6(aVarI, i10, 16));
                break;
        }
    }
}
