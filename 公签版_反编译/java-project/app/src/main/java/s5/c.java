package s5;

import a2.w0;
import com.yunpan.appmanage.util.a0;
import f5.l;
import fa.b0;
import fa.z;
import ha.wd;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import sh.p;
import v.w;
import wh.k;
import wh.n;
import wh.o;

/* loaded from: classes.dex */
public class c implements l, wd, z, o, w, y3.b, tf.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14427a;

    public /* synthetic */ c(int i10) {
        this.f14427a = i10;
    }

    @Override // ha.wd
    public void D() {
        switch (this.f14427a) {
            case 2:
                b0.f5652a.getClass();
                w0.d0();
                break;
            case 5:
                b0.f5652a.getClass();
                w0.d0();
                break;
            case 6:
                u9.d.r("am force-stop ecarx.settings").e0(null);
                a0.w("已执行");
                break;
            case 7:
                b0.f5652a.getClass();
                w0.d0();
                break;
            case 8:
                b0.f5652a.getClass();
                w0.d0();
                break;
            case 14:
                b0.f5652a.getClass();
                w0.d0();
                break;
            case 15:
                b0.f5652a.getClass();
                w0.d0();
                break;
        }
    }

    @Override // wh.o
    public Object b(k kVar) {
        switch (this.f14427a) {
            case 17:
                sh.o oVar = (sh.o) kVar.c(n.f17926a);
                if (oVar == null || (oVar instanceof p)) {
                    return null;
                }
                return oVar;
            case 18:
            default:
                wh.a aVar = wh.a.EPOCH_DAY;
                if (kVar.d(aVar)) {
                    return sh.e.w(kVar.b(aVar));
                }
                return null;
            case 19:
                return (th.d) kVar.c(this);
            case 20:
                sh.o oVar2 = (sh.o) kVar.c(n.f17926a);
                return oVar2 != null ? oVar2 : (sh.o) kVar.c(n.f17930e);
        }
    }

    @Override // v.w
    public boolean d(v.k kVar) {
        return false;
    }

    @Override // fa.z
    public void e(fa.a0 a0Var) {
        if (a0Var.f5648a != 0) {
            a0.t("取消失败");
        } else {
            a0.w("取消成功");
        }
    }

    @Override // f5.l
    public int f(f5.i iVar) {
        return 1;
    }

    @Override // f5.c
    public boolean g(Object obj, File file, f5.i iVar) throws Throwable {
        try {
            a6.c.d(((g) ((b) ((h5.z) obj).get()).f14417a.f8530b).f14436a.f4800d.asReadOnlyBuffer(), file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // ha.wd
    public void t() {
        int i10 = this.f14427a;
    }

    public c() {
        this.f14427a = 25;
        eb.c cVar = new eb.c(false);
        cVar.setTextSize(10);
        cVar.setColor(-1);
        cVar.setAntiAlias(true);
        new u1.p(4);
    }

    public c(String str) {
        this.f14427a = 1;
    }

    private final void A() {
    }

    private final void B() {
    }

    private final void C() {
    }

    private final void E() {
    }

    private final void h() {
    }

    private final void i() {
    }

    private final void j() {
    }

    private final void k() {
    }

    private final void l() {
    }

    private final void n() {
    }

    private final void o() {
    }

    private final void p() {
    }

    private final void q() {
    }

    private final void r() {
    }

    private final void s() {
    }

    private final void u() {
    }

    private final void v() {
    }

    private final void w() {
    }

    private final void x() {
    }

    private final void y() {
    }

    private final void z() {
    }

    public void F(boolean z) {
    }

    public void G(boolean z) {
    }

    @Override // v.w
    public void a(v.k kVar, boolean z) {
    }

    @Override // y3.b
    public void c(int i10, Serializable serializable) {
    }

    @Override // tf.c
    public int m(int i10, int i11, byte[] bArr) {
        return i11;
    }
}
