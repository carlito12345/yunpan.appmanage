package fa;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class j0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o0 f5706a;

    public j0(o0 o0Var) {
        this.f5706a = o0Var;
    }

    public final void a() {
        System.out.getClass();
        o0 o0Var = this.f5706a;
        o0Var.f5726a = true;
        try {
            if (hi.b.f() == 0) {
                o0.e();
                hi.b.e(o0Var.f5731f, o0Var.f5732g);
            } else {
                if (hi.b.l()) {
                    return;
                }
                try {
                    ((df.a) hi.b.j()).k();
                } catch (RemoteException e7) {
                    throw new RuntimeException(e7);
                }
            }
        } catch (Exception unused) {
        }
    }
}
