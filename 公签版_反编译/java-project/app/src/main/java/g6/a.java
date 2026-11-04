package g6;

import androidx.recyclerview.widget.j0;
import androidx.recyclerview.widget.m1;
import c6.g;
import com.chad.library.adapter4.layoutmanager.QuickGridLayoutManager;

/* loaded from: classes.dex */
public final class a extends j0 {

    /* renamed from: c, reason: collision with root package name */
    public j0 f6055c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ QuickGridLayoutManager f6056d;

    public a(QuickGridLayoutManager quickGridLayoutManager) {
        this.f6056d = quickGridLayoutManager;
    }

    @Override // androidx.recyclerview.widget.j0
    public final int c(int i10) {
        QuickGridLayoutManager quickGridLayoutManager = this.f6056d;
        m1 m1Var = quickGridLayoutManager.f3433b;
        if (m1Var == null) {
            return 1;
        }
        if (m1Var instanceof f6.a) {
            return quickGridLayoutManager.getSpanCount();
        }
        if (!(m1Var instanceof g)) {
            j0 j0Var = this.f6055c;
            if (j0Var != null) {
                return j0Var.c(i10);
            }
            return 1;
        }
        g gVar = (g) m1Var;
        if (gVar.x(gVar.d(i10))) {
            return quickGridLayoutManager.getSpanCount();
        }
        j0 j0Var2 = this.f6055c;
        if (j0Var2 != null) {
            return j0Var2.c(i10);
        }
        return 1;
    }
}
