package ha;

import android.os.Build;

/* loaded from: classes.dex */
public final /* synthetic */ class w2 implements ec.d, ea.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j3 f7994a;

    public /* synthetic */ w2(j3 j3Var) {
        this.f7994a = j3Var;
    }

    @Override // ea.f
    public void a(x9.w3 w3Var) {
        j3 j3Var = this.f7994a;
        j3Var.f7239h = w3Var;
        j3Var.f7240i.setText(w3Var.f18364a);
        if (Build.VERSION.SDK_INT >= 28 || j3Var.F.size() <= 2) {
            return;
        }
        if (j3Var.f7239h.f18365b.toLowerCase().endsWith(".pcm")) {
            j3Var.G.setVisibility(0);
        } else {
            j3Var.G.setVisibility(8);
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        j3 j3Var = this.f7994a;
        j3Var.getClass();
        try {
            g1.c(j3Var.f6725b, j3Var.E);
        } catch (Exception e7) {
            com.yunpan.appmanage.util.a0.u("报错：" + e7.getMessage());
        }
        bVar.b();
    }
}
