package x9;

import android.view.View;
import ha.ha;
import ua.g6;

/* loaded from: classes.dex */
public final class k0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18251a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l0 f18252b;

    public /* synthetic */ k0(l0 l0Var, int i10) {
        this.f18251a = i10;
        this.f18252b = l0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f18251a) {
            case 0:
                int iIntValue = ((Integer) view.getTag()).intValue();
                l0 l0Var = this.f18252b;
                l0Var.C(iIntValue);
                l0Var.f2188a.b();
                break;
            default:
                l0 l0Var2 = this.f18252b;
                new ha(l0Var2.f18266h, l0Var2.f18267i, null, l0Var2.f18268j, new g6(this, 12, view)).show();
                break;
        }
    }
}
