package ua;

import ha.wd;
import java.io.File;
import java.io.PrintStream;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class h8 implements wd, ec.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q8 f15720a;

    public /* synthetic */ h8(q8 q8Var) {
        this.f15720a = q8Var;
    }

    @Override // ec.e
    public void B(Throwable th2) {
        this.f15720a.f15908g.a();
        PrintStream printStream = System.out;
        th2.getMessage();
        printStream.getClass();
    }

    @Override // ha.wd
    public void D() {
        this.f15720a.f15908g.c("清理中");
        w.r3 r3Var = new w.r3();
        File file = new File(fa.g0.f5682a.d());
        r3Var.f17242a = new g5(14, this);
        ((ExecutorService) r3Var.f17244c).execute(new a2.c0(r3Var, 14, file));
    }

    @Override // ec.e
    public void E(Object obj) {
        x9.w3 w3Var = (x9.w3) obj;
        PrintStream printStream = System.out;
        int i10 = w3Var.f18374k;
        printStream.getClass();
        this.f15720a.f15914n.D(w3Var.f18374k, w3Var);
    }

    @Override // ec.e
    public void b(gc.b bVar) {
        System.out.getClass();
    }

    @Override // ec.e
    public void onComplete() {
        this.f15720a.f15908g.a();
        System.out.getClass();
    }

    @Override // ha.wd
    public void t() {
    }
}
