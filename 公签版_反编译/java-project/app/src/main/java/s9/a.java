package s9;

import a2.w0;
import android.os.Build;
import android.view.View;
import com.yunpan.appmanage.util.a0;
import fa.b0;
import fa.z;
import ha.m6;
import ha.wd;
import java.io.Serializable;
import java.util.HashMap;
import kh.e;
import mc.c;
import rc.f;
import sh.g;
import tb.v;
import tf.d;
import wh.k;
import wh.o;
import wh.p;
import x0.c0;
import x0.d0;
import y3.b;

/* loaded from: classes.dex */
public final class a implements wd, z, o, b, d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14459a;

    public /* synthetic */ a(int i10, boolean z) {
        this.f14459a = i10;
    }

    @Override // ha.wd
    public void D() {
        int i10 = 0;
        switch (this.f14459a) {
            case 2:
                new c(i10, new v(16)).d(f.f13757b).a(fc.b.a()).b(new m6(8));
                break;
            case 3:
                com.yunpan.appmanage.util.v.f4106a.r(true);
                break;
            case 4:
                break;
            case 5:
                u9.d.r("setprop sys.jsbd.apk_verify 1").e0(null);
                a0.w("已执行");
                break;
            case 6:
            case 7:
                break;
            case 8:
                b0.f5652a.getClass();
                w0.d0();
                break;
            case 9:
            case 10:
            case 12:
                break;
            case 11:
            default:
                e.b().f("关闭应用");
                break;
            case 13:
                b0.f5652a.getClass();
                w0.d0();
                break;
            case 14:
                b0.f5652a.getClass();
                w0.d0();
                break;
            case 15:
                break;
        }
    }

    @Override // wh.o
    public Object b(k kVar) {
        switch (this.f14459a) {
            case 18:
                return (sh.o) kVar.c(this);
            case 19:
                return (p) kVar.c(this);
            case 20:
                wh.a aVar = wh.a.OFFSET_SECONDS;
                if (kVar.d(aVar)) {
                    return sh.p.r(kVar.i(aVar));
                }
                return null;
            default:
                wh.a aVar2 = wh.a.NANO_OF_DAY;
                if (kVar.d(aVar2)) {
                    return g.p(kVar.b(aVar2));
                }
                return null;
        }
    }

    @Override // y3.b
    public void c(int i10, Serializable serializable) {
        if (i10 == 6 || i10 == 7 || i10 == 8) {
        }
    }

    @Override // fa.z
    public void e(fa.a0 a0Var) {
        if (a0Var.f5648a != 0) {
            a0.t("设置失败");
        } else {
            a0.w("设置成功");
        }
    }

    @Override // ha.wd
    public void t() {
        switch (this.f14459a) {
            case 5:
                u9.d.r("setprop sys.jsbd.apk_verify 0").e0(null);
                a0.w("已执行");
                break;
        }
    }

    public a(View view) {
        this.f14459a = 22;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            new d0(view);
        } else if (i10 >= 20) {
            new c0(view);
        } else {
            new s5.c(22);
        }
    }

    public a(int i10) {
        this.f14459a = i10;
        switch (i10) {
            case 26:
                if (Build.VERSION.SDK_INT < 35) {
                    new s5.c(26);
                    break;
                } else {
                    break;
                }
            default:
                new HashMap();
                break;
        }
    }

    public a(String str) {
        this.f14459a = 1;
    }

    private final void a() {
    }

    private final void f() {
    }

    private final void g() {
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

    private final void m() {
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

    @Override // tf.d
    public int d(int i10, int i11, byte[] bArr) {
        return i11;
    }
}
