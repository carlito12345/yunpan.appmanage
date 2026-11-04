package ha;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class z4 implements c6.e, TvRecyclerView.OnInBorderKeyEventListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8134a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b5 f8135b;

    public /* synthetic */ z4(b5 b5Var, int i10) {
        this.f8134a = i10;
        this.f8135b = b5Var;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f8134a) {
            case 3:
                b5 b5Var = this.f8135b;
                if (i10 != 130) {
                    b5Var.getClass();
                    break;
                } else if (b5Var.f6789m.b() <= 0) {
                    b5Var.f6790n.requestFocus();
                    break;
                } else {
                    b5Var.l.requestFocus();
                    break;
                }
            default:
                b5 b5Var2 = this.f8135b;
                if (i10 != 130) {
                    b5Var2.getClass();
                    break;
                } else {
                    b5Var2.f6790n.requestFocus();
                    break;
                }
        }
        return false;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f8134a) {
            case 0:
                b5 b5Var = this.f8135b;
                b5Var.getClass();
                ArrayList arrayList = new ArrayList();
                x9.g2 g2Var = b5Var.f6786i;
                arrayList.add(new x9.w3(((x9.w3) g2Var.t(i10)).f18364a, ((x9.w3) g2Var.t(i10)).f18365b));
                b5Var.f6788k.E(arrayList);
                b5Var.a();
                break;
            case 1:
                b5 b5Var2 = this.f8135b;
                x9.g0 g0Var = b5Var2.f6788k;
                if (i10 != g0Var.b() - 1) {
                    for (int iB = g0Var.b() - 1; iB > i10; iB--) {
                        g0Var.C(iB);
                    }
                    b5Var2.a();
                    break;
                }
                break;
            default:
                b5 b5Var3 = this.f8135b;
                x9.e0 e0Var = b5Var3.f6789m;
                x9.w3 w3Var = (x9.w3) e0Var.t(i10);
                x9.g0 g0Var2 = b5Var3.f6788k;
                g0Var2.q(w3Var);
                b5Var3.f6797x.putString("lastDirPath", ((x9.w3) e0Var.t(i10)).f18365b);
                b5Var3.f6797x.putString("lastRootDirName", ((x9.w3) g0Var2.t(0)).f18364a);
                b5Var3.f6797x.putString("lastRootDirPath", ((x9.w3) g0Var2.t(0)).f18365b);
                b5Var3.f6797x.commit();
                b5Var3.a();
                break;
        }
    }
}
