package q;

import android.view.View;
import android.widget.PopupWindow;
import x0.b1;

/* loaded from: classes.dex */
public final class q extends com.bumptech.glide.d {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f12891e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f12892f;

    public /* synthetic */ q(int i10, Object obj) {
        this.f12891e = i10;
        this.f12892f = obj;
    }

    @Override // com.bumptech.glide.d, x0.m1
    public void b() {
        switch (this.f12891e) {
            case 0:
                ((o) this.f12892f).f12888b.f12777x.setVisibility(0);
                break;
            case 1:
                a0 a0Var = (a0) this.f12892f;
                a0Var.f12777x.setVisibility(0);
                if (a0Var.f12777x.getParent() instanceof View) {
                    b1.v((View) a0Var.f12777x.getParent());
                    break;
                }
                break;
        }
    }

    @Override // x0.m1
    public final void c() {
        switch (this.f12891e) {
            case 0:
                o oVar = (o) this.f12892f;
                oVar.f12888b.f12777x.setAlpha(1.0f);
                a0 a0Var = oVar.f12888b;
                a0Var.A.d(null);
                a0Var.A = null;
                break;
            case 1:
                a0 a0Var2 = (a0) this.f12892f;
                a0Var2.f12777x.setAlpha(1.0f);
                a0Var2.A.d(null);
                a0Var2.A = null;
                break;
            default:
                kf.d dVar = (kf.d) this.f12892f;
                ((a0) dVar.f10287c).f12777x.setVisibility(8);
                a0 a0Var3 = (a0) dVar.f10287c;
                PopupWindow popupWindow = a0Var3.f12778y;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (a0Var3.f12777x.getParent() instanceof View) {
                    b1.v((View) a0Var3.f12777x.getParent());
                }
                a0Var3.f12777x.e();
                a0Var3.A.d(null);
                a0Var3.A = null;
                b1.v(a0Var3.C);
                break;
        }
    }
}
